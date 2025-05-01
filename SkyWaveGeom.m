clear all
clc

% Trim Velocity components
initu = 238.75;
initv = 0;
initw = -6.5;

% Initial rates
initp = 0;
initq = 0;
initr = 0;

% Initial attitude
initbank = 0;
initpitch = initw / initu;
inithead = 0 * pi / 180;

% Initial Position
initnorth = 0;
initeast = 0;
initalt = 5000;

% SkyWave Aircraft Stability Derivatives (converted from per degree to per radian)
deg2rad = pi / 180;

% CL (Lift)
cla     = 4.44;
cladot  = 0;
clq     = 3.8;
clde    = 0.355;
clo     = 0.41;

% CD (Drag)
cda2    = 0.33;
cdo     = 0.05;

% CM (Pitching moment)
cma     = -0.683;
cmde    = -0.923;
cmadot  = -4.36;
cmq     = -9.96;

% CY (Side force)
cyb     = -0.564;
cydr    = 0.157;

% CL (Rolling moment)
clb     = -0.074;
clp     = -0.410;
clr     = 0.107;
clda    = -0.134;
cldr    = 0.107;

% CN (Yawing moment)
cnb     = 0.071;
cnp     = -0.0575;
cnr     = -0.125;
cnda    = -0.0035;
cndr    = -0.072;

% Aircraft geometry and mass
sw      = 700;          % Wing area [ft^2]
b       = 70;           % Span [ft]
cbar    = 10;           % Mean aerodynamic chord [ft]
weight  = 26000;        % Estimated gross weight [lbf]

% Reference points
xcg     = 24.276;       % x-position of CG [ft]
cg      = [xcg 0 0];
ac      = [xcg - 0.25 * cbar, 0, 0];  % aerodynamic center at 25% MAC
eng     = [xcg 0 0];     % assume engine thrust line at CG

% Inertia estimates
mass    = weight / 32.2;                  % slugs
jx      = 0.25 * mass * (b/2)^2;          % roll inertia
jy      = 0.35 * mass * (cbar)^2;         % pitch inertia
jz      = 0.5 * mass * (b/2)^2;           % yaw inertia
jxz     = 0;                              % assume zero cross product inertia

% Controls
elevator = 1.11 * pi / 180;   % Trim deflection, rad
aileron  = 0;
rudder   = 0;
throtle  = 1;

control = [elevator, aileron, rudder, throtle];

% Optionally open the model
% open('SkywaveAutopilot.slx');
