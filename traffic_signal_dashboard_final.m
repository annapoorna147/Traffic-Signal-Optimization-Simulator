function traffic_signal_dashboard_final

clc;
close all;

%% =========================================================
% TRAFFIC SIGNAL OPTIMIZATION SYSTEM
% MATLAB ONLINE - FINAL UI VERSION
% ==========================================================

traffic = [25 18 10 30];

directions = {'North','South','East','West'};

numCycles = 15;

%% =========================================================
% MAIN WINDOW
% ==========================================================

fig = uifigure( ...
    'Name','Traffic Signal Optimization System', ...
    'Position',[50 50 1000 650], ...
    'Color',[0.94 0.94 0.94]);

%% =========================================================
% TITLE
% ==========================================================

titleLabel = uilabel(fig);

titleLabel.Position = [250 610 500 30];

titleLabel.Text = 'TRAFFIC SIGNAL OPTIMIZATION SYSTEM';

titleLabel.FontSize = 20;

titleLabel.FontWeight = 'bold';

titleLabel.HorizontalAlignment = 'center';


%% =========================================================
% TRAFFIC DENSITY
% ==========================================================

trafficPanel = uipanel(fig);

trafficPanel.Position = [20 310 220 270];

trafficPanel.Title = 'Traffic Density';

trafficPanel.FontSize = 13;


northLabel = uilabel(trafficPanel);
northLabel.Position = [40 210 140 25];
northLabel.Text = 'NORTH';
northLabel.FontSize = 13;
northLabel.FontWeight = 'bold';
northLabel.HorizontalAlignment = 'center';

northText = uilabel(trafficPanel);
northText.Position = [40 180 140 25];
northText.Text = '25 vehicles';
northText.FontSize = 12;
northText.HorizontalAlignment = 'center';


southLabel = uilabel(trafficPanel);
southLabel.Position = [40 145 140 25];
southLabel.Text = 'SOUTH';
southLabel.FontSize = 13;
southLabel.FontWeight = 'bold';
southLabel.HorizontalAlignment = 'center';

southText = uilabel(trafficPanel);
southText.Position = [40 115 140 25];
southText.Text = '18 vehicles';
southText.FontSize = 12;
southText.HorizontalAlignment = 'center';


eastLabel = uilabel(trafficPanel);
eastLabel.Position = [40 80 140 25];
eastLabel.Text = 'EAST';
eastLabel.FontSize = 13;
eastLabel.FontWeight = 'bold';
eastLabel.HorizontalAlignment = 'center';

eastText = uilabel(trafficPanel);
eastText.Position = [40 50 140 25];
eastText.Text = '10 vehicles';
eastText.FontSize = 12;
eastText.HorizontalAlignment = 'center';


westLabel = uilabel(trafficPanel);
westLabel.Position = [40 15 140 25];
westLabel.Text = 'WEST';
westLabel.FontSize = 13;
westLabel.FontWeight = 'bold';
westLabel.HorizontalAlignment = 'center';

westText = uilabel(trafficPanel);
westText.Position = [40 -10 140 25];
westText.Text = '30 vehicles';
westText.FontSize = 12;
westText.HorizontalAlignment = 'center';


%% =========================================================
% LIVE INTERSECTION
% ==========================================================

intersectionPanel = uipanel(fig);

intersectionPanel.Position = [260 310 450 270];

intersectionPanel.Title = 'Live Traffic Intersection';

intersectionPanel.FontSize = 13;


%% Roads

verticalRoad = uipanel(intersectionPanel);

verticalRoad.Position = [185 25 80 210];

verticalRoad.BackgroundColor = [0.55 0.55 0.55];

verticalRoad.BorderType = 'none';


horizontalRoad = uipanel(intersectionPanel);

horizontalRoad.Position = [70 90 310 80];

horizontalRoad.BackgroundColor = [0.55 0.55 0.55];

horizontalRoad.BorderType = 'none';


%% Center

centerPanel = uipanel(intersectionPanel);

centerPanel.Position = [185 90 80 80];

centerPanel.BackgroundColor = [0.30 0.30 0.30];

centerPanel.BorderType = 'none';


