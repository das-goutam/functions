function angle_between_vectors

% Define the coordinates of the points
% x1 = 1;
% y1 = 2;
% x2 = 4;
% y2 = 5;

xD = [3.9;0];
xA = [3.9;-1];
xT = [0;0]; 

% Calculate the vector components
% vector1 = [x1, y1];
% vector2 = [x2, y2];

vector1 = (xT-xD)/norm(xT-xD);
vector2 = (xA-xD)/norm(xA-xD);


% Calculate the angle in radians using atan2
angleRad = atan2(vector2(2), vector2(1)) - atan2(vector1(2), vector1(1));

% Convert the angle to degrees
angleDeg = rad2deg(angleRad);

% Display the result
fprintf('The angle between the vectors is %.2f degrees.\n', angleDeg);

% Plotting
figure;
hold on;

% Plot vector 1
quiver(0, 0, vector1(1), vector1(2), 0, 'r', 'LineWidth', 1.5);
text(vector1(1), vector1(2), 'Vector 1', 'Color', 'r', 'FontSize', 10);

% Plot vector 2
quiver(0, 0, vector2(1), vector2(2), 0, 'b', 'LineWidth', 1.5);
text(vector2(1), vector2(2), 'Vector 2', 'Color', 'b', 'FontSize', 10);

% % Set axis limits
% xlim([-1, max(x1, x2) + 1]);
% ylim([-1, max(y1, y2) + 1]);

% Set aspect ratio
pbaspect([1 1 1]);

% Set grid
grid on;

% Add legend
legend('Vector 1', 'Vector 2', 'Location', 'best');

% Add title and labels
title('Angle between Vectors');
xlabel('X');
ylabel('Y');

hold off;
