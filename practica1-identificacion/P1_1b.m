t=0:0.1:1.5;
G=tf(2,[0.017 0.325 1])
y=step(G,t);
plot(t,y);
u=ones(16,1);
ident
%G=tf(P2)
