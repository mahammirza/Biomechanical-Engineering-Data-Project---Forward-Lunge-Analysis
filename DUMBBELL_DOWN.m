clear
clc
close all
set(0,'DefaultAxesFontSize',16);
set(0,'DefaultAxesFontName','Times New Roman');

%% Hip and Knee X values - Hip Tilting Forward or not (Range of Motion), Knee higher range of motion compared to control?
frameRate = 1000; % Frame rate in Hz
sampleRate = 2000; % Sample rate in Hz
totalTime = 6; % Total time in seconds

kneeAngleX = 'Knee_Angles_X.xlsx';
kneeAngleY = 'Knee_Angles_Y.xlsx'
hipAngleX = 'Hip_Angles_X.xlsx';
hipAngleY = 'Hip_Angles_Y.xlsx';
hipAngleZ = 'Hip_Angles_Z.xlsx';

inDatHip = readmatrix(fullfile(hipAngleX), 'NumHeaderLines', 2); % focuses only on data
HipAnglesX = -1 * inDatHip(:, 8); % negative to show positive data
numFramesHip = length(HipAnglesX); 
time = linspace(0, totalTime, numFramesHip); % Time vector
figure ();
plot(time, HipAnglesX, 'Linewidth', 1.5, 'DisplayName', 'Hip Angle'); % Plot hip angles
hold on; % Hold the current plot

inDatHip = readmatrix(fullfile(hipAngleY), 'NumHeaderLines', 2); % focuses only on data
HipAnglesY = -1 * inDatHip(:, 8); % negative to show positive data
numFramesHip = length(HipAnglesY); 
time = linspace(0, totalTime, numFramesHip); % Time vector
plot(time, HipAnglesY, 'Linewidth', 1.5, 'DisplayName', 'Hip Angle'); % Plot hip angles

inDatHip = readmatrix(fullfile(hipAngleZ), 'NumHeaderLines', 2); % focuses only on data
HipAnglesZ = -1 * inDatHip(:, 8); % negative to show positive data
numFramesHip = length(HipAnglesZ); 
time = linspace(0, totalTime, numFramesHip); % Time vector
plot(time, HipAnglesZ, 'Linewidth', 1.5, 'DisplayName', 'Hip Angle'); % Plot hip angles

inDatHip = readmatrix(fullfile(kneeAngleY), 'NumHeaderLines', 2); % focuses only on data
KneeAnglesY = -1 * inDatHip(:, 8); % negative to show positive data
numFramesHip = length(KneeAnglesY); 
time = linspace(0, totalTime, numFramesHip); % Time vector
plot(time, KneeAnglesY, 'Linewidth', 1.5, 'DisplayName', 'Hip Angle'); % Plot hip angles

% Read data from file
inDatKnee = readmatrix(fullfile(kneeAngleX), 'NumHeaderLines', 2); % focuses only on data
% Extract 100% runs 
KneeAnglesX = inDatKnee(:, 8); % negative to show positive data
numFramesHip = length(KneeAnglesX); 
time = linspace(0, totalTime, numFramesHip); % Time vector
plot(time, KneeAnglesX, 'Linewidth', 1.5, 'DisplayName', 'Hip Angle'); % Plot hip angles

% Read data from file
title('DumbbelTrial1');
legend('Hip X', 'Hip Y', 'Hip Z', 'Knee Y', 'Knee X', fontsize=18);
xlabel('Time (s)');
ylabel('Angle (Degrees)');

hold off;
%% Control Hip and Knee X

frameRate = 1000; % Frame rate in Hz
sampleRate = 2000; % Sample rate in Hz
totalTime = 6; % Total time in seconds

kneeAngleX = 'Knee_Angles_X.xlsx';
kneeAngleY = 'Knee_Angles_Y.xlsx'
hipAngleX = 'Hip_Angles_X.xlsx';
hipAngleY = 'Hip_Angles_Y.xlsx';
hipAngleZ = 'Hip_Angles_Z.xlsx';

inDatHip = readmatrix(fullfile(hipAngleX), 'NumHeaderLines', 2); % focuses only on data
HipAnglesX = -1 * inDatHip(:, 5); % negative to show positive data
numFramesHip = length(HipAnglesX); 
time = linspace(0, totalTime, numFramesHip); % Time vector
figure ();
plot(time, HipAnglesX, 'Linewidth', 1.5, 'DisplayName', 'Hip Angle'); % Plot hip angles
hold on; % Hold the current plot

