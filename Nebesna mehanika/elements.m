function res = elements(a, e, i, L, w, Omega, miu,t)
      i = i*pi/180;
     n = sqrt(1/a^3);
     to = ((w - L)/n)*pi/180;
    
    
     gama = 1 + miu;
   EL=miu*sqrt(gama*a) 
   GE=EL*sqrt(1-e^2)
   TITADEBELA=GE*cos(i)
   l = n*(t*2*pi - to)
   g = (w - Omega)*pi/180
   tita = Omega*pi/180
   H=-miu*gama/(2*a)
   
   P11=sqrt(a)
   P12=(EL-GE)/(miu*sqrt(gama))
   P13=(GE-TITADEBELA)/(miu*sqrt(gama))
   P14=L*pi/180
   P15=-g-tita
   P16=-tita
   
   P21=P11
   P22=sqrt(2*(EL-GE))*cos(g+tita)
   P23=sqrt(2*(GE-TITADEBELA))*cos(tita)
   P24=P14
   P25=-sqrt(2*(EL-GE))*sin(g+tita)
   P26=-sqrt(2*(GE-TITADEBELA))*sin(tita)
  
end