load velocity.dat

vnew = []; %Treat velocity at t=1 to be initial velocity
vold = []; %If t=1 is the initial velocity, then t=1 has to be the initial
           %time of t = 0, so only the maximum of t is 17.
difference = [];
for t=2:18
    dt = 1;
    
    vnew = velocity(t,2);
    vold = velocity(t-1,2);
    dv = vnew - vold;
    
    difference = [difference,dv/dt];
end
difference = difference';
t = [0:1:16]';
plot(t,difference,'-')
xlabel('Time')
ylabel('dv/dt')
