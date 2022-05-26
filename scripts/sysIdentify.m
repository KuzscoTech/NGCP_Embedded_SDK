%% Parameters
port       = "COM6";
baudrate   = 115200;
runs       = 20000;


%% Port Config
clear device;
device = serialport(port, baudrate);
configureTerminator(device, "CR");
device.Timeout = 10000000000000;

test = "COM6";
if(test == port) 
    disp("TRUE");
else
    disp("FALSE");
end

while true
    %% Initialize x and y axis data
    xdata_rpm  = nan(runs, 1);
    ydata_rpm  = nan(runs, 1);
    xdata_duty = nan(runs, 1);
    ydata_duty = nan(runs, 1);
    
    i=1;

    % look for start condition
    data = readline(device);
    if(strlength(data) == 6)

        disp("Capturing");

        % break on stop condition
        while (strlength(data) ~= 4)

            % read line 1: rpm
            data = readline(device);
            n = str2double(data);
            if ~isnan(n) 
                disp(data);
                xdata_rpm(i) = i;
                ydata_rpm(i) = n;    
            end
            
            % read line 2: duty
            data = readline(device);
            n = str2double(data);
            if ~isnan(n) 
                xdata_duty(i) = i;
                ydata_duty(i) = n;
            end
            i=i+1;
        end
        disp("End of capture");
        plot(xdata_rpm, ydata_rpm);
        break;
    else
        disp("Waiting for start condition...");
        disp(data);
    end
end

rpmData  = iddata(ydata_rpm,  xdata_rpm, 25, TimeUnit, milliseconds);
dutyData = iddata(ydata_duty,xdata_duty, 25, TimeUnit, milliseconds);

clear device;
