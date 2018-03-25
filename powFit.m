function c = powFit(x,y)

u = log(x);
v = log(y);

c = linefit(u,v)
c = [exp(c(2)); c(1)]

end