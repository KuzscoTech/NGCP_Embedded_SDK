@ECHO OFF
ECHO Moving files from /dryrun to repo


:: move ARM0 stuff
xcopy /s C:\Users\george\Documents\local_projects\dryrun\dryrun.sdk\arm0\src\arm0.c C:\Users\george\Documents\NGCP_Embedded_SDK\apps\ARM0 /Y
xcopy /s C:\Users\george\Documents\local_projects\dryrun\dryrun.sdk\arm0\src\arm0.h C:\Users\george\Documents\NGCP_Embedded_SDK\apps\ARM0 /Y
xcopy /s C:\Users\george\Documents\local_projects\dryrun\dryrun.sdk\arm0\src\ocm.h C:\Users\george\Documents\NGCP_Embedded_SDK\apps\ARM0 /Y
xcopy /s C:\Users\george\Documents\local_projects\dryrun\dryrun.sdk\arm0\src\ocm.c C:\Users\george\Documents\NGCP_Embedded_SDK\apps\ARM0 /Y


:: move system stuff
xcopy /s C:\Users\george\Documents\local_projects\dryrun\dryrun.sdk\arm0\src\system.c C:\Users\george\Documents\NGCP_Embedded_SDK\drivers\system /Y
xcopy /s C:\Users\george\Documents\local_projects\dryrun\dryrun.sdk\arm0\src\system.h C:\Users\george\Documents\NGCP_Embedded_SDK\drivers\system /Y

:: move uart_utilities
xcopy /s C:\Users\george\Documents\local_projects\dryrun\dryrun.sdk\arm0\src\uart_utilities.c C:\Users\george\Documents\NGCP_Embedded_SDK\drivers\uart /Y
xcopy /s C:\Users\george\Documents\local_projects\dryrun\dryrun.sdk\arm0\src\uart_utilities.h C:\Users\george\Documents\NGCP_Embedded_SDK\drivers\uart /Y

:: move arm1 stuff
xcopy /s C:\Users\george\Documents\local_projects\dryrun\dryrun.sdk\arm1\src\arm1.c C:\Users\george\Documents\NGCP_Embedded_SDK\apps\ARM1 /Y
xcopy /s C:\Users\george\Documents\local_projects\dryrun\dryrun.sdk\arm1\src\arm1.h C:\Users\george\Documents\NGCP_Embedded_SDK\apps\ARM1 /Y
xcopy /s C:\Users\george\Documents\local_projects\dryrun\dryrun.sdk\arm1\src\ocm.h C:\Users\george\Documents\NGCP_Embedded_SDK\apps\ARM1 /Y
xcopy /s C:\Users\george\Documents\local_projects\dryrun\dryrun.sdk\arm1\src\ocm.c C:\Users\george\Documents\NGCP_Embedded_SDK\apps\ARM1 /Y

:: move drive motor stuff
xcopy /s C:\Users\george\Documents\local_projects\dryrun\dryrun.sdk\arm1\src\driveMotor_utilities.c C:\Users\george\Documents\NGCP_Embedded_SDK\drivers\drive_motor /Y
xcopy /s C:\Users\george\Documents\local_projects\dryrun\dryrun.sdk\arm1\src\driveMotor_utilities.h C:\Users\george\Documents\NGCP_Embedded_SDK\drivers\drive_motor /Y

:: move servo motor stuff
xcopy /s C:\Users\george\Documents\local_projects\dryrun\dryrun.sdk\arm1\src\servoMotor_utilities.c C:\Users\george\Documents\NGCP_Embedded_SDK\drivers\servo_motor /Y
xcopy /s C:\Users\george\Documents\local_projects\dryrun\dryrun.sdk\arm1\src\servoMotor_utilities.h C:\Users\george\Documents\NGCP_Embedded_SDK\drivers\servo_motor /Y

:: move micrometal stuff
xcopy /s C:\Users\george\Documents\local_projects\dryrun\dryrun.sdk\arm1\src\microMetal_utilities.c C:\Users\george\Documents\NGCP_Embedded_SDK\drivers\micrometal_motor /Y
xcopy /s C:\Users\george\Documents\local_projects\dryrun\dryrun.sdk\arm1\src\microMetal_utilities.h C:\Users\george\Documents\NGCP_Embedded_SDK\drivers\micrometal_motor /Y

:: move pid stuff
xcopy /s C:\Users\george\Documents\local_projects\dryrun\dryrun.sdk\arm1\src\pid.c C:\Users\george\Documents\NGCP_Embedded_SDK\drivers\pid /Y
xcopy /s C:\Users\george\Documents\local_projects\dryrun\dryrun.sdk\arm1\src\pid.h C:\Users\george\Documents\NGCP_Embedded_SDK\drivers\pid /Y

:: move gps stuff
:: move servo motor stuff
xcopy /s C:\Users\george\Documents\local_projects\dryrun\dryrun.sdk\arm1\src\gps_utilities.c C:\Users\george\Documents\NGCP_Embedded_SDK\drivers\gps /Y
xcopy /s C:\Users\george\Documents\local_projects\dryrun\dryrun.sdk\arm1\src\gps_utilities.h C:\Users\george\Documents\NGCP_Embedded_SDK\drivers\gps /Y



