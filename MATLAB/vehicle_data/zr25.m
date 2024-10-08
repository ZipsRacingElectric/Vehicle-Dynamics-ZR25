% Vehicle parameters for ZR25 design.
% 9/26/24

% Dimensions
wheelbase = Simulink.Parameter(1.530);                              % m
track_width_front = Simulink.Parameter(1.230);                      % m
track_width_rear = Simulink.Parameter(1.2);                         % m

% Mass
vehicle_mass = Simulink.Parameter(205);                             % kg
driver_mass = Simulink.Parameter(72);                               % kg
corner_mass_front = Simulink.Parameter(15.16);                      % kg, unsprun corner mass. Include half of the control arm masses.
corner_mass_rear = Simulink.Parameter(15.16);                       % kg, unsprun corner mass. Include half of the control arm masses.
front_mass_distribution = Simulink.Parameter(0.48);                 % percentage on front axle
cg_height = Simulink.Parameter(0.255);                              % m
yaw_polar_inertia = Simulink.Parameter(80);                         % kg * m^2

% Tires
tire_loaded_radius = Simulink.Parameter(0.25);                      % m
gear_ratio = Simulink.Parameter(13);                                % (# input rotations / # output rotations)
tire_mu = Simulink.Parameter(2);                                    % use only if tire model not availible                           
tire_stiffness = Simulink.Parameter(87563.5);                       % N/m
tire_width = Simulink.Parameter(0.19);                              % m

% Aerodyamics
frontal_area = Simulink.Parameter(1.5);                             % m^2
Cd = Simulink.Parameter(0.2);                                       % unitless
Cl = Simulink.Parameter(2);                                         % unitless. Certain models may require it to be negative or positive based on implementation
center_of_pressure_distribution = Simulink.Parameter(0.45);         % ratio 0(at rear axle) to 1(at front axle)

% Kinematics
static_toe_front = Simulink.Parameter(0.5);                         % degrees (per wheel), + is toe out
static_toe_rear = Simulink.Parameter(0);                            % degrees (per wheel), + is toe out
static_camber_front = Simulink.Parameter(-2.5);                     % degrees, - is leaning torwards car
static_camber_rear = Simulink.Parameter(-2.5);                      % degrees, - is leaning torwards car
steering_ratio = Simulink.Parameter(7.02);                          % ratio, steering wheel angle / ackerman steering angle (aka average of L and R angles)
ackerman_percentage = Simulink.Parameter(70);                      % percentage

% Springs and Dampers
spring_rate_front = Simulink.Parameter(35000);                      % N/m
spring_rate_rear = Simulink.Parameter(40000);                       % N/m
motion_ratio_front = Simulink.Parameter(1);                         % Damper / Wheel (assumes we use coil-overs)
motion_ratio_rear = Simulink.Parameter(1);                          % Damper / Wheel (assumes we use coil-overs)
