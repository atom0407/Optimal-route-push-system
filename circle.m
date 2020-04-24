%»­Ô²º¯Êý
function [p] = circle(x,y,num)
    theta = 0:2*pi/3600:2*pi;
    Circle1=x+1.5*cos(theta);
    Circle2=y+1.5*sin(theta);
    p = plot(Circle1,Circle2,'Color','r','Linewidth',2);
    text(x - 0.6,y,num2str(num));
end