/***********************************************************************
 *  DESCRIPTION
 *      Look-up-table of the frequencies of all 128 MIDI notes
 *
 *  REFERENCES
 *
 ***********************************************************************/

#if !defined(INC_NOTES_H)
#define INC_NOTES_H


/*=====================================================================*
    Required Header Files
 *=====================================================================*/
#include <arduino.h>
#include <avr/pgmspace.h>


/*=====================================================================*
    Public Functions
 *=====================================================================*/

/*---------------------------------------------------------------------*
 *  NAME
 *      get_note_freq
 *
 *  DESCRIPTION
 *      Returns the frequency of the given MIDI note number
 *---------------------------------------------------------------------*/
float get_note_freq(uint8_t note);


#endif /* !defined(INC_NOTES_H) */
