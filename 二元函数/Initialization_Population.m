%��ʼ����Ⱥ��С
%���������
%Population_Size����Ⱥ��С
%Chromosome_Length��Ⱦɫ�峤��-->>ת���Ķ����Ƴ���
%���������
%popuation����Ⱥ
function population=Initialization_Population(Population_Size,Chromosome_Length)
population= round(rand(Population_Size,Chromosome_Length));
end
%rand(3,4)����3��4�е�0-1֮��������
% rand(2,3)
% 
% ans =
% 
%     0.8147    0.1270    0.6324
%     0.9058    0.9134    0.0975
%round������������
% round(rand(2,3))
% ans =
%      0     1     0
%      1     1     1
%���Է��ص���Ⱥ����ÿ����һ�����壬������Ⱦɫ�峤��

