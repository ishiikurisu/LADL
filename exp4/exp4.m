%%
%
%

%i =2
%[m,phi] = amp_fase(w,output_real,input_sine,input_cosine,3)
%dados(i,:) = [m,phi]
%disp(dados)

H=tf([K],[tau 1]);

[m,f,w]=bode(H);
m=20*log10(m);
for i=1:size(w,1)
    amp(i)=m(1,1,i); 
end;
for i=1:size(w,1)
    fase(i)=f(1,1,i);
end;

f = [1:7 10 15 20 30 40 60 80 100]

subplot(2,1,1); semilogx(w,amp); grid on; hold on;
title('Amplitude dB')
semilogx(f,dados(:,1),'ro')
legend('Teórico','Experimental')
subplot(2,1,2); semilogx(w,fase); grid on;hold on;
title('Fase')
semilogx(f',dados(:,2),'ro')
legend('Teórico','Experimental')




print('bode_exp4','-dpng')
