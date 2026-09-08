function g = getPlanetGravitationalAcceleration(planet)
switch lower(planet)
    case 'mercury'
        g = 3.59; % m/s^2
    case 'venus'
        g = 8.87; % m/s^2
    case 'earth'
        g = 9.81; % m/s^2
    case 'mars'
        g = 3.77; % m/s^2
    case 'jupiter'
        g = 24.79; % m/s^2
    case 'saturn'
        g = 11.08;
    case 'uranus'
        g = 10.67;
    case 'neptune'
        g = 14.07;
    otherwise
        g = NaN; % Unknown planet
end