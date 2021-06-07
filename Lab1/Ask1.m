 % Script 1
 % Graphs of sine and cosine function
 % with plot and stem
 t = (0:0.01:3*pi/2);        
 x = sin((1.8*pi)*t);       
 n = 0:45;      
 y = cos(((1.7*pi).*n)/10);   
 figure();                   
 plot(t,x','r.-');       
 xlabel('t','fontsize',16);                
 ylabel('x(t)','fontsize',16);                 
 figure();                   
 stem(n,y','b.');        
 xlabel('n','fontsize',16);
 ylabel('x[n]','fontsize',16);
 
