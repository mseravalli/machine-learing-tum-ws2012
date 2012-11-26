%function matlab( )

A_x = [ 0 -1 -3  2  2];
A_y = [ 0  1 -2 -1  1];

B_x = [-11 -13 -10  10  11   9];
B_y = [-10 -12 -10  10  10  12];
     
hold on
scatter(A_x, A_y, 'ro');
scatter(B_x, B_y, 'k*');

ch1 = convhull(A_x, A_y);
ch2 = convhull(B_x, B_y);
axis([-14 14 -14 14]);
plot(A_x(ch1), A_y(ch1));
plot(B_x(ch2), B_y(ch2));
