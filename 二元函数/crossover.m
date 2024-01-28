%交叉变换
%输入变量：population：二进制的父代种群数，pc：交叉的概率
%输出变量：newpopulation：交叉后的种群数
function [newpopulation] = crossover(population,pc)
[px,py] = size(population);
newpopulation = ones(size(population));
% avgfitness=mean(fitness);%求平均适应度
% maxfitness=max(fitness);%求最大适应度
for i = 1:2:px-1
%     fitness_M=max(fitness(i),fitness(i+1));
%     if fitness_M>=avgfitness
%         pc=pc1-(pc1-pc2)*(fitness_M-avgfitness)/(maxfitness-avgfitness);
%     end
%     if fitness_M<avgfitness
%         pc=pc1;
%     end
    if(rand<pc)
        cpoint = round(rand*py);
        newpopulation(i,:) = [population(i,1:cpoint),population(i+1,cpoint+1:py)];
        newpopulation(i+1,:) = [population(i+1,1:cpoint),population(i,cpoint+1:py)];
    else
        newpopulation(i,:) = population(i,:);
        newpopulation(i+1,:) = population(i+1,:);
    end
end

