clc;clear;
tic;
syms x;
y=input('Persamaan          = ');
e=input('Toleransi error          = ');
a=input('tebakan awal (x0)          = ');
N=input('Max iterasi          = ');
g = diff(y,x);
step = 1;
fa = eval(subs(y,x,a));
 
while abs(fa) > e 
    fa = eval(subs(y,x,a));
    ga = eval(subs(g,x,a));
    if ga == 0
        disp('iterasi berhenti karena turunan == 0')
        break;
    end
    b = a - fa/ga;
 
 
    fprintf('iterasi=%d\ta=%f\tf(a)=%f\n',step, a, fa);
 
    a = b;
 
    if step > N 
        disp('Tidak konvergen');
        break;
    end
    step = step + 1;
end
 
fprintf('Hasil %f\n',a);
