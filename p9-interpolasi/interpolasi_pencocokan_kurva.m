clc;
clear;
clf;
orde=input('masukkan orde : ');
x=[-10 -8 -6 -4 -2 0 2 4 6 8 10];
y=[0.0000 0.0001 0.0045 0.0907 0.5488 1.0000 0.5488 0.0907 0.0045 0.0001 0.0000];

%fprintf('%d',y);

plot(x, y ,'o');

p=polyfit(x,y,orde);
hold on;
grid on;

kurva1=polyval(p,x);

plot(x,y,'or',x,kurva1,'k--');

%Y=[157 171 188 194 205 217 225 241 251 267 ];
%Tahun=1900:1:2000;
%Int_linier = interp1(x,y,tahun, ‘linier’);

