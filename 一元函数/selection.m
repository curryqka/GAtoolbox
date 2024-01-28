%如何选择新的个体
%输入变量：population2二进制种群，fitvalue：适应度值
%输出变量：newpopulation选择以后的二进制种群
function [newpopulation] = selection(population2,fitvalue)
%构造概率轮盘
[px,py] = size(population2);
totalfit = sum(fitvalue);
p_fitvalue = fitvalue/totalfit;
p_fitvalue = cumsum(p_fitvalue);%概率求和排序，计算各不同种群适应度的分界点
ms = sort(rand(px,1));%产生[0,1]随机数（数量为种群个数）并且从小到大排列
fitin = 1;
newin = 1;
while newin<=px
    if(ms(newin))<p_fitvalue(fitin)
        newpopulation(newin,:)=population2(fitin,:);
        newin = newin+1;
    else
        fitin=fitin+1;
    end
end

