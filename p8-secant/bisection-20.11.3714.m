%bisection
clc;clear;
tic;
syms x;
%input 3*x^2 + 2*x + 1
f1 = 0;
f2 = 0;
p=input('Persamaan          = ');

while(f1 * f2 >= 0)
    x1=input('Masukkan Nilai x1 = ');
    x2=input('Masukkan Nilai x2 = ');
    %masukkan x1 dan x2 ke dlm fungsi
    f1=subs(p,x,x1);
    f2=subs(p,x,x2);
    if(f1 * f2 >= 0)
        fprintf('f1 * f2 belum memenuhi syarat,. masukan tebakan x1 dan x2 lagi\n\n');
    end
end

%cari x3 dari titik tengah x1 dan x2
x3=(x1+x2)/2;
f3=subs(p,x,x3);
%nilai toleransi kesalahan
e=10^-3;
while abs(f3)>e
   if (f1*f3)<0
       x2=x3;
   else
       x1=x3;
   end
   f1=subs(p,x,x1);
   f2=subs(p,x,x2);
   x3=(x1+x2)/2;
   f3=subs(p,x,x3);   
   fprintf('x3 = %6.5f\tf3 = %6.5f\n',x3,f3);
end
   % fprintf('x3 = %6.5f\n',x3);
