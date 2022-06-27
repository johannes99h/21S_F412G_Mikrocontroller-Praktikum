################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/AMG.c \
../Core/Src/LCD.c \
../Core/Src/generalHandling.c \
../Core/Src/main.c \
../Core/Src/stm32f4xx_hal_msp.c \
../Core/Src/stm32f4xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32f4xx.c 

OBJS += \
./Core/Src/AMG.o \
./Core/Src/LCD.o \
./Core/Src/generalHandling.o \
./Core/Src/main.o \
./Core/Src/stm32f4xx_hal_msp.o \
./Core/Src/stm32f4xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32f4xx.o 

C_DEPS += \
./Core/Src/AMG.d \
./Core/Src/LCD.d \
./Core/Src/generalHandling.d \
./Core/Src/main.d \
./Core/Src/stm32f4xx_hal_msp.d \
./Core/Src/stm32f4xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/AMG.o: ../Core/Src/AMG.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F412Zx -c -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Drivers/BSP/Components" -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Drivers/BSP/STM32412G-Discovery" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Utilities/Fonts" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/AMG.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/LCD.o: ../Core/Src/LCD.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F412Zx -c -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Drivers/BSP/Components" -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Drivers/BSP/STM32412G-Discovery" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Utilities/Fonts" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/LCD.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/generalHandling.o: ../Core/Src/generalHandling.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F412Zx -c -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Drivers/BSP/Components" -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Drivers/BSP/STM32412G-Discovery" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Utilities/Fonts" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/generalHandling.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/main.o: ../Core/Src/main.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F412Zx -c -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Drivers/BSP/Components" -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Drivers/BSP/STM32412G-Discovery" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Utilities/Fonts" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/main.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/stm32f4xx_hal_msp.o: ../Core/Src/stm32f4xx_hal_msp.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F412Zx -c -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Drivers/BSP/Components" -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Drivers/BSP/STM32412G-Discovery" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Utilities/Fonts" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/stm32f4xx_hal_msp.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/stm32f4xx_it.o: ../Core/Src/stm32f4xx_it.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F412Zx -c -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Drivers/BSP/Components" -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Drivers/BSP/STM32412G-Discovery" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Utilities/Fonts" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/stm32f4xx_it.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/syscalls.o: ../Core/Src/syscalls.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F412Zx -c -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Drivers/BSP/Components" -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Drivers/BSP/STM32412G-Discovery" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Utilities/Fonts" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/syscalls.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/sysmem.o: ../Core/Src/sysmem.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F412Zx -c -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Drivers/BSP/Components" -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Drivers/BSP/STM32412G-Discovery" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Utilities/Fonts" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/sysmem.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/system_stm32f4xx.o: ../Core/Src/system_stm32f4xx.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F412Zx -c -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Drivers/BSP/Components" -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Drivers/BSP/STM32412G-Discovery" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/OneDrive/Embedded/21S_Mikrocontroller-Praktikum/F412G_CubeIDE/Utilities/Fonts" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/system_stm32f4xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

