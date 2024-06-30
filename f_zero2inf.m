% 定义系统参数
m = 16; % 固定质量
k = 1; % 固定弹簧常数

% 定义传递函数的分子和分母
num = [1]; % 分子
den = [m, 0, k]; % 初始化分母，f=0

% 创建传递函数
sys = tf(num, den);

% 绘制系统的根轨迹
figure;
rlocus(sys);
title('质量-弹簧-阻尼器系统的根轨迹 (f 从 0 到 \infty)');
xlabel('实部');
ylabel('虚部');
grid on;
