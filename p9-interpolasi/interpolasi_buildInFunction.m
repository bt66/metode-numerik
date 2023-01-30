clear;
clc;
%isi dari data adalah variabel bebas
dataBebas=[245 276 309 325 344];
dataTerikat=[2003:3:2015];
% data yang akan di cari
prediksiData=[2004 2005];
% hasil interpolasi
result=interp1(dataTerikat,dataBebas,prediksiData);
%{
%interpolasi non linear
%result=interp1(dataTerikat,dataBebas,prediksiData,'spline');
%}
fprintf('hasil interpolasi : \t%.10f\n', result);


plot(dataTerikat, dataBebas,prediksiData,result,'-o');
grid on