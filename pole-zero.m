clc, clearvars

% Numerator coefficients
numerator = [500, 1000, 500, 1000];
denominator = [1, 4, 4, 16, 0];

% Create transfer function
H = tf(numerator, denominator);

figure;

pzmap(H);
xlim([-5, 5]);
ylim([-3, 3]);

title('Pole-Zero Diagram of the Circuit Transfer Function');
%label('Real Component');
ylabel('Imaginary Component');
grid on;

