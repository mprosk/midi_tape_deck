/***********************************************************************
 *  DESCRIPTION
 *      Driver for the MCP41HVx1 digital potentiometer
 * 
 *      Requires that the SPI bus be initialized and the
 *      output pins for chip select configured
 *
 *  REFERENCES
 *      MCP41HVx1 Datasheet - Microchip Technology Inc.
 ***********************************************************************/

/*=====================================================================*
    Local Header Files
 *=====================================================================*/
#include "mcp41hvx1.h"


/*=====================================================================*
    Public Function Implementations
 *=====================================================================*/

/*---------------------------------------------------------------------*
 *  NAME
 *      mcp41hvx1_increment
 *
 *  DESCRIPTION
 *      Increments the potentiometer wiper
 *---------------------------------------------------------------------*/
void mcp41hvx1_increment(uint8_t cs_pin)
{
    digitalWrite(cs_pin, LOW);
    SPI.transfer(0x04);
    digitalWrite(cs_pin, HIGH);
}

/*---------------------------------------------------------------------*
 *  NAME
 *      mcp41hvx1_decrement
 *
 *  DESCRIPTION
 *      Decrements the potentiometer wiper
 *---------------------------------------------------------------------*/
void mcp41hvx1_decrement(uint8_t cs_pin)
{
    digitalWrite(cs_pin, LOW);
    SPI.transfer(0x08);
    digitalWrite(cs_pin, HIGH);
}

/*---------------------------------------------------------------------*
 *  NAME
 *      mcp41hvx1_set
 *
 *  DESCRIPTION
 *      Sets the potentiometer to the given tap index
 *---------------------------------------------------------------------*/
void mcp41hvx1_set(uint8_t cs_pin, uint8_t index)
{
    uint8_t buf[2] = {0x00, index};
    digitalWrite(cs_pin, LOW);
    SPI.transfer(buf, 2);
    digitalWrite(cs_pin, HIGH);
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
uint8_t mcp41hvx1_get(uint8_t cs_pin)
{
    uint8_t buf[2] = {0x0c, 0x00};
    digitalWrite(cs_pin, LOW);
    SPI.transfer(buf, 2);
    digitalWrite(cs_pin, HIGH);
    return buf[1];
}
