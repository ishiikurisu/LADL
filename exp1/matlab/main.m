function main()
disp('# Exercicio da sala');
trange = 0:10E-3:10;
y0 = [0 0];
[t, y] = ode45('rlc', trange, y0);
figure;
%plot(t, y(:,1));
%disp('# Exercicio 1');
p = poly();
r = -3:0.1:3;
%figure;
%plot(r, polyval(p, r));
%grid on;
roots(p)
disp('# Exercicio 2');
A = [1 4 -3; 2 1 5; -2 5 3];
det(A)
B = inv(A);
[V,D] = eig(A)
A*B
B*A
disp('# Exercicio 1 do relatório');
A = [1 1 2; 2 4 -3; 3 6 -5];
B = [9; 1; 0];
linsolve(A, B)
