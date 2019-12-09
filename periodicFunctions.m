%a bunch of (mostly) periodic functions listed in the paper
f1 = @(k)(@(x) cos(k*x));
f2 = @(x)(sin(x/2));
f3 = @(x)((sin(x/2)).^3);
f4 = @(a)(@(x)1./(a-cos(x)));
f5 = @(a) @(x)(exp(a*cos(x)));
f6 = @(x)(exp((cos(x)-1).*(cos(x) + 1)));
f7 = @(x)(exp(-x.^2));

ex1 = @(x) exp(cos(x));
ex2 = f6;
ex3 = @(x) exp(5*cos(x));