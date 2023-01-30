clc;clear;
syms x;

disp("Nama  : Muhammad Bastian Hanafi");
disp("Kelas : 20IF07");
fprintf("NIM   : 20.11.3714 \n\n")


suhu = [5, 10, 15, 20, 25, 30];
klorida10 = [11.6, 10.3, 9.1, 8.2, 7.4, 6.8];
klorida20 = [10.5, 9.2, 8.2, 7.4, 6.7, 6.1];

data=klorida10;

b=length(suhu);

% variabel untuk pembatas perulangan dan print string
kolom = 2;
dataKlorida =10;

for i=1:kolom
    if i==2
        data=klorida20;
        dataKlorida=20;
    end
    
    fprintf('\n\n\nINTERPOLASI UNTUK KLORIDA %d mg/L \n\n\n', dataKlorida);
    
    %print data yang sudah ada
    disp('Data yang sudah ada :');
    fprintf('\tsuhu\tklorida %d mg/L\t\n', dataKlorida);
    for i=1:b
       fprintf('\t %d \t\t %1.1f \t \n',suhu(i),data(i));
    end

    %inisialisasi fx
    fx=0;
    fprintf('\n\n');
    disp('Nilai masing-masing L(x) : ');

    % mulai proses pencarian q(x), qx1, lx, dan px
    for i=1:b
      %inisialisasi qx
      qx=1;

       %perulangan untuk mencari qx
      for j=1:b
        if (i~=j)
         qx=qx*(x-suhu(j));
        end
      end
    %mencari qx1 dengan substitusi x ke gx
    qx1=subs(qx,x,suhu(i));
    %mencari lx
    lx=qx/qx1;
    lx1=collect(lx);

      %menampilkan lx
      fprintf('\t L%d(x) = ',i); 
      disp(lx1);

    %mencari fx
      fx=fx+data(i)*lx;
    end
    %menyederhanakan fx menjadi px dan menampilkan ke layar
    px=collect(fx);
    fprintf('\n----------------------------------------------------------------------------------------\n');
    fprintf('Hasil Persamaan setelah di sedarhanakan = ');
    disp(px);
    persamaan = subs(px,22.4);
    fprintf('Jika suhu 22.4 maka konsentrasi oksigen yang larut pada %d mg/L adalah = \t%.10f\n\n',dataKlorida, persamaan);
    fprintf('----------------------------------------------------------------------------------------\n');
    
end
