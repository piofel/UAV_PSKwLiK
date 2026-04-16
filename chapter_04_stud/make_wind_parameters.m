windStatic = [-3;2;0]; % zeros(3,1); % [20;-8;2]; % 
windsigma = [3;3;3]; % zeros(3,1); % 
windL = [533 533 533]';
gustsNoisePower = 0.1;
gustsNoiseCorrelationTime = 2;
gusts_seeds = [             1   :       n_sim;
                n_sim   +   1   :   2 * n_sim;
                2*n_sim +   1   :   3 * n_sim];