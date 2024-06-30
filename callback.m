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

% 绘制系统的阶跃响应
figure;
step(sys);
title('质量-弹簧-阻尼器系统的单位阶跃响应');
xlabel('时间 (秒)');
ylabel('位移');
grid on;

% 绘制系统的单位斜坡响应
figure;
t = 0:0.1:100; % 时间范围
u = t; % 斜坡输入
[y,t] = lsim(sys,u,t);
plot(t,y);
title('质量-弹簧-阻尼器系统的单位斜坡响应');
xlabel('时间 (秒)');
ylabel('位移');
grid on;

% 绘制系统的理想脉冲响应
figure;
impulse(sys);
title('质量-弹簧-阻尼器系统的理想脉冲响应');
xlabel('时间 (秒)');
ylabel('位移');
grid on;