inDatHip = readmatrix(fullfile(hipAngleY), 'NumHeaderLines', 2); % focuses only on data
HipAnglesY = -1 * inDatHip(:, 5); % negative to show positive data
numFramesHip = length(HipAnglesY); 
time = linspace(0, totalTime, numFramesHip); % Time vector
plot(time, HipAnglesY, 'Linewidth', 1.5, 'DisplayName', 'Hip Angle'); % Plot hip angles

inDatHip = readmatrix(fullfile(hipAngleZ), 'NumHeaderLines', 2); % focuses only on data
HipAnglesZ = -1 * inDatHip(:, 5); % negative to show positive data
numFramesHip = length(HipAnglesZ); 
time = linspace(0, totalTime, numFramesHip); % Time vector
plot(time, HipAnglesZ, 'Linewidth', 1.5, 'DisplayName', 'Hip Angle'); % Plot hip angles

inDatHip = readmatrix(fullfile(kneeAngleY), 'NumHeaderLines', 2); % focuses only on data
KneeAnglesY = -1 * inDatHip(:, 5); % negative to show positive data
numFramesHip = length(KneeAnglesY); 
time = linspace(0, totalTime, numFramesHip); % Time vector
plot(time, KneeAnglesY, 'Linewidth', 1.5, 'DisplayName', 'Hip Angle'); % Plot hip angles

% Read data from file
inDatKnee = readmatrix(fullfile(kneeAngleX), 'NumHeaderLines', 2); % focuses only on data
% Extract 100% runs 
KneeAnglesX = inDatKnee(:, 5); % negative to show positive data
numFramesHip = length(KneeAnglesX); 
time = linspace(0, totalTime, numFramesHip); % Time vector
plot(time, KneeAnglesX, 'Linewidth', 1.5, 'DisplayName', 'Hip Angle'); % Plot hip angles

% Read data from file
title('Control');
legend('Hip X', 'Hip Y', 'Hip Z', 'Knee Y', 'Knee X', fontsize=18);
xlabel('Time (s)');
ylabel('Angle (Degrees)');

hold off;

%% Hip angles - X - Tilting Forward or not (Range of Motion)

hipControlX = 88.06
hipTrialX = 90.47

%% Hip angles - Y values - Hip to the side, offcentered balacnce

hipTrialY = 12.44
hipControlY = -4.79


%% Knee Angles - X values - higher range of motion compared to control?
% the trial run is showing a higher range of motion possible due to the
% added wieght compoent
kneeControlX = 119.00-5.21;
kneeTrialX = 125.00-8.38;

%% Knee angles - Y Values - Knee collapsing inwards? 
% Knee is seen to be collapsing outward, abduction
kneeTrialY = -7.93;
KneeControlY = -3.13;

% Data
categories = {'Hip Angles (X)', 'Hip Angles (Y)', 'Knee Angles (X)', 'Knee Angles (Y)'};

% Values
control_values = [88.06, -4.79, 119.00-5.21, -3.13];
trial_values = [90.47, 12.44, 125.00-8.38, -7.93];

% X-axis positions
x = 1:length(categories);

% Create the bar graph
figure;
bar_width = 0.8; % Width of bars
bar_handle = bar(x, [control_values' trial_values'], bar_width, 'grouped');

% Add labels and title
title('Comparison of Control vs Trial for Hip and Knee Angles');
xlabel('Angle Categories');
ylabel('Angle (Degrees)');
set(gca, 'xticklabel', categories);

% Add a legend
legend('Control', 'Trial');

% Annotate values on top of the bars
% hold on;
% for i = 1:length(x)
%     text(x(i)-0.15, control_values(i) + 0.5, sprintf('%.2f', control_values(i)), ...
%         'HorizontalAlignment', 'center', 'FontSize', 14);
%     text(x(i)+0.15, trial_values(i) + 0.5, sprintf('%.2f', trial_values(i)), ...
%         'HorizontalAlignment', 'center', 'FontSize', 14);
% end
% hold off;

% Set grid and improve spacing
grid on;
set(gca, 'YMinorGrid', 'on');


%% Step 2: Load Data Files
% Read data from a CSV file. The file contains goniometer data and EMG data
% Starting at row 6, we load the 2nd and 3rd columns which represent the
% voltage readings for the EMG data

dataFile1 = 'dumbell_down_trial1.csv'; % Make sure this file is in your current folder or path!
dataFile2 = 'control_trial1.csv'; 


allData1 = readmatrix(dataFile1, "Range", [6 3]);
allData2 = readmatrix(dataFile2, "Range", [6 3]);

