clc;
clear all;
syms x;
persamaan = 1/(1+x);
%input('Masukkan persamaan integral : ');
a = input('Masukkan batas bawah integral : ');
b = input('Masukkan batas atas integral : ');
h = input('Masukkan lebar pias : ');

jumlahPias = (b-a)/h;

fprintf('\nJumlah pias adalah %d\n',jumlahPias);

disp('KAIDAH TITIK TENGAH');
sum = 0;

xrBreak = a:h:b;
breakpoint = xrBreak(length(xrBreak)-1);
% print garis
fprintf('\tr\t\tXr\t\t\t\tFr\n');
loop = 0;
for xr = a:h:b
    fx = subs(persamaan,xr);
    fprintf('\t%d\t\t%f\t\t%f\n',loop,xr,fx);
    loop= loop+ 1;
    %fprintf('%f\n', fx);
end
% end print
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