<h1> SPI Test </h1>

A test setup created with the goal of testing 2x SPI Slaves with the Raspberry Pi. Hardware platform supports 3x HCSR04 ultrasonic sensors and the GPS Pmod.

__/constraints/__

Project xdc. Edit accordingly.

__/src/__

C sources for each Zynq PS ARM processor.

__/test_spi_us.tcl__

A tcl script to recreate the Vivado 2019.1 project/block diagram in this directory. Run from the Vivado tcl console.

To use:

0) Add /ip/ to Vivado ip path. 

1) Open Vivado TCL console.

2) cd into \NGCP_Embedded_SDK\prj\

3) run ```source test_spi_us.tcl```

4) Create block diagram wrapper .

Known critical warnings:

```DDR Timing```

```PmodGPS_* packaged with board value 'digilentinc.com:arty:part0:1.1'```