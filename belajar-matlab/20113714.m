clear all;
close all;
clc;

Xi=[-10 -8 -6 -4 -2 0 2 4 6 8 10];
Yi=[0.0 0.0001 0.0045 0.0907 0.5488 1.0 0.5488 0.0907 0.0045 0.0001 0.0];

Sx=sum(Xi);
Sy=sum(Yi);
X2 = Xi*Xi';
XiYi = Xi*Yi';
disp("ini xiyi");
disp(XiYi);
N = length(Xi);
%disp(N);

a=(N*XiYi-Sx*Sy)/(N*X2-Sx^2);

b=(X2*Sy-XiYi*Sx)/((N*X2)-(Sx^2));
disp("ini a: ");
disp(a);
disp("ini b: ");
disp(b);

yy=a*Xi+b;

plot(Xi,Yi,'o',Xi,yy)
