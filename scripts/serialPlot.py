import matplotlib.pyplot as plt
import matplotlib.animation as animation
from matplotlib import style
import numpy as np
import random
import serial
import time

# initialize serial port
ser = serial.Serial()
ser.port = 'COM4'
ser.baudrate = 115200
ser.timeout = 0.001
ser.open()
ser.flushInput()
if ser.is_open:
    print("\nSerial port COM4 opened!\n")
    print(ser, "\n")

# create figure for plotting
fig = plt.figure()
ax = fig.add_subplot(1,1,1)
xs = [] # x axis data
ys = [] # y axis data

def animate (i, xs, ys):
    # read data from serial port
    line = ser.readline() # read ascii 
    line_as_list = line.split(b',')
    
    if line_as_list[0].isdigit():
        i = int(line_as_list[0])
        measurement = line_as_list[1]
        xs.append(i)
        ys.append(measurement)
        
        print("iteration: " + str(i))
        print("value: " + str(measurement))
    
        # limit x and y to 10000 items
        xs = xs[-10000:]
        ys = ys[-10000:]

        # draw x and y lists
        ax.clear()
        ax.plot(xs, ys, label="Measurement")

        # format plot
        plt.xticks(rotation=45, ha='right')
        plt.subplots_adjust(bottom=0.30)
        plt.title('Motor Response')
        plt.ylabel('Measurement')
        plt.legend()    

print("starting")
ani = animation.FuncAnimation(fig, animate, fargs=(xs,ys), interval=1)
plt.show()