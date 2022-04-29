################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/driveMotor_utilities.c \
../src/pid.c \
../src/servoMotor_utilities.c \
../src/system.c 

OBJS += \
./src/driveMotor_utilities.o \
./src/pid.o \
./src/servoMotor_utilities.o \
./src/system.o 

C_DEPS += \
./src/driveMotor_utilities.d \
./src/pid.d \
./src/servoMotor_utilities.d \
./src/system.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../arm0_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


