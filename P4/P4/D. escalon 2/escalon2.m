%%respuesta entrada escalon sin compensar y compensando 2

A=[0 1 0 0;0 0 -10 0;0 0 0 1;0 0 20 0];
B=[0; 1; 0; -1];
C=[1 0 0 0;0 0 1 0];
p=[-10 -10.1 -10.2 -10.3];

g1=ss(A,B,C,0);
step(g1)

K=place(A,B,p);
Ar=A-(B*K);
g2=ss(Ar,B,C,0);
step(g2)