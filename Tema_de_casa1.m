%   TEMA DE CASA 

% 1. Semnal dreptunghiular periodic

T = 2;
F = 1/T;
t = 0:0.002:100;

d = square(2*pi*t*F,25);

for i = 1:1:length(d)
   if d(i) > 0
       d(i) = d(i)/2;
   end
end

plot(t,d,'.-r'),axis([0 6 -1.5 1]),xlabel('Timp[s]'),ylabel('Amplitudine'),title('Semnal dreptunghiular'),grid


% 2.Semnal triunghiular periodic

T = 5;
F = 1/T;
t = 0:0.0002:30;
tri = sawtooth(2*pi*F*t,0.2);
plot(t,tri,'.-m')
axis([0 30 -1.5 1.5])
xlabel('Timp[s]')
ylabel('Amplitudine')
title('Semnal triunghiular')
grid


% 4. Semnal sinusoidal redresat mono alternanta

T = 3;
F = 1/T;
t = 0 : 0.002 : 9;
s = 0.8*sin(2*pi*F*t);
mono = abs(s)-s;
subplot(2,1,1),plot(t,s,'.-'),title('Semnal sinusoidal'), xlabel ('Timp[s]'), ylabel('Amplitudine'), grid
subplot(2,1,2),plot(t,mono/2,'.-'),title('Semnal redresat mono alternanta'), xlabel ('Timp[s]'), ylabel('Amplitudine'), grid


%  5. Semnal sinusoidal redresat dubla alternanta

T = 4;
F = 1/T;
t = 0 : 0.002 : 12;
s = 1.5*sin(2*pi*F*t);
dublu = abs(s);
subplot(2,1,1), plot(t,s,'.-r'), title('Semnalul sinusoidal'), xlabel('Timp[s]'), ylabel('Amplitudine'), grid
subplot(2,1,2), plot(t,dublu,'.-k'), title('Semnalul sinusoidal redresat dubla alternanta'), xlabel('Timp[s]'), ylabel('Amplitudine'), grid


