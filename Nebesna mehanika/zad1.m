function res = zad1(a, e, i, L, w, Omega, miu, t)
    tita = Omega*pi/180;
    g = (w - Omega)*pi/180;
    i = i*pi/180;

    Tita = [ cos(tita) , -sin(tita), 0 ;
             sin(tita) ,  cos(tita), 0 ;
                 0     ,      0    , 1  ] ;
             
             
       I = [ cos(i) , 0  , -sin(i) ;
               0    , 1  ,    0    ;
             sin(i) , 0  ,  cos(i)  ] ; 
             
             
       G = [ cos(g) , -sin(g) , 0 ;
             sin(g) ,  cos(g) , 0 ;
               0    ,    0    , 1  ] ;
        
    Q = Tita*I*G;
    
    gama = 1 + miu;
    n = sqrt(gama/a^3);
    to = ((w - L)/n)*pi/180;
    l = n*(-t*2*pi - to);
    u = l + e*sin(l + e*sin(l + e*sin(l)));
    
    r = Q*a*[cos(u)-e ; sin(u)*sqrt(1-e^2) ; 0 ]
    v = Q*[-sin(u);cos(u)*sqrt(1-e^2);0]*a*n/(1-e*cos(u))
   disp(['|r|=',num2str(norm(r))])
end