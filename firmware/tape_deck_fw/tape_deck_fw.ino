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


/*=====================================================================*
    System-wide Header Files
 *=====================================================================*/



/*=====================================================================*
    Pin Defines
 *=====================================================================*/
#define PIN_INT_0       (2)
#define PIN_INT_1       (3)


/*=====================================================================*
    Private Defines
 *=====================================================================*/


/*=====================================================================*
    Private Data Types
 *=====================================================================*/
/* None */


/*=====================================================================*
    Private Function Prototypes
 *=====================================================================*/


/*=====================================================================*
    Private Data
 *=====================================================================*/



/*=====================================================================*
    Ardunio Function Implementations
 *=====================================================================*/

void setup() {

    // Initialize UART
    Serial.begin(115200);

    // Initialize SPI
    mcp41hvx1_init();
}

/*---------------------------------------------------------------------*/

void loop() {

    Serial.println("Inc/Dec: </>, Set: (0-8)");

    uint8_t index = mcp41hvx1_get();
    Serial.print("Current index: ");
    Serial.println(index);

    while (1)
    {
        while (!Serial.available()) {}
        char c = Serial.read();
        switch (c) {
            case ',':
                mcp41hvx1_decrement();
                Serial.print("Decrement: ");
                Serial.println(mcp41hvx1_get());
                break;
            case '.':
                mcp41hvx1_increment();
                Serial.print("Increment: ");
                Serial.println(mcp41hvx1_get());
                break;
            case '0':
                mcp41hvx1_set(0);
                Serial.print("Set 0: ");
                Serial.println(mcp41hvx1_get());
                break;
            case '1':
                mcp41hvx1_set(32);
                Serial.print("Set 32: ");
                Serial.println(mcp41hvx1_get());
                break;
            case '2':
                mcp41hvx1_set(64);
                Serial.print("Set 64: ");
                Serial.println(mcp41hvx1_get());
                break;
            case '3':
                mcp41hvx1_set(96);
                Serial.print("Set 96: ");
                Serial.println(mcp41hvx1_get());
                break;
            case '4':
                mcp41hvx1_set(128);
                Serial.print("Set 128: ");
                Serial.println(mcp41hvx1_get());
                break;
            case '5':
                mcp41hvx1_set(160);
                Serial.print("Set 160: ");
                Serial.println(mcp41hvx1_get());
                break;
            case '6':
                mcp41hvx1_set(192);
                Serial.print("Set 192: ");
                Serial.println(mcp41hvx1_get());
                break;
            case '7':
                mcp41hvx1_set(224);
                Serial.print("Set 224: ");
                Serial.println(mcp41hvx1_get());
                break;
            case '8':
                mcp41hvx1_set(255);
                Serial.print("Set 255: ");
                Serial.println(mcp41hvx1_get());
                break;
            default:
                break;
        }
    }
}


/*=====================================================================*
    Private Function Implementations
 *=====================================================================*/

/*---------------------------------------------------------------------*
 *  NAME
 *      
 *
 *  DESCRIPTION
 *      
 *---------------------------------------------------------------------*/