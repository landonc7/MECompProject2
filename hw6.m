%hw 6 problems
%%
%1
x = [-2 -1 0 1 2];
y = [1 2 3 3 4];
c = linefit(x,y);
xfit = linspace(min(x),max(x));
yfit = c(1)*xfit + c(2);

plot(x, y, 'o', xfit, yfit, '-');
axis([-2.5 2.5 0 5])
grid on

%%
%2
x = [1 2.5 4 5.5 7];
y = [2.2361 10.9329 24.6765 42.8382 65.0486];

c = powFit(x,y);

xfit = linspace(min(x),max(x));
yfit = c(1)*xfit.^(c(2));

plot(x, y, 'o', xfit, yfit, '-');
axis([0 8 0 80])
grid on

%%
%3
x = [-2 -1 0 1 2];
y = [-5.8 1.1 3.8 3.3 -1.5];

c = polyfit(x,y,2);

xfit = linspace(min(x),max(x));
yfit = c(1)*xfit.^2 + c(2)*xfit + c(3);

plot(x, y, 'o', xfit, yfit, '-');
axis([-3 3 -7 7])
grid on
%%
%4 finite
load velocity.dat

vnew = []; %Treat velocity at t=1 to be initial velocity
vold = []; %If t=1 is the initial velocity, then t=1 has to be the initial
           %time of t = 0, so only the maximum of t is 17.
differernce = [];
for t=2:18
    dt = 1;
    
    vnew = velocity(t,2);
    vold = velocity(t-1,2);
    dv = vnew - vold;
    
    differernce = [differernce,dv/dt];
end
differernce = differernce';
t = [0:1:16]';
plot(t,differernce,'-')
xlabel('Time')
ylabel('dv/dt')


%%
%4 curve fit
load velocity.dat

t = [0:17]';
v = velocity(:,2);

A = [t.^3 t.^2 t ones(size(t))];

c = (A'*A)\(A'*v);

xfit = linspace(min(t),max(t),18);
yfit = c(1)*xfit.^3 + c(2)*xfit.^2 + c(3)*xfit +c(4);
yfit=yfit';
dvdt = diff(yfit);
n = [0:16];

plot(n,dvdt,'-')

%Between the two methods, the curve fit is much more smoother than the
%finite analysis method. The finite analysis differential varies
%sporadically in comparison. The curve fit method shows that the
%acceleration as an exponential function, which makes more sense than a
%varying differential in accordance to the data we're given.