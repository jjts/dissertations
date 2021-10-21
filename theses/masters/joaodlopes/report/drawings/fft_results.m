close all
clear all

tbv = 11953/10/512;
tba = 334482/10/512;

points = [256, 512, 1024, 2048, 4096, 8192, 16384];

ta1 =[81506, 178094, 389140, 850882, 1928288, 4506250, 10721170];

tv1 = zeros(1, size(points,2));
speedup = zeros(1, size(points,2));

i = 1;
for N = points
  %N
  stages = log2(N);
  Nx = N * 2;
  Nw = N;
  Ntrsx = ceil(N/1024);
  Ntrsw = ceil(N/2048);
  Nb = N/2;
  %disp('')
  tv1(i) = Nx*2 + Nw + tbv*Nb*stages + 2048*(floor(stages/11)*Ntrsx*2 + floor(stages/12)*Ntrsw);
  speedup1(i) = ta1(i)/tv1(i)*553/800;
  %tv(i) = tb*Nb*stages;
  i = i + 1;
end

overlaps = 0.25*1024:64:0.75*1024;

ta2 = [1550329274, 1240082240, 1033557860, 885777848, 775369786, 689175264, 620047892, 564054060, 516785788];

tv2 = zeros(1, size(overlaps,2));

N = 1024;
stages = log2(N);
Nx = 1000000;
Nw = N;
Nb = N/2;

i = 1;
for overlap = overlaps
  Nffts = floor((Nx-N)/overlap)+1;
  %disp('')
  tv2(i) = Nx*2 + Nw + tbv*Nb*stages*Nffts;
  speedup2(i) = ta2(i)/tv2(i)*553/800;
  i = i + 1;
end

windows = [128, 256, 512, 1024, 2048, 4096, 8192, 16384];

ta3 = [540358692, 605450080, 669671012, 734101270, 809169072, 925286044, 1074123870, 1275874240];

tv3 = zeros(1, size(windows,2));

Nx = 1000000;

i = 1;
for N = windows
  %N
  stages = log2(N);
  Nw = N;
  Ntrsx = ceil(N/1024);
  Ntrsw = ceil(N/2048);
  Nb = N/2;
  Nffts = floor((Nx-N)/(N/2))+1;
  %disp('')
  tv3(i) = Nx*2 + Nw + tbv*Nb*stages*Nffts + 2048*(floor(stages/11)*Ntrsx*2 + floor(stages/12)*Ntrsw);
  speedup3(i) = ta3(i)/tv3(i)*553/800;
  i = i + 1;
end

points
%tv1
mean(speedup1)
mean(speedup2)
mean(speedup3)


figure;
p1 = plot(points,tv1, '*-', points, ta1, 'ro-');
title("FFT");
xlabel("Points");
ylabel("Time (clock cycles)");
axis tight;
h = legend('Versat','ARM Cortex A9');
legend(h, "location", "north");
%print -deps Npts.eps

figure;
plot(points,speedup1, '*-');
title("FFT");
xlabel("Points");
ylabel("Speedup");
axis tight;
h = legend('Speedup');
legend(h, "location", "north");
%print -deps speedup1.eps

figure;
plot(points,tv1, '*-');
title("FFT");
xlabel("Points");
ylabel("Time (clock cycles)");
axis tight;
h = legend('Versat');
legend(h, "location", "north");
%print -deps versat1.eps

figure;
plot(points,ta1, '*-');
title("FFT");
xlabel("Points");
ylabel("Time (clock cycles)");
axis tight;
h = legend('ARM Cortex A9');
legend(h, "location", "north");
%print -deps arm1.eps

figure;
plot(overlaps,tv2(end:-1:1), '*-', overlaps, ta2(end:-1:1), 'ro-');
title("FFT 1024");
xlabel("Overlap size");
ylabel("Time (clock cycles)");
axis tight;
h = legend('Versat','ARM Cortex A9');
legend(h, "location", "north");
%print -deps NptsOverlap.eps

figure;
plot(overlaps,speedup2(end:-1:1), '*-');
title("FFT 1024");
xlabel("Overlap size");
ylabel("Speedup");
axis tight;
h = legend('Speedup');
legend(h, "location", "north");
%print -deps speedup2.eps

figure;
plot(overlaps,tv2(end:-1:1), '*-');
title("FFT 1024");
xlabel("Overlap size");
ylabel("Time (clock cycles)");
axis tight;
h = legend('Versat');
legend(h, "location", "north");
%print -deps versat2.eps

figure;
plot(overlaps,ta2(end:-1:1), '*-');
title("FFT 1024");
xlabel("Overlap size");
ylabel("Time (clock cycles)");
axis tight;
h = legend('ARM Cortex A9');
legend(h, "location", "north");
%print -deps arm2.eps

figure;
plot(windows,tv3, '*-', windows, ta3, 'ro-');
title("FFT");
xlabel("Window size");
ylabel("Time (clock cycles)");
axis tight;
h = legend('Versat','ARM Cortex A9');
legend(h, "location", "north");
%print -deps windowSize.eps

figure;
plot(windows,speedup3);
%title("FFT");
xlabel("Window size");
ylabel("Speedup");
axis tight;
%h = legend('Speedup');
%legend(h, "location", "north");
print -depsc speedup3.eps

figure;
plot(windows,tv3, '*-');
title("FFT");
xlabel("Window size");
ylabel("Time (clock cycles)");
axis tight;
h = legend('Versat');
legend(h, "location", "north");
%print -deps versat3.eps

figure;
plot(windows,ta3, '*-');
title("FFT");
xlabel("Window size");
ylabel("Time (clock cycles)");
axis tight;
h = legend('ARM Cortex A9');
legend(h, "location", "north");
%print -deps arm3.eps
