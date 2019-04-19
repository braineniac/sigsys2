#!/usr/bin/env octave


function exp_fun()
    n_pos = 0:10;
    n = -10:10;

    plot_a2n(n_pos,0.5);
    plot_a2absn(n,0.5);
    plot_myexp(n,0.05);
end

function plot_a2n(n,a)
    x_n = x_n = a.^n;
    plot(n,x_n);
end

function plot_a2absn(n,a)
    x_n=a.^abs(n);
    plot(n,x_n);
end

function plot_myexp(n,alpha)
    x_n = exp(-alpha*n.^2);
    plot(n,x_n);
end

function plot(n,x)
    plot = stem(n,x);
    waitfor(plot);
end
