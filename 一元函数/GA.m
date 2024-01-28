clear;
clc;
%��Ⱥ��С
Population_Size=100;
%�����Ʊ��볤��
Chromosome_Length=10;
%�������
pc = 0.6;
%�������
pm = 0.001;
%��ʼ��Ⱥ
population = Initialization_Population(Population_Size,Chromosome_Length);
 
for i = 1:1000 %����100��
    %������Ӧ��ֵ������ֵ��
    objvalue = cal_objvalue(population);
    fitvalue = objvalue;
    %ѡ�����
    newpopulation = selection(population,fitvalue);
    %�������
    newpopulation = crossover(newpopulation,pc);
    %�������
    newpopulation = mutation(newpopulation,pm);
    %������Ⱥ
    population = newpopulation;
    %Ѱ�����Ž�
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
        title(['��������Ϊn=' num2str(i)]);
        %plot(x1,y1,'*');
    end
end
fprintf('The best X is --->>%5.2f\n',x2);
fprintf('The best Y is --->>%5.2f\n',bestfit);