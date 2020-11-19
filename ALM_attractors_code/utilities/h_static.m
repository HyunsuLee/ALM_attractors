function [ Y ] = h_static( Y, tauD, tauf, U )

u_hat = ((Y * tauD * U) + U) ./ (1 + U * tauf * Y);
x_hat = 1 ./ (1 + u_hat .* Y * tauD);

Y = u_hat .* x_hat;
