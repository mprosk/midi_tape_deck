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
static uint8_t chip_select = NULL;


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
void mcp41hvx1_init(uint8_t pin_chip_select)
{
    chip_select = pin_chip_select;
    pinMode(chip_select, OUTPUT);
    digitalWrite(chip_select, HIGH);

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
    digitalWrite(chip_select, LOW);
    SPI.transfer(0x04);
    digitalWrite(chip_select, HIGH);
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
    digitalWrite(chip_select, LOW);
    SPI.transfer(0x08);
    digitalWrite(chip_select, HIGH);
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
    digitalWrite(chip_select, LOW);
    SPI.transfer(buf, 2);
    digitalWrite(chip_select, HIGH);
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
    digitalWrite(chip_select, LOW);
    SPI.transfer(buf, 2);
    digitalWrite(chip_select, HIGH);
    return buf[1];
}