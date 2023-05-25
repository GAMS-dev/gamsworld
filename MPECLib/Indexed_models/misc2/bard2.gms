
variable theta, x11,x12,x21,x22;

x11.lo = 0; x11.up = 10;
x12.lo = 0; x12.up = 5;
x21.lo = 0; x21.up = 15;
x22.lo = 0; x22.up = 20;

* optimality conds of second level problem a
variables y11,y12;
equations cons11,cons12;

y11.lo = 0; y11.up = 20;
y12.lo = 0; y12.up = 20;

cons11.. 0.4*y11 + 0.7*y12 =l= x11;
cons12.. 0.6*y11 + 0.3*y12 =l= x12;

equations
    d_y11,
    d_y12;

negative variables
    m_cons11,
    m_cons12;

d_y11 .. 2*(y11-4)-m_cons11*0.4-m_cons12*0.6 =e= 0;

d_y12 .. 2*(y12-13)-m_cons11*0.7-m_cons12*0.3 =e= 0;


* optimality conds of second level problem b
variables y21,y22;
equations cons21,cons22;

y21.lo = 0; y21.up = 40;
y22.lo = 0; y22.up = 40;

cons21.. 0.4*y21 + 0.7*y22 =l= x21;
cons22.. 0.6*y21 + 0.3*y22 =l= x22;

equations
    d_y21,
    d_y22;

negative variables
    m_cons21,
    m_cons22;

d_y21 .. 2*(y21-35)-m_cons21*0.4-m_cons22*0.6 =e= 0;

d_y22 .. 2*(y22-2)-m_cons21*0.7-m_cons22*0.3 =e= 0;


equation cost, side;

cost.. theta =e= -(200-y11-y21)*(y11+y21) - (160 - y12 - y22)*(y12 + y22);
side.. x11 + x12 + x21 + x22 =l= 40;

model bard2 /
    cost,
    side,
    d_y11.y11,
    d_y12.y12,
    cons11.m_cons11,
    cons12.m_cons12,
    d_y21.y21,
    d_y22.y22,
    cons21.m_cons21,
    cons22.m_cons22
/;

solve bard2 using mpec minimizing theta;
