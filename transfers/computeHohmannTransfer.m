function [deltaV1, deltaV2, deltaV_total] = computeHohmannTransfer(r1p, r1a, r2p, r2a, mu)


% Compute angular momentum
h1 = computeAngularMomentum(r1p, r1a, mu);
h_transfer = computeAngularMomentum(r1p, r2a, mu);
h2 = computeAngularMomentum(r2p, r2a, mu);

% Orbital speed at burn 1 (periapsis of orbit 1)
r_burn1 = r1p;

v1 = computeOrbitalSpeeds(r_burn1, r1p, r1a, mu);          % speed in orbit 1
v_transfer1= computeOrbitalSpeeds(r_burn1, r1p, r2a, mu);  % speed in transfer orbit

% Orbital speed at burn 2 (apoapsis of transfer orbit)
r_burn2 = r2a;
v_transfer2 = computeOrbitalSpeeds(r_burn2, r1p, r2a, mu); % speed in transfer orbit 
v2 = computeOrbitalSpeeds(r_burn2, r2p, r2a, mu);          % speed in final orbit

% delta-v for first maneuver
deltaV1 = abs(v_transfer1 - v1);

% delta-v for second maneuver
deltaV2 = abs(v2 - v_transfer2);

% total delta-v for entire transfer
deltaV_total = deltaV1 + deltaV2;

end