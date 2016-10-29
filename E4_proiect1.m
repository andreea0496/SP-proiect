%a)

z = zeros(1,21);   %am creat un vector cu vectorul z, pe care l-am initializat cu 0 
z(1,6) = 1;       %am atribuit valoarea 1 celui de al saselea element
n = 0:20;
m = -5:15;
subplot(2,1,1), stem(z,n,'r'), title('z(n)'), grid    %am creat prima minifereastra si graficul discret a lui x in functie de n
subplot(2,1,2), stem(z,m), title('z(m)'), grid

%b)

n = 0:20 ;                 
t = abs(10-n) ;    %am facut t=|10-n|
subplot(3,1,1), plot(n),grid %am creat cate o minifereastra in care am reprezentat graficele lui n,t,si a lui t in functie de n
subplot(3,1,2), plot(t), grid  
subplot(3,1,3), plot(t,n,'r'), grid

%c)

n1 = -15:25;        %am initializat vectorul n1
x1 = sin (n1*pi / 17);      %am initializat vectorul x1 care depinde de functia sinus si n 
n2 = 0:50;
x2 = cos (n2*pi / sqrt(23));    

figure(1)   %in figure(1) am reprezentat cele doua grafice suprapuse

plot(x1,'r') 
hold on   %am folosit hold on pentru a retine graficul facut pentru a putea suprapune cel de al doilea grafic
plot(x2,'k'), grid, title('Sinus si Cosinus')
hold off  %am folosit hold off pentru a continua reprezentarea grafica intr-o alta fereastra

figure(2)  %am reprezentat aici cele doua grafice in doua miniferestre fara a se suprapune

subplot(2,1,1), plot(x1,'r'), grid, title('Sinus')
subplot(2,1,2), plot(x2,'k'), grid, title('Cosinus')

%in figurile 3 si 4 am reprezentat graficelede mai sus in varianta discreta, folosind functia 'stem' 

figure(3)

stem(x1,'k')
hold on 
stem(x2,'m'), grid
hold off

figure(4)

subplot(2,1,1), stem(x1,'k'), grid, title('Sinus discret')
subplot(2,1,2), stem(x2,'m'), grid, title('Cosinus discret')
