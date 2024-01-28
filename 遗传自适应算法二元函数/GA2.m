%clear;
clc;
%迭代次数
IterationNum = 1000;
%种群大小
Population_Size=100;
%二进制编码长度
Chromosome_Length=10;
%交叉概率
pc1 = 0.6;pc2 = 0.4;
%变异概率
pm1 = 0.01;pm2 = 0.001;
%自我复制概率
pt = 0.2;
%自变量范围,上下界已给定，均分为100个数
xRange=[0,7];yRange=[0,7];
x=linspace(xRange(1),xRange(2),100);
y=linspace(yRange(1),yRange(2),100);
[xx,yy] = meshgrid(x,y);
surface(xx,yy,Fx(xx,yy));
%初始种群
population_x = Initialization_Population(Population_Size,Chromosome_Length);
population_y = Initialization_Population(Population_Size,Chromosome_Length);
hold on
x = binary2decimal(population_x,xRange);
y = binary2decimal(population_y,yRange);%解码
plot3(x,y,Fx(x,y),'bo','linewidth',3)%初始解的位置
population=[population_x,population_y];%合并两个变量的染色体
Recordfitness=[];
for epoch = 1:IterationNum
    %计算适应度值（函数值）
    Fitness = zeros(Population_Size,1);
    Fitness = Fx(binary2decimal(population_x,xRange), ...
        binary2decimal(population_y,yRange));
    %选择操作
    newpopulation = selection(population,Fitness);
    %交叉操作
    newpopulation = crossover(newpopulation,pc1,pc2,Fitness);
    %变异操作
    newpopulation = mutation(newpopulation,pm1,pm2,Fitness);
    %更新种群
    population = newpopulation;
    population_x = population(:,1:Chromosome_Length);
    population_y = population(:,Chromosome_Length+1:2*(Chromosome_Length));
    %寻找最优解
    [bestindividual,bestfit] = best(population,Fitness);
    x_best = binary2decimal(bestindividual(:,1:Chromosome_Length),xRange);
    y_best = binary2decimal(bestindividual(:,Chromosome_Length+1:2*(Chromosome_Length)),yRange);
    plot3(x_best,y_best,Fx(x_best,y_best),'ko','linewidth',3)
    %记录进化过程
    avgfitness=mean(Fitness);
    bestfitness=max(Fitness);
    Recordfitness=[Recordfitness;avgfitness,bestfitness];
%     x1 = binary2decimal(newpopulation);
%     y1 = cal_objvalue(newpopulation);
%      if mod(i,100) == 0
%         figure;
%         fplot('10*sin(5*x)+7*abs(x-5)+10',[0 10]);
%        %fplot('(x1)^2+(x2)^2',[0 10]);
%         hold on;
%         plot(x1,y1,'*');
%         title(['迭代次数为n=' num2str(i)]);
        %plot(x1,y1,'*');
end
fprintf('The best X Y is --->>%5.2f\n',x_best,y_best);
fprintf('The best Z is --->>%5.2f\n',bestfit);
figure
plot(1:IterationNum,Recordfitness(:,1),'linewidth',2)
hold on
plot(1:IterationNum,Recordfitness(:,2),'linewidth',1.5)
set(gca,'linewidth',1.1,'fontsize',16,'fontname','times','XLim',[0,IterationNum]);
xlabel('Iteration')
ylabel('Fitness')