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
#define USE_POT_5K_5K               /* Define when using two 5k pots */
// #define USE_POT_10K_10K          /* Define when using two 10k pots */

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

    // Initialize UART
    Serial.begin(115200);

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

    //test_manual();
    test_scale();

    

    // midi_note_t note;
    // while(1)
    // {
    //     midi_note_event_t note_event = midi_read(&note);
    //     if (note_event == EVENT_NOTE_ON)
    //     {

    //     }
    // }

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
    uint8_t n = 0;
    uint8_t x_min = 0;
    uint8_t y_min = 0;
    uint8_t x_max = MCP41HVX1_TAP_COUNT - 1;
    uint8_t y_max = MCP41HVX1_TAP_COUNT - 1;
    *x = 127;
    *y = 127;

    float z_min = 0.99 * z;
    float z_max = 1.01 * z;

    // get x close
    while (1)
    {
        *x = (x_max + x_min) / 2;
        float f = freq_127(*x);
        Serial.print("Step "); Serial.print(n); Serial.print(", x = "); Serial.print(*x); Serial.print(" ("); Serial.print(x_min); Serial.print(", "); Serial.print(x_max); Serial.print("), f = "); Serial.println(f);
        n++;
        if ((z_min <= f) && (f <= z_max))
        {
            // We have gotten close to the target value
            break;
        }
        else if (z < f)
        {
            // The target value is below us. Set upper bound to current value
            x_max = *x;
        }
        else if (z > f)
        {
            // The target value is above us. Set lower bound to current value
            x_min = *x;
        }

        if ((x_max - x_min) < 2)
        {
            // We've reached the end of the search
            break;
        }
    }

    // get y closer
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
            // We have gotten close to the target value
            break;
        }
        else if (z < f)
        {
            // The target value is below us. Set upper bound to current value
            y_max = *y;
        }
        else if (z > f)
        {
            // The target value is above us. Set lower bound to current value
            y_min = *y;
        }

        if ((y_max - y_min) < 2)
        {
            // We've reached the end of the search
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
#ifdef USE_POT_5K_5K
    /* Equation for 5k-5k pot */
    return -1503.0871471 + (12.0767089 * (float)x) + (0.9015391 + 0.0115233 * (float)x + 0.0032597 * (float)y) * (float)y;
#endif
#ifdef USE_POT_10K_10K
    /* Equation for 10k-10k pot */
    return -1917.6297514 + (16.9812525 * (float)x) + (0.0848209 + 0.0264162 * (float)x + 0.0073799 * (float)y) * (float)y;
#endif
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
#ifdef USE_POT_5K_5K
    /* Equation for 5k-5k pot */
    return 13.5402 * (float)x - 1336.02;
#endif
#ifdef USE_POT_10K_10K
    /* Equation for 10k-10k pot */
    return 20.3361 * (float)x - 1787.83;
#endif
}

/*---------------------------------------------------------------------*
 *  NAME
 *      test_manual
 *
 *  DESCRIPTION
 *      loop for setting manual potentiometer values
 *---------------------------------------------------------------------*/
void test_manual(void)
{
    long int val = 0;
    Serial.println("Type 'c' to change coarse value or 'f' to change fine value");
    Serial.setTimeout(15000);
    while (1)
    {
        if (Serial.available())
        {
            switch (Serial.read())
            {
            case 'c':
                Serial.print("Enter value for coarse pot: ");
                val = Serial.parseInt();
                Serial.println(val);
                if ((val >= 0) && (val < MCP41HVX1_TAP_COUNT))
                {
                    mcp41hvx1_set(PIN_POT_COARSE, (uint8_t)val);
                    print_status();
                }
                else
                {
                    Serial.println("Invalid entry");
                    Serial.println("Type 'c' to change coarse value or 'f' to change fine value");
                }
                break;
            case 'f':
                Serial.print("Enter value for fine pot: ");
                val = Serial.parseInt();
                Serial.println(val);
                if ((val >= 0) && (val < MCP41HVX1_TAP_COUNT))
                {
                    mcp41hvx1_set(PIN_POT_FINE, (uint8_t)val);
                    print_status();
                }
                else
                {
                    Serial.println("Invalid entry");
                    Serial.println("Type 'c' to change coarse value or 'f' to change fine value");
                }
                break;
            default:
                break;
            }
        }
    }
}

/*---------------------------------------------------------------------*
 *  NAME
 *      test_scale
 *
 *  DESCRIPTION
 *      loop for an A major scale
 *---------------------------------------------------------------------*/
void test_scale(void)
{
    // 880 Hz - A5
    const uint8_t scale[] = {81, 83, 84, 86, 88, 89, 91, 93};
    while(1)
    {
        if (Serial.available())
        {
            char c = Serial.read();
            if ((c >= '1') && (c <='8'))
            {
                uint8_t x = c - '1';
                Serial.println("--------------------------");
                Serial.println(scale[x] - 12);
                repitch(81, scale[x] - 12);
            }
        }
    }
}
