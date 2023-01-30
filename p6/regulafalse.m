% Author - Ambarish Prashant Chandurkar
%The Regula Falsi Method
clc;
close all;
clear all;
syms x;
f = input('Masukkan f(x) : ')
%f=log(x)-x+3; %Enter the Function here
n=input('Enter the number of decimal places:');
epsilon = 10^-(n+1)
x0 = input('Enter the 1st approximation:');
x1 = input('Enter the 2nd approximation:');
for i=1:100
    f0=vpa(subs(f,x,x0)); %Calculating the value of function at x0
    f1=vpa(subs(f,x,x1)); %Calculating the value of function at x1
y=x1-((x1-x0)/(f1-f0))*f1; %[x0,x1] is the interval of the root
fprintf('Iterasi ke %d\troot = %6.5f\tf(a) = %6.5f\tf(b) = %6.5f\n', i, y, f0, f1);
err=abs(y-x1);
if err<epsilon %checking the amount of error at each iteration
break
end
f2=vpa(subs(f,x,y));
if (f1)*(f2)<1
x0=y;  %taking the next interval as[x0,x1] = [y,x1]
x1=x1;
else
    x0=x0; %taking the next interval as[x0,x1] = [x0,y]
    x1=y;
end
end
y = y - rem(y,10^-n); %Displaying upto required decimal places
fprintf('The Root is : %f \n',y);

ezplot(f)
grid
