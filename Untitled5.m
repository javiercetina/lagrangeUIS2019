clc 
clear
xo=input('Valor que desea interpolar ');
n=input('Número de puntos que desea ingresar ');
for i=1:n
    disp('');
    disp('Ingrese el punto');
    disp(i);
    X(i)=input('Ingrese el valor de X ');
    Y(i)=input('Ingrese el valor de Y ');
end
%plot(X,Y,'r-+')
for i=1:n
    Ya(i)=Y(i)
    for j=1:n
        if j~=i;
            Ya(i)=Ya(i)*(xo-X(j))/(X(i)-X(j));
        end
    end
end
Yo=sum(Ya)
plot(X,Y,'p-',xo,Yo,'r+')
title('Interpolacion de lagrange')
xlabel('Ordenadas')
ylabel('Abscisas ')
legend('Puntos iniciales','Punto interpolado')