clear; close all;

% Exercise 1.1
%% Part A
figure;
x1 = [zeros(1, 5) 0.9 zeros(1, 14)]; subplot(4, 1, 1); stem(1:20, x1);
x2 = [zeros(1, 15) 0.8 zeros(1, 15)]; subplot(4, 1, 2); stem(-15:15, x2);
x3 = [zeros(1, 33) 1.5 zeros(1, 17)]; subplot(4, 1, 3); stem(300:350, x3);
x4 = [zeros(1, 3) 4.5 zeros(1, 7)]; subplot(4, 1, 4); stem(-10:0, x4);

%% Part B
A = 2.5; P = 5; L = 50; M = L / P;
s = repmat([A zeros(1, P - 1)], 1, M);
figure; plot(0:L - 1, s);

%% Part C
x = [0; 1; 1; 0; 0; 0] * ones(1, 7);
x = x(:);
size(x)
figure; plot(0:size(x) - 1, x);
disp('Part C equivalent formula: sum(x[n]=A*dirac(n-i*P)+A*dirac(n-i*P-1), i, 1, 7) where A=1 and P=6');
% End Exercise 1.1