%% =========================================================
% TRAFFIC LIGHTS
% ==========================================================

northLight = uilabel(intersectionPanel);

northLight.Position = [202 185 45 45];

northLight.Text = '●';

northLight.FontSize = 38;

northLight.FontColor = [1 0 0];

northLight.HorizontalAlignment = 'center';


southLight = uilabel(intersectionPanel);

southLight.Position = [202 30 45 45];

southLight.Text = '●';

southLight.FontSize = 38;

southLight.FontColor = [1 0 0];

southLight.HorizontalAlignment = 'center';


eastLight = uilabel(intersectionPanel);

eastLight.Position = [325 108 45 45];

eastLight.Text = '●';

eastLight.FontSize = 38;

eastLight.FontColor = [1 0 0];

eastLight.HorizontalAlignment = 'center';


westLight = uilabel(intersectionPanel);

westLight.Position = [80 108 45 45];

westLight.Text = '●';

westLight.FontSize = 38;

westLight.FontColor = [1 0 0];

westLight.HorizontalAlignment = 'center';


%% =========================================================
% DIRECTION LABELS
% ==========================================================

northDir = uilabel(intersectionPanel);

northDir.Position = [175 215 100 25];

northDir.Text = 'NORTH';

northDir.FontWeight = 'bold';

northDir.HorizontalAlignment = 'center';


southDir = uilabel(intersectionPanel);

southDir.Position = [175 5 100 25];

southDir.Text = 'SOUTH';

southDir.FontWeight = 'bold';

southDir.HorizontalAlignment = 'center';


eastDir = uilabel(intersectionPanel);

eastDir.Position = [350 135 70 25];

eastDir.Text = 'EAST';

eastDir.FontWeight = 'bold';


westDir = uilabel(intersectionPanel);

westDir.Position = [20 135 70 25];

westDir.Text = 'WEST';

westDir.FontWeight = 'bold';


%% =========================================================
% SIGNAL STATUS
% ==========================================================

signalPanel = uipanel(fig);

signalPanel.Position = [730 310 250 270];

signalPanel.Title = 'Signal Status';

signalPanel.FontSize = 13;


greenLabel = uilabel(signalPanel);

greenLabel.Position = [40 210 170 25];

greenLabel.Text = 'CURRENT GREEN';

greenLabel.FontWeight = 'bold';

greenLabel.HorizontalAlignment = 'center';


signalText = uilabel(signalPanel);

signalText.Position = [40 165 170 35];

signalText.Text = 'READY';

signalText.FontSize = 20;

signalText.FontWeight = 'bold';

signalText.HorizontalAlignment = 'center';


priorityText = uilabel(signalPanel);

priorityText.Position = [25 130 200 25];

priorityText.Text = 'Priority: NORMAL';

priorityText.HorizontalAlignment = 'center';


timeText = uilabel(signalPanel);

timeText.Position = [25 100 200 25];

timeText.Text = 'Green Time: --';

timeText.HorizontalAlignment = 'center';


cycleText = uilabel(signalPanel);

cycleText.Position = [25 70 200 25];

cycleText.Text = 'Cycle: 0 / 15';

cycleText.HorizontalAlignment = 'center';


passedText = uilabel(signalPanel);

passedText.Position = [25 40 200 25];

passedText.Text = 'Passed: 0';

passedText.HorizontalAlignment = 'center';


waitingText = uilabel(signalPanel);

waitingText.Position = [25 10 200 25];

waitingText.Text = 'Waiting: 0';

waitingText.HorizontalAlignment = 'center';


%% =========================================================
% GRAPH PANEL
% ==========================================================

graphPanel = uipanel(fig);

graphPanel.Position = [260 20 450 250];

graphPanel.Title = 'Traffic Density Graph';

graphPanel.FontSize = 13;


%% Graph labels

graphNames = {'NORTH','SOUTH','EAST','WEST'};

graphValues = [25 18 10 30];

graphBars = gobjects(1,4);

graphTexts = gobjects(1,4);

