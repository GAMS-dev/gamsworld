
variable x,theta;
x.lo = 0;

variables y;
equations cost,cons1,cons2,cons3;

y.lo = 0; 

cons1.. 3*x - y =g= 3;
cons2.. -x + 0.5*y =g= -4;
cons3.. -x - y =g= -7;

equations
    d_y;

positive variables
    m_cons1,
    m_cons2,
    m_cons3;

d_y .. (((2*(y-1)-1.5*x)-m_cons1*(-1)*1)-m_cons2*0.5)-m_cons3*
 (-1)*1 =g= 0;

cost.. theta =e= sqr(x-5) + sqr(2*y + 1);

model bard1 /
    cost,
    d_y.y,
    cons1.m_cons1,
    cons2.m_cons2,
    cons3.m_cons3
/;

solve bard1 using mpec minimizing theta;
