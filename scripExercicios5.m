% %lista 05 exercicio 01
% %a) b)
% datat = xlsread('dados/Treinamento_Perceptron');
% datav = xlsread('dados/Teste_Perceptron');
% xt = datat(:,1:3);
% xv = datav;
% [m n] = size(xv);
% dt = datat(:,4);
% n = 0.01;
% tablew = [];
% tabley = [];
% for i = 1:5
%     w = rand(1,4);
%     want = w;
%     [w,ep] = perceptron(xt,w,dt,n,inf,@degraubi);
%     tablew =[ tablew ; want w ep];
%     u = potencial2([-ones(m,1) xv],w);
%     y = degraubi(u);
%     tabley = [tabley y];
% end
% tabley = [xv tabley];
% xlswrite('dados/table_exe_05_01.xls',tablew)
% xlswrite('dados/table_exe_05_03.xls',tabley)

% %c) d)
% datat = xlsread('dados/Treinamento_Perceptron');
% xt = datat(:,1:3);
% dt = datat(:,4);
% n = 0.01;
% table = [];
% [m n] = size(xt);
% xnt = normalization(xt);
% for i = 1:5
%     w = rand(1,4);
%     want = w;
%     [w,ep] = perceptron(xnt,w,dt,n,inf,@degraubi);
%     table =[ table ; want w ep];
% end
% xlswrite('dados/table_exe_05_02.xls',table)