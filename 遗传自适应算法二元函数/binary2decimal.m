%������ת����ʮ���ƺ���
%���������
%��������Ⱥ
%�������
%ʮ������ֵ
function result = binary2decimal(population,range)
[px py]=size(population);
a=range(1);
b=range(2);
dco=zeros(py,1);
for i=1:py
    dco(i)=2^(py-i);
end
result = population*dco*(b-a)/(2^(py)-1);
end
% for i = 1:py
%     population1(:,i) = 2.^(py-i).*population(:,i);
% end
% %sum(.,2)������ͣ��õ�������
% temp = sum(population1,2);
% result = temp*10/1023;



