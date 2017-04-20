filename = 'P1.xlsx';
sheet = 1;
xlRange = 'C6:C46';
ylRange = 'E6:E46';

voltage = xlsread(filename,sheet,xlRange);
current = xlsread(filename,sheet,ylRange);
plot(voltage,current)
title('Baseline I/V Characteristics of Solar Cell');
xlabel('Voltage (mV)');
ylabel('Current (mA)');
hold on;
area = 0.0001;
intensity = 0.035;
voltage = transpose(voltage);
current = transpose(current);

fill = voltage.*current;
%plot(voltage,fill/500);
ind = find(fill==max(fill));
Voc=520
Isc=12.7

Vmp=voltage(ind)
Imp=current(ind)
FF=(Vmp*Imp)/(Voc*Isc)
