%compensacion polos
% s1=-10 s2=-10.1 s3=-10.2 s4=-10.3

A=[0 1 0 0;0 0 -10 0;0 0 0 1;0 0 20 0];
B=[0; 1; 0; -1];
C=[1 0 0 0;0 0 1 0];
p=[-10 -10.1 -10.2 -10.3];
K=place(A,B,p)
Ar=A+(B*K)