% Define the sampling frequency for the EMG (2000 Hz)
fps = 2000;

%% Step 3: EMG Data Processing
% Extract EMG data for 3 specific channels (columns 20, 21, 22) from row 6
voltagesEMG1 = allData1;  % Already contains row 6, columns 20, 21, and 22
voltagesEMG2 = allData2;  % Same for second file

% Convert EMG voltages to millivolts (mV)
rawEMG1 = voltagesEMG1 * 1000;  % Convert from Volts to mV (millivolts)
rawEMG2 = voltagesEMG2 * 1000;

%% Step 3 - Apply a 2nd order bandpass filter with cutoff frequencies of 20Hz (high pass) and 400 Hz (low pass)
fNyquist = fps / 2; % Half of sampling frequency
[b, a] = butter(2, [20, 400] / fNyquist, 'bandpass'); % Bandpass Butterworth filter

% Apply the filter to the EMG data
bandpassEMG1 = filtfilt(b, a, rawEMG1); 
bandpassEMG2 = filtfilt(b, a, rawEMG2);

%% Step 4: Extract individual EMG channels from the filtered data
% Channel 1: Column 1 (column 20 from raw data)
% Channel 2: Column 2 (column 21 from raw data)
% Channel 3: Column 3 (column 22 from raw data)

Channel1_Trial = bandpassEMG1(:, 1);  % Channel 1 EMG data
Channel2_Trial = bandpassEMG1(:, 2);  % Channel 2 EMG data
Channel3_Trial = bandpassEMG1(:, 3);  % Channel 3 EMG data

Channel1_Control = bandpassEMG2(:, 1);  
Channel2_Control = bandpassEMG2(:, 2);  
Channel3_Control = bandpassEMG2(:, 3);  

%% Step 4.1: Process EMG Data - Rectification and Linear Enveloping
% Rectify the signal by taking the absolute value
absChannel1_Trial = abs(Channel1_Trial);  
absChannel2_Trial = abs(Channel2_Trial);  
absChannel3_Trial = abs(Channel3_Trial);  

absChannel1_Control = abs(Channel1_Control);  
absChannel2_Control = abs(Channel2_Control);  
absChannel3_Control = abs(Channel3_Control);  

%% Step 4.2: Apply a 2nd order, 7 Hz low-pass Butterworth filter to create a linear envelope
[b, a] = butter(2, 7 / fNyquist, 'low');  % 2nd order low-pass Butterworth filter at 7 Hz

envelopeChannel1_Trial = filtfilt(b, a, absChannel1_Trial);  
envelopeChannel2_Trial = filtfilt(b, a, absChannel2_Trial);  
envelopeChannel3_Trial = filtfilt(b, a, absChannel3_Trial);  

envelopeChannel1_Control = filtfilt(b, a, absChannel1_Control);  
envelopeChannel2_Control = filtfilt(b, a, absChannel2_Control);  
envelopeChannel3_Control = filtfilt(b, a, absChannel3_Control);  

%% Step 5: Plotting EMG Data

% Create a time vector for plotting (in seconds)
num_samples = length(rawEMG1);
time = (0:num_samples-1) / fps;  % Time vector, each point is 1/fps seconds apart

% Figure setup
figure;

% Subplot 1: Trial Conditions
subplot(2, 1, 1); % Creates a grid (2 rows, 1 column) and activates the first plot
plot(time, envelopeChannel1_Trial, 'LineWidth', 2); hold on;
plot(time, envelopeChannel2_Trial, 'LineWidth', 2);
plot(time, envelopeChannel3_Trial, 'LineWidth', 2);
ylabel('EMG (mV)', 'FontSize', 14);
xlabel('Time (Seconds)', 'FontSize', 14);
title('Trial Condition: Muscle Activation', 'FontSize', 16);
legend('Biceps Femoris Trial EMG', 'Rectus Femoris Trial EMG', 'Vastus Lateralis Trial EMG', 'FontSize', 16);
axis([2, 5.25, -650, 21000]); % Adjust axes as required
grid on;

% Subplot 2: Control Conditions
subplot(2, 1, 2); % Activates the second plot in the same window
plot(time, envelopeChannel1_Control, 'LineWidth', 2); hold on;
plot(time, envelopeChannel2_Control, 'LineWidth', 2);
plot(time, envelopeChannel3_Control, 'LineWidth', 2);
ylabel('EMG (mV)', 'FontSize', 14);
xlabel('Time (Seconds)', 'FontSize', 14);
title('Control Condition: Muscle Activation', 'FontSize', 16);
legend('Biceps Femoris Control EMG', 'Rectus Femoris Control EMG', 'Vastus Lateralis Control EMG', 'FontSize', 16);
axis([2, 5.25, -650, 21000]); % Adjust axes as required
grid on;

