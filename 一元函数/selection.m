%���ѡ���µĸ���
%���������population2��������Ⱥ��fitvalue����Ӧ��ֵ
%���������newpopulationѡ���Ժ�Ķ�������Ⱥ
function [newpopulation] = selection(population2,fitvalue)
%�����������
[px,py] = size(population2);
totalfit = sum(fitvalue);
p_fitvalue = fitvalue/totalfit;
p_fitvalue = cumsum(p_fitvalue);%����������򣬼������ͬ��Ⱥ��Ӧ�ȵķֽ��
ms = sort(rand(px,1));%����[0,1]�����������Ϊ��Ⱥ���������Ҵ�С��������
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

