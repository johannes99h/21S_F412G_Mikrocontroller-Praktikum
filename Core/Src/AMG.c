#include 	"AMG.h"


/* externe Deklarationen -----------------------------------------------*/
extern 		I2C_HandleTypeDef hi2c2;
extern 		UART_HandleTypeDef huart2;


/* Wertzuweisungen -----------------------------------------------*/
uint8_t regDataL = 0x80;
uint8_t regDataH = 0x81;

/* Funktionsdefinitionen -----------------------------------------------*/
int writeRegister(uint8_t i2c_address, uint8_t reg, uint8_t *data)											// currently not even in use!
{
	int status = 0;

	/*
	if(HAL_I2C_Mem_Write(&hi2c2, i2c_address, reg, sizeof(reg), data, sizeof(data), 50) != HAL_OK)
	{
		status = 1;
	}
	*/

	if(HAL_I2C_Master_Transmit(&hi2c2, (i2c_address<<1), data, sizeof(data), 50) != HAL_OK)
	{
		status = 1;
	}

	return status;
}


void confAMG()
{
	//Initialisierung der I2C-Schnittstelle
 	if(HAL_I2C_Init(&hi2c2) != HAL_OK)
	{
		UART_I2Cfault();
	}

	// PCTL-Register
	uint8_t PCTL[2] = {0x00, 0x00};
	if(HAL_I2C_Master_Transmit(&hi2c2, (0x69<<1), PCTL, sizeof(PCTL), 100) != HAL_OK)
	{
		UART_I2Cfault();
	}

	// RST-Register
	uint8_t RST[2] = {0x01, 0x3F};
	if(HAL_I2C_Master_Transmit(&hi2c2, (0x69<<1), RST, sizeof(RST), 100) != HAL_OK)
	{
		UART_I2Cfault();
	}

	// FPSC-Register
	uint8_t FPSC[2] = {0x02, 0x02};
	if(HAL_I2C_Master_Transmit(&hi2c2, (0x69<<1), FPSC, sizeof(FPSC), 100) != HAL_OK)
	{
		UART_I2Cfault();
	}

	// INTC-Register
	uint8_t INTC[2] = {0x03, 0x01};
	if(HAL_I2C_Master_Transmit(&hi2c2, (0x69<<1), INTC, sizeof(INTC), 100) != HAL_OK)
	{
		UART_I2Cfault();
	}
}


uint16_t amgGetData(uint8_t regDataL, uint8_t regDataH)
{
	uint16_t 	unconvertedData;
	uint8_t 	dataL, dataH;

	// Auslesen des "niedrigen" & "hohen" Datenregisters
	HAL_I2C_Mem_Read(&hi2c2, (0x69<<1), regDataL, 1, &dataL, sizeof(dataL), 10);
	HAL_I2C_Mem_Read(&hi2c2, (0x69<<1), regDataH, 1, &dataH, sizeof(dataH), 10);

	// Zusammenfügen der beiden 8-Bit Integer zu einem 16-Bit Integer
	unconvertedData = ((dataH << 8) | (dataL));

	return unconvertedData;
}


uint16_t amgTranslateDataInt(uint16_t rawData)
{
	uint16_t data;

	data = rawData / 4;

	return data;
}


float amgTranslateDataFloat(uint16_t rawData)
{
	float data;

	data = (float)(rawData) / (float)4;

	return data;
}


void amgDataToUart(float *dataFloat, uint16_t *dataInt)
{
	uint16_t 	tmpFractionalInt;
	uint8_t printBufSize;
	char printBuf[32];			// lediglich die maximale Länge, benötigte Länge wird später mittels sprintf()-Funktion  (stdio.h) bestimmt

	uint8_t zeroCounted = 0;

	// Überprüfung der Datenmatrix auf Null-Einträge, da erfahrungsgemäß jedes zweite Frame aus fehlerhaften Einträgen besteht
	zeroCounted = amgDataPlausibilityCheck(dataInt);

	if(zeroCounted == 0)
	{
		// Iteration über den Inhalt der Matrix, also alle 64 Werte
		int k = 0;

		// Iteration über die Zeilen der Matrix

		for(int i = 0; i < 8; i++)
		{
			// Iteration über die Elemente einer einzelnen Zeile
			for(int j = 0; j < 8; j++)
			{
				// Aufruf der Funktion zur Umwandlung der Nachkommastellen in eine Ganzzahl
				tmpFractionalInt = convertFloatFractionToInt(dataFloat[k]);

				// Bestimmung der Stringlänge & Definition des auszugebenden Strings
				printBufSize = sprintf(printBuf, "%d.%2d ", dataInt[k], tmpFractionalInt);
				k++;

				// Ausgabe des Strings
				HAL_UART_Transmit(&huart2, (uint8_t *)printBuf, printBufSize, 10);
			}

			formatUart(1);
		}
	}
	else
	{
		// nur zu Debugzwecken
		UART_faultyFrame();
	}

	formatUart(3);
}


uint16_t convertFloatFractionToInt(float dataFloat)
{
	double 	tmpFractional, tmpInteger;
	uint16_t tmpFractionalInt;

	// Aufteilung der Gleitkommazahl mittels modf()-Funktion (math.h)
	tmpFractional = modf(dataFloat, &tmpInteger);

	// Umwandlung in Integer
	tmpFractionalInt = (uint16_t) (tmpFractional * 100);

	return tmpFractionalInt;
}


int amgDataPlausibilityCheck(uint16_t *rawData)
{
	uint8_t zeroCounting = 0;

	for(int l = 0; l < 64; l++)
	{
		// Vergleich der Matrix-Einträge mit Null: falls wahr, wird Zähler inkrementiert
		if( rawData[l] == 0)
		{
			zeroCounting++;
		}
	}

	return zeroCounting;
}