% General figure formatting
sgtitle('Comparison of Muscle Activation for Trial and Control Conditions', 'FontSize', 20); % Super title for the whole figure

%% Step 5: Plotting EMG Data for Vastus Lateralis, Rectus Femoris, and Biceps Femoris (Trial vs Control)

% Create a time vector (in seconds)
num_samples = length(rawEMG1);
time = (0:num_samples-1) / fps;  % 1/fps seconds apart

%% Plot for Vastus Lateralis
figure; % Open a new figure window
plot(time, envelopeChannel3_Trial, 'LineWidth', 2); hold on; % Vastus Lateralis Trial
plot(time, envelopeChannel3_Control, '--', 'LineWidth', 2); % Vastus Lateralis Control (Dashed)
ylabel('EMG (mV)', 'FontSize', 14);
xlabel('Time (Seconds)', 'FontSize', 14);
title('Vastus Lateralis: Trial vs Control Conditions', 'FontSize', 16);
legend('Vastus Lateralis Trial EMG', 'Vastus Lateralis Control EMG', 'FontSize', 14);
axis([2, 5.25, -650, 21000]); % Adjust axes as required
grid on;

%% Plot for Rectus Femoris
figure; % Open a new figure window
plot(time, envelopeChannel2_Trial, 'LineWidth', 2); hold on; % Rectus Femoris Trial
plot(time, envelopeChannel2_Control, '--', 'LineWidth', 2); 
ylabel('EMG (mV)', 'FontSize', 14);
xlabel('Time (Seconds)', 'FontSize', 14);
title('Rectus Femoris: Trial vs Control Conditions', 'FontSize', 16);
legend('Rectus Femoris Trial EMG', 'Rectus Femoris Control EMG', 'FontSize', 14);
axis([2, 5.25, -650, 2000]); % Adjust axes as required
grid on;

%% Plot for Biceps Femoris
figure; % Open a new figure window
plot(time, envelopeChannel1_Trial, 'LineWidth', 2); hold on; % Biceps Femoris Trial
plot(time, envelopeChannel1_Control, '--', 'LineWidth', 2); 
ylabel('EMG (mV)', 'FontSize', 14);
xlabel('Time (Seconds)', 'FontSize', 14);
title('Biceps Femoris: Trial vs Control Conditions', 'FontSize', 16);
legend('Biceps Femoris Trial EMG', 'Biceps Femoris Control EMG', 'FontSize', 14);
axis([2, 5.25, -650, 2200]); % Adjust axes as required
grid on;

%% General Comments
disp('Vastus Lateralis, Rectus Femoris, and Biceps Femoris Trial vs Control EMG are plotted.');

%% Load EMG Data and Process
fps = 2000; % Sampling frequency for EMG
EMG_data = readmatrix('EMG_Data.csv', "Range", [6 3]);
rawEMG = EMG_data * 1000; % Convert from Volts to mV

% Band-Pass Filtering
fNyquist = fps / 2;
[b, a] = butter(2, [20, 400] / fNyquist, 'bandpass');
bandpassEMG = filtfilt(b, a, rawEMG);

% Rectify / Envelope the Signal
rectifiedEMG = abs(bandpassEMG);
[b, a] = butter(2, 7 / fNyquist, 'low');
envelopeEMG = filtfilt(b, a, rectifiedEMG);

%% Plot EMG Envelope
figure;
plot(time(1:length(envelopeEMG)), envelopeEMG, 'LineWidth', 1.5);
title('EMG Envelope Signal');
xlabel('Time (s)'); ylabel('EMG Amplitude (mV)');
grid on;

%% Regression Analysis: EMG vs. Knee Angle
X = kneeAngleX(1:length(envelopeEMG), 8); % Knee Angle X as predictor
Y = envelopeEMG; % EMG Envelope as response

lm = fitlm(X, Y);

% Plot Regression
figure;
scatter(X, Y, 'b', 'filled'); hold on;
plot(X, predict(lm, X), 'r-', 'LineWidth', 2);
title('Regression: Knee Angle vs. EMG Activation');
xlabel('Knee Angle (Degrees)'); ylabel('EMG Activation (mV)');
grid on;

disp(lm);
