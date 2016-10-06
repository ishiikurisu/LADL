%% main: Main calculations for prerel4
function [out] = main()
% Main calculations for prerel4
disp('# 4.2. Linear motion');
disp('## 4.2.1 Theoretical model');

% Declaring physical parameters
a = 0.000181;
b = 0.0001125;
c = 0.001378;
K = c/a;
fprintf('a = %.5f\nb = %.5f\nc = %.5f\n', a, b, c);
fprintf('K = %.5f\n', K);

% Declaring transfer functions
fprintf('G = \n');
gn = [a, 0, 0];
gd = [b, c, 0];
G = tf(gn, gd)
fprintf('H = \n');
hn = [K*a/b, 0, 0];
hd = [1, c/b, K*a/b];
H = tf(hn, hd)
grid on;
bode(H);
xd = roots(gd)
xh = roots(hd)
