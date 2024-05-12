% 662021001-kdkagl

% Fungsi yang dimiliki
f = @(x) x.^2 + 7*x.^2 - 4*x + 1;
x = 2;
h = 0.01;
turunan_maju = (f(x + h) - f(x)) / h;
turunan_tengah = (f(x + h) - f(x - h)) / (2 * h);
turunan_mundur = (f(x) - f(x - h)) / h;
% tampilkan hasil
disp(['Forward Difference', num2str(x), ' is: ', num2str(turunan_maju)])
disp(['Central Difference', num2str(x), ' is: ', num2str(turunan_tengah)])
disp(['Backward Difference', num2str(x), ' is: ', num2str(turunan_mundur)])