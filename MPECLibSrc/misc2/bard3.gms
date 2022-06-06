* upper level variables x
variables x1,x2,theta;
 
x1.lo = 0;
x2.lo = 0;
 
* optimality conditions of lower level problem
variables y1,y2;
equations cons1,cons2;
 
y1.lo = 0;
y2.lo = 0;
 
cons1.. sqr(x1) - 2*x1 + sqr(x2) - 2*y1 + y2 =g= -3;
cons2.. x2 + 3*y1 - 4*y2 =g= 4;
 
equations
    d_y1,
    d_y2;
 
positive variables
    m_cons1,
    m_cons2;
 
d_y1 .. (2*y1+2*m_cons1)-3*m_cons2 =g= 0;
 
d_y2 .. (-5-m_cons1)+4*m_cons2 =g= 0;
 
* remainder of upper level problem
equations cost,side;
 
cost.. theta =e= -sqr(x1) -3*x2 + sqr(y2) - 4*y1;
side.. sqr(x1) + 2*x2 =l= 4;
 
model bard3 /
    cost,
    side,
    d_y1.y1,
    d_y2.y2,
    cons1.m_cons1,
    cons2.m_cons2
/;
 
solve bard3 using mpec minimizing theta;
