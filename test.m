
t = 0 : pi/180 : 2*pi;
y = sawtooth(t, 0.5);

dx = 0.0997;   % ��ȡ�����ݼ��
xs = 0;     % ��ȡ���������
xe = 2*pi;   % ��ȡ�������յ�
%------------------%
%-- ��Ҫ��ȡ������ת��Ϊԭ�����е������±� --%
index_xs = find(t==xs);     % ��ȡ�����������ԭ�����е��±�λ��
index_xe = find(t==xe);     % ��ȡ�������յ���ԭ�����е��±�λ��
d_index = dx/(t(2)-t(1));    % ��ȡ����൱��ԭ���ݵļ������
xa = t(index_xs:d_index:index_xe);   
ya = y(index_xs:d_index:index_xe);
disp(ya);
figure
plot(t, y, '--');
hold on 
stem(xa, ya, 'ro');
grid on
xlabel('x');
ylabel('y');
