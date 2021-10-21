close all
clear all

tev = 74771/31; % clock cycles to compute 6054pts
tea = 299046/31/1024;

windows = [32, 64, 128, 256, 512, 1024];

ta1 = [349753324, 621305206, 1157659142, 2262752938, 4449317338, 8819229790];

tv1 = zeros(1, size(windows,2));

Nx = 1004964; % 166*6054
Ntrsx = ceil(Nx/6054)

i = 1;
for Nw = windows
  %Nw
  %disp('')
  tv1(i) = 2*Ntrsx*6054 + Nw + tev*Nw*Ntrsx;
  speedup1(i) = ta1(i)/tv1(i)*553/800;
  i = i + 1;
end

windows
tv1
speedup1
mean(speedup1)


figure;
loglog(windows,tv1, '*-', windows, ta1, 'ro-');
%title("FFT");
xlabel("Window size (log) ");
ylabel("Clock cycles (log)");
axis tight;
h = legend('Versat','ARM Cortex A9');
legend(h, "location", "north");
%print -dpng Window.png

figure;
plot(windows,speedup1, '*-');
%title("FFT");
xlabel("Window size");
ylabel("Speedup");
axis tight;
%h = legend('Speedup');
%legend(h, "location", "north");
print -depsc speedupConv.eps

figure;
plot(windows,tv1, '*-');
%title("FFT");
xlabel("Window size");
ylabel("Clock cycles");
axis tight;
%h = legend('Versat');
%legend(h, "location", "north");
%print -dpng versatConv.png

figure;
plot(windows,ta1, '*-');
%title("FFT");
xlabel("Window size");
ylabel("Clock cycles");
axis tight;
%h = legend('ARM Cortex A9');
%legend(h, "location", "north");
%print -dpng armConv.png
