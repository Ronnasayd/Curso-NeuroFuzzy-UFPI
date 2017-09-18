%1 questao
x1 = linspace(0,1,20);
x2 = linspace(0,1,20);
B = 1;
for i=1:5
    w = rand(1,2);
    theta = rand(1,1);
    [u,c] = potencial([x1' x2'],w,theta);
    y = logistica(B,u)
    plot3(x1,x2,y)
    grid
    xlabel('x1')
    ylabel('x2')
    zlabel('y')
    title(sprintf('Gr�fico 1.%d',i))
    saveas(gcf,sprintf('1-%d.jpg',i))

end
%2 questao
x1 = linspace(0,1,20);
x2 = linspace(0,1,20);
B = 1;
for i=1:5
    w = rand(1,2);
    theta = rand(1,1);
    [u,c] = potencial([x1' x2'],w,theta);
    y = tanhiper(B,u)
    plot3(x1,x2,y)
    grid
    xlabel('x1')
    ylabel('x2')
    zlabel('y')
    title(sprintf('Gr�fico 2.%d',i))
    saveas(gcf,sprintf('2-%d.jpg',i))

end
%3 questao
x1 = linspace(0,1,20);
x2 = linspace(0,1,20);
B = 1;
for i=1:5
    wh = rand(2,2);
    thetah = rand(1,1);
    w = rand(1,2);
    theta = rand(1,1);
    [uh,ch] = potencial([x1' x2'],wh,thetah);
    yh = logistica(B,uh);
    [u,c] = potencial(yh,w,theta);
    y = logistica(B,u)
    plot3(x1,x2,y)
    grid
    xlabel('x1')
    ylabel('x2')
    zlabel('y')
    title(sprintf('Gr�fico 3.%d',i))
    saveas(gcf,sprintf('3-%d.jpg',i))

end
%4 questao
x1 = linspace(0,1,20);
x2 = linspace(0,1,20);
B = 1;
for i=1:5
    wh = rand(10,2);
    thetah = rand(1,1);
    w = rand(1,10);
    theta = rand(1,1);
    [uh,ch] = potencial([x1' x2'],wh,thetah);
    yh = logistica(B,uh);
    [u,c] = potencial(yh,w,theta);
    y = logistica(B,u)
    plot3(x1,x2,y)
    grid
    xlabel('x1')
    ylabel('x2')
    zlabel('y')
    title(sprintf('Gr�fico 4.%d',i))
    saveas(gcf,sprintf('4-%d.jpg',i))

end
%5 questao
x1 = linspace(0,1,20);
x2 = linspace(0,1,20);
B = 1;
for i=1:5
    wh1 = rand(2,2);
    thetah1 = rand(1,1);
    wh2 = rand(2,2);
    thetah2 = rand(1,1);
    w = rand(1,2);
    theta = rand(1,1);
    [uh1,ch1] = potencial([x1' x2'],wh1,thetah1);
    yh1 = logistica(B,uh1);
    [uh2,ch2] = potencial(yh1,wh2,thetah2);
    yh2 = logistica(B,uh2);
    [u,c] = potencial(yh2,w,theta);
    y = logistica(B,u)
    plot3(x1,x2,y)
    grid
    xlabel('x1')
    ylabel('x2')
    zlabel('y')
    title(sprintf('Gr�fico 5.%d',i))
    saveas(gcf,sprintf('5-%d.jpg',i))

end
%6 questao
x1 = linspace(0,1,20);
x2 = linspace(0,1,20);
B = 1;
for i=1:5
    wh1 = rand(10,2);
    thetah1 = rand(1,1);
    wh2 = rand(5,10);
    thetah2 = rand(1,1);
    w = rand(1,5);
    theta = rand(1,1);
    [uh1,ch1] = potencial([x1' x2'],wh1,thetah1);
    yh1 = logistica(B,uh1);
    [uh2,ch2] = potencial(yh1,wh2,thetah2);
    yh2 = logistica(B,uh2);
    [u,c] = potencial(yh2,w,theta);
    y = logistica(B,u)
    plot3(x1,x2,y)
    grid
    xlabel('x1')
    ylabel('x2')
    zlabel('y')
    title(sprintf('Gr�fico 6.%d',i))
    saveas(gcf,sprintf('6-%d.jpg',i))

end

