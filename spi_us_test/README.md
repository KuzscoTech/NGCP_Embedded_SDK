<h1> SPI Test </h1>

A test setup created with the goal of testing 2x SPI Slaves with the Raspberry Pi. Hardware platform supports 3x HCSR04 ultrasonic sensors and the GPS Pmod.

__/constraints/__

Project xdc. Edit accordingly.

__/src/__

C sources for each Zynq PS ARM processor.

__/test_spi_us.tcl__

A tcl script to recreate the Vivado 2019.1 project/block diagram in this directory. Run from the Vivado tcl console.