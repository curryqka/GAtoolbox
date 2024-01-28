%二进制转化成十进制函数
%输入变量：
%二进制种群
%输出变量
%十进制数值
function population2 = binary2decimal(population)
[px,py]=size(population);
for i = 1:py
    population1(:,i) = 2.^(py-i).*population(:,i);
end
%sum(.,2)对行求和，得到列向量
temp = sum(population1,2);
population2 = temp*10/1023;

