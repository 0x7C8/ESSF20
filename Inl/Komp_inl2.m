clear; close all

N_A = 3e22; % m-3
N_D = 6e22; % m-3
epsi_0 = 8.85e-12; % F/m
epsi_r = 16;    % Ge
U_t = .0259;    % V (@300K)
n_i = 2.5e19;   % m-3 (Ge @300K)
e = 1.602e-19;  % As

%% c

U_bi = U_t*log(N_A*N_D/n_i^2)

%% d
Epsi_br = 2e7;  % V/m
U_br = U_bi - epsi_r*epsi_0*Epsi_br^2 / ( 2*e*N_A )