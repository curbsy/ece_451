%ECE451_CA1.m
%Makenzie Brian
%ECE451/ME430
%10/20/2017

%PART 1
clear
clc
clf

%subplot(4,1,1)
figure;
Transfunc1 = tf( [16] , [1 3 16] ) ;
step(Transfunc1)
stepinfo1 = stepinfo(Transfunc1)
risetime1 = getfield(stepinfo1,'RiseTime') ;
settlingtime1 = getfield(stepinfo1,'SettlingTime') ;
pOS1 = getfield(stepinfo1,'Overshoot') ;
peaktime1 = getfield(stepinfo1,'PeakTime') ;
xticks( [0 risetime1 peaktime1 1  2 settlingtime1 3] );
xticklabels( {'0','Tr','Tp','1' ,'2','Ts, 2%','3'} )

%subplot(4,1,2)
figure;
Transfunc2 = tf( [0.04] , [1 0.02 0.04] ) ;
step(Transfunc2)
stepinfo2 = stepinfo(Transfunc2)
risetime2 = getfield(stepinfo2,'RiseTime') ;
settlingtime2 = getfield(stepinfo2,'SettlingTime') ;
pOS2 = getfield(stepinfo2,'Overshoot') ;
peaktime2 = getfield(stepinfo2,'PeakTime') ;
xticks( [0 risetime2 peaktime2 200 settlingtime2 400 600] );
xticklabels( {'0','Tr','Tp','200' ,'Ts, 2%','400','600'} )

%subplot(4,1,3)
figure;
Transfunc3 = tf( [1 2.1] , [1 3 7 10] ) ;
step(Transfunc3)
stepinfo3 = stepinfo(Transfunc3)
risetime3 = getfield(stepinfo3,'RiseTime') ;
settlingtime3 = getfield(stepinfo3,'SettlingTime') ;
pOS3 = getfield(stepinfo3,'Overshoot') ;
peaktime3 = getfield(stepinfo3,'PeakTime') ;
xticks( [0 risetime3 peaktime3 4 settlingtime3 8 12] );
xticklabels( {'0','Tr','Tp','4' ,'Ts, 2%','8','12'} );


%PART 2
%subplot(4,1,4)
figure;
Transfunc4 = tf( [1] , [1 2 5] ) ;
step(Transfunc4)
stepinfo4 = stepinfo(Transfunc4)
risetime4 = getfield(stepinfo3,'RiseTime') ;
settlingtime4 = getfield(stepinfo4,'SettlingTime') ;
pOS4 = getfield(stepinfo4,'Overshoot') ;
peaktime4 = getfield(stepinfo4,'PeakTime') ;
xticks( [0 risetime4 1 peaktime4 2 3 settlingtime4 4] );
xticklabels( {'0','Tr','1','Tp','2','3','Ts, 2%','4'} )