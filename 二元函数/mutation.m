%���ڱ���
%����˵��
%���������population����������Ⱥ��pm���������
%���������newpopulation�����Ժ����Ⱥ
function [newpopulation] = mutation(population,pm)
[px,py] = size(population);
newpopulation = ones(size(population));
% avgfitness=mean(fitness);%��ƽ����Ӧ��
% maxfitness=max(fitness);%�������Ӧ��

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

