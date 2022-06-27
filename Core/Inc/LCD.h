/* C-Header -----------------------------------------------*/
#include <stdlib.h>
#include <stdint.h>


/* STM-Header -----------------------------------------------*/
#include "stm32f4xx_hal.h"
#include "stm32412g_discovery.h"
#include "stm32412g_discovery_lcd.h"
#include "fonts.h"


/* eigene Header -----------------------------------------------*/
#include "AMG.h"


/* define's -----------------------------------------------*/
#define 	LCD_SCREEN_WIDTH 		240
#define 	LCD_SCREEN_HEIGHT		240
#define 	RGB565_BYTE_PER_PIXEL	2
#define 	tableSize 				9


/* Variablendeklaration -----------------------------------------------*/


/* Funktionsdeklaration -----------------------------------------------*/
void 		confLCD();
void 		drawLCD(uint16_t posX, uint16_t posY, uint16_t pixelArrayColor);		// setzt Farbe für ein Viereck
void 		updateLCD(uint16_t *rawData);															// ruft 64x drawLCD() auf
uint16_t 	assignColor(uint16_t tbdColor);
