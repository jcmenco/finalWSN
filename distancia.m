function d = distancia(XY,XY0)
% XY es una matriz Nx2, donde cada fila es un par (x,y)
% XY0 es un array 1x2 con el punto de referencia

x = XY(:,1); 
y = XY(:,2);
x0 = XY0(1); 
y0 = XY0(2);

N = length(x);
d = zeros(1,N);

for i = 1 : N
    dx = abs(x(i)-x0);
    dy = abs(y(i)-y0);
    d(i) = sqrt(dx^2+dy^2);
end

end