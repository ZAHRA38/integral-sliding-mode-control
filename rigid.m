function dy = rigid(t,y)
%%parameters
Phils=-0.1497;M=6.1055;K=105.8630;alpha=0.183;
D=0.6;
F=0.42;G=0.028;V=1.39;
clo=0.28;S=0.21;
ws=2*pi*S*(V/D);
Lambda=0.5*1.225*V^2*D*4.7597;
Gamma=0.5*1.225*V^2*D*5.3441;
%%dynam
dy=zeros(4,1);
dy(1)=y(1);
dy(2)=(1/M)*(-((2*alpha)/(D/ws))*Gamma*y(2)-K*y(1)+Gamma*y(3)+Phils*0);
dy(3)=y(4);
dy(4)=ws*G*clo^2*y(4)-ws^2*y(3)-Lambda*y(3)^2*y(4)+((ws*F)/(D))*y(2);
end

