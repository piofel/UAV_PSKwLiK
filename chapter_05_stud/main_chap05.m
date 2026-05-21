clc
close all

%{
    Dependencies:
        rotation_matrix.m
        draw_aircraft.m
        make_initial_state.m
        make_uav_parameters.m
        uav_dynamics_sfcn.m
        make_nominal_flight_parameters.m
        make_wind_parameters.m
        forces_moments.m
        airdata.m
        uav_trim.m
        compute_uav_tf_model.m
        unwrap_angle.m
        compute_uav_ss_model.m - optionally
%}

clearvars

n_sim = 1;

make_initial_state
make_nominal_flight_parameters
uavParams = make_uav_parameters();
uav_trim 
make_wind_parameters
