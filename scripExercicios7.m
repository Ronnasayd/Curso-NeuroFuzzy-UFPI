% script exercicios 7  PARTE I
data = xlsread('dados/Treinamento_PMC_Aproxima��o_Universal_PPA.xls');
x = data(:,1:end-1);
d  = data(:,end);
data = xlsread('dados/Teste_PMC_Aproxima��o_Universal_PPA.xls');
xt = data(:,1:end-1);
dt  = data(:,end);
n = 0.1;
top = [10];
e =  1e-7;
B = [1 1];
fun = {@logistica @logistica};
epMax = 10000;

table = [];
tabley =[]; 
for i = 1:5
    
    [W,topg,epoca,erroeqm,eqmgraph] = MLP( x,d,n,top,fun,B,e,epMax );
    [ y,emr,var] = MLPValidation(xt,dt,W,topg,fun,B)
%     plot(eqmgraph);
%     grid
%     xlabel('�pocas')
%     ylabel('Erro M�dio Quadr�tico')
%     title(sprintf('PMC: Gr�fico Erro m�dio quadr�tico por n�mero de �pocas 7.%d',i))
%     saveas(gcf,sprintf('dados/PMC_7-%d.jpg',i))
%     table =[ table ; erroeqm epoca];
%     tabley = [tabley [y;erm;var]];
    
end
% xlswrite('dados/table_exe_07_01.xls',table)
% xlswrite('dados/table_exe_07_02.xls',tabley)
