% % topologia = [M N O P]
% % Xk <-  Ax(M + N + O + P)
% % Wk <- (M+1)xN  +(N+1)xO +(O+1)xP
% % 
% % Xk = [x(k)  x(k+1) x(k+2) x(k+3)]
% % Wk = [w(k)  w(k+1)  w(k+2)]
% % 
% % // FORWARD//
% % x(k+1) = g(B,w*(k)*x(k)')
% % x(k+2) = g(B,w(k+1)*x(k+1)')
% % x(k+3) = g(B,w(k+2)*x(k+2)')
% % // BACKWARD//
% % w(k+2) = w(k+2) + n*x(k+2)'*gl(k+2);
% % w(k+1) = w(k+1) + n*x(k+1)'*gl(k+1);
% % w(k) =   w(k)   + n*x(k)'*gl(k);


data = xlsread('dados/Treinamento_PMC_Aproxima��o_Universal_PPA.xls');
x = data(:,1:end-1);
d = data(:,end);
top = [10];
fun = {@logistica @logistica};
B = [1 1 ];
n = 0.1;

[l cx] = size(x);
[l cy] = size(d);
topg = [cx top cy]; %% Topologi da Rede MLP
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

    

    erro =  d - X{end};
    eqm = sum(erro.^2)/l;
    eqmAnt = 0;
    epoca = 0;
    eqmgraph = [eqm];
 while abs(eqm - eqmAnt) >  1e-6

   %%% BACKWARD
    for i=1:length(topg)-1
        ind = length(topg) - i; %% indice regressivo
        [ui dui] = logistica(B(ind),U{ind});     %% derivada da fun��o de ativa��o em rela��o ao potencial de ativa��o
        if ind == length(topg)-1
            gli = erro.*dui; %% gradiente local para os pesos que fazem liga��o com os neuronios de saida
        else
            gli = glAnt*wAnt(2:end,:)'; %% gradiente local para os demais pesos
        end
        W{ind} = W{ind} + n*[-ones(l,1) X{ind}]'*gli;  %% regra delta generalizada
        glAnt = gli;  
        wAnt = W{ind};
 
    end
    
    
  %%% FORWARD
    for i = 1:length(topg)-1
        U{i} = potencial2([-ones(l,1) X{i}],W{i}'); %% potencial de x(k) e w(k)
        X{i+1} = fun{i}(B(i),U{i}); %% x(k+1) = g(x(k)*w(k+1)')
    end
    
    eqmAnt = eqm;
     erro =  d - X{end};
    eqm = sum(erro.^2)/l;
    epoca = epoca + 1
    eqmgraph = [eqmgraph;eqm];

    
end