addpath(genpath(pwd));

% Prompt for planet
planet = input('Enter central body: ', 's');

% Prompt for initial orbital conditions
r1a = input('Initial Apoapsis radius from planet center (km): ');
r1p = input('Initial Periopsis radius from planet center(km): ');

% Prompt for final orbital conditions
r2a = input('Final Apoapsis radius from planet center(km): ');
r2p = input('Final Periopsis radius from planet center(km): ');

% Get gravitational parameter for that planet
mu = getPlanetMu(planet);

% Run Hohmann transfer
[deltaV1, deltaV2, deltaV_total] = computeHohmannTransfer(r1p, r1a, r2p, r2a, mu);

% Display the results of the Hohmann transfer
fprintf('Delta-V for first maneuver:  %.3f km/s\n', deltaV1);
fprintf('Delta-V for second maneuver: %.3f km/s\n', deltaV2);
fprintf('Total Delta-V for transfer: %.3f km/s\n', deltaV_total);
