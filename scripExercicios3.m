% % 1 Quest�o
% for j=1:10 
%     load('data3.txt');
%     x = data3(:,1:2);
%     d = data3(:,3);
%     [l c] = size(x);
%     x = [-ones(l,1) x];
%     w  = rand(1,3);
%     epoca = 0;
%     erro = ones(size(d));  % � equivalente ao valor falso
%     while sum(abs(erro)) && epoca < 100
%         for i=1:l
%             u = potencial2(x(i,:),w);
%             y = degraubi(u);
%             erro(i) = (d(i) - y);
%             w  = rand(1,3); % gera-se novos valores aleat�rios para os parametros livres 
%         end
%         epoca = epoca + 1;
%     end
%     j
%     w
%     epoca
% end

for k = 1:10
    load('data3.txt');
    x = data3(:,1:2);
    d = data3(:,3);
    [l c] = size(x);
    hidden = 3;
    B = 1;
    
    x = [-ones(l,1) x];
    w1 = rand(3,3);
    w2 = rand(1,4);
    u1 = potencial2(x,w1);
    y1 = tanhiper(u1,B);
    y1 = [-ones(l,1) y1];
    u2 = potencial2(y1,w2);
    y2 = linearN(u2);
    
    epoca = 0;
    eqm = sum((d - y2).^2)/l;
    eqmAnt = 0;
    erro = abs(eqm - eqmAnt);
    eqmgraph = eqm;
    
    while erro > 0.01 & epoca < 100
        eqmAnt = eqm;
        for i=1:l
            err = d(i) - y2(i);
            r = rand(1,1);
            w1 = w1 + r/err;
            w2 = w2 + r/err;
        end
        u1 = potencial2(x,w1);
        y1 = tanhiper(u1,B);
        y1 = [-ones(l,1) y1];
        u2 = potencial2(y1,w2);
        y2 = linearN(u2);
        
        eqm = sum((d - y2).^2)/l;
        eqmgraph = [eqmgraph;eqm];
        erro = abs(eqm - eqmAnt);
        epoca = epoca + 1;
    end
    plot(eqmgraph);
    grid
    xlabel('�pocas')
    ylabel('Emq')
    title(sprintf('Gr�fico Erro m�dio quadr�tico por n�mero de �pocas 3.%d',k))
    saveas(gcf,sprintf('3-%d.jpg',k))
    pause
end