%CA 3
%ME430/ECE451
%Bode Plots

%Problem 2
% k = input('Please enter a gain value: ')
% 
% figure;
% g2a = tf([k 5*k], [1 4 25 0]);
% bode(g2a);
% margin (g2a);
% 
% figure;
% g2b = tf([k], [1 15 36 0]);
% bode(g2b);
% margin(g2b);

%Problem 3
g3 = tf([50 400 750], [1 12 44 48]);
figure;
bode(g3);

figure;
t3 = tf([50 400 750], [1 12 94 448 750])
step(t3)
stepinfo1 = stepinfo(t3)
risetime1 = getfield(stepinfo1,'RiseTime') ;
settlingtime1 = getfield(stepinfo1,'SettlingTime') ;
pOS1 = getfield(stepinfo1,'Overshoot') ;
peaktime1 = getfield(stepinfo1,'PeakTime') ;
xticks([0 risetime1 peaktime1 1  2 settlingtime1 3] );
xticklabels({'0','Tr','Tp','1' ,'2','Ts, 2%','3'} );
%OS = 1+ (pOS1/100)
%yticks([0 0.5 1 OS 1.5])
%yticklabels(['0','0.5','1','%OS=44.26','1.5'])
    

