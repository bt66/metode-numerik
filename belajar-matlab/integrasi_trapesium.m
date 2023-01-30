clc;
clear all;
syms x;
persamaan = input('Masukkan persamaan integral : ');
a = input('Masukkan batas bawah integral : ');
b = input('Masukkan batas atas integral : ');
h = input('Masukkan lebar pias : ');

disp('KAIDAH TRAPESIUM');
%test = a+h:h:b-h;
%disp(test);


% print tabel

fprintf('\tr\t\tXr\t\t\t\tFr\n');
loop = 0;
for xr = a:h:b
    fx = subs(persamaan,xr);
    fprintf('\t%d\t\t%f\t\t%f\n',loop,xr,fx);
    loop= loop+ 1;
    %fprintf('%f\n', fx);
end

sum = 0;

for xr = a+h:h:b-h
    fx = subs(persamaan,xr);
    %fprintf('%f\n', fx);
    sum = sum + fx;
end

result = h/2*(subs(persamaan,a)+(2*sum)+subs(persamaan,b));

fprintf('hasil kaidah trapesium: %f\n', result);

