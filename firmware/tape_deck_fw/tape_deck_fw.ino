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
#define PIN_INT_0                   (2)
#define PIN_INT_1                   (3)
#define PIN_POT_COARSE              (5)
#define PIN_POT_FINE                (6)
#define PIN_LED                     (9)


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
    Serial.println("Set Coarse: (1-9), Set Fine: (Q-O)");
    print_status();

    while (1)
    {
        while (!Serial.available()) {}
        char c = Serial.read();
        switch (c) {
            
            // COARSE
            case '1':
                mcp41hvx1_set(PIN_POT_COARSE, 0);
                Serial.print("Set Coarse 0: ");
                print_status();
                break;
            case '2':
                mcp41hvx1_set(PIN_POT_COARSE, 32);
                Serial.print("Set Coarse 32: ");
                print_status();
                break;
            case '3':
                mcp41hvx1_set(PIN_POT_COARSE, 64);
                Serial.print("Set Coarse 64: ");
                print_status();
                break;
            case '4':
                mcp41hvx1_set(PIN_POT_COARSE, 96);
                Serial.print("Set Coarse 96: ");
                print_status();
                break;
            case '5':
                mcp41hvx1_set(PIN_POT_COARSE, 128);
                Serial.print("Set Coarse 128: ");
                print_status();
                break;
            case '6':
                mcp41hvx1_set(PIN_POT_COARSE, 160);
                Serial.print("Set Coarse 160: ");
                print_status();
                break;
            case '7':
                mcp41hvx1_set(PIN_POT_COARSE, 192);
                Serial.print("Set Coarse 192: ");
                print_status();
                break;
            case '8':
                mcp41hvx1_set(PIN_POT_COARSE, 224);
                Serial.print("Set Coarse 224: ");
                print_status();
                break;
            case '9':
                mcp41hvx1_set(PIN_POT_COARSE, 255);
                Serial.print("Set Coarse 255: ");
                print_status();
                break;

            // FINE
            case 'q':
                mcp41hvx1_set(PIN_POT_FINE, 0);
                Serial.print("Set Fine 0: ");
                print_status();
                break;
            case 'w':
                mcp41hvx1_set(PIN_POT_FINE, 32);
                Serial.print("Set Fine 32: ");
                print_status();
                break;
            case 'e':
                mcp41hvx1_set(PIN_POT_FINE, 64);
                Serial.print("Set Fine 64: ");
                print_status();
                break;
            case 'r':
                mcp41hvx1_set(PIN_POT_FINE, 96);
                Serial.print("Set Fine 96: ");
                print_status();
                break;
            case 't':
                mcp41hvx1_set(PIN_POT_FINE, 128);
                Serial.print("Set Fine 128: ");
                print_status();
                break;
            case 'y':
                mcp41hvx1_set(PIN_POT_FINE, 160);
                Serial.print("Set Fine 160: ");
                print_status();
                break;
            case 'u':
                mcp41hvx1_set(PIN_POT_FINE, 192);
                Serial.print("Set Fine 192: ");
                print_status();
                break;
            case 'i':
                mcp41hvx1_set(PIN_POT_FINE, 224);
                Serial.print("Set Fine 224: ");
                print_status();
                break;
            case 'o':
                mcp41hvx1_set(PIN_POT_FINE, 255);
                Serial.print("Set Fine 255: ");
                print_status();
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
void print_status(void)
{
    Serial.print("Coarse: ");
    Serial.print(mcp41hvx1_get(PIN_POT_COARSE));
    Serial.print("Fine: ");
    Serial.print(mcp41hvx1_get(PIN_POT_FINE));
    Serial.println();
}