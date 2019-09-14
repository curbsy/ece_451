%% Computer Assignment #2 Problem #2
% Root locus graphing and finding gain based on damping ratio

clear
clc

% Build polynomials in the transfer funtion
p1 = [1 3 0];
p2 = [1 7];
p3 = [1 8];
p4 = [1 20 200];
p5 = [0 0 0 0 0 1 30];
% Polynomial multiplication
denom = conv( conv(p1,p2) , conv(p3,p4) ) + p5;

% Transfer function declaration
T = tf(p4,denom);

% Root locus plot 
subplot(2,2,1)
rlocus(T)

% Root locus close up
subplot(2,2,2)
rlocus(T)
axis([-2 2 -2 2])

% Find gain associated with zeta = 0.707
sgrid(0.707,0)
K = rlocfind(T);
fprintf('Gain associated with \x03B6 = 0.707 is K = %4.2f\n',K)

% Step response with gain found earlier
subplot(2,2,[3,4])
T_2 = tf(K*p4,conv( conv(p1,p2) , conv(p3,p4) ) + K*p5);
step(T_2)