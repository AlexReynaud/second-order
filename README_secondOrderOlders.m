%% data structure

load('dataset_secondOrderOlders.mat')
data

% data = 
% 
%   struct with fields:
% 
%     sensitivities1st: [2×9×2×50 double]
%     sensitivities2nd: [3×9×2×50 double]
%       frequencies1st: [9×1 double]
%       frequencies2nd: [9×1 double]
% 
% the sensitivities1st field are the sensitivities for 
% first-order luminance-modulated stimuli 
% the 4 dimensions are:
% - 2 conditions (oriented pattern LM1d, moving pattern LM2d) 
% - 9 frequencies tested
% - 2 eyes tested (dominant, non-dominant)
% - 50 subjects
% 
% the sensitivities2nd field are the sensitivities for 
% second-order stimuli 
% the 4 dimensions are:
% - 3 conditions (contrast-modulation CM, orientation-modulation OM, motion-modulation MM) 
% - 9 frequencies tested
% - 2 eyes tested (dominant, non-dominant)
% - 50 subjects
%
% the 2 frequencies fields are the frequencies tested for first and second
% order stimuli respectively


%% example plot of the dominant eye sensitivities in the aged population

figure('Name','1st- and 2nd-order sensitivities in the aged population')
hold on
plot(data.frequencies1st,mean(data.sensitivities1st(1,:,1,:),4),'b')
plot(data.frequencies1st,mean(data.sensitivities1st(2,:,1,:),4),'r')

plot(data.frequencies2nd,mean(data.sensitivities2nd(1,:,1,:),4),'Color',[0 .5 0])
plot(data.frequencies2nd,mean(data.sensitivities2nd(2,:,1,:),4),'Color',[0 0 .5])
plot(data.frequencies2nd,mean(data.sensitivities2nd(3,:,1,:),4),'Color',[.5 0 0])

set(gca,'XScale','log','YScale','log')
axis square 
grid on
xlabel('Spatial Frequency (c/d)')
ylabel('Sensitivity')

legend({'LM1d','LM2d','CM','OM','MM'})
