  % Script 1
  % Amplitude and Phase plot of functions
  f = -400:400;
  H1 = (1./(3+j*f));
  figure();
  plot(f, abs(H1),'r.-'); 
  title('Amplitude plot of Low Pass filter');
  xlabel('frequency(rad/sec)','fontsize',16);
  ylabel('|H1(W)|','fontsize',16);
  figure();
  plot(f, angle(H1),'b.-');
  title('Phase plot of Low Pass filter');
  xlabel('W','fontsize',16);
  ylabel('Phase((H1(W)))','fontsize',16);
  
  H2 = ((2+j*f)./(3+j*f));
  figure();
  plot(f, abs(H2),'r.-'); 
  title('Amplitude plot of High Pass filter');
  xlabel('frequency(rad/sec)','fontsize',16);
  ylabel('|H2(W)|','fontsize',16);
  figure();
  plot(f, angle(H2),'b.-');
  title('Phase plot of High Pass filter');
  xlabel('frequency(rad/sec)','fontsize',16);
  ylabel('Phase(H2(W))','fontsize',16);