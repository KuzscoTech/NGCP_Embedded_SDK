%% Initialize
clc
close all
file = "logs\driveMotor_log.txt"; % logfile location

DBG_DISPDATA    = 0;
DBG_PLOTDATA    = 1;
DBG_RPM_IDDATA  = 1;
DBG_DUTY_IDDATA = 1;
DBG_POS_IDDATA  = 0;

%% Read from logfile
data = readmatrix(file);
fprintf("Read %d lines of data.\r\n", height(data));

%% Break up the data into separate arrays
rpmData  = nan(height(data), 2);
dutyData = nan(height(data), 2);
posData  = nan(height(data), 2);

for i = 1:height(data)
    rpmData  (i,1) = data(i, 1);
    rpmData  (i,2) = data(i, 2);
    dutyData (i,1) = data(i, 3);
    dutyData (i,2) = data(i, 4);
    posData  (i,1) = data(i, 5);
    posData  (i,2) = data(i, 6);
end

%% Display the data so we know we aren't crazy
if DBG_DISPDATA
    if DBG_RPM_IDDATA
        disp(rpmData);
    end
    if DBG_DUTY_IDDATA
        disp(dutyData);
    end
    if DBG_POS_IDDATA
        disp(posData);
    end
end

%% Plot the data and pray its accurate
if DBG_PLOTDATA
    figure('Name','RPM Data');
    plot(rpmData(:,2),rpmData(:,1));
    grid
    hold off

    figure('Name','Duty Data');
    hold on
    plot(dutyData(:,2),dutyData(:,1));
    grid
    hold off

    figure('Name','Position Data');
    hold on
    plot(posData(:,2),posData(:,1));
    grid
    hold off
end

%% Generate sysid data from captured data
if DBG_RPM_IDDATA
    rpmIdData  = iddata(rpmData(:,1) , rpmData(:,2),  25, 'TimeUnit', 'milliseconds');
end
if DBG_DUTY_IDDATA
    dutyIdData = iddata(dutyData(:,1), dutyData(:,2), 25, 'TimeUnit', 'milliseconds');
end
if DBG_POS_IDDATA
    posIdData  = iddata(posData(:,1), posData(:,2), 25, 'TimeUnit', 'milliseconds');
end

disp("Iddata generation complete.");




