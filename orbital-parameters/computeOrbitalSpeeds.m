function v = computeOrbitalSpeeds(r, rp, ra, mu)

% Semi-major axis
a = (rp + ra) / 2; 

% Vis-Visa equation for Orbital speed v
v = sqrt(mu * (2/r - 1/a));

end