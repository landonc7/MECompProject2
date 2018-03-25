x = [1 2.5 4 5.5 7];
y = [2.2361 10.9329 24.6765 42.8382 65.0486];

c = powFit(x,y);

xfit = linspace(min(x),max(x));
yfit = c(1)*xfit.^(c(2));

plot(x, y, 'o', xfit, yfit, '-');
axis([0 8 0 80])
grid on
