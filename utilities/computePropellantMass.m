function mp = computePropellantMass(dryMass, deltaV_total, Isp, g)

   

    ve = Isp * g;
    mp = dryMass * (exp(deltaV_total / ve) - 1);
end
