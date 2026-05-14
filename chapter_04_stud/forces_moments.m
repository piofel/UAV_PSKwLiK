function out = forces_moments(x,ad,delta,uav_parameters)
    phi     =
    theta   = x(8); % pitch angle
    p       = x(10); % body frame roll rate
    q       =
    r       =

    Va = ad(1);  % airspeed
    alpha = ad(2);
    beta =

    delta_e =
    delta_a = delta(2); % aileron deflection
    delta_r =
    delta_t =

    mass = uav_parameters(10);
    gravity = uav_parameters(15);
    S_wing =
    b =
    c = uav_parameters(18);
    S_prop = uav_parameters(19);
    rho =
    e = uav_parameters(21);
    AR = uav_parameters(22);
    C_L_0 =
    C_m_0 = uav_parameters(25);
    C_L_alpha = uav_parameters(26);
    C_m_alpha = uav_parameters(28);
    C_L_q = uav_parameters(29);
    C_D_q =
    C_m_q = uav_parameters(31);
    C_L_delta_e = uav_parameters(32);
    C_D_delta_e =
    C_m_delta_e = uav_parameters(34);
    M = uav_parameters(35);
    alpha0 =
    C_D_p = uav_parameters(38);
    C_Y_0 = uav_parameters(39);
    C_ell_0 = uav_parameters(40);
    C_n_0 = uav_parameters(41);
    C_Y_beta = uav_parameters(42);
    C_ell_beta = uav_parameters(43);
    C_n_beta = uav_parameters(44);
    C_Y_p = uav_parameters(45);
    C_ell_p = uav_parameters(46);
    C_n_p = uav_parameters(47);
    C_Y_r = uav_parameters(48);
    C_ell_r = uav_parameters(49);
    C_n_r = uav_parameters(50);
    C_Y_delta_a = uav_parameters(51);
    C_ell_delta_a = uav_parameters(52);
    C_n_delta_a = uav_parameters(53);
    C_Y_delta_r = uav_parameters(54);
    C_ell_delta_r =
    C_n_delta_r = uav_parameters(56);
    C_prop = uav_parameters(57);
    k_motor = uav_parameters(58);
    k_Omega = uav_parameters(59);
    k_T_p = uav_parameters(60);
    
    % compute external forces and torques on aircraft
    sinalpha = sin(alpha);
    cosalpha = cos(alpha);
    k1 = 0.5 * rho * Va^2 * S_wing;
    C_D = calc_C_D(C_L_0,C_L_alpha,C_D_p,e,AR,alpha);
    C_L =
    C_X =
    C_X_q =
    C_X_delta_e =
    C_Z =
    C_Z_q =
    C_Z_delta_e =
    mg = mass*gravity;
    dbVa = 2*Va;
    forces = NaN(3,1);
    forces(1) =
    forces(2) =
    forces(3) =
    torques = NaN(3,1);
    torques(1) = 
    torques(2) =
    torques(3) =
    out = [forces; torques];
end

function C_L = calc_C_L(C_L_0,C_L_alpha,M,alpha0,alpha)
    e1 = exp(-M*(alpha-alpha0));
    e2 = exp(M*(alpha+alpha0));
    sigma = (1+e1+e2)/((1+e1)*(1+e2));
    C_L =
end

function C_D = calc_C_D(C_L_0,C_L_alpha,C_D_p,e,AR,alpha)
    C_D =
end
