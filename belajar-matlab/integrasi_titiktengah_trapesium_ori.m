clc;
clear all;
syms x;
persamaan = 1/(1+x);
%input('Masukkan persamaan integral : ');
a = 0;
%input('Masukkan batas bawah integral : ');
b = 1;
%input('Masukkan batas atas integral : ');
h = 0.04;
%input('Masukkan lebar pias : ');

jumlahPias = (b-a)/h;

fprintf('\nJumlah pias adalah %d\n',jumlahPias);

disp('KAIDAH TITIK TENGAH');
sum = 0;

xrBreak = a:h:b;
breakpoint = xrBreak(length(xrBreak)-1);

for xr = a:h:b
    %disp(xrBreak(length(xrBreak)-1));
    temp = xr+((1/2)*(h));
    fx = subs(persamaan,temp); 
%    fprintf('%f\n',fx);
    sum = sum +fx;
    if xr == breakpoint
        break;
    end
end
%fprintf('%f\n',sum);
result = sum *h;
fprintf('hasil kaidah titik tengah: %f\n', result);

disp('KAIDAH TRAPESIUM');
%test = a+h:h:b-h;
%disp(test);


% print tabel
%{
fprintf('\tr\t\tXr\t\t\t\tFr\n');
loop = 0;
for xr = a:h:b
    fx = subs(persamaan,xr);
    fprintf('\t%d\t\t%f\t\t%f\n',loop,xr,fx);
    loop= loop+ 1;
    %fprintf('%f\n', fx);
end
%}
sum = 0;

for xr = a+h:h:b-h
    fx = subs(persamaan,xr);
    %fprintf('%f\n', fx);
    sum = sum + fx;
end

result = h/2*(subs(persamaan,a)+(2*sum)+subs(persamaan,b));

fprintf('hasil kaidah trapesium: %f\n', result);




