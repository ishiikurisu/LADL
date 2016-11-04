function contas(A, B, P)
%A =
%
%         0         0    1.0000         0
%         0         0         0    1.0000
%         0    1.3101   -5.8717   -0.0142
%         0   48.1625  -25.4309   -0.5218
%
% B =
%
%         0
%         0
%    1.3655
%    5.9142
% P tem no relatorio

polos = eig(A);
K = place(A, B, P);
novos_polos = eig(A - B*K);
