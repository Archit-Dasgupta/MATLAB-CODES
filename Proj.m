P= 0:1:25; %Pressure Varying in KPa
D=1.211*10^-7; %Flexural Rigidity
a=1250*10^-6 ;  %axis1
b=800*10^-6;    %axis2
%Ellipse
h=a^4*b^4/(3*a^2+3*b^2+2*a^2*b^2);
W1=P*1000*h/(8*D)
%Circle
l=53*10^-6;
W2=P*l^4*1000/(64*D)
%Square
c=80*10^-6;
W3=0.00133*P*c^4*1000/D
%Pentagon
d=80*10^-6;
W4=0.0041*P*d^4*1000/D
%rectangle
i=5000*10^-6
j=4000*10^-6
alpha=i^4*j^4/(7*i^4+7*j^4+4*i*j)
W5=0.0239*P*alpha/D
plot(P,W1,P,W2,P,W3,P,W4,P,W5)
legend('Ellipse','Circle','Square','Pentagon','Rectangle')