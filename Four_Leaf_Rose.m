l1 = 50; l2 = 40;
for t = 0:0.01:2*pi
    X = 20 + abs(sin(2*t))*cos(t)*5;
    Y = 10 + abs(sin(2*t))*sin(t)*5; %with t is a time variable
    
    c2 = (X^2 + Y^2 - l1^2 - l2^2)/(2*l1*l2);
    s2 = sqrt(abs(1 - c2^2));
    
    t2 = atan2(s2,c2); %second angle
    
    c1 = (X*(l1 + l2*c2) + Y*(l2*s2))/((l1+l2*c2)^2+(l2*s2)^2);
    s1 = (-X*(l2*s2) + Y*(l1 + l2*c2))/((l1+l2*c2)^2+(l2*s2)^2);
    
    t1 = atan2(s1,c1); %first angle
    
    Px = l1*cos(t1) + l2*cos(t1 + t2);
    Py = l1*sin(t1) + l2*sin(t1 + t2);
    
    subplot(2,1,1);
    plot(t,t1*180/pi,'*',t,t2*180/pi,'^');
    hold on
    grid on
    
    subplot(2,1,2);
    plot(Px,Py,'o','markersize',5,'color','k'); xlabel('Px'); ylabel('Py');
    hold on
    grid on
    pause(0.02);
end