for k = 1:4

    y = 165 - (k-1)*38;

    %% Direction

    graphTexts(k) = uilabel(graphPanel);

    graphTexts(k).Position = [15 y 55 25];

    graphTexts(k).Text = graphNames{k};

    graphTexts(k).FontSize = 10;

    graphTexts(k).FontWeight = 'bold';


    %% Bar

    graphBars(k) = uilabel(graphPanel);

    graphBars(k).Position = ...
        [75 y+3 graphValues(k)*8 18];

    graphBars(k).Text = '';

    graphBars(k).BackgroundColor = ...
        [0.2 0.55 0.85];


    %% Number

    valueLabel = uilabel(graphPanel);

    valueLabel.Position = ...
        [330 y 60 25];

    valueLabel.Text = ...
        sprintf('%d',graphValues(k));

    valueLabel.FontSize = 10;

end


%% =========================================================
% PERFORMANCE PANEL
% ==========================================================

performancePanel = uipanel(fig);

performancePanel.Position = [730 20 250 250];

performancePanel.Title = 'Performance';

performancePanel.FontSize = 13;


emergencyText = uilabel(performancePanel);

emergencyText.Position = [30 175 190 25];

emergencyText.Text = 'Emergency: 0';

emergencyText.HorizontalAlignment = 'center';


clearanceText = uilabel(performancePanel);

clearanceText.Position = [30 135 190 25];

clearanceText.Text = 'Clearance: --';

clearanceText.HorizontalAlignment = 'center';


averageText = uilabel(performancePanel);

averageText.Position = [30 95 190 25];

averageText.Text = 'Avg Waiting: --';

averageText.HorizontalAlignment = 'center';


performanceText = uilabel(performancePanel);

performanceText.Position = [20 45 210 35];

performanceText.Text = 'Performance: READY';

performanceText.FontWeight = 'bold';

performanceText.HorizontalAlignment = 'center';


%% =========================================================
% START BUTTON
% ==========================================================

startButton = uibutton(fig);

startButton.Position = [45 210 150 50];

startButton.Text = 'START';

startButton.FontSize = 15;

startButton.FontWeight = 'bold';

startButton.ButtonPushedFcn = @startSimulation;


%% =========================================================
% RESET BUTTON
% ==========================================================

resetButton = uibutton(fig);

resetButton.Position = [45 140 150 50];

resetButton.Text = 'RESET';

resetButton.FontSize = 15;

resetButton.FontWeight = 'bold';

resetButton.ButtonPushedFcn = @resetDashboard;


%% =========================================================
% STATUS
% ==========================================================

statusText = uilabel(fig);

statusText.Position = [40 95 170 25];

statusText.Text = 'READY';

statusText.FontWeight = 'bold';

statusText.HorizontalAlignment = 'center';


%% =========================================================
% START SIMULATION
% ==========================================================

