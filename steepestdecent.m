syms X Y;

f =4*X^2  - 4*X*Y + 2* Y^2;

x(1) = 4;
y(1) = 3;

geradian = [subs(diff(f, X),[X,Y], [x(1),y(1)]) subs(diff(f, Y), [X,Y], [x(1),y(1)])]; %mohasebe geradian
d = -(geradian);   % jahate kaheshi
for i = 1:5   
a = [x(i),y(i)];
syms alpha
g = subs(f, [X,Y], [x(i)+d(1)*alpha,y(i)+alpha*d(2)]);
alpha = solve(diff(g,alpha),alpha);
x(i+1) = a(1)+alpha*d(1) 
y(i+1) = a(2)+alpha*d(2)
i = i+1;
g1 = [subs(diff(f, X),[X,Y], [x(i),y(i)]) subs(diff(f, Y), [X,Y], [x(i),y(i)])]; 
d=-(g1);
end



plot(x,y,'*-m');

disp(x(i));
disp(y(i));