%% main: Main calculations for prerel4
function [out] = main()
% Main calculations for prerel4

% PART 1: Linear motion
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
gn = [0, 0, a];
gd = [b, c, 0];
G = tf(gn, gd)
fprintf('H = \n');
hn = [K*a/b, 0, 0];
hd = [1, c/b, K*a/b];
H = tf(hn, hd)

% Calculating Bode diagram
fprintf('- Bode diagram\n')
figure;
grid on;
bode(H);

% Calculating system poles for later analysis
disp('- Polynomial roots');
xd = roots(gd)
xh = roots(hd)

% PART 2: Rotational motion
disp('# 4.3 Rotational motion');
disp('## 4.3.1 Theoretical model');

% Declaring physical parameters
K = 1.5286;
t = 0.0254;
fprintf('K = %.5f\n', K);
fprintf('tau = %.5f\n', t);

% Declaring transfer functions
fprintf('O =');
on = [0 K];
od = [t 1];
O = tf(on, od)

% Calculating Bode diagram
fprintf('- Bode diagram\n');
figure;
grid on;
bode(O);
