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

#if !defined(INC_MCP41HVX1_H)
#define INC_MCP41HVX1_H


/*=====================================================================*
    Required Header Files
 *=====================================================================*/
#include <arduino.h>
#include <SPI.h>


/*=====================================================================*
    Public Defines
 *=====================================================================*/
#define MCP41HVX1_SPI_CLK_HZ        (100e3)


/*=====================================================================*
    Public Functions
 *=====================================================================*/

/*---------------------------------------------------------------------*
 *  NAME
 *      mcp41hvx1_increment
 *
 *  DESCRIPTION
 *      Increments the potentiometer wiper
 *---------------------------------------------------------------------*/
void mcp41hvx1_increment(uint8_t cs_pin);

/*---------------------------------------------------------------------*
 *  NAME
 *      mcp41hvx1_decrement
 *
 *  DESCRIPTION
 *      Decrements the potentiometer wiper
 *---------------------------------------------------------------------*/
void mcp41hvx1_decrement(uint8_t cs_pin);

/*---------------------------------------------------------------------*
 *  NAME
 *      mcp41hvx1_set
 *
 *  DESCRIPTION
 *      Sets the potentiometer to the given tap index
 *---------------------------------------------------------------------*/
void mcp41hvx1_set(uint8_t cs_pin, uint8_t index);

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
uint8_t mcp41hvx1_get(uint8_t cs_pin);


#endif /* !defined(INC_MCP41HVX1_H) */
