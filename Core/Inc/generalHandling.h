/* C-Header -----------------------------------------------*/
#include 	"stdio.h"


/* STM-Header -----------------------------------------------*/
#include 	"stm32f4xx_hal.h"


/* eigene Header -----------------------------------------------*/


/* define's -----------------------------------------------*/


/* Variablendeklaration -----------------------------------------------*/


/* Funktionsdeklaration -----------------------------------------------*/
void 		resetLEDs();
void 		UART_faultyFrame();
void 		UART_I2Cfault();
void		confWatchdog();
void 		formatUart(uint8_t numberOfEmptyLines);
