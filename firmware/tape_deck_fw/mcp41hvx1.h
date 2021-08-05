/***********************************************************************
 *  DESCRIPTION
 *      Driver for the MCP41HVx1 digital potentiometer
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
#define MCP41HVx1_SPI_CLK_HZ        (1e6)


/*=====================================================================*
    Public Functions
 *=====================================================================*/

/*---------------------------------------------------------------------*
 *  NAME
 *      mcp41hvx1_init
 *
 *  DESCRIPTION
 *      Initializes the Arduino SPI hardware used to run the MCP41HVx1
 *---------------------------------------------------------------------*/
void mcp41hvx1_init();

/*---------------------------------------------------------------------*
 *  NAME
 *      mcp41hvx1_increment
 *
 *  DESCRIPTION
 *      Increments the potentiometer wiper
 *---------------------------------------------------------------------*/
void mcp41hvx1_increment(void);

/*---------------------------------------------------------------------*
 *  NAME
 *      mcp41hvx1_decrement
 *
 *  DESCRIPTION
 *      Decrements the potentiometer wiper
 *---------------------------------------------------------------------*/
void mcp41hvx1_decrement(void);

/*---------------------------------------------------------------------*
 *  NAME
 *      mcp41hvx1_set
 *
 *  DESCRIPTION
 *      Sets the potentiometer to the given tap index
 *---------------------------------------------------------------------*/
void mcp41hvx1_set(uint8_t index);

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
uint8_t mcp41hvx1_get(void);


#endif /* !defined(INC_MCP41HVX1_H) */




