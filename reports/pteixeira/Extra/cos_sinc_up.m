x = 0:0.0001:8;
x2 = 0.5:0.0001:6.5;
y1 = cos(pi/4*x);
y2 = sinc((x2-3-1/2));

xd = 0:1:8;
yd1 = cos(pi/4*xd);
xd2 = 0:(1/2):8;
yd2 = cos(pi/4*xd2);

figure
h1 = plot(x,y1, 'linewidth', 1.5);
hold on
h2 = plot(x2,y2,'-g', 'linewidth', 1.5);
hold on
h3 = plot(xd, yd1, 'linewidth', 2, 'marker', 'x', 'markersize', 15, 'linestyle', 'none', 'markerfacecolor', 'black', 'markeredgecolor', 'black');
hold on
h4 = plot(xd2, yd2, 'linewidth', 2, 'marker', 'o', 'markersize', 7, 'linestyle', 'none', 'markerfacecolor', 'none', 'markeredgecolor', 'red');
hold off

set(gca,'XTick',0:0.5:8)
set(gcf,'color','white');
%set(gca,'fontsize',20);
grid on;
box on;
xlabel('n');
ylabel('Amplitude');

waitfor(h1)
waitfor(h2)
waitfor(h3)
