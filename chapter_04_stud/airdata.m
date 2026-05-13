% wind_gusts: vector of gusts in UAV (body) coordinates
% wind_steady: vector of steady wind in NED coordinates
% x: dynamics state vector

function ad = airdata(???,wind_steady,wind_gusts)
    phi     =
    theta   = x(8); % pitch angle
    psi     =
    R =

    % compute wind data in NED frame
    wind_ned =

    % compute wind data in body frame
    Vw = wind_gusts + R*wind_steady;
    
    % compute Va, alpha, beta
    u       =
    v       =
    w       = x(6); % velocity along body z-axis
    Var =
    ur = Var(1);
    vr =
    wr =
    Va = norm(Var);
    alpha =
    beta =

    ad = [Va;alpha;beta;wind_ned];
end
