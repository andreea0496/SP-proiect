%  TEMA DE CASA 2

% SEMNAL TRIUNGHIULAR

P=40; 
D=6; 
w0=2*pi/P; 
t_triunghi=0:0.05:D;
x_triunghi= sawtooth((pi/12)*t_triunghi,0.5)/2+0.5; 
t = 0:0.05:P; 
x = zeros(1,length(t)); 
x(t<=D)=x_triunghi; 
figure(1);
plot(t,x,'r'); 
title('x(t)(linie solida) si reconstructia folosind N coeficienti (linie punctata)');
hold on;
grid on;


for k=-50:50
    x_t = x_triunghi;
    x_t = x_t .* exp(-j*k*w0*t_triunghi); 
    X(k+51)=0; 
    for i = 1: length(t_triunghi)-1
        X(k+51) = X(k+51) + (t_triunghi(i+1)-t_triunghi(i))* (x_t(i)+x_t(i+1))/2; 
    end
end
    


for i = 1: length(t)
    x_finit(i) = 0;
    for k=-50:50
        x_finit(i) = x_finit(i) + (1/P)*X(k+51)*exp(j*k*w0*t(i)); 
    end
end
plot(t,x_finit,'--k'); 
grid on;
figure(2);
w=-50*w0:w0:50*w0; 
stem(w/(2*pi),abs(X),'m'); 
grid on;

