Kp=1; s=tf('s');
for Ti=[0.7:0.1:1.5]
Gc=Kp*(1+1/Ti/s); G_c=feedback(G*Gc,1); step(G_c), hold on; end
figure
 Kp=1; Ti=1; 
for Td=[0.1:0.2:2]
Gc=Kp*(1+1/Ti/s+Td*s); G_c=feedback(G*Gc,1); step(G_c), hold on; end
Figure 