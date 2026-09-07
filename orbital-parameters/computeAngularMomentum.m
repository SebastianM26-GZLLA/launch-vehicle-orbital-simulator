function h = computeAngularMomentum(rp, ra, mu)
h = sqrt(2 * mu) * sqrt((ra * rp) / (ra + rp));
end
