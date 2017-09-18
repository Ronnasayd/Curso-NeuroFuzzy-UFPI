% 2 a)
clc
clear
x1 = linspace(0,1,20);
w1 = 0.1;
theta = 0.0;
B = 1;
[u,c] = potencial(x1',w1,theta);
y = logistica(B,u);
plot(x1,y,'b-');
grid
xlabel('x');
ylabel('y')
pause

%b)
clc
clear
x1 = linspace(0,1,20);
w1 = 0.5;
theta = 0.0;
B = 1;
[u,c] = potencial(x1',w1,theta);
y = logistica(B,u)'
plot(x1,y,'b-');
grid
xlabel('x');
ylabel('y')
pause

%c)
clc
clear
x1 = linspace(0,1,20);
w1 = 0.9;
theta = 0.0;
B = 1;
[u,c] = potencial(x1',w1,theta);
y = logistica(B,u)'
plot(x1,y,'b-');
grid
xlabel('x');
ylabel('y')
pause

%d)
clc
clear
x1 = linspace(0,1,20);
w1 = 0.1;
theta = 0.0;
B = 1;
[u,c] = potencial(x1',w1,theta);
y = tanhiper(B,u)'
plot(x1,y,'b-');
grid
xlabel('x');
ylabel('y')
pause

%e)
clc
clear
x1 = linspace(0,1,20);
w1 = 0.5;
theta = 0.0;
B = 1;
[u,c] = potencial(x1',w1,theta);
y = tanhiper(B,u)'
plot(x1,y,'b-');
grid
xlabel('x');
ylabel('y')
pause

%f)
clc
clear
x1 = linspace(0,1,20);
w1 = 0.9;
theta = 0.0;
B = 1;
[u,c] = potencial(x1',w1,theta);
y = tanhiper(B,u)'
plot(x1,y,'b-');
grid
xlabel('x');
ylabel('y')
pause

%g)
clc
clear
x1 = linspace(0,1,20);
x2 = linspace(0,1,20);
w1 = 0.1;
w2 = 0.7;
theta = 0.0;
B = 1;
[u,c] = potencial([x1' x2'],[w1 w2],theta);
y = logistica(B,u)
plot3(x1,x2,y)
grid
xlabel('x1')
ylabel('x2')
zlabel('y')
pause

%h)
clc
clear
x1 = linspace(0,1,20);
x2 = linspace(0,1,20);
w1 = 0.5;
w2 = 0.5;
theta = 0.0;
B = 1;
[u,c] = potencial([x1' x2'],[w1 w2],theta);
y = logistica(B,u)
plot3(x1,x2,y)
grid
xlabel('x1')
ylabel('x2')
zlabel('y')
pause

%i)
clc
clear
x1 = linspace(0,1,20);
x2 = linspace(0,1,20);
w1 = 0.7;
w2 = 0.1;
theta = 0.0;
B = 1;
[u,c] = potencial([x1' x2'],[w1 w2],theta);
y = logistica(B,u)
plot3(x1,x2,y)
grid
xlabel('x1')
ylabel('x2')
zlabel('y')
pause

%j)
clc
clear
x1 = linspace(0,1,20);
x2 = linspace(0,1,20);
w1 = 0.7;
w2 = 0.1;
theta = 0.25;
B = 1;
[u,c] = potencial([x1' x2'],[w1 w2],theta);
y = logistica(B,u)
plot3(x1,x2,y)
grid
xlabel('x1')
ylabel('x2')
zlabel('y')
pause

%k)
clc
clear
x1 = linspace(0,1,20);
x2 = linspace(0,1,20);
w1 = 0.5;
w2 = 0.5;
theta = 0.25;
B = 1;
[u,c] = potencial([x1' x2'],[w1 w2],theta);
y = logistica(B,u)
plot3(x1,x2,y)
grid
xlabel('x1')
ylabel('x2')
zlabel('y')
pause

%l)
clc
clear
x1 = linspace(0,1,20);
x2 = linspace(0,1,20);
w1 = 0.7;
w2 = 0.1;
theta = 0.25;
B = 1;
[u,c] = potencial([x1' x2'],[w1 w2],theta);
y = logistica(B,u)
plot3(x1,x2,y)
grid
xlabel('x1')
ylabel('x2')
zlabel('y')
pause