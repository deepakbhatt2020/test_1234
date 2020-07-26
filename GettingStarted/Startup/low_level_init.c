/*************************************************************************
 *
 *    Used with ICCARM and AARM.
 *
 *    (c) Copyright IAR Systems 2015
 *
 *    File name   : low_level_init.c
 *    Description : Low level init procedure
 *
 *
 *    $Revision: 16 $
 **************************************************************************/
#include <NXP\S32K144.h>

extern uint32_t __vector_table[];

/*************************************************************************
 * Function Name: low_level_init
 * Parameters: none
 *
 * Return: none
 *
 * Description: This function is used for low level initialization
 *
 *************************************************************************/
int __low_level_init(void)
{
  /* Set the interrupt vector table position */
  S32_SCB->VTOR = (uint32_t)__vector_table; 
  
  /*WDT disable*/
  WDOG->CNT = 0xD928C520;  // write the 1st and the 2nd unlock words
  WDOG->TOVAL = 0xFFFF;    // setting timeout value
  WDOG->CS   = 0x2120;      // 
   
  return 1;
}
