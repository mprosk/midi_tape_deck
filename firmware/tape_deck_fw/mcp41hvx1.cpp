/***********************************************************************
 *  DESCRIPTION
 *      Driver for the MCP41HVx1 digital potentiometer
 *
 *  REFERENCES
 *      MCP41HVx1 Datasheet - Microchip Technology Inc.
 ***********************************************************************/

/*=====================================================================*
    Local Header Files
 *=====================================================================*/
#include "mcp41hvx1.h"


/*=====================================================================*
    Private Defines
 *=====================================================================*/
/* None */


/*=====================================================================*
    Private Data Types
 *=====================================================================*/
/* None */


/*=====================================================================*
    Private Function Prototypes
 *=====================================================================*/
/* None */


/*=====================================================================*
    Private Data
 *=====================================================================*/


/*=====================================================================*
    Public Function Implementations
 *=====================================================================*/

/*---------------------------------------------------------------------*
 *  NAME
 *      mcp41hvx1_init
 *
 *  DESCRIPTION
 *      Initializes the Arduino SPI hardware used to run the MCP41HVx1
 *---------------------------------------------------------------------*/
void mcp41hvx1_init()
{
    pinMode(PIN_MCP41HVX1_CS, OUTPUT);
    digitalWrite(PIN_MCP41HVX1_CS, HIGH);

    SPI.begin();
    SPI.beginTransaction(SPISettings(MCP41HVX1_SPI_CLK_HZ, MSBFIRST, SPI_MODE0));
}

/*---------------------------------------------------------------------*
 *  NAME
 *      mcp41hvx1_increment
 *
 *  DESCRIPTION
 *      Increments the potentiometer wiper
 *---------------------------------------------------------------------*/
void mcp41hvx1_increment(void)
{
    digitalWrite(PIN_MCP41HVX1_CS, LOW);
    SPI.transfer(0x04);
    digitalWrite(PIN_MCP41HVX1_CS, HIGH);
}

/*---------------------------------------------------------------------*
 *  NAME
 *      mcp41hvx1_decrement
 *
 *  DESCRIPTION
 *      Decrements the potentiometer wiper
 *---------------------------------------------------------------------*/
void mcp41hvx1_decrement(void)
{
    digitalWrite(PIN_MCP41HVX1_CS, LOW);
    SPI.transfer(0x08);
    digitalWrite(PIN_MCP41HVX1_CS, HIGH);
}

/*---------------------------------------------------------------------*
 *  NAME
 *      mcp41hvx1_set
 *
 *  DESCRIPTION
 *      Sets the potentiometer to the given tap index
 *---------------------------------------------------------------------*/
void mcp41hvx1_set(uint8_t index)
{
    uint8_t buf[2] = {0x00, index};
    digitalWrite(PIN_MCP41HVX1_CS, LOW);
    SPI.transfer(buf, 2);
    digitalWrite(PIN_MCP41HVX1_CS, HIGH);
}

/*---------------------------------------------------------------------*
 *  NAME
 *      mcp41hvx1_get
 *
 *  DESCRIPTION
 *      Reads the current tap index from the MCP41HVx1
 * 
 *  RETURNS
 *      Current potentiometer tap index
 *---------------------------------------------------------------------*/
uint8_t mcp41hvx1_get(void)
{
    uint8_t buf[2] = {0x0c, 0x00};
    digitalWrite(PIN_MCP41HVX1_CS, LOW);
    SPI.transfer(buf, 2);
    digitalWrite(PIN_MCP41HVX1_CS, HIGH);
    return buf[1];
}