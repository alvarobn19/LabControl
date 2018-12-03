Q=[5000 0 0 0;0 0 0 0;0 0 100 0;0 0 0 0];
R=1;
A=[0 1 0 0;0 0 -4 0;0 0 0 1;0 0 46.6667 0];
B=[0; 2; 0; -6.6667];
C=[1 0 0 0;0 0 1 0];

g1=ss(A,B,C,0)
step(g1)

K=lqr(A,B,Q,R)
Ar=A-(B*K)
g2=ss(Ar,B,C,0);
step(g2)