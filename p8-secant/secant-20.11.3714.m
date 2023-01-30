clc; clear; clear all;
syms x;

p = input('Masukan Persamaan = ');
f = inline(p,'x');

a = input('Masukan interval A = ');
b = input('Masukan interval B = ');
E = input('Masukan toleransi error = ');
N = input('Masukan batas iterasi (0: tak terbatas) = ');
fprintf('\n');



fprintf(' i \t\t Ci \t\t\t B \t\t\t\t A \t\t\t\t f(Ci) \t\t    Error\n');


err=abs(b-a);
i = 1;
while err>E
    c = [b-((f(b)*(b-a))/(f(b)-f(a)))];
    err = abs(c-b);

    fprintf(' %d \t%.20f \t%.20f \t%.20f \t%.20f \t%.20f\n',i,c,b,a,f(c),err);

    a = b;
    b = c;

    if N~=0 && i==N
        graphPlot(p,c);
        return
    end

    i = i+1;
end
graphPlot(p,c);

function graphPlot(p,c)

    fprintf('\nAkarnya adalah = %.20f\n\n', c);

    ezplot(p);
    grid;
    hold on;
    plot(c,0,'.');
end
