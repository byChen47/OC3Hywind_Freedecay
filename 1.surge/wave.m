data = readmatrix("surge.xlsx",Sheet="Sheet1"); % 读取excel文件
time = data(:,1);                               % 第一列为时间
point_zero = data(:,2);                         % 第三列为原点0所在的波高                 
[waveUp,time_1] = findpeaks(point_zero,time);   % 查找波浪的峰值
[waveDown,time_2] = findpeaks(-point_zero,time);% 取反查找波浪的峰值，也就是波谷的值
waveDown = -waveDown;                           % 得到波谷真正的值
hold on;
plot(time,point_zero,'-',Color='b');                      % 绘图
plot(time_1,waveUp,'o',Color='r');
plot(time_2,waveDown,'o',Color='r');
% legend("stokes wave");                          % 设置标签
% title("stokes wave H = 3.66 T = 9.7");           % 设置输出图片名称
% xlabel('time(s)');                              % 设置x坐标轴名称
% ylabel('wave height(m)');                       % 设置y轴坐标名称
grid on;                                        % 添加网格
writematrix(time,'1.surgeMotion.xlsx','Sheet',1,'Range','A1:A1550');
writematrix(point_zero,'1.surgeMotion.xlsx','Sheet',1,'Range','B1:B1550');
writematrix(time_1,'1.surgeMotion.xlsx','Sheet',1,'Range','C1:C1550');
writematrix(waveUp,'1.surgeMotion.xlsx','Sheet',1,'Range','D1:D1550');
writematrix(time_2,'1.surgeMotion.xlsx','Sheet',1,'Range','E1:E1550');
writematrix(waveDown,'1.surgeMotion.xlsx','Sheet',1,'Range','F1:F1550');