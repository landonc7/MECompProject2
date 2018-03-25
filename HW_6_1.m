x = [-2 -1 0 1 2];
y = [1 2 3 3 4];
c = linefit(x,y);
xfit = linspace(min(x),max(x));
yfit = c(1)*xfit + c(2);

plot(x, y, 'o', xfit, yfit, '-');
axis([-2.5 2.5 0 5])
grid on
