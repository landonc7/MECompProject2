x = [-2 -1 0 1 2];
y = [-5.8 1.1 3.8 3.3 -1.5];

c = polyfit(x,y,2);

xfit = linspace(min(x),max(x));
yfit = c(1)*xfit.^2 + c(2)*xfit + c(3);

plot(x, y, 'o', xfit, yfit, '-');
axis([-3 3 -7 7])
grid on
