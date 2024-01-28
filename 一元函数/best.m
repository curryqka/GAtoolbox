%求最优适应度函数
%输入变量：population:种群，fitvalue:种群适应度
%输出变量：bestindividual:最佳个体，bestfit:最佳适应度值
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

