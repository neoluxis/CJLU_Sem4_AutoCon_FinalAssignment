% 初始系统参数
m = 16; % 质量
f = 12; % 阻尼系数
k = 1; % 弹簧常数

% 定义传递函数的分子和分母
num = [1]; % 分子
den = [m, f, k]; % 分母

% 创建传递函数
sys = tf(num, den);

% 绘制系统的单位阶跃响应
figure;
step(sys);
title('质量-弹簧-阻尼器系统的单位阶跃响应');
xlabel('时间 (秒)');
ylabel('位移');
grid on;

% 调整参数: 增大阻尼系数
f_new = 20; % 增大阻尼系数
den_new = [m, f_new, k];
sys_new = tf(num, den_new);

figure;
step(sys_new);
title('增大阻尼系数后的单位阶跃响应');
xlabel('时间 (秒)');
ylabel('位移');
grid on;

% 调整参数: 减小质量
m_new = 8; % 减小质量
den_new = [m_new, f, k];
sys_new = tf(num, den_new);

figure;
step(sys_new);
title('减小质量后的单位阶跃响应');
xlabel('时间 (秒)');
ylabel('位移');
grid on;

% 绘制伯德图和奈奎斯特曲线
figure;
bode(sys);
title('初始系统的伯德图');
grid on;

figure;
nyquist(sys);
title('初始系统的奈奎斯特曲线');
grid on;

figure;
bode(sys_new);
title('调整参数后的伯德图');
grid on;

figure;
nyquist(sys_new);
title('调整参数后的奈奎斯特曲线');
grid on;
