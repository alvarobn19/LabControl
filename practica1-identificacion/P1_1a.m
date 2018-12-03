t=0:0.1:1.5;
G=tf(2,[0.1975 1],'inputdelay',0.2)
y=step(G,t);
plot(t,y);
u=ones(16,1);
ident
%G=tf(P1D)
