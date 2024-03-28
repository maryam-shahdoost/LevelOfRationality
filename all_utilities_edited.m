% plot of utilities vs Greedy type population

%different range for greedies and classics population.
%the upper limit is 0.99
x_G = 0:0.01:0.99;
x_C = 1-x_G; 
%x_C =0:0.01:0.99 ;
% x_S = 1-x_G-x_C;
x_S = 0;

%They can change. the results in the paper are reported for a=10 and b=7
a=10;
b=7;  


% beta = max(0, (a.*(1-x_G-x_C) - b.*x_G)./((1-x_G-x_C).*(a + b)));
% beta = min(1, beta);

p = a / (a + b);
beta = p - (2 * p * x_G);


% dif = p - beta;
% plot(x_C , beta);

%############################################################################################################################################
% U(1) = a.*(x_C.*(1-p)+x_S.*(1-beta));
U_G = a.*(x_C.*(1-p)+x_S.*(1-beta));
U_C = a.*p.*((1-p).*x_C + (1-beta).*x_S) + b.*(1-p) .* (x_G + p.*x_C + beta .*x_S);
U_S = a.*beta.*((1-p).*x_C + (1-beta).*x_S) + b.*(1-beta).*( x_G + x_C.*p + x_S.*beta);

% plot(x_G , U_G); hold on;
% plot(x_G , U_C); hold on;
% plot(x_G , U_S); hold on;
% plot(x_G , beta);
% figure;
% plot(x_G, U_G, '-.k', 'LineWidth', 1.5); hold on; %k for color black
% plot(x_G, U_C, '--b', 'LineWidth', 1.5); hold on;
% %plot(x_G, U_S, '--g', 'LineWidth', 1.5);
% 
% xlabel('Greedies population');
% ylabel('Utility');
% %lgd = legend('Greedy', 'Classic','Strategist');
% lgd = legend('Greedy', 'Classic');
% title('The utilities of different types based of Greedies population');
% set(gcf, 'Color', 'W');  % Set the background color to white

figure;
% Define the size of the figure (width, height) in inches
figureWidth = 6;
figureHeight = 6; 
% Create the figure with specified size
figure('Position', [100, 100, figureWidth * 100, figureHeight * 100]);

plot(x_G, U_G, '-.k', 'LineWidth', 1.5); hold on;  %k for color black
plot(x_G, U_C, '--b', 'LineWidth', 1.5); hold on;
%plot(x_G, U_S, '--g', 'LineWidth', 1.5);

xlabel('Greedies population','FontWeight','bold');
ylabel('Utility','FontWeight','bold');
%lgd = legend('Greedy', 'Classic','Strategist');
lgd = legend('Greedy', 'Classic');
%title('The utilities of different types based of Greedies population');
set(gcf, 'Color', 'W');  % Set the background color to white
fontsize(14,"pixels");
% Remove top line of coordinate system
box off;

% Save the plot in the specified directory with a desired file name and format
saveas(gcf, fullfile('F:/postdoc/IPM\projects/game teory/level of rationality/reports/figures', 'U_GvsCed2.eps'),'epsc'); % Change 'plot_name.png' to your desired file name and format


% grid on;
% figure('Position', [100, 100, 800, 500]);  % Adjust the position and size as needed

% lgd = legend('Greedy','Classic','Strategist');
% lgd = legend('Greedy','Classic');
% %lgd.Location="east";
% %legend('Greedy','Strategist')
% grid on;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




