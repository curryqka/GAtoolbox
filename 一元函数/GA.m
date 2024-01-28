clear;
clc;
%种群大小
Population_Size=100;
%二进制编码长度
Chromosome_Length=10;
%交叉概率
pc = 0.6;
%变异概率
pm = 0.001;
%初始种群
population = Initialization_Population(Population_Size,Chromosome_Length);
 
for i = 1:1000 %迭代100次
    %计算适应度值（函数值）
    objvalue = cal_objvalue(population);
    fitvalue = objvalue;
    %选择操作
    newpopulation = selection(population,fitvalue);
    %交叉操作
    newpopulation = crossover(newpopulation,pc);
    %变异操作
    newpopulation = mutation(newpopulation,pm);
    %更新种群
    population = newpopulation;
    %寻找最优解
    [bestindividual,bestfit] = best(population,fitvalue);
    x2 = binary2decimal(bestindividual);
    x1 = binary2decimal(newpopulation);
    y1 = cal_objvalue(newpopulation);
    if mod(i,100) == 0
        figure;
        fplot('10*sin(5*x)+7*abs(x-5)+10',[0 10]);
       %fplot('(x1)^2+(x2)^2',[0 10]);
        hold on;
        plot(x1,y1,'*');
        title(['迭代次数为n=' num2str(i)]);
        %plot(x1,y1,'*');
    end
end
fprintf('The best X is --->>%5.2f\n',x2);
fprintf('The best Y is --->>%5.2f\n',bestfit);