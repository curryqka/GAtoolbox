%���ڱ���
%����˵��
%���������population����������Ⱥ��pm���������
%���������newpopulation�����Ժ����Ⱥ
function [newpopulation] = mutation(population,pm)
[px,py] = size(population);
newpopulation = ones(size(population));
for i = 1:px
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

