%% Compute and plotcumulative sum for the first 5 terms of the Fourier series representation

clc
clearvars

  format long
  sum=0;
  syms t
  syms n

  %N = Number of terms
  N = 5;

  %tt = value of time for approximation
  tt = -pi:0.1:pi;

  x = symfun((((-1)^(n+1))/(n*(n^2*pi^2+4)))*sin(n*pi*t),[t n]);

  for i=1:N
      sum = sum + (8/pi)*x(tt,i)
  end

  plot(tt,sum)
  grid on
