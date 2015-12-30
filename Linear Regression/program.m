cd 'C:\Users\Amit\Desktop\Project\Processed Data'
X = load('X-Training.txt');
y = load('y-Training.txt');
cd 'C:\Users\Amit\Desktop\Project\Linear Regression'
theta = zeros(size(X,2),1);
alpha = 0.005;
num_iters = 300;
[theta,J_history] = gradientDescentMulti(X,y,theta,alpha,num_iters);
figure;
plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J');
cd ../
cd 'Processed Data'
XTest = load('X-Testing.txt');
yTest = load('y-Testing.txt');
ycalc = XTest*theta;
cd ../
ans = convert01(ycalc);
probability(ans,yTest)