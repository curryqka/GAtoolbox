%��������Ӧ�Ⱥ���
%���������population:��Ⱥ��fitvalue:��Ⱥ��Ӧ��
%���������bestindividual:��Ѹ��壬bestfit:�����Ӧ��ֵ
function [bestindividual bestfit] = best(population,fitvalue)
[px,py] = size(population);
bestindividual = population(1,:);
bestfit = fitvalue(1);
for i = 2:px
    if fitvalue(i)>bestfit
        bestindividual = population(i,:);
        bestfit = fitvalue(i);
    end
end

