/***********************************************************************
 *  DESCRIPTION
 *      Look-up-table of the frequencies of all 128 MIDI notes
 *
 *  REFERENCES
 *      https://en.wikipedia.org/wiki/MIDI_tuning_standard
 ***********************************************************************/

/*=====================================================================*
    Local Header Files
 *=====================================================================*/
#include "notes.h"

/*=====================================================================*
    Private Defines
 *=====================================================================*/
#define F(n)       (pow(2.0f, (n - 69.0f) / 12.0f) * NOTE_TUNING_HZ)

/*=====================================================================*
    Private Data
 *=====================================================================*/
static const PROGMEM float NOTE_FREQ[NOTE_COUNT] = { 
/*    C      C#       D      D#       E       F      F#       G      G#       A      A#       B           */    
    F(0),   F(1),   F(2),   F(3),   F(4),   F(5),   F(6),   F(7),   F(8),   F(9),   F(10),  F(11),  /* -1 */
    F(12),  F(13),  F(14),  F(15),  F(16),  F(17),  F(18),  F(19),  F(20),  F(21),  F(22),  F(23),  /*  0 */
    F(24),  F(25),  F(26),  F(27),  F(28),  F(29),  F(30),  F(31),  F(32),  F(33),  F(34),  F(35),  /*  1 */
    F(36),  F(37),  F(38),  F(39),  F(40),  F(41),  F(42),  F(43),  F(44),  F(45),  F(46),  F(47),  /*  2 */
    F(48),  F(49),  F(50),  F(51),  F(52),  F(53),  F(54),  F(55),  F(56),  F(57),  F(58),  F(59),  /*  3 */
    F(60),  F(61),  F(62),  F(63),  F(64),  F(65),  F(66),  F(67),  F(68),  F(69),  F(70),  F(71),  /*  4 */
    F(72),  F(73),  F(74),  F(75),  F(76),  F(77),  F(78),  F(79),  F(80),  F(81),  F(82),  F(83),  /*  5 */
    F(84),  F(85),  F(86),  F(87),  F(88),  F(89),  F(90),  F(91),  F(92),  F(93),  F(94),  F(95),  /*  6 */
    F(96),  F(97),  F(98),  F(99),  F(100), F(101), F(102), F(103), F(104), F(105), F(106), F(107), /*  7 */
    F(108), F(109), F(110), F(111), F(112), F(113), F(114), F(115), F(116), F(117), F(118), F(119), /*  8 */
    F(120), F(121), F(122), F(123), F(124), F(125), F(126), F(127)
};


/*=====================================================================*
    Public Function Implementations
 *=====================================================================*/

/*---------------------------------------------------------------------*
 *  NAME
 *      get_note_freq
 *
 *  DESCRIPTION
 *      Returns the frequency of the given MIDI note number
 * 
 * RETURNS
 *      Frequency of the given note. -1 if note is out of range
 *---------------------------------------------------------------------*/
float get_note_freq(uint8_t note)
{
    if (note < NOTE_COUNT)
    {
        return pgm_read_float_near(NOTE_FREQ + note);
    }
    else
    {
        return -1.0;
    }
}
