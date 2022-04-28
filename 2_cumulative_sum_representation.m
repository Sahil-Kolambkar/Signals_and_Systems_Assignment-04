%% Compute and plotcumulative sum for the first 5 terms of the Fourier series representation

clc
clearvars
hold off                        
x     = linspace(-pi, pi);  
Const = 4/pi;                      
Sn    = 0;                         

for n = 1 : 1 : 5                  
    Bn = Const/n;                  
    Fn = Bn * sin(n*pi*x);        
    Sn = Sn + Fn;                 
    plot(x, Sn, 'linewidth', n/2); 
    hold on;
end

xlabel('x'); ylabel('Sum(B_nsin(n\pix))');
title('Sum of first 5 terms in the sine series');
plot(x, -1 + 2*(x>-2).*(x<-1) + 2*(x>0).*(x<1) + 2*(x>2).*(x<3),  'k-', 'linewidth', 1.5)
grid on
