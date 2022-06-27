#include 	"generalHandling.h"

/* externe Deklarationen -----------------------------------------------*/
extern 		UART_HandleTypeDef huart2;
extern		IWDG_HandleTypeDef hiwdg;


/* Wertzuweisungen -----------------------------------------------*/


/* Funktionsdefinitionen -----------------------------------------------*/
void 		resetLEDs()
{
	HAL_GPIO_WritePin(GPIOE, GPIO_PIN_0, GPIO_PIN_SET);						// grün
	HAL_GPIO_WritePin(GPIOE, GPIO_PIN_1, GPIO_PIN_SET);						// orange
	HAL_GPIO_WritePin(GPIOE, GPIO_PIN_2, GPIO_PIN_SET);						// rot
	HAL_GPIO_WritePin(GPIOE, GPIO_PIN_3, GPIO_PIN_SET);						// blau
}


void UART_faultyFrame()
{
	uint8_t faultyFrame[12] = "Faulty Frame";

	HAL_UART_Transmit(&huart2, (uint8_t *)faultyFrame, sizeof(faultyFrame), 10);
}


void UART_I2Cfault()
{
	uint8_t I2C_fault[9] = "I2C fault";

	HAL_UART_Transmit(&huart2, (uint8_t *)I2C_fault, sizeof(I2C_fault), 10);
}


void formatUart(uint8_t numberOfEmptyLines)
{
	char changeLine[4];
	uint8_t changeLineSize;

	// Ausgabe von leeren Zeilen über UART, um Übersichtlichkeit in der Konsole zu wahren & Datalog zu ermöglichen
	for(int i = 0; i < numberOfEmptyLines; i++)
	{
		changeLineSize = sprintf(changeLine, "\n\r");
		HAL_UART_Transmit(&huart2, (uint8_t *)changeLine, changeLineSize, 10);
	}
}


void confWatchdog()
{
	hiwdg.Instance = IWDG;

	// Parameter, um Resetintervall auf eine Sekunde festzulegen
	hiwdg.Init.Prescaler = IWDG_PRESCALER_8;
	hiwdg.Init.Reload = 4095;

	HAL_IWDG_Init(&hiwdg);
}
