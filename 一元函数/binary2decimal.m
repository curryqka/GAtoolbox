%������ת����ʮ���ƺ���
%���������
%��������Ⱥ
%�������
%ʮ������ֵ
function population2 = binary2decimal(population)
[px,py]=size(population);
for i = 1:py
    population1(:,i) = 2.^(py-i).*population(:,i);
end
%sum(.,2)������ͣ��õ�������
temp = sum(population1,2);
population2 = temp*10/1023;

