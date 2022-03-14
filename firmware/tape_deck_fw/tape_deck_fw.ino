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
#include <Arduino.h>
#include <math.h>


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
// #define DEBUG_PRINTOUT              /* Enables debug printing */
#define LED_BLINK_INTERVAL_MS       (1000u)

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
      Serial.begin(31250);      // This is the CORRECT MIDI baud rate
//    Serial.begin(32190);        // This is to compensate for the Virus's overzealous clock rate

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
    uint8_t nominal = 0xFF;
    midi_note_t note;
    uint8_t mode_last = digitalRead(PIN_MODE_SW);
    digitalWrite(PIN_LED, mode_last);

    while(1)
    {
        // Check if we've changed control modes
        uint8_t mode = digitalRead(PIN_MODE_SW);
        if (mode != mode_last)
        {
            nominal = 0xFF;
            repitch(60, 60);
            digitalWrite(PIN_LED, mode);
        }
        mode_last = mode;

        // Process incoming MIDI notes
        midi_note_event_t note_event = midi_read(&note);
        if ((note_event == EVENT_NOTE_ON) && mode)
        {
            digitalWrite(PIN_LED, HIGH);

            // If the nominal pitch has not been set, record it now
            if (nominal == 0xFF) {
                nominal = note.note;
            }
            
            // Apply the repitching
            repitch(nominal, note.note);

#ifndef DEBUG_PRINTOUT
            // Delay breifly so the LED is more visible
            delayMicroseconds(1500);
#endif
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
    float target_freq = get_note_freq(target);
    float target_percent = target_freq / get_note_freq(nominal);
    uint8_t x = single(target_percent);
    mcp41hvx1_set(PIN_POT_COARSE, x);

#ifdef DEBUG_PRINTOUT
    Serial.print("Target: "); Serial.print(target);
    Serial.print(" ("); Serial.print(target_freq); Serial.println(" Hz)");
    Serial.print("%% change: "); Serial.println(target_percent);
    print_status();
#endif
}


/*---------------------------------------------------------------------*
 *  NAME
 *      single
 *
 *  DESCRIPTION
 *      calculates the potentiometer setting needed to acheive
 *      the given percent change in frequency
 *---------------------------------------------------------------------*/
uint8_t single(float z)
{
    /* Equation for single 10k pot */
    float c = ceil(124.42 * z - 61.046);
    /* Equation for single 5k pot */
    // float c = ceil(196.08 * z - 132.02);
    if (c < 0)
    {
        return 0;
    }
    if (c > MCP41HVX1_TAP_COUNT - 1)
    {
        return MCP41HVX1_TAP_COUNT - 1;
    }
    return (uint8_t)round(c);
}
