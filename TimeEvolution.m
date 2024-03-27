% Author: YangYZ, yangyz2022@mail.sustech.edu.cn
% Mar 27, 2024, SUSTech
% This script simulates how a Guassian wavefunction in free space eloves in time
% Note that the time is not to scale.
close all

x = linspace(-5,5,100);
% t1 = 5;
a = 1; % a of the wavefunction 1, 1/a = 2*sigma^2
b = 0.2; % b of the wavefunction 2, 1/b = 2*sigma^2
dt = 0.02;
t_end = 15;


% w = sqrt(a/(1+(a*t1)^2));
phi0 = sqrt(2*a/pi).* exp(-2*a.*x.^2); % initial state of wave 1
% phi1 = sqrt(2/pi)*w.*exp(-2*w^2.*x.^2);
% 
% w2 = sqrt(b/(1+(b*t1)^2));
phi10 = sqrt(2*b/pi).* exp(-2*b.*x.^2); % initial state of wave 2
% phi11 = sqrt(2/pi)*w2.*exp(-2*w2^2.*x.^2);
% plot(x,phi0,'r',x,phi1,'r--','LineWidth',1.2)
% hold;
% plot(x,phi10,'b',x,phi11,'b--','LineWidth',1.2)

% for t = 0:2:6
%     w = sqrt(a/(1+(a*t)^2));
% %     phi0 = sqrt(2*a/pi).* exp(-2*a.*x.^2);
%     phi1 = sqrt(2/pi)*w.*exp(-2*w^2.*x.^2);
%     w2 = sqrt(b/(1+(b*t)^2));
% %     phi10 = (2*b/pi)^(1/4).* exp(-b.*x.^2);
%     phi11 = sqrt(2/pi)*w2.*exp(-2*w2^2.*x.^2);
% %     plot(x,phi1,'color',[194,51,53]/255,'LineWidth',1.2)
%     plot(x,phi1,'color',[239,146,152]/255,'LineWidth',1.2)
%     hold on;
% %     plot(x,phi11,'color',[55,89,122]/255,'LineWidth',1.2)
%     plot(x,phi11,'color',[143,170,191]/255,'LineWidth',1.2)
%     hold on;
% end

figure(1)
hold off

for t = 0:dt:t_end
    hold off;
    w = sqrt(a/(1+(a*t)^2));
    w2 = sqrt(b/(1+(b*t)^2));
    phi1 = sqrt(2/pi)*w.*exp(-2*w^2.*x.^2);
    phi11 = sqrt(2/pi)*w2.*exp(-2*w2^2.*x.^2);
    txt = ['t = ',num2str(t,3)];
    plot(x,phi0,'color',[239,146,152]/255,'LineWidth',1.2,'LineStyle','--');
    hold on;
    plot(x,phi10,'color',[143,170,191]/255,'LineStyle','--','LineWidth',1.2);
    hold on;
    plot(x,phi1,'color',[239,146,152]/255,'LineWidth',1.5);
    hold on;
    plot(x,phi11,'color',[143,170,191]/255,'LineWidth',1.5)
    text(3,0.7,txt,"FontSize",14)
    axis([-5 5 0 0.8]);
    pause(0.01);
end

