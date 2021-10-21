x = 0:0.0001:16;
x2 = 2:0.0001:14;
y1 = cos(pi/8*x);
y2 = sinc((x2-8)/2);

xd = 0:2:16;
yd1 = cos(pi/8*xd);
xd2 = 0:1:16;
yd2 = cos(pi/8*xd2);

figure
h1 = plot(x,y1, 'linewidth', 1.5);
hold on
h2 = plot(x2,y2,'-g', 'linewidth', 1.5);
hold on
h3 = plot(xd2, yd2, 'linewidth', 2, 'marker', 'x', 'markersize', 15, 'linestyle', 'none', 'markerfacecolor', 'black', 'markeredgecolor', 'black');
hold on
h4 = plot(xd, yd1, 'linewidth', 2, 'marker', 'o', 'markersize', 7, 'linestyle', 'none', 'markerfacecolor', 'none', 'markeredgecolor', 'red');
hold off

set(gca,'XTick',0:1:16)
xlim ([0, 16]);
set(gcf,'color','white');
%set(gca,'fontsize',20);
grid on;
box on;
xlabel('n');
ylabel('Amplitude');

waitfor(h1)
waitfor(h2)
waitfor(h3)
