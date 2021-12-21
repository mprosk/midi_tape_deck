/***********************************************************************
 *  Dual Digipot Remote Control
 *
 *  DESCRIPTION
 *      Basic sketch for remotely operating the two digi pots over serial
 *
 *  REFERENCES
 *      MCP41HVx1 Datasheet - Microchip Technology Inc.
 * 
 ***********************************************************************/


/*=====================================================================*
    Interface Header Files
 *=====================================================================*/
#include "mcp41hvx1.h"


/*=====================================================================*
    Pin Defines
 *=====================================================================*/
#define PIN_POT_COARSE              (A4)
#define PIN_POT_FINE                (A5)


/*=====================================================================*
    Ardunio Function Implementations
 *=====================================================================*/

void setup()
{
    // Initialize UART
    Serial.begin(115200);
    Serial.setTimeout(15000);

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
    long int val = 0;
    if (Serial.available())
    {
        switch (Serial.read())
        {
            case 'c':
                val = Serial.parseInt();
                if ((val >= 0) && (val < MCP41HVX1_TAP_COUNT))
                {
                    mcp41hvx1_set(PIN_POT_COARSE, (uint8_t)val);
                    print_status();
                }
                break;
                
            case 'f':
                val = Serial.parseInt();
                Serial.println(val);
                if ((val >= 0) && (val < MCP41HVX1_TAP_COUNT))
                {
                    mcp41hvx1_set(PIN_POT_FINE, (uint8_t)val);
                    print_status();
                }
                break;
                
            case 's':
                print_status();
                break;

            case 'z':
                mcp41hvx1_decrement(PIN_POT_COARSE);
                print_status();
                break;

            case 'x':
                mcp41hvx1_increment(PIN_POT_COARSE);
                print_status();
                break;

            case ',':
                mcp41hvx1_decrement(PIN_POT_FINE);
                print_status();
                break;

            case '.':
                mcp41hvx1_increment(PIN_POT_FINE);
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
 *      print_status
 *
 *  DESCRIPTION
 *      prints the current potentiometer settings
 *---------------------------------------------------------------------*/
void print_status(void)
{
    Serial.print("(");
    Serial.print(mcp41hvx1_get(PIN_POT_COARSE));
    Serial.print(",");
    Serial.print(mcp41hvx1_get(PIN_POT_FINE));
    Serial.println(")");
}
