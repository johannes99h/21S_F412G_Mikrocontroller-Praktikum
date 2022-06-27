#include 		"LCD.h"


/* externe Deklarationen -----------------------------------------------*/


/* Wertzuweisungen -----------------------------------------------*/


/* Funktionsdefinitionen -----------------------------------------------*/
void confLCD()
{
	BSP_LCD_Init();
	BSP_LCD_Clear(0xFFFF);
	BSP_LCD_DisplayChar(0, 0, 1);
}


void drawLCD(uint16_t posX, uint16_t posY, uint16_t pixelArrayColor)
{
	BSP_LCD_SetTextColor(pixelArrayColor);
	BSP_LCD_FillRect(posX, posY, 30, 30);
}


void updateLCD(uint16_t *rawData)
{
	uint16_t posX;
	uint16_t posY;
	uint16_t pixelArrayColor;
	uint8_t zeroCounted = 0;

	zeroCounted = amgDataPlausibilityCheck(rawData);

	// Update der farbigen Pixel-Arrays
	if(zeroCounted == 0)
	{
		// Iteration über den Inhalt der Matrix, also alle 64 Pixel
		int k = 0;

		// Iteration über die Zeilen
		for(int i = 0; i < 8; i++)
		{
			// Iteration über den Inhalt der Zeilen
			for(int j = 0; j < 8; j++)
			{
				posX = i * 30;
				posY = j * 30;

				// Funktion zum Ermitteln der gewünschten Farbe
				pixelArrayColor = assignColor(rawData[k]);
				k++;

				// Einfärben des projizierten Pixels mit der ermittelten Farbe
				drawLCD(posX, posY, pixelArrayColor);
			}
		}
	}
}


uint16_t assignColor(uint16_t tbdColor)
{
	// Definition der Grundfarben in RGB-Schreibweise
	uint8_t colorWHITE[3] 	= {	0,		0,		0,	};
	uint8_t colorBLUE[3] 	= {	0, 		0,		255	};
	uint8_t colorGREEN[3]	= {	0,		255,	0	};
	uint8_t colorRED[3]		= { 255,	0,		0,	};

	// notwendige lokale Variablen für die Farbwertinterpolation
	uint8_t lowerColor[3] = { 0 };
	uint8_t upperColor[3] = { 0 };
	uint16_t resultingColor[3];
	float	interpolatedTemp;

	// nach Interpolation zurückgegebener Farbwert
	uint32_t assignedColor = 0;

	// Farbwahl
	if(tbdColor > 0 && tbdColor <= 20)
	{
		for(int i = 0; i < 3; i++)
		{
			lowerColor[i] = colorWHITE[i];
			upperColor[i] = colorBLUE[i];
		}

		interpolatedTemp = ((float)20 - (float)tbdColor) / (float)20;
	}
	else if(tbdColor > 20 && tbdColor <= 40)
	{
		for(int i = 0; i < 3; i++)
		{
			lowerColor[i] = colorBLUE[i];
			upperColor[i] = colorGREEN[i];
		}

		interpolatedTemp = ((float)40 - (float)tbdColor) / (float)40;
	}
	else if(tbdColor > 40 && tbdColor <= 80)
	{
		for(int i = 0; i < 3; i++)
		{
			lowerColor[i] = colorGREEN[i];
			upperColor[i] = colorRED[i];
		}

		interpolatedTemp = ((float)80 - (float)tbdColor) / (float)80;
	}
	else
	{
		// Fehlerfall -> außerhalb des angegebenen Temperaturbereichs -> schwarzer Pixel
		assignedColor = 0xFFFF;
	}

	// Interpolation für jeden der RGB-Channel
	for(int i = 0; i < 3; i++)
	{
		resultingColor[i] = (lowerColor[i] + upperColor[i]) * interpolatedTemp;
	}

	// Zusammenführen der einzelnen Channel zu einer Hexadezimalzahl
	assignedColor = (resultingColor[0] << 16) | (resultingColor[1] << 8) | (resultingColor[2]);

	return assignedColor;
}

