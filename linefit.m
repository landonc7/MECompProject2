function [c,R2] = linefit(x,y)

if length(y) ~= length(x), error('x and y are not compatible'); end

x = x(:); y = y(:);
A = [x ones(size(x))];
c = (A'*A)\(A'*y);

if nargout > 1
r = y - A*c;
R2 = 1 - (norm(r)/norm(y - mean(y)))^2;
end

end