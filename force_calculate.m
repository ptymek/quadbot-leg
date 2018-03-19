alfa = 0:0.05:pi/2+0.1;
beta = 0:0.05:(73*pi)/180;
M=3.1;
L1=0.16318;
L2=0.135;
[al,be]=meshgrid(alfa,beta);
% for i=1:length(alfa)-1
%     for i=1:length(beta)-1
%         F(i) = M/L1*sin(deg2rad(alfa(i)))+(M/L2)*(0.5*sin(deg2rad(2*beta(i))/sin( deg2rad(1.11214*(beta(i))))));
%     end
% end
F=M/L1*sin(al).*sin(2*be)*0.5*M/L2./sin(1.11214*be);
F1=M/L1*sin(al);
F2=sin(2*be)*0.5*M/L2./sin(1.11214*be);
surf(F)