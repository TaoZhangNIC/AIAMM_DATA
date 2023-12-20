clc;clear all;close all;

% 0.05 sigmar 0.05 sigma
percentages1 = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 60, 70, 80, 90, 100];
values1 = [0.266273892528446, 0.765858259812591, 0.535684603322140, 0.321842861429389, 0.147666982586847, 0.146576923039876, 0.144790084544022, 0.166455672158117, 0.136981807813608, 0.177047591569179, 0.140314435487854, 0.382820420336039, 0.410855035867685, 0.467669348373168, 0.706931498633090];

% 0.05 sigmar
percentages2 = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 60, 70, 80, 90, 100];
values2 = [0.113834900898890, 0.198992985069535, 0.216083400735867, 0.426209072520101, 0.355290267503006, 0.332958348351053, 0.318684841404882, 0.376428650725746, 0.385783056764544, 0.360137882477052, 0.341214201901274, 0.318471939076437, 0.295093338166330, 0.256400418848934, 0.246037925250031];

% 0.05 sigma
percentages3 = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 60, 70, 80, 90, 100];
values3 = [0.536218083958040, 0.434022377098975, 0.401550566785347, 0.180533933995397, 0.353210708940843, 0.441128978793759, 0.315220933435767, 0.269503778133950, 0.305333192160551, 0.308869254809574, 0.261286933309579, 0.185693539426390, 0.128372515024555, 0.151295018458342, 0.180839992668635];

% 0.1 sigmar 0.1 sigma
percentages4 = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 60, 70, 80, 90, 100];
values4 = [1.668205123170130, 0.942969800134252, 0.622725805371660, 0.706629258626423, 0.678031239704580, ...
                    0.588451345482599, 0.536793135909752, 0.611278134755500, 0.455948250948801, 0.533417405978276, ...
                    0.658745760684454, 0.717477396533339, 0.807645026345361, 1.280240121745069, 1.641674239167967];

% 0.1 sigmar
percentages5 = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 60, 70, 80, 90, 100];
values5 = [0.341150306288207, 0.323988010549958, 0.234244766738478, 0.219759006571318, ...
                       0.119281727026199, 0.231060553924745, 0.196930252740724, 0.158772975055110, ...
                       0.131232534678238, 0.180427075619560, 0.182924819075847, 0.113733454748322, ...
                       0.134084894890485, 0.175441113601138, 0.239538510765691];
% 0.1 sigma
percentages6 = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 60, 70, 80, 90, 100];
values6 = [0.370967487423401, 0.716669169715023, 1.078656058509653, 0.768643336137642, ...
                0.754612684880485, 0.618359148185732, 0.436500184623456, 1.491075223803062, ...
                2.108289248799622, 3.149238525262976, 4.038516534393411, 4.101692700836512, ...
                3.681148279465440, 3.336219437096155, 3.084921995317713];

% Create a new figure
figure;

% Plot the first set of data
plot(percentages1, values1, 'bo-', 'LineWidth', 1, 'MarkerSize', 6, 'MarkerFaceColor', 'b');
hold on; % Hold the current plot for overlay

% Plot the second set of data on the same figure
plot(percentages2, values2, 'r^-', 'LineWidth', 1, 'MarkerSize', 6, 'MarkerFaceColor', 'r');
hold on;

plot(percentages3, values3, 'gs-', 'LineWidth', 1, 'MarkerSize', 6, 'MarkerFaceColor', 'g'); 
hold on;

plot(percentages4, values4, 'mo-', 'LineWidth', 1, 'MarkerSize', 6, 'MarkerFaceColor', 'm');
hold on; % Hold the current plot for overlay

% Plot the second set of data on the same figure
plot(percentages5, values5, 'c^-', 'LineWidth', 1, 'MarkerSize', 6, 'MarkerFaceColor', 'c');
hold on;

plot(percentages5, values5, 'ks-', 'LineWidth', 1, 'MarkerSize', 6, 'MarkerFaceColor', 'k'); 


xlabel('Data usage(%)','FontName', 'Times New Roman','FontSize',15);
ylabel('MRE(%)','FontName', 'Times New Roman','FontSize',15);


% grid on;

% Customize the appearance further
set(gca, 'FontSize', 12); % Increase font size for axis labels and ticks
legend('$\sigma_r=0.05,\sigma=0.05$', '$\sigma_r=0.05$', '$\sigma=0.05$', '$\sigma_r=0.1,\sigma=0.1$', '$\sigma_r=0.1$', '$\sigma=0.1$', 'Interpreter', 'latex', 'FontSize', 15);
% legend('$\sigma_r=0.05,\sigma=0.05$', '$\sigma_r=0.05$', '$\sigma=0.05$', 'Interpreter', 'latex', 'FontSize', 15);
% legend('$\sigma_r=0.05,\sigma=0.05$', '$\sigma_r=0.05$', '$\sigma=0.05$', '10dB', 'Interpreter', 'latex', 'FontSize', 15); % Add a legend
% ylim([0, max(max(values1), max(values2)) + 1]); % Set the y-axis limits
% ylim([0, 100]);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 15, 'LineWidth', 1.5);
