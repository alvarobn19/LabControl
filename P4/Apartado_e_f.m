A=[0 1 0 0;0 0 -4 0;0 0 0 1;0 0 46.6667 0];
B=[0;2;0;-6.6667];
C=[ 1 0 0 0;0 0 1 0];
Q=[1 0 0 0;0 0 0 0;0 0 1 0;0 0 0 0];
R=1;

K=lqr(A,B,Q,R)
Ar=A-(B*K)
Ge=ss(Ar,B,C,0);
step(Ge)