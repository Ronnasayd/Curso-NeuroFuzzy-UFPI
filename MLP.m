function [W,topg,epoca,erroeqm,eqmgraph] = MLP( x,d,n,top,fun,B,e,epMax )
     %UNTITLED Summary of this function goes here
     %   Detailed explanation goes here

    [l cx] = size(x);
    [l cy] = size(d);
    topg = [cx top cy]; %% Topologi da Rede MLP
    
    a = randperm(l);
    x = x(a,:);
    d = d(a,:);

    W = {};
    X = {x};
    U = {};

    for i = 1:length(topg)-1
        W{end+1} =  rand((topg(i)+1),topg(i+1));
    end
    for i = 2:length(topg)
        X{end+1} =  zeros(l,topg(i));
        U{end+1} =  zeros(l,topg(i));
    end

    %%% FORWARD
        for i = 1:length(topg)-1
            U{i} = potencial2([-ones(l,1) X{i}],W{i}'); %% potencial de x(k) e w(k)
            X{i+1} = fun{i}(B(i),U{i}); %% x(k+1) = g(x(k)*w(k+1)')
        end

        er =  d - X{end};
        eqm = sum(er.^2)/l;
        eqmAnt = 0;
        epoca = 0;
        erroeqm = abs(eqm - eqmAnt);
        eqmgraph = [eqm];

    while sum(erroeqm > e) && epoca < epMax
        %%% BACKWARD
        for i=1:length(topg)-1
            ind = length(topg) - i; %% indice regressivo
            [ui,dui] = fun{ind}(B(ind),U{ind});     %% derivada da fun��o de ativa��o em rela��o ao potencial de ativa��o
            if ind == length(topg)-1
                gli = er.*dui; %% gradiente local para os pesos que fazem liga��o com os neuronios de saida
            else
                gli = (glAnt*wAnt(2:end,:)').*dui; %% gradiente local para os demais pesos
            end
            W{ind} = W{ind} + n*[-ones(l,1) X{ind}]'*gli;  %% regra delta generalizada
            glAnt = gli;  
            wAnt = W{ind};

        end
        
        a = randperm(l);
        x = x(a,:);
        d = d(a,:);
        X{1} = x;

      %%% FORWARD
        for i = 1:length(topg)-1
            U{i} = potencial2([-ones(l,1) X{i}],W{i}'); %% potencial de x(k) e w(k)
            X{i+1} = fun{i}(B(i),U{i}); %% x(k+1) = g(x(k)*w(k+1)')
        end

        eqmAnt = eqm;
        er =  d - X{end};
        eqm = sum(er.^2)/l;
        epoca = epoca + 1;
        eqmgraph = [eqmgraph;eqm];
        erroeqm = abs(eqm - eqmAnt);

end