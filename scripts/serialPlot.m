%% Parameters
port       = "COM4";
baudrate   = 115200;
runs       = 20000;

%% Port Config
device = serialport(port, baudrate);
configureTerminator(device, "CR");
device.Timeout = 10000;


%% Read Data
xdata = nan(runs, 1);
ydata = nan(runs, 1);

i=1;
while i<runs
    data = readline(device);
    n = str2double(data);

    if ~isnan(n) && n>0
        disp(data);
        xdata(i) = i;
        ydata(i) = n;
        i=i+1;
    end
end

%% Plot Data
plot(xdata, ydata);
clear device;
