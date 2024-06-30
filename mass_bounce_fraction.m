% 定义系统参数
m = 16; % 质量
f = 12; % 阻尼系数
k = 6; % 弹簧常数

% 定义传递函数的分子和分母
num = [1]; % 分子
den = [m, f, k]; % 分母

% 创建传递函数
sys = tf(num, den);

% 显示传递函数
disp('传递函数模型:');
disp(sys);

% 绘制系统的阶跃响应
figure;
step(sys);
title('质量-弹簧-阻尼器系统的阶跃响应');
xlabel('时间 (秒)');
ylabel('位移');
grid on;
