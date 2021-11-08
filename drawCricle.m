function drawCricle(radio,x0,y0)

cla
syms theta
x = x0 + radio*cos(theta);
y = y0 + radio*sin(theta);
fplot(x,y)

end