pkg load control

% 定义系统参数
m = 16; % 质量
f = 12; % 阻尼系数
k = 1; % 弹簧常数

% 定义传递函数的分子和分母
num = [1]; % 分子
den = [m, f, k]; % 分母

% 创建传递函数
sys = tf(num, den);

% 显示传递函数
disp('传递函数模型:');
disp(sys);

% 绘制系统的伯德图
figure;
bode(sys);
title('质量-弹簧-阻尼器系统的伯德图');
grid on;

% 绘制系统的奈奎斯特曲线
figure;
nyquist(sys);
title('质量-弹簧-阻尼器系统的奈奎斯特曲线');
grid on;
