display("Linear function graph with axes");
axis_limits = [-15 15 -15 15];
axis_limits = [-15 15 -15 15 -15 15];
% tiledlayout(1,2);

x = linspace(-10, 10, 11);

% nexttile;
% PlotAxes(axis_limits);
% xlabel('x');
% hold on;
% title('Linear');
% m=0.2;
% b=-4;
% y = m*x+b;
% ylabel('f = 0.2x -4');
% %zies = zeros(1,length(x))
% %plot3(x,y,zies,'yellow');
% plot(x,y,'yellow');
% hold off;
% 
% nexttile;
% PlotAxes(axis_limits);
% hold on;
% title("Quadratic");
% ylabel("f = x^2 + x - 6");
% x = linspace(-10,10,61);
% y = x.^2 + x - 6;
% plot(x,y,'m');
% hold off;

PlotAxes(axis_limits); hold on;
y = x.^2 + x*5 - 7;
plot(x,y);
plot(x,y,'*'); hold off;
