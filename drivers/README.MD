__drive_motor/__

Functions to initialize a drive motor, including PWM, QEI, and PID instances. Drive motor peripheral addresses and PID parameters are set here. Also includes function to dump stats to a UART buffer.


__gps/__

Functions to initialize a PmodGPS instance and fetch new data. Also includes function to dump data to a UART buffer.

__pid/__

PID Controller object.

__servo_motor/__

Functions to initialize a servo motor, including servoz and XADC instances. Servo motor peripheral addresses and PID parameters are set here. Also includes function to dump stats to a UART buffer.

__system/__

Function to initialize interrupt controller.

__uart/__

Functions to initialize UartLite instances. Also contains functions to parse received UART data for peripheral setpoints.