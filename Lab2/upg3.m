clear; close all

load upg3_Vce1V.mat

figure(1)
semilogy(uppg3_Vce1V(:,1),uppg3_Vce1V(:,3),'r*')
hold on
semilogy(uppg3_Vce1V(:,1),uppg3_Vce1V(:,4),'b*')

grid on
xlabel('$V_{BE} \ (V)$', 'Interpreter', 'latex')
ylabel('$I \ (A)$', 'Interpreter', 'latex')
legend('$I_B$','$I_C$',...
    
    'Interpreter', 'latex', 'Location', 'best')
title('$V_{CE} = 1$ V', 'Interpreter', 'latex')

%%
load upg3_Vbe.mat
close all
figure(2)
subplot(2,1,1)
plot(uppg3_Vbe02(:,2),uppg3_Vbe02(:,3),'rx')
hold on
plot(uppg3_Vbe04(:,2),uppg3_Vbe04(:,3),'bx')
plot(uppg3_Vbe06(:,2),uppg3_Vbe06(:,3),'mx')
plot(uppg3_Vbe08(:,2),uppg3_Vbe08(:,3),'kx')
grid on
xlabel('$V_{CE} \ (V)$', 'Interpreter', 'latex')
ylabel('$I_{B} \ (A)$', 'Interpreter', 'latex')
legend('$V_{BE} = 0.2$ V',...
    '$V_{BE} = 0.4$ V',...
    '$V_{BE} = 0.6$ V',...
    '$V_{BE} = 0.8$ V',...
    'Interpreter', 'latex', 'Location', 'best')


subplot(2,1,2)
plot(uppg3_Vbe02(:,2),uppg3_Vbe02(:,4),'rx')
hold on
plot(uppg3_Vbe04(:,2),uppg3_Vbe04(:,4),'bx')
plot(uppg3_Vbe06(:,2),uppg3_Vbe06(:,4),'mx')
plot(uppg3_Vbe08(:,2),uppg3_Vbe08(:,4),'kx')

grid on
xlabel('$V_{CE} \ (V)$', 'Interpreter', 'latex')
ylabel('$I_{C} \ (A)$', 'Interpreter', 'latex')









