function [allData, scenario, sensor] = MiniScenario2()

% Create the drivingScenario object and ego car
[scenario, egoVehicle] = createDrivingScenario;

% Create all the sensors
sensor = createSensor(scenario);

allData = struct('Time', {}, 'ActorPoses', {}, 'ObjectDetections', {}, 'LaneDetections', {}, 'PointClouds', {}, 'INSMeasurements', {});
running = true;
while running

    % Generate the target poses of all actors relative to the ego vehicle
    poses = targetPoses(egoVehicle);
    time  = scenario.SimulationTime;

    % Generate the ego vehicle lane boundaries
    if isa(sensor, 'visionDetectionGenerator')
        maxLaneDetectionRange = min(500,sensor.MaxRange);
        lanes = laneBoundaries(egoVehicle, 'XDistance', linspace(-maxLaneDetectionRange, maxLaneDetectionRange, 101));
    end
    % Generate detections for the sensor
    ptClouds = [];
    insMeas = [];
    [objectDetections, numObjects, isValidTime, laneDetections, ~, isValidLaneTime] = sensor(poses, lanes, time);
    objectDetections = objectDetections(1:numObjects);

    % Aggregate all detections into a structure for later use
    if isValidTime || isValidLaneTime
        allData(end + 1) = struct( ...
            'Time',       scenario.SimulationTime, ...
            'ActorPoses', actorPoses(scenario), ...
            'ObjectDetections', {objectDetections}, ...
            'LaneDetections', {laneDetections}, ...
            'PointClouds',   {ptClouds}, ... %#ok<AGROW>
            'INSMeasurements',   {insMeas}); %#ok<AGROW>
    end

    % Advance the scenario one time step and exit the loop if the scenario is complete
    running = advance(scenario);
end

% Restart the driving scenario to return the actors to their initial positions.
restart(scenario);

% Release the sensor object so it can be used again.
release(sensor);

%%%%%%%%%%%%%%%%%%%%
% Helper functions %
%%%%%%%%%%%%%%%%%%%%

% Units used in createSensors and createDrivingScenario
% Distance/Position - meters
% Speed             - meters/second
% Angles            - degrees
% RCS Pattern       - dBsm

function sensor = createSensor(scenario)
% createSensors Returns all sensor objects to generate detections

% Assign into each sensor the physical and radar profiles for all actors
profiles = actorProfiles(scenario);
sensor = visionDetectionGenerator('SensorIndex', 1, ...
    'UpdateInterval', 0.09, ...
    'SensorLocation', [1.17 0.02], ...
    'MaxSpeed', 50, ...
    'MinLaneImageSize', [1 3], ...
    'MaxNumLanesSource', 'Property', ...
    'MaxNumLanes', 10, ...
    'DetectorOutput', 'Lanes and objects', ...
    'Intrinsics', cameraIntrinsics([800 799.999999999999],[320 240],[480 640]), ...
    'ActorProfiles', profiles);

function [scenario, egoVehicle] = createDrivingScenario
% createDrivingScenario Returns the drivingScenario defined in the Designer

% Construct a drivingScenario object.
scenario = drivingScenario('SampleTime', 0.03);

% Add all road segments
roadCenters = [165 -8 0;
    84 -8 0];
laneSpecification = lanespec([2 2]);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road');

roadCenters = [127 27 0;
    127 -53.5 0];
laneSpecification = lanespec([2 2], 'Width', [4 3.6 3.6 3.6]);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road1');

% Add the ego vehicle
egoVehicle = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [85 -10 0], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'EgoCar');
waypoints = [85 -10 0;
    95.4 -10 0;
    108.6 -10 0;
    118 -10 0;
    123.5 -10 0;
    129 -4 0;
    129 1.5 0;
    129 9.4 0];
speed = [5;5;5;8;8;12;12;11];
trajectory(egoVehicle, waypoints, speed);

% Add the non-ego actors
vehicle1 = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [92 -10 0], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Vehicle1');
waypoints = [92 -10 0;
    100.3 -10 0;
    105.2 -10 0;
    113.4 -10 0;
    118.5 -10 0;
    124.7 -7.6 0;
    117.6 -2.5 0;
    113.3 -2.5 0;
    109.2 -2.5 0;
    104.1 -2.5 0;
    97 -2.5 0];
speed = [5;5;8;5;5;8;10;10;12;12;18];
trajectory(vehicle1, waypoints, speed);

vehicle2 = vehicle(scenario, ...
    'ClassID', 2, ...
    'Length', 8.2, ...
    'Width', 2.5, ...
    'Height', 3.5, ...
    'Position', [132.5 -49.5 0], ...
    'RearOverhang', 1, ...
    'FrontOverhang', 0.9, ...
    'Mesh', driving.scenario.truckMesh, ...
    'Name', 'Vehicle2');
waypoints = [132.5 -49.5 0;
    132.5 -15 0;
    132.5 0 0;
    132.5 17.4 0];
speed = 7;
trajectory(vehicle2, waypoints, speed);



