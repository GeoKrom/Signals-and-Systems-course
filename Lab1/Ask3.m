 % Script 3
 % Expontential Fourier Series of sine
 t = -2:0.01:2;
 x = sin(pi*t);
 i = input('Please put the sample number: ');
 plot(t,x,'r.-');
 title('Plot of sine function');
 xlabel('t');
 ylabel('x(t)');
 c0 = 2;
 y = c0*zeros(size(t),1);
 Power = zeros(size(t),1);
 for n = -i:i
   c = -(2 ./(pi*(4*n.^2-1)));
   y = y + c.*exp(j*2*pi*n*t);
   Power = Power + abs(c).^2
 end
 Pmean = sqrt(Power);
 PowerPercent = (Power/Pmean)*100;
 str = {'Power = ',num2str(PowerPercent),'%'};
 ttl = ['Exponential Fourier Series with N = ', num2str(2*i+1)];
 figure();
 plot(t,y,'b.-');
 title(ttl); 
 xlabel('t');
 ylabel('x(t)');
 ylim([-3,3]);
 text(0,1.5,str,'fontsize',10);
 hold on
 plot(t,x, 'r.-');
 hold off
 figure();
 plot(t,angle(y)','k.-');
 title(ttl);
 xlabel('t');
 ylabel('ph(x(t))');