%初始化种群大小
%输入变量：
%Population_Size：种群大小
%Chromosome_Length：染色体长度-->>转化的二进制长度
%输出变量：
%popuation：种群
function population=Initialization_Population(Population_Size,Chromosome_Length)
population= round(rand(Population_Size,Chromosome_Length));
end
%rand(3,4)生成3行4列的0-1之间的随机数
% rand(2,3)
% 
% ans =
% 
%     0.8147    0.1270    0.6324
%     0.9058    0.9134    0.0975
%round就是四舍五入
% round(rand(2,3))
% ans =
%      0     1     0
%      1     1     1
%所以返回的种群就是每行是一个个体，列数是染色体长度