function startSimulation(~,~)

    traffic = [25 18 10 30];

    directions = {'North','South','East','West'};

    numCycles = 15;

    totalArrivals = 0;

    totalPassed = 0;

    totalWaiting = 0;

    emergencyEvents = 0;

    startButton.Enable = 'off';


    for cycle = 1:numCycles

        %% Vehicle arrivals

        arrivals = randi([1 5],1,4);

        traffic = traffic + arrivals;

        totalArrivals = ...
            totalArrivals + sum(arrivals);


        %% Emergency detection

        emergencyPresent = rand < 0.20;


        if emergencyPresent

            index = randi(4);

            emergencyEvents = ...
                emergencyEvents + 1;

            priorityMode = 'EMERGENCY';

        else

            [~,index] = max(traffic);

            priorityMode = 'NORMAL';

        end


        greenSignal = directions{index};


        %% Green time

        if emergencyPresent

            greenTime = 40;

        else

            maxTraffic = traffic(index);

            if maxTraffic <= 10

                greenTime = 10;

            elseif maxTraffic <= 20

                greenTime = 20;

            elseif maxTraffic <= 30

                greenTime = 30;

            else

                greenTime = 40;

            end

        end


        %% Vehicles passed

        vehiclesPassed = ...
            min(round(greenTime * 0.8), ...
            traffic(index));


        totalPassed = ...
            totalPassed + vehiclesPassed;


        %% Update traffic

        traffic(index) = ...
            traffic(index) - vehiclesPassed;


        %% Waiting traffic

        waitingVehicles = sum(traffic);

        totalWaiting = ...
            totalWaiting + waitingVehicles;


        %% Update density

        northText.Text = ...
            sprintf('%d vehicles',traffic(1));

        southText.Text = ...
            sprintf('%d vehicles',traffic(2));

        eastText.Text = ...
            sprintf('%d vehicles',traffic(3));

        westText.Text = ...
            sprintf('%d vehicles',traffic(4));


        %% Reset lights

        northLight.FontColor = [1 0 0];

        southLight.FontColor = [1 0 0];

        eastLight.FontColor = [1 0 0];

        westLight.FontColor = [1 0 0];


        %% Green signal

        if index == 1

            northLight.FontColor = [0 0.75 0];

        elseif index == 2

            southLight.FontColor = [0 0.75 0];

        elseif index == 3

            eastLight.FontColor = [0 0.75 0];

        else

            westLight.FontColor = [0 0.75 0];

        end


        %% Signal information

        signalText.Text = upper(greenSignal);

        priorityText.Text = ...
            ['Priority: ' priorityMode];

        timeText.Text = ...
            sprintf('Green Time: %d sec',greenTime);

        cycleText.Text = ...
            sprintf('Cycle: %d / %d', ...
            cycle,numCycles);

        passedText.Text = ...
            sprintf('Passed: %d',vehiclesPassed);

        waitingText.Text = ...
            sprintf('Waiting: %d',waitingVehicles);


        %% Emergency

        emergencyText.Text = ...
            sprintf('Emergency: %d', ...
            emergencyEvents);


        %% Update graph

        for k = 1:4

            graphBars(k).Position(3) = ...
                max(5,traffic(k)*8);

        end


        statusText.Text = 'RUNNING...';


        drawnow;

        pause(1);

    end


    %% =====================================================
    % FINAL PERFORMANCE
    % ======================================================

    initialVehicles = 83;

    totalAvailable = ...
        initialVehicles + totalArrivals;


    if totalAvailable > 0

        clearanceRate = ...
            (totalPassed / totalAvailable) * 100;

    else

        clearanceRate = 0;

    end


    averageWaiting = ...
        totalWaiting / numCycles;


    %% Performance level

    if clearanceRate >= 80 && ...
            averageWaiting <= 20

        performanceLevel = 'EXCELLENT';

    elseif clearanceRate >= 60 && ...
            averageWaiting <= 30

        performanceLevel = 'GOOD';

    elseif clearanceRate >= 40

        performanceLevel = 'MODERATE';

    else

        performanceLevel = ...
            'NEEDS IMPROVEMENT';

    end


    %% Final display

    clearanceText.Text = ...
        sprintf('Clearance: %.1f%%', ...
        clearanceRate);

    averageText.Text = ...
        sprintf('Avg Waiting: %.1f', ...
        averageWaiting);

    performanceText.Text = ...
        ['Performance: ' performanceLevel];

    statusText.Text = 'SIMULATION COMPLETED';

    startButton.Enable = 'on';


    %% =====================================================
    % COMMAND WINDOW REPORT
    % ======================================================

    fprintf('\n');
    fprintf('========================================\n');
    fprintf('       FINAL PERFORMANCE REPORT\n');
    fprintf('========================================\n');

    fprintf('Initial Vehicles      : %d\n', ...
        initialVehicles);

    fprintf('New Vehicles Arrived  : %d\n', ...
        totalArrivals);

    fprintf('Vehicles Passed       : %d\n', ...
        totalPassed);

    fprintf('Average Waiting       : %.2f\n', ...
        averageWaiting);

    fprintf('Clearance Rate        : %.2f%%\n', ...
        clearanceRate);

    fprintf('Emergency Events      : %d\n', ...
        emergencyEvents);

    fprintf('Performance Level     : %s\n', ...
        performanceLevel);

    fprintf('========================================\n');

end


%% =========================================================
% RESET
% ==========================================================

function resetDashboard(~,~)

    close(fig);

    traffic_signal_dashboard_final;

end

end