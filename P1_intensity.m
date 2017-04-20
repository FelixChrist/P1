filename = 'P1.xlsx';

voltage = xlsread(filename,2,'C5:C38');
current = xlsread(filename,2,'D5:D38');
f=fit(voltage,current,'exp2')
plot(voltage,current)

hold on;
voltage = xlsread(filename,3,'C8:C39');
current = xlsread(filename,3,'D8:D39');
f=fit(voltage,current,'exp2')
plot(voltage,current)

hold on;
voltage = xlsread(filename,4,'D10:D41');
current = xlsread(filename,4,'E10:E41');
f=fit(voltage,current,'exp2')
plot(voltage,current)

hold on;
voltage = xlsread(filename,5,'D11:D43');
current = xlsread(filename,5,'E11:E43');
f=fit(voltage,current,'exp2')
plot(voltage,current)

hold on;
voltage = xlsread(filename,6,'C9:C38');
current = xlsread(filename,6,'D9:D38');
f=fit(voltage,current,'exp2')
plot(voltage,current)

hold on;
title('Intensity Variation I/V Characteristics of Solar Cell');
xlabel('Voltage mV');
ylabel('Current mA');
legend('Distance = 15cm','Distance = 20cm','Distance = 25cm','Distance = 30cm','Distance = 40cm');