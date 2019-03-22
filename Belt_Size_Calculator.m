%**************************************************************************
%   
%   Calculate some dimentions for a belt drive
%   
%   Peter Garnache | 2/5/19
%   
%**************************************************************************
clc
clear all


% Ask for user inputs:
fprintf('Find the length of a belt for a pulley drive system\n');
d  = input('Distance between pulleys\n');   % Distance between two pulleys
t1 = input('Teeth of smaller pulley\n');    % Radius of smaller pulley
t2 = input('Teeth of larger  pulley\n');    % Radius of larger pulley
p  = input('Pitch of belt\n');              % Pitch of belt

% Calculate length components:
r1 = t1*p/(2*pi);
r2 = t2*p/(2*pi);
theta = atan((r2-r1)/d);
L1 = sqrt((r2-r1)^2 + d^2);
A1 = 2*pi*r1*((180-2*theta)/360);
A2 = 2*pi*r2*((180+2*theta)/360);

L = 2*L1+A1+A2;
N = ceil(L/p);

fprintf('You need a belt that is %5.2f long\n', L);
fprintf('The closest belt size has %2f teeth\n', N);
fprintf('The difference is %4.2f \n', (N*p)-L);


    


