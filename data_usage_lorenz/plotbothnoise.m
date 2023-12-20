clc;clear all;close all;

% Define the first set of data
percentages1 = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 60, 70, 80, 90, 100];
values1 = [0.385888393584923, 7.512237324450988, 7.705019511717515, 23.345967441193840, 29.944443957130940, 34.323390116445665, 31.662060753505074, 27.061470201696835, 39.745149825081940, 35.955525948066200, 40.449121355821994, 39.332865453932456, 28.374522507168997, 28.307914099134834, 36.303956836364150];

% Define the second set of data
percentages2 = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 60, 70, 80, 90, 100];
values2 = [7.074142595654442, 1.532985569426848, 1.048392797355757, 20.169025529815542, 21.799401652395000, 22.397283421777914, 18.688897875221380, 16.778476462910774, 19.014014554437065, 14.227767546158210, 13.028682545869340, 10.157053729833498, 9.645769516768887, 10.237673385824530, 7.728262489010040];

% Define the data
percentages3 = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 60, 70, 80, 90, 100];
values3 = [0.383548075082407, 0.794250459022083, 1.004574584621043, 1.640502122432253, 1.335066426302567, 1.229884749569954, 1.135595681285029, 0.864432817331284, 0.771112121033735, 0.682663553528795, 0.225835421179288, 0.428144107936923, 0.549140474728604, 0.398947935095051, 0.497539787837265];

percentages4 = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 60, 70, 80, 90, 100];
values4 = [1.691928175997437, 0.529977440364449, 1.077903708338490, 7.014167345397193, 5.320419850456148, 4.517291993189721, 2.891158090967139, 1.232389037949799, 0.996551304811999, 1.771286977504671, 9.247441826282720, 10.144473110249730, 9.461836258817646, 9.097486182837978, 11.642328692436320];


% Create a new figure
figure;

% Plot the first set of data
plot(percentages1, values1, 'bo-', 'LineWidth', 1.5, 'MarkerSize', 8, 'MarkerFaceColor', 'b');
hold on; % Hold the current plot for overlay

% Plot the second set of data on the same figure
plot(percentages2, values2, 'r^-', 'LineWidth', 1.5, 'MarkerSize', 8, 'MarkerFaceColor', 'r');
hold on;

plot(percentages3, values3, 'g*-', 'LineWidth', 1.5, 'MarkerSize', 8, 'MarkerFaceColor', 'g'); 
hold on;

plot(percentages4, values4, 'ms-', 'LineWidth', 1.5, 'MarkerSize', 8, 'MarkerFaceColor', 'm');
% Label the axes
xlabel('Data usage(%)','FontName', 'Times New Roman','FontSize',15);
ylabel('MRE(%)','FontName', 'Times New Roman','FontSize',15);


grid on;

% Customize the appearance further
set(gca, 'FontSize', 12); % Increase font size for axis labels and ticks
legend('$\sigma_r=0.05,\sigma=0.05$', '$\sigma_r=0.05$', '$\sigma=0.05$', '10dB', 'Interpreter', 'latex', 'FontSize', 15); % Add a legend
% ylim([0, max(max(values1), max(values2)) + 5]); % Set the y-axis limits
ylim([0, 100]);
set(gca, 'FontName', 'Times New Roman', 'FontSize', 15, 'LineWidth', 1.5);
