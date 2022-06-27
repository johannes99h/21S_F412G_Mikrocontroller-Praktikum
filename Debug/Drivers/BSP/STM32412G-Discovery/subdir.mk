################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BSP/STM32412G-Discovery/stm32412g_discovery.c \
../Drivers/BSP/STM32412G-Discovery/stm32412g_discovery_lcd.c 

OBJS += \
./Drivers/BSP/STM32412G-Discovery/stm32412g_discovery.o \
./Drivers/BSP/STM32412G-Discovery/stm32412g_discovery_lcd.o 

C_DEPS += \
./Drivers/BSP/STM32412G-Discovery/stm32412g_discovery.d \
./Drivers/BSP/STM32412G-Discovery/stm32412g_discovery_lcd.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/STM32412G-Discovery/stm32412g_discovery.o: ../Drivers/BSP/STM32412G-Discovery/stm32412g_discovery.c Drivers/BSP/STM32412G-Discovery/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F412Zx -c -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Drivers/BSP/Components" -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Drivers/BSP/STM32412G-Discovery" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Utilities/Fonts" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/STM32412G-Discovery/stm32412g_discovery.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/STM32412G-Discovery/stm32412g_discovery_lcd.o: ../Drivers/BSP/STM32412G-Discovery/stm32412g_discovery_lcd.c Drivers/BSP/STM32412G-Discovery/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F412Zx -c -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Drivers/BSP/Components" -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Drivers/BSP/STM32412G-Discovery" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Utilities/Fonts" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/STM32412G-Discovery/stm32412g_discovery_lcd.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

