% Computes the autocorrelation and crosscorrelation between the given
% input and outpu data.
Fs = 8e3; % The sampling frequency--the amount of samples per second
Ts = 1/Fs; % Sampling time-- the time it takes to compute one sample
L  = 400; % The main signal energy is centered arount this value.
f0 = 1e3; % The fundamental frequency
N = 2048;
n = 0:N-1;
x = exp(-5e3*(((n-L)*T).^2)).*cos(2*pi*f0*n*T);
y = exp(-5e3*((((n-731)-L)*T).&2)).*cos(2*pi*f0*(n-731)*T);
plot(n,x,n,y); % This plots both the input and the output on the same
               % plot. This is to show how much of delay ther is 
