% Chapter 1 - Project 1 - Exercise 1.1
clear; close all;

%% Part A
figure;
x1 = [zeros(1, 5) 0.9 zeros(1, 14)];
subplot(2, 2, 1); stem(1:20, x1); xlabel('Sample'); ylabel('Amplitude'); title('$x_1[n]=0.9\delta[n-5]$', 'Interpreter', 'latex');
x2 = [zeros(1, 15) 0.8 zeros(1, 15)];
subplot(2, 2, 2); stem(-15:15, x2); xlabel('Sample'); ylabel('Amplitude'); title('$x_2[n]=0.8\delta[n]$', 'Interpreter', 'latex');
x3 = [zeros(1, 33) 1.5 zeros(1, 17)];
subplot(2, 2, 3); stem(300:350, x3); xlabel('Sample'); ylabel('Amplitude'); title('$x_3[n]=1.5\delta[n-333]$', 'Interpreter', 'latex');
x4 = [zeros(1, 3) 4.5 zeros(1, 7)];
subplot(2, 2, 4); stem(-10:0, x4); xlabel('Sample'); ylabel('Amplitude'); title('$x_4[n]=4.5\delta[n+7]$', 'Interpreter', 'latex');
saveas(gcf, 'img/exercise_1.1_a.png');

%% Part B
A = 2.5; P = 5; L = 50; M = L / P;
s = [A; 0; 0; 0; 0] * ones(1, 10);
s = s(:);
figure; stem(0:L - 1, s);
xlabel('Sample'); ylabel('Amplitude'); title('$s[n]=\sum_{l=0}^{49}2.5\delta[n-5l]$', 'Interpreter', 'latex');
saveas(gcf, 'img/exercise_1.1_b.png');

%% Part C
x = [0; 1; 1; 0; 0; 0] * ones(1, 7);
x = x(:);
size(x)
figure; stem(0:size(x) - 1, x);
xlabel('Sample'); ylabel('Amplitude'); title('$s[n]=\sum_{l=0}^{41}\delta[n-l] + \delta[n-2l]$', 'Interpreter', 'latex');
saveas(gcf, 'img/exercise_1.1_c.png');
