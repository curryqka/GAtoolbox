%关于编译
%函数说明
%输入变量：population：二进制种群，pm：变异概率
%输出变量：newpopulation变异以后的种群
function [newpopulation] = mutation(population,pm)
[px,py] = size(population);
newpopulation = ones(size(population));
% avgfitness=mean(fitness);%求平均适应度
% maxfitness=max(fitness);%求最大适应度

for i = 1:px
%     if fitness(i)>=avgfitness
%         pm=pm1-(pm1-pm2)*(fitness(i)-avgfitness)/(maxfitness-avgfitness);
%     end
%     if fitness(i)<avgfitness
%         pm=pm1;
%     end
    if(rand<pm)
        mpoint = round(rand*py);
        if mpoint <= 0;
            mpoint = 1;
        end
        newpopulation(i,:) = population(i,:);
        if newpopulation(i,mpoint) == 0
            newpopulation(i,mpoint) = 1;
        else newpopulation(i,mpoint) == 1
            newpopulation(i,mpoint) = 0;
        end
    else newpopulation(i,:) = population(i,:);
    end
end

