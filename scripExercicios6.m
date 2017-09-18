% % script exercicios 6  PARTE I
% % A) B) C) N)
% datat = xlsread('dados/Treinamento_Adaline_PPA.xls');
% xv = xlsread('dados/Teste_Adaline_PPA.xls');
% [m n] = size(xv);
% xt = datat(:,1:end-1);
% d  = datat(:,end);
% n = 0.0025;
% e =  1e-6;
% tablew = [];
% tabley = [];
% for i = 1:5
%     w = rand(1,5);
%     want = w;
%     [ w,ep,erro,eqmgraph ] = adalineOnline(xt,w,d,n,e,inf);
%     plot(eqmgraph);
%     grid
%     xlabel('�pocas')
%     ylabel('Emq')
%     title(sprintf('Adaline Online: Gr�fico Erro m�dio quadr�tico por n�mero de �pocas 6.%d',i))
%     saveas(gcf,sprintf('dados/Adaline_Online_6-%d.jpg',i))
%     tablew =[ tablew ; want w ep];
%      u = potencial2([-ones(m,1) xv],w);
%     y = degraubi(u);
%     tabley = [tabley y];
% end
% tabley = [xv tabley];
% xlswrite('dados/table_exe_06_01.xls',tablew)
% xlswrite('dados/table_exe_06_05.xls',tabley)


% % D) E) F) N)
% datat = xlsread('dados/Treinamento_Adaline_PPA.xls');
% xv = xlsread('dados/Teste_Adaline_PPA.xls');
% [m n] = size(xv);
% xt = datat(:,1:end-1);
% d  = datat(:,end);
% n = 0.0025;
% e =  1e-6;
% tablew = [];
% tabley = [];
% for i = 1:5
%     w = rand(1,5);
%     want = w;
%     [ w,ep,erro,eqmgraph ] = adalineOffline(xt,w,d,n,e,inf);
%     plot(eqmgraph);
%     grid
%     xlabel('�pocas')
%     ylabel('Emq')
%     title(sprintf('Adaline Offline: Gr�fico Erro m�dio quadr�tico por n�mero de �pocas 6.%d',i))
%    saveas(gcf,sprintf('dados/Adaline_Offline_6-%d.jpg',i))
%     tablew =[ tablew ; want w ep];
%      u = potencial2([-ones(m,1) xv],w);
%     y = degraubi(u);
%     tabley = [tabley y];
% end
% tabley = [xv tabley];
% xlswrite('dados/table_exe_06_02.xls',tablew)
% xlswrite('dados/table_exe_06_06.xls',tabley)
% 
% % G) H) I) N)
% datat = xlsread('dados/Treinamento_Adaline_PPA.xls');
% xv = xlsread('dados/Teste_Adaline_PPA.xls');
% [m n] = size(xv);
% xt = datat(:,1:end-1);
% d  = datat(:,end);
% n = 0.0025;
% e =  1e-6;
% tablew = [];
% tabley = [];
% xt = normalization(xt);
% for i = 1:5
%     w = rand(1,5);
%     want = w;
%     [ w,ep,erro,eqmgraph ] = adalineOnline(xt,w,d,n,e,inf);
%     plot(eqmgraph);
%     grid
%     xlabel('�pocas')
%     ylabel('Emq')
%     title(sprintf('Adaline Online Normalizada: Gr�fico Erro m�dio quadr�tico por n�mero de �pocas 6.%d',i))
%     saveas(gcf,sprintf('dados/Adaline_Online_Normalizada_6-%d.jpg',i))
%     tablew =[ tablew ; want w ep];
%     u = potencial2([-ones(m,1) xv],w);
%     y = degraubi(u);
%     tabley = [tabley y];
% end
% tabley = [xv tabley];
% xlswrite('dados/table_exe_06_03.xls',tablew)
% xlswrite('dados/table_exe_06_07.xls',tabley)

% % J) L) M) N)
% datat = xlsread('dados/Treinamento_Adaline_PPA.xls');
% xv = xlsread('dados/Teste_Adaline_PPA.xls');
% [m n] = size(xv);
% xt = datat(:,1:end-1);
% d  = datat(:,end);
% n = 0.0025;
% e =  1e-6;
% tablew = [];
% tabley = [];
% xt = normalization(xt);
% for i = 1:5
%     w = rand(1,5);
%     want = w;
%     [ w,ep,erro,eqmgraph ] = adalineOffline(xt,w,d,n,e,inf);
%     plot(eqmgraph);
%     grid
%     xlabel('�pocas')
%     ylabel('Emq')
%     title(sprintf('Adaline Offline Normalizada: Gr�fico Erro m�dio quadr�tico por n�mero de �pocas 6.%d',i))
%     saveas(gcf,sprintf('dados/Adaline_Offline_Normalizada_6-%d.jpg',i))
%     tablew =[ tablew ; want w ep];
%     u = potencial2([-ones(m,1) xv],w);
%     y = degraubi(u);
%     tabley = [tabley y];
% end
% tabley = [xv tabley];
% xlswrite('dados/table_exe_06_04.xls',tablew)
% xlswrite('dados/table_exe_06_08.xls',tabley)


% % O) P) Q)
% datat = xlsread('dados/Treinamento_Adaline_PPA.xls');
% xt = datat(:,1:end-1);
% d  = datat(:,end);
% e =  1e-6;
% tablew = [];
% for i = 1:5
%     w = rand(1,5);
%     want = w;
%     [ w,ep,erro,eqmgraph ] = adalineOfflineHessian(xt,w,d,e,inf);
%     plot(eqmgraph);
%     grid
%     xlabel('�pocas')
%     ylabel('Emq')
%     title(sprintf('Adaline Offline Hessiana: Gr�fico Erro m�dio quadr�tico por n�mero de �pocas 6.%d',i))
%     saveas(gcf,sprintf('dados/Adaline_Offline_Hessiana_6-%d.jpg',i))
%     tablew =[ tablew ; want w ep];
% 
% end
% xlswrite('dados/table_exe_06_09.xls',tablew)

% R)
% data = xlsread('dados/Treinamento_Ajuste_Linear_M�ltiplo.xls');
% x = data(:,1:end-1);
% y = data(:,end); 
% w = rand(1,5);
% n = 0.0025;
% e = 1e-20;
% [ w,epoca,erro,eqmgraph ] = adalineOnline( x,w,y,n,e,inf);
% w

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%55
% %% PARTE II
% % A) B)
% datat = xlsread('dados/Treinamento_Adaline_PPB.xls');
% xt = datat(:,1:end-1);
% d  = datat(:,end);
% n = 0.001;
% epMax  = 10000;
% tablew = [];
% for i = 1:5
%     w = rand(1,3);
%     want = w;
%     [ w,epoca,erro ] = perceptron( xt,w,d,n,epMax,@degraubi)
%     tablew =[ tablew ; want w epoca];
% 
% end
% xlswrite('dados/table_exe_06_10.xls',tablew)

% % C) D)
% datat = xlsread('dados/Treinamento_Adaline_PPB.xls');
% xt = datat(:,1:end-1);
% d  = datat(:,end);
% n = 0.001;
% e = 1e-6
% epMax  = 10000;
% tablew = [];
% for i = 1:5
%     w = rand(1,3);
%     want = w;
%     [ w,epoca,erro,eqmgraph ] = adalineOnline( xt,w,d,n,e,epMax);
%     tablew =[ tablew ; want w epoca];
% 
% end
% xlswrite('dados/table_exe_06_11.xls',tablew)