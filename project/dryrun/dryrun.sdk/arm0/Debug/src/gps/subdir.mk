################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gps/gpsFunctions.c \
../src/gps/gps_functions.c 

OBJS += \
./src/gps/gpsFunctions.o \
./src/gps/gps_functions.o 

C_DEPS += \
./src/gps/gpsFunctions.d \
./src/gps/gps_functions.d 


# Each subdirectory must supply rules for building sources it contributes
src/gps/%.o: ../src/gps/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../arm0_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


