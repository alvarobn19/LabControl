s=tf('s'); 
G=tf(1,[1,3,3,1]);
 Kp=1; Ti=1;
Td=1; Gc=Kp*(1+1/Ti/s+Td*s); step(feedback(G*Gc,1)), hold on
for N=[100,1000,10000,1:10]
Gc=Kp*(1+1/Ti/s+Td*s/(1+Td*s/N)); G_c=feedback(G*Gc,1); step(G_c)
end
figure; [y,t]=step(G_c); err=1-y; plot(t,err) 