load velocity.dat

t = [0:17]';
v = velocity(:,2);

A = [t.^3 t.^2 t ones(size(t))];

c = (A'*A)\(A'*v);

xfit = linspace(min(t),max(t),18);
yfit = c(1)*xfit.^3 + c(2)*xfit.^2 + c(3)*xfit +c(4);

dvdt = diff(yfit);
n = [0:16];

plot(n,dvdt,'o')

%Between the two methods, the curve fit is much more smoother than the
%finite analysis method. The finite analysis differential varies
%sporadically in comparison. The curve fit method shows that the
%acceleration as an exponential function, which makes more sense than a
%varying differential in accordance to the data we're given.