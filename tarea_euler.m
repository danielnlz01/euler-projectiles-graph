%% Gráfica con viento y sin fricción
clc;clear

m=-0.7842;
c=2834.3;

x=0:0.1:2500;
y=m*x+c;

plot(x,y)
hold on

g=9.8;
vin=130;
angulo=60*pi/180;

vxin=vin*cos(angulo);
vyin=vin*sin(angulo);

xin=0;
yin=2834.3;

xt=xin;
yt=yin;

xp(1,1)=xin;
yp(1,1)=yin;
vx(1,1)=vxin;
vy(1,1)=vyin;

i=1;

dt=0.1;

y_linea=m*xt+c;
while yt>=y_linea
    i=i+1;
    xp(i,1)=xp(i-1,1)+dt*vx(i-1,1);
    yp(i,1)=yp(i-1,1)+dt*vy(i-1,1);
    vx(i,1)=vx(i-1,1)+dt*(-0);
    vy(i,1)=vy(i-1,1)+dt*(-g);
    y_linea=m*xp(i,1)+c;
    yt=yp(i,1);
end
plot(xp,yp)

clc;clear

m=-0.7842;
c=2834.3;

x=0:0.1:2500;
y=m*x+c;

g=9.8;
vin=130;
angulo=60*pi/180;

vxin=vin*cos(angulo);
vyin=vin*sin(angulo);

xin=0;
yin=2834.3;

xt=xin;
yt=yin;

xp(1,1)=xin;
yp(1,1)=yin;
vx(1,1)=vxin;
vy(1,1)=vyin;

i=1;

dt=0.1;

y_linea=m*xt+c;
while yt>=y_linea
    i=i+1;
    xp(i,1)=xp(i-1,1)+dt*vx(i-1,1);
    yp(i,1)=yp(i-1,1)+dt*vy(i-1,1);
    vx(i,1)=vx(i-1,1)+dt*(-0.1);
    vy(i,1)=vy(i-1,1)+dt*(-g);
    y_linea=m*xp(i,1)+c;
    yt=yp(i,1);
end
plot(xp,yp)

clc;clear

m=-0.7842;
c=2834.3;

x=0:0.1:2500;
y=m*x+c;

g=9.8;
vin=130;
angulo=60*pi/180;

vxin=vin*cos(angulo);
vyin=vin*sin(angulo);

xin=0;
yin=2834.3;

xt=xin;
yt=yin;

xp(1,1)=xin;
yp(1,1)=yin;
vx(1,1)=vxin;
vy(1,1)=vyin;

i=1;

dt=0.1;

y_linea=m*xt+c;
while yt>=y_linea
    i=i+1;
    xp(i,1)=xp(i-1,1)+dt*vx(i-1,1);
    yp(i,1)=yp(i-1,1)+dt*vy(i-1,1);
    vx(i,1)=vx(i-1,1)+dt*(-0.2);
    vy(i,1)=vy(i-1,1)+dt*(-g);
    y_linea=m*xp(i,1)+c;
    yt=yp(i,1);
end
plot(xp,yp)

clc;clear

m=-0.7842;
c=2834.3;

x=0:0.1:2500;
y=m*x+c;

g=9.8;
vin=130;
angulo=60*pi/180;

vxin=vin*cos(angulo);
vyin=vin*sin(angulo);

xin=0;
yin=2834.3;

xt=xin;
yt=yin;

xp(1,1)=xin;
yp(1,1)=yin;
vx(1,1)=vxin;
vy(1,1)=vyin;

i=1;

dt=0.1;

y_linea=m*xt+c;
while yt>=y_linea
    i=i+1;
    xp(i,1)=xp(i-1,1)+dt*vx(i-1,1);
    yp(i,1)=yp(i-1,1)+dt*vy(i-1,1);
    vx(i,1)=vx(i-1,1)+dt*(-0.3);
    vy(i,1)=vy(i-1,1)+dt*(-g); %para friccion se resta el valor de aceleración
    y_linea=m*xp(i,1)+c;
    yt=yp(i,1);
end
plot(xp,yp)


hold off
% leyendas de la tabla
title("Recorrido del Proyectil Comparando Distancias a 130 m/s, Mismo Ángulo y con Viento Distinto sin Fricción")
xlabel("Distancia en el Eje x (m)")
ylabel("Distancia en el Eje y (m)")
legend(["Pendiente del volcán","Fw= 0","Fw= 0.1","Fw= 0.2","Fw= 0.3"],"Location","northeast")