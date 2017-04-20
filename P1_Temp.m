filename = 'P1.xlsx';

voltage = xlsread(filename,7,'C15:C41');
current = xlsread(filename,7,'D15:D41');
plot(voltage,current)
hold on;
voltage = xlsread(filename,8,'C15:C41');
current = xlsread(filename,8,'D15:D41');
plot(voltage,current)
hold on;
voltage = xlsread(filename,9,'C13:C39');
current = xlsread(filename,9,'D13:D39');
plot(voltage,current)
hold on;
voltage = xlsread(filename,10,'C13:C39');
current = xlsread(filename,10,'D13:D39');
plot(voltage,current)
hold on;
voltage = xlsread(filename,11,'C13:C39');
current = xlsread(filename,11,'D13:D39');
plot(voltage,current)
hold on;
title('Temperature Variation I/V Characteristics of Solar Cell');
xlabel('Voltage mV');
ylabel('Current mA');
legend('Temp. = 25.13C','Temp = 30.95C','Temp = 34.79C','Temp = 39.56C','Temp = 44.5C');