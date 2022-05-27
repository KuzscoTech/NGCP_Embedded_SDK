%% Init
close all;
rpmIndex  = 1;
dutyIndex = 1;

%% Parameters
port       = "COM2";
baudrate   = 115200;
runs       = 20000;


%% Port Config
clear device;
device = serialport(port, baudrate);
configureTerminator(device, "CR");
device.Timeout = 10000000000000;


%% Main Loop
while true
    % Initialize x and y axis data
    xdata_rpm  = nan(runs, 1);
    ydata_rpm  = nan(runs, 1);
    xdata_duty = nan(runs, 1);
    ydata_duty = nan(runs, 1);

    % look for start condition
    disp("Waiting for start condition...");
    data = readline(device);
    if(strlength(data) == 5)

        disp(data);
        disp(strlength(data));
        disp("Capturing");


        % break on stop condition
        while (strlength(data) ~= 4)
            data = readline(device);

            % read line 1: rpm
            disp("reading rpm...");
            data = readline(device);
            n = str2double(data);

            if n >= 0
                disp(data);
                xdata_rpm(rpmIndex) = rpmIndex;
                ydata_rpm(rpmIndex) = n;
                disp("Valid rpm found!");
                disp(n);
                rpmIndex = rpmIndex+1;
            end
            
            % read line 2: duty
            disp("reading duty...");
            data = readline(device);
            n = str2double(data);

            if ~isnan(n) 
                xdata_duty(dutyIndex) = dutyIndex;
                ydata_duty(dutyIndex) = n;
                disp("Valid duty found!");
                disp(n);
                dutyIndex = dutyIndex+1;
            end

            
        end
        disp(data);
        disp("End of capture");
        break;
    else
        disp("Waiting for start condition...");
        disp(data);
    end
end

%% Plot captured data
figure('Name','RPM');
plot(ydata_rpm,  xdata_rpm);
figure('Name', 'Duty');
plot(ydata_duty, xdata_duty);

%% Generate id data
rpmData  = iddata(ydata_rpm,  xdata_rpm,  25, TimeUnit, milliseconds);
dutyData = iddata(ydata_duty, xdata_duty, 25, TimeUnit, milliseconds);

clear device;