% 662021001-kdkagl

% Fungsi yang dimiliki
f = @(x) x.^2 + 3*x - 2;
% Batas Integral
a = 0;
b = 2;
% Jumlah subinterval
n = 100;
% Hitung lebar interval
h = (b - a) / n;
%inisialisasi
sum_left = 0;
sum_right = 0;
sum_midpoint = 0;
for i = 0:n-1
    x_left = a + i * h;
    x_right = a + (i + 1) * h;
    x_midpoint = (x_left + x_right) / 2;
    
    sum_left = sum_left + f(x_left);
    sum_right = sum_right + f(x_right);
    sum_midpoint = sum_midpoint + f(x_midpoint);
end

% Hitung integral 
integral_left = h * sum_left;
integral_right = h * sum_right;
integral_midpoint = h * sum_midpoint;
%tampilkan hasil
fprintf('Hasil integral menggunakan trapesium kiri: %0.6f\n', integral_left);
fprintf('Hasil integral menggunakan trapesium tengah: %0.6f\n', integral_midpoint);
fprintf('Hasil integral menggunakan trapesium kanan: %0.6f\n', integral_right);