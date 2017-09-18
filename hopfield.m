data = xlsread('hopfield.xls');
ruido = 0.2;
[w ib] = hopWeights(data);
for i = 1:4
    number = data(:,i);
    numberM = vec2mat(number,5);
    im = imresize(numberM, [50*9 50*5]);
    figure('name','Original'),imshow(im);
    for j = 1:1
        numberR = hopSetRuido(number,ruido);
        numberRM = vec2mat(numberR,5);
        imR = imresize(numberRM, [50*9 50*5]);
        figure('name','Ru�do'),imshow(imR);
        
        v = hopOperation(w,ib,numberR);
        vM = vec2mat(v,5);
        imV = imresize(vM,[50*9 50*5]);
        figure('name','Recuperado'),imshow(imV);
    end
    pause
end