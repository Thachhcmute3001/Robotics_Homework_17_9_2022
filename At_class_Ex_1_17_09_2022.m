xA = 60; yA = 30; xB = 20; yB = 60;
l1 = 50; l2 = 40;
for t = 0:0.01:1
    x = xA + (xB - xA)*t;
    y = yA + (yB - yA)*t;
    c2 = (Px^2 + Py^2 -l1^2 - l2^2)/(2*l1*l2);
    s2 = sqrt(abs(1 - c2^2));
    t2 = atan2(s2,c2);
    c1 = x*(l1 + l2*s2) + x*l2*s2;
    s1 = y*(l1 + l2*s2) - y*l2*s2;
    t1 = atan2(s1,c1);
    Px = l1*cos(t1) + l2*cos(t1 + t2);
    Py = l1*sin(t1) + l2*sin(t1 + t2);
    subplot(2,1,1);
    plot(t,t1*(180/pi),'.',t,t2*(180/pi),'.');
    legend('t1','t2');
    hold on
    grid on
    subplot(2,1,2);
    plot(Px,Py,'.'); xlabel('Px'); ylabel('Py');
    hold on
    grid on
    pause(0.02);
end
    
    
    
