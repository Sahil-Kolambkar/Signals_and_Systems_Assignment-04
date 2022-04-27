%% Program to plot fouriers seriers (individually)


x = -pi:0.1:pi;
n = input('Enter your desired value for n for plotting FOURIERS Series : ');
ycos = fcos(x,n);
plot(x,ycos),grid
xlabel('x'),ylabel('cos function')
title('Fouriers Series')


function f = fcos(x,n)
         f = zeros(1,numel(x));
         f = 1;
         for i = 1:n
             an = -2*sin(i*pi/2)/(i*pi);
             f = f + an*cos(i*pi*x/4);
         end
end
