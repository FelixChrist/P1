voltage = [480/1000; 450/1000; 433/1000; 409/1000; 370/1000];
current = [6.2/1000; 4/1000; 3/1000; 2.1/1000; 1.2/1000];
plot(voltage, log(current));
f=fit(voltage,log(current),'poly1')
title('Voltage against ln(Current (A) / 1A) at various light intesities');
xlabel('Voltage (V)');
ylabel('ln(Current (A) / 1A)');