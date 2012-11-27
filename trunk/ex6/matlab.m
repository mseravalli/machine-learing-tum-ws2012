%function matlab( )

A_x = [ 0 -0.1 -0.3  0.2  0.2];
A_y = [ 0  0.1 -0.2 -0.1  0.1];

B_x = [-1.1 -1.3 -1.0  1.0  1.1  0.9];
B_y = [-1.0 -1.2 -1.0  1.0  1.0  1.2];

for i = 1 : size(A_x, 2)
    A_x(i) = exp(- norm([A_x(i) A_y(i)], 2) / 2);
    A_y(i) = exp(- norm([A_x(i)-1  A_y(i)-1], 2) / 2);
end
for i = 1 : size(B_x, 2)
    B_x(i) = exp(- norm([B_x(i) B_y(i)], 2) / 2);
    B_y(i) = exp(- norm([B_x(i)-1  B_y(i)-1], 2) / 2);
end
     
hold on
scatter(A_x, A_y, 'ro');
scatter(B_x, B_y, 'k*');

ch1 = convhull(A_x, A_y);
ch2 = convhull(B_x, B_y);
axis([-1.4 1.4 -1.4 1.4]);
plot(A_x(ch1), A_y(ch1));
plot(B_x(ch2), B_y(ch2));

l = line([0.7 0.7], [10 -10]); 
plot(l);
