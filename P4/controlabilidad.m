A=[0 1 0 0;0 0 -10 0;0 0 0 1;0 0 20 0];
B=[0;1;0;-1];
C=[ 1 0 0 0;0 0 1 0];
g1=ss(A,B,C,0);
ctrb(g1);
rank(ans);