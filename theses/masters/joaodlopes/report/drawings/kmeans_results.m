close all
clear all

%points = 10064
% dim = 15
centers = [2, 10, 18, 26, 34, 42, 50, 58, 66];
t1 = [1425734, 2638429, 3851157, 5063972, 6276787, 7489645, 8702465, 9915313, 11128133];
t1a = [3306916, 10062524, 16942356, 23888446, 30817338, 37774652, 44707676, 51664922, 58639894];



%points = 10064
%center = 34
dims = [15, 20, 25, 30];
t2 =  [6276787, 8279865, 10206853, 12202602];
t2a = [34550062 54591662  59711928 67293698];


% centers = 34
%dim = 30 
points = [1360, 13600, 136000, 1360000];
t3 = [1686634, 16474709, 164355509, 1643162559];
t3a =[ 9035594 90191732 901784862 9021288908];

figure;
plot(centers,t1, '*-', centers, t1a, 'ro-');
%title("");
xlabel("Centroids");
ylabel("Time (clock cycles)");
h = legend('Versat','ARM Cortex A9');
legend(h, "location", "north");
%print -deps centers.eps

figure;
plot(dims,t2, '*-', dims, t2a, 'ro-');
axis ([15, 30]);
%title("");
xlabel("Dimensions");
ylabel("Time (clock cycles)");
h = legend('Versat','ARM Cortex A9');
legend(h, "location", "north");
%print -deps dims.eps

figure;
loglog(points,t3, '*-', points, t3a, 'ro-');
%title("k-means");
xlabel("#datapoints (log)");
ylabel("Clock cycles (log)");
legend('Versat','ARM Cortex A9');
print -depsc points.eps
