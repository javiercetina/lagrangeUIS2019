clc 
clear
Xp=7;
X=[2 5 8 9.5 6.7];
Y=[1.5 2.3 4.5 7 9];
Xa=abs(Xp-X);
p=min(find(Xa==min(Xa)));
if p==1
    A=[X(p)^2 X(p) 1;X(p+1)^2 X(p+1) 1;X(p+2)^2 X(p+2) 1];
    B=[Y(p);Y(p+1);Y(p+2)];
else
    if p~=length(X)
        A=[X(p-1)^2 X(p-1) 1;X(p)^2 X(p) 1;X(p+1)^2 X(p+1) 1];
        B=[Y(p-1);Y(p);Y(p+1)];
    else
        A=[X(p-2)^2 X(p-2) 1;X(p-1)^2 X(p-1) 1;X(p)^2 X(p) 1];
        B=[Y(p-2);Y(p-1);Y(p)];
    end
end
C=linsolve(A,B);
Yp=(C(1)*Xp^2)+(C(2)*Xp)+C(3);
        