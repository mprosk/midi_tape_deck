/***********************************************************************
 *  MIDI Tape Deck
 *
 *  DESCRIPTION
 *      <TODO>
 *
 *  REFERENCES
 *      
 * 
 ***********************************************************************/

/*=====================================================================*
    Local Header Files
 *=====================================================================*/


/*=====================================================================*
    Interface Header Files
 *=====================================================================*/
#include "mcp41hvx1.h"
#include "midi.h"
#include "notes.h"


/*=====================================================================*
    System-wide Header Files
 *=====================================================================*/


/*=====================================================================*
    Pin Defines
 *=====================================================================*/
#define PIN_INT_0                   (2)
#define PIN_INT_1                   (3)
#define PIN_POT_COARSE              (A4)
#define PIN_POT_FINE                (A5)
#define PIN_LED                     (9)


/*=====================================================================*
    Private Defines
 *=====================================================================*/
#define MIDI_INVALID                (0xFF)

/*=====================================================================*
    Private Data Types
 *=====================================================================*/
/* None */


/*=====================================================================*
    Private Data
 *=====================================================================*/



/*=====================================================================*
    Ardunio Function Implementations
 *=====================================================================*/

void setup()
{

    /* Initialize UART */
    // Serial.begin(31250);     /* This is the CORRECT MIDI baud rate */
    Serial.begin(32190);        /* This is to compensate for the Virus's overzealous clock rate */

    /* Initialize MCP41HVx1 */
    pinMode(PIN_POT_COARSE, OUTPUT);
    pinMode(PIN_POT_FINE, OUTPUT);
    digitalWrite(PIN_POT_COARSE, HIGH);
    digitalWrite(PIN_POT_FINE, HIGH);
    SPI.begin();
    SPI.beginTransaction(SPISettings(MCP41HVX1_SPI_CLK_HZ, MSBFIRST, SPI_MODE0));
}

/*---------------------------------------------------------------------*/

void loop()
{
    uint8_t channel = MIDI_INVALID;
    uint8_t root_note = MIDI_INVALID; 

    midi_note_t note;

    while(1)
    {
        /* Turn the LED on when recieving MIDI */
        if (Serial.available())
        {
            digitalWrite(PIN_LED, HIGH);
        }

        midi_note_event_t note_event = midi_read(&note);
        if (note_event == EVENT_NOTE_ON)
        {
            /* Learn the MIDI channel and root note if we haven't set one yet */
            if (channel == MIDI_INVALID)
            {
                channel = note.channel;
                root_note = note.note;
            }

            /* If the note on event was on our channel, apply the repitch */
            if (note.channel == channel)
            {
                repitch(root_note, note.note);
            }
        }

        /* Turn off the LED */
        digitalWrite(PIN_LED, LOW);
    }
}


/*=====================================================================*
    Private Function Implementations
 *=====================================================================*/

/*---------------------------------------------------------------------*
 *  NAME
 *      print_status
 *
 *  DESCRIPTION
 *      prints the current potentiometer settings
 *---------------------------------------------------------------------*/
void print_status(void)
{
    Serial.print("Coarse: ");
    Serial.print(mcp41hvx1_get(PIN_POT_COARSE));
    Serial.print(" Fine: ");
    Serial.print(mcp41hvx1_get(PIN_POT_FINE));
    Serial.println();
}

/*---------------------------------------------------------------------*
 *  NAME
 *      repitch
 *
 *  DESCRIPTION
 *      sets the potentiometers to produce a target output
 *      note given the nominal note of the sample
 *---------------------------------------------------------------------*/
uint8_t repitch(uint8_t nominal, uint8_t target)
{
    float t = get_note_freq(target);
    Serial.print("Target: "); Serial.println(t);
    float freq = t - get_note_freq(nominal);
    Serial.print("Delta F: "); Serial.println(freq);
    uint8_t x = 127;
    uint8_t y = 127;
    uint8_t n = solve(freq, &x, &y);
    Serial.print("Solution found in "); Serial.println(n);
    Serial.print("X = "); Serial.print(x); Serial.print(", Y = "); Serial.println(y);
    mcp41hvx1_set(PIN_POT_COARSE, x);
    mcp41hvx1_set(PIN_POT_FINE, y);
    print_status();
    return n;
}

/*---------------------------------------------------------------------*
 *  NAME
 *      solve
 *
 *  DESCRIPTION
 *      determines the coarse and fine values needed to achieve the target output frequency
 * 
 * RETURNS
 *      number of iterations to reach a solution
 *      resulting x and y values are stored in place
 *---------------------------------------------------------------------*/
uint8_t solve(float z, uint8_t *x, uint8_t *y)
{
    uint8_t n = 0;
    uint8_t x_min = 0;
    uint8_t y_min = 0;
    uint8_t x_max = MCP41HVX1_TAP_COUNT - 1;
    uint8_t y_max = MCP41HVX1_TAP_COUNT - 1;
    *x = 127;
    *y = 127;

    float z_min = 0.99 * z;
    float z_max = 1.01 * z;

    /* get x close */
    while (1)
    {
        *x = (x_max + x_min) / 2;
        float f = freq_127(*x);
        Serial.print("Step "); Serial.print(n); Serial.print(", x = "); Serial.print(*x); Serial.print(" ("); Serial.print(x_min); Serial.print(", "); Serial.print(x_max); Serial.print("), f = "); Serial.println(f);
        n++;
        if ((z_min <= f) && (f <= z_max))
        {
            /* We have gotten close to the target value */
            break;
        }
        else if (z < f)
        {
            /* The target value is below us. Set upper bound to current value */
            x_max = *x;
        }
        else if (z > f)
        {
            /* The target value is above us. Set lower bound to current value */
            x_min = *x;
        }

        if ((x_max - x_min) < 2)
        {
            /* We've reached the end of the search */
            break;
        }
    }

    /* get y closer */
    z_min = 0.999 * z;
    z_max = 1.001 * z;
    while (1)
    {
        *y = (y_max + y_min) / 2;
        float f = freq(*x, *y);
        Serial.print("Step "); Serial.print(n); Serial.print(", y = "); Serial.print(*y); Serial.print(" ("); Serial.print(y_min); Serial.print(", "); Serial.print(y_max); Serial.print("), f = "); Serial.println(f);
        n++;
        if ((z_min <= f) && (f <= z_max))
        {
            /* We have gotten close to the target value */
            break;
        }
        else if (z < f)
        {
            /* The target value is below us. Set upper bound to current value */
            y_max = *y;
        }
        else if (z > f)
        {
            /* The target value is above us. Set lower bound to current value */
            y_min = *y;
        }

        if ((y_max - y_min) < 2)
        {
            /* We've reached the end of the search */
            break;
        }
    }

    return n;

}

/*---------------------------------------------------------------------*
 *  NAME
 *      freq
 *
 *  DESCRIPTION
 *      calculates the output frequency for a given coarse and fine value
 *---------------------------------------------------------------------*/
float freq(uint8_t x, uint8_t y)
{
    return -1917.6297514 + (16.9812525 * (float)x) + (0.0848209 + 0.0264162 * (float)x + 0.0073799 * (float)y) * (float)y;
}

/*---------------------------------------------------------------------*
 *  NAME
 *      freq_128
 *
 *  DESCRIPTION
 *      calculates the output frequency for a given coarse value with fine=128
 *---------------------------------------------------------------------*/
float freq_127(uint8_t x)
{
    return 20.3361 * (float)x - 1787.83;
}
