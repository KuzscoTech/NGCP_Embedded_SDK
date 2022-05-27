%% Parameters
port       = "COM1";
baudrate   = 115200;
runs       = 20000;


%% Port Config
clear device;
device = serialport(port, baudrate);
configureTerminator(device, "CR");
device.Timeout = 10000000000000;

while true
    %% Initialize x and y axis data
    xdata = nan(runs, 1);
    ydata = nan(runs, 1);
    
    i=1;
    data = readline(device);
    %disp("read a line");
    disp(data);
    disp(strlength(data));
    if(strlength(data) == 6)
        disp("Capturing");
        while (strlength(data) >= 9)
            data = readline(device);
            n = str2double(data);
            disp(data);
            if ~isnan(n) 
                disp(data);
                xdata(i) = i;
                ydata(i) = n;
                i=i+1;
            end
        end
        disp("End of capture");
        plot(xdata, ydata);
    else
        disp("Waiting for start condition...");
        disp(data);
        disp(strlength(data))
    end
end

clear device;
