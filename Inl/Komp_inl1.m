clear;clc;

E_g = 1.11; % eV Si
kT = .0259; % eV @ 300K
N_C = 2.8e25;   % m-3 Si
N_V = 1.04e25;  % m-3 Si
n_i = 1e16; % m-3   Si

N_A = 4e22; % m-3   Ga
N_D = 1e22; % m-3   As

p_p0 = N_A-N_D
n_p0 = n_i^2/(p_p0)

%%
e = 1.602e-19;  % As
u_n = .135; % m2/Vs Si
u_p = .045; % m2/Vs Si

L = 100e-6; % m
b = 1e-6;   % m
h = .2e-6;  % m

sigma = e*(u_n*n_p0 + u_p*p_p0);
R = L/(sigma*b*h)

%%

E_F = E_g/2 - kT* log(abs(N_D-N_A)/n_i)





















