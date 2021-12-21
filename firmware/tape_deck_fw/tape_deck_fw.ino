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
#define PIN_MODE_SW                 (2)
#define PIN_INT_1                   (3)
#define PIN_POT_COARSE              (A4)
#define PIN_POT_FINE                (A5)
#define PIN_LED                     (A0)


/*=====================================================================*
    Private Defines
 *=====================================================================*/
#define DEBUG_PRINTOUT              /* Enables debug printing */

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

    // Initialize UART for MIDI
    //  Serial.begin(31250);      // This is the CORRECT MIDI baud rate
   Serial.begin(32190);        // This is to compensate for the Virus's overzealous clock rate


    // Initialize GPIO
    pinMode(PIN_MODE_SW, INPUT_PULLUP);
    pinMode(PIN_LED, OUTPUT);
    digitalWrite(PIN_LED, LOW);
    

    // Initialize MCP41HVx1
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
    uint8_t nominal = 69;
    midi_note_t note;
    while(1)
    {
        midi_note_event_t note_event = midi_read(&note);
        if (note_event == EVENT_NOTE_ON)
        {
            digitalWrite(PIN_LED, HIGH);
            repitch(69, note.note);
            digitalWrite(PIN_LED, LOW);
        }
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
#ifdef DEBUG_PRINTOUT
    Serial.print("Coarse: ");
    Serial.print(mcp41hvx1_get(PIN_POT_COARSE));
    Serial.print(" Fine: ");
    Serial.print(mcp41hvx1_get(PIN_POT_FINE));
    Serial.println();
#endif
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
    float freq = t / get_note_freq(nominal);
    Serial.print("% change: "); Serial.println(freq);
    uint8_t x = 128;
    uint8_t y = 128;
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
    uint8_t y_min = 0;
    uint8_t y_max = MCP41HVX1_TAP_COUNT - 1;
    
    // Solve for the X value that puts us just above the target
    *x = coarse(z);

    // Search for the Y value that gets us to the target
    for(uint8_t i = 0; i < 8; i++)
    {
        *y = (y_max + y_min) / 2;
        float f = freq(*x, *y);
#ifdef DEBUG_PRINTOUT
        Serial.print("Step "); Serial.print(i); Serial.print(", y = "); Serial.print(*y); Serial.print(" ("); Serial.print(y_min); Serial.print(", "); Serial.print(y_max); Serial.print("), f = "); Serial.println(f);
#endif
        if (z < f)
        {
            // The target value is below us. Set upper bound to current value
            y_max = *y;
        }
        else if (z > f)
        {
            // The target value is above us. Set lower bound to current value
            y_min = *y;
        }
        else
        {
            // We have exactly found the target (unlikely)
            return i;
        }
    }
    return 8;
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
    /* Equation for 5k-(5k||1.5k) pot */
    return 0.6351428 + (0.0048308 * (float)x) + (-0.0001811 + 9e-07 * (float)x + 1.2e-06 * (float)y) * (float)y;
}

/*---------------------------------------------------------------------*
 *  NAME
 *      coarse
 *
 *  DESCRIPTION
 *      calculates the coarse pot setting that is just above the given frequency
 *      Fine = 255
 *---------------------------------------------------------------------*/
uint8_t coarse(float z)
{
    /* Equation for 5k-(5k||1.5k) pot */
    float c = ceil(197.617 * z - 131.809);
    if (c < 0)
    {
        return 0;
    }
    if (c > MCP41HVX1_TAP_COUNT - 1)
    {
        return MCP41HVX1_TAP_COUNT - 1;
    }
    return (uint8_t)c;
}
