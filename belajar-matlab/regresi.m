clear all;
close all;
clc;

Xi=[2012 2013 2014 2015 2017 2018];
% Yi=[6.03 5.56 5.01 4.88 5.07 5.17];

Yi=[1 2 3 4 6 7];
prediksi=2016;

Sx=sum(Xi);
Sy=sum(Yi);


model = fitlm(Xi, Yi);
disp(model);

y2 = predict(model,prediksi);

disp(y2);


figure 
hold on 
scatter(Xi,Yi,50,'filled') 
line(Xi,Yi) 
xlabel('tahun'),ylabel('jumlah populasi') 
title('Data pertumbuhan populasi'); 
grid on 
legend('target','line fitting') 
hold off


