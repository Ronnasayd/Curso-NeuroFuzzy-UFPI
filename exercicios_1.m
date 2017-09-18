format long
x  = [0 0; 0 1; 1 0; 1 1];
w = [1 1];
theta = 1.1;
[u,c] = potencial(x,w,theta);
y = degrau(u)

x  = [0 0; 0 1; 1 0; 1 1];
w = [0.2 0.8];
theta = 0.1;
[u,c] = potencial(x,w,theta);
y = degrau(u)

x  = [0 0; 0 1; 1 0; 1 1];
w = [-1 1];
theta = -0.5;
[u,c] = potencial(x,w,theta);
y = degrau(u)

x  = [0.3 0.7];
w = [0.4 0.5];
theta = 0.2;
B = 1;
[u,c] = potencial(x,w,theta);
y = tanhiper(B,u)

x  = [0.3 0.7];
w = [0.6 0.7];
theta = 0.3;
B = 1;
[u,c] = potencial(x,w,theta);
y = tanhiper(B,u)

x  = [0.3 0.7];
w = [0.8 0.3];
theta = 0.4;
B = 1;
[u,c] = potencial(x,w,theta);
y = tanhiper(B,u)

x  = [0.26 0.35 0.05];
w = [0.6 0.2 0.7];
theta = -0.7;
B = 1;
[u,c] = potencial(x,w,theta);
y = tanhiper(B,u)

x  = [0.74 0.53];
w = [0.8 0.5];
theta = 0.1;
B = 1;
[u,c] = potencial(x,w,theta);
y = tanhiper(B,u)