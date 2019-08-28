
t = 0 : pi/180 : 2*pi;
y = sawtooth(t, 0.5);

dx = 0.0997;   % 提取的数据间隔
xs = 0;     % 提取的数据起点
xe = 2*pi;   % 提取的数据终点
%------------------%
%-- 将要提取的数据转换为原数据中的数据下标 --%
index_xs = find(t==xs);     % 提取的数据起点在原数据中的下标位置
index_xe = find(t==xe);     % 提取的数据终点在原数据中的下标位置
d_index = dx/(t(2)-t(1));    % 提取间隔相当于原数据的间隔个数
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
