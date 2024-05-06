%Kadek Angel_662021001

% %Plot 2D part 1 "Grafik Lop"
% t = linspace(0, 2*pi, 1000); 
% x = 16*sin(t).^3; 
% y = 13*cos(t) - 5*cos(2*t) - 2*cos(3*t) - cos(4*t); 
% plot(x, y, 'r', 'LineWidth', 2); 
% title('Grafik Lop'); 
% xlabel('X'); 
% ylabel('Y'); 
% grid on; 


% Plot 2D
% x = linspace(5, 2, 500); 
% y = linspace(5, 2, 500); 
% [X, Y] = meshgrid(x, y); 
% Z = cos(X) .* cos(5*Y); 
% figure; 
% mesh(X, Y, Z); 
% xlabel('X Axis'); 
% ylabel('Y Axis'); 
% zlabel('Z Axis'); 
% title('grafik fish'); 

%Plot 2D part 2 "grafik springkel"
% x = 0:pi/20:2*pi;
% y1 = cos(x);
% y2 = cos(x-0.25);
% y3 = sin(x-0.5);
% y4 = sin(x-0.35);
% figure (1)
% plot(x,y1,'bdiamond',x,y2,'c--o',x,y3,'m*',x,y4,'y*')
% title('Grafik springkel'); 
% figure (2)
% x = 0:pi/20:2*pi;
% y1 = sin(x);
% y2 = sin(x-0.25);
% y3 = sin(x-0.5);
% y4 = sin(x-0.35);
% plot(x,y1,'bdiamond',x,y2,'c--o',x,y3,'m*',x,y4,'y*')
% title('Grafik springkel'); 
% xlabel('X'); 
% ylabel('Y'); 
% grid on; 


% %Plot 3D part 1
% x = linspace(-5, 5, 100);
% y = linspace(-5, 5, 100);
% [X, Y] = meshgrid(x, y);
% Z = cos(sqrt(X.^2 + Y.^2));
% figure (1)
% surfc(X, Y, Z);
% figure (2)
% plot3(X, Y, Z);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('grafik 3D');
% % Add color bar
% colorbar;

%Plot 3D part2
% [x, y] = meshgrid(-6:0.1:6);
% z = (-y.^2 - x.^2 + 1) ./ (2*x.*y); 
% figure; 
% mesh(x, y, z);
% xlabel('X Axis');
% ylabel('Y Axis'); 
% zlabel('Z Axis'); 
% title('3D'); 

% % Plot 3D Part 3
% x = linspace(-5, 5, 100);
% y = linspace(-5, 5, 100);
% [X, Y] = meshgrid(x, y);
% t = 0;
% amplitude = 1;
% frequency = 0.7;
% wavelength = 2 * pi / frequency;
% Z = amplitude * sin(2 * pi * frequency * (sqrt(X.^2 + Y.^2)));
% surf(X, Y, Z, 'EdgeColor', 'none');
% title('Grafik Mawar');
% xlabel('X');
% ylabel('Y');
% zlabel('Z');


% %Plot 3D Part 4
t = 0:pi/500:40*pi;
xt = (3 + cos(sqrt(32)*t)).*cos(t);
yt = sin(sqrt(32) * t);
zt = (3 + cos(sqrt(32)*t)).*sin(t);
plot3(xt,yt,zt,'r')
axis equal
xlabel('x(t)')
ylabel('y(t)')
zlabel('z(t)')


