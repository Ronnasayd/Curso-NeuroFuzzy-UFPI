x = [0 0; 0 1; 1 0; 1 1];
Wa = [1 1];
thetaA = 1.2;
[ua,ca] = potencial(x,Wa,thetaA);
ya = degrau(ua);

Wb = [1 1];
thetaB = 0.4;
[ub,cb] = potencial(x,Wb,thetaB);
yb = degrau(ub);

Wc = [1 1];
thetaC = 2.1;
[uc,cc] = potencial(x,Wc,thetaC);
yc = degrau(uc);

x1 = [ya yb yc];
w1 = [-2 1 0.5];
theta1 = 0.5;
[u,c] = potencial(x1,w1,theta1);
y = degrau(u);

x = [0 0;
    0 0.25;
    0.25 0.4;
    0.9 0.3;
    0.55 0.3;
    1 1;
    0.14 0.29;
    0.92 0.19;
    0.26 0.39;
    0.19 0.78;];

wa = [0.6 0.7];
thetaA = 0.1;
[ua,ca] = potencial(x,wa,thetaA);
ya = linearN(ua)

wb = [0.4 0.2];
thetaB = 0.8;
[ub,cb] = potencial(x,wb,thetaB);
yb = linearN(ub)

wc = [0.1 0.3];
thetaC = 0.5;
[uc,cc] = potencial(x,wc,thetaC);
yc = linearN(uc)

x1 = [ya yb yc];
w = [0.6 0.5 0.4];
theta = 0.2;
[u,c] = potencial(x1,w,theta);
y = linearN(u)

