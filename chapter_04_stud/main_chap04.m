clc
close all
clearvars

n_sim = 1;

make_initial_state
make_nominal_flight_parameters
uavParams = make_uav_parameters();
make_wind_parameters
