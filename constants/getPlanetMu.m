%% Function to get planet mu values
function mu = getPlanetMu(planet)
switch lower(planet)
    case 'mercury'
        mu = 22030;
    case 'venus'
        mu = 324900;
    case 'earth'
        mu = 398600;
    case 'mars'
        mu = 42828;
    case 'jupiter'
        mu = 126686534;
    case 'saturn'
        mu = 37931187;
    case 'uranus'
        mu = 5793905;
    case 'neptune'
        mu = 6836520;
    otherwise
        mu = NaN; % Return NaN for unknown planets
end