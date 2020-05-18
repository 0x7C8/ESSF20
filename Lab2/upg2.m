clear; close all

load upg2.mat

subplot(2,1,1)
index_plus = find((uppg2_CV(:,1) > 0));
plot(uppg2_CV(index_plus,1), uppg2_CV(index_plus,2), 'bx')
grid on
xlabel('$V \ (V)$', 'Interpreter', 'latex')
ylabel('$C \ (F)$', 'Interpreter', 'latex')

subplot(2,1,2)
index_minus = find((uppg2_CV(:,1) < 0));
plot(uppg2_CV(index_minus,1), uppg2_CV(index_minus,2), 'bx')
grid on
xlabel('$V \ (V)$', 'Interpreter', 'latex')
ylabel('$C \ (F)$', 'Interpreter', 'latex')

%%
figure(2)
plot(uppg2_CV(:,1), uppg2_CV(:,2), 'bx')
grid on
xlabel('$V \ (V)$', 'Interpreter', 'latex')
ylabel('$C \ (F)$', 'Interpreter', 'latex')

%%
close all
figure(3)
plot(uppg2_CV(1:end,1), 1./uppg2_CV(1:end,2).^2, 'bx')
grid on
axis([-2 2 0 2e22])



