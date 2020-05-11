close all

subplot(1,2,1)
plot(solcellIUlow(:,1), solcellIUlow(:,2)*1e3, 'b')
hold on
plot(solcellIUhigh(:,1), solcellIUhigh(:,2)*1e3, 'r')

xlabel('U (V)')
ylabel('I (mA)')
grid on

subplot(1,2,2)
plot(solcellIUlow(:,1), abs(solcellIUlow(:,1).*solcellIUlow(:,2)*1e3), 'b')
hold on
plot(solcellIUhigh(:,1), abs(solcellIUhigh(:,1).*solcellIUhigh(:,2)*1e3), 'r')

xlabel('U (V)')
ylabel('P (mW)')
grid on

max_low = max(abs(solcellIUlow(:,1).*solcellIUlow(:,2)))
max_high = max(abs(solcellIUhigh(:,1).*solcellIUhigh(:,2)))

R_low = solcellIUlow(:,1)./solcellIUlow(:,2)
R_high = solcellIUhigh(:,1)./solcellIUhigh(:,2)
figure(2)
plot(abs(R_low), abs(solcellIUlow(:,1).*solcellIUlow(:,2)*1e3), 'b')
hold on
plot(abs(R_high),abs(solcellIUhigh(:,1).*solcellIUhigh(:,2)*1e3), 'r')

xlabel('R (Ohm)')
ylabel('P (mW)')
