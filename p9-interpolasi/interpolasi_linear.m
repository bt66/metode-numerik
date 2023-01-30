clc;
clear;

disp('INTERPOLASI LINIER');
disp('-------------------------')
% static variabel
%{ 
y0=173.9;
y1=203.3;
x0=1960;
x1=1970;
x=1968;
%}


%variabel bebas batas bawah (waktu, jumlah penduduk)
y0=input('masukkan y0 : ');
%variabel bebas batas atas (waktu, jumlah penduduk)
y1=input('masukkan y1 : ');
% variabel terikat (tahun, jam, tanggal)
x0=input('masukkan x0 : ');
% variabel terikat (tahun, jam, tanggal)
x1=input('masukkan x1 : ');
% masukkan nilai yang akan di tebak
x=input('masukkan x (nilai yang akan di tebak) : ');

Px=y0+((y1-y0)/(x1-x0)*(x-x0));
fprintf('Hasil prediksi = \t%.10f\n', Px);
