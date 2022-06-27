/* C-Header -----------------------------------------------*/
#include 	"stdio.h"	// für sprintf()
#include 	"stdint.h"
#include 	"math.h"	// für modf()

/* STM-Header -----------------------------------------------*/
#include 	"stm32f4xx_hal.h"

/* eigene Header -----------------------------------------------*/
#include "generalHandling.h"


/* define's -----------------------------------------------*/
#define 	I2C_AMG			 		0x69


/* Variablendeklaration -----------------------------------------------*/
uint16_t 	rawData[64];
uint16_t 	dataInt[64];
float		dataFloat[64];
uint8_t 	regDataL, regDataH;


/* Funktionsdeklaration -----------------------------------------------*/
void 		confAMG();
int 		writeRegister(uint8_t i2c_address, uint8_t reg, uint8_t *data);
uint16_t 	amgGetData(uint8_t regDataL, uint8_t regDataH);
float 		amgTranslateDataFloat(uint16_t rawData);
uint16_t 	amgTranslateDataInt(uint16_t rawData);
uint16_t 	convertFloatFractionToInt(float dataFloat);
void 		amgDataToUart(float *dataFloat, uint16_t *dataInt);
int 		amgDataPlausibilityCheck(uint16_t *dataInt);
