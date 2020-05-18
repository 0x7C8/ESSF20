clear; close all

load upg1_cool.mat
load upg1_warm.mat

figure(1)
subplot(2,1,1)
plot(uppg177K(:,1),1e3*uppg177K(:,2),'b*')
hold on
plot(uppg1300K(:,1),1e3*uppg1300K(:,2),'r*')
grid on
xlabel('$V_{be} \ (V)$', 'Interpreter', 'latex')
ylabel('$I_{be} \ (mA)$', 'Interpreter', 'latex')

subplot(2,1,2)
semilogy(uppg177K(:,1),uppg177K(:,2),'b*')
hold on
semilogy(uppg1300K(:,1),uppg1300K(:,2),'r*')
grid on
xlabel('$V_{be} \ (V)$', 'Interpreter', 'latex')
ylabel('$I_{be} \ (A)$', 'Interpreter', 'latex')

%%
index_1 = find((uppg1300K < .7) & (uppg1300K > .1));
index_2 = find((uppg177K < 1.05) & (uppg177K > .91));
figure(2)
plot(uppg1300K(index_1,1),log(uppg1300K(index_1,2)),'r*')
hold on
plot(uppg177K(index_2,1),log(uppg177K(index_2,2)),'b*')
grid on



