function [index, saida] = contas(v)
chute = 2.5;
v_tau = 0.63 * chute;
index = 1;
for n = 1:(length(v)-1)
    if and(v(n) <= v_tau, v(n+1) >= v_tau)
        index = n;
        break;
    end
end
saida = v(n);
