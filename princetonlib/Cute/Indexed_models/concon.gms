* Cute AMPL model  (translation to GAMS)
*
*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*   A small gas network problem.
*   SIF input: Sybille Schachler, Oxford, August 1992.
*              minor correction by Ph. Shott, Jan 1995.

        parameter      n;        n =     7           ;
        parameter      m;        m =     4           ;
        parameter demand;   demand = -1000.0         ;
        parameter  pmax1;    pmax1 =   914.73        ;
        parameter  pmax2;    pmax2 =   904.73        ;
        parameter      k;        k =    -0.597053452 ;

Variable p1,p2,p3,p4,p5,p6,p7,q1,f1,q2,f2,q3,f3,q4,f4, obj;

Equation pan1,pan2,pan3,pan4,mbal1,mbal2,mbal3,mbal4,mbal5,mbal6,mbal7,Def_obj;

 pan1..   p1*abs(p1)-p2*abs(p2)-0.597053452*q1*exp(log(abs(q1))*0.8539) =e= 0 ;
 pan2..   p3*abs(p3)-p4*abs(p4)-0.597053452*q2*exp(log(abs(q2))*0.8539) =e= 0 ;
 pan3..   p4*abs(p4)-p5*abs(p5)-0.597053452*q3*exp(log(abs(q3))*0.8539) =e= 0 ;
 pan4..   p6*abs(p6)-p7*abs(p7)-0.597053452*q4*exp(log(abs(q4))*0.8539) =e= 0 ;
 mbal1..  q1 - f3          =e= 0 ;
 mbal2.. -q1 + f1          =e= 0 ;
 mbal3..  q2 - f1          =e= 0 ;
 mbal4.. -q2 + q3 + 1000.0 =e= 0 ;
 mbal5.. -q3 - f2          =e= 0 ;
 mbal6..  q4 + f2          =e= 0 ;
 mbal7.. -q4 - f4          =e= 0 ;

 Def_obj.. obj=e= - p1 - p2 - p3 - p4 - p5 - p6 - p7;

p1.up =          914.73;
p3.up =          904.73;
p5.up =          904.73;
p7.up =          914.73;
f4.up =          400.00;

p1.l=  965  ;
p2.l=  965  ;
p3.l=  965  ;
p4.l=  965  ;
p5.l=  965  ;
p6.l=  965  ;
p7.l=  965  ;
q1.l=  100.0;
f1.l= 1000.0;
q2.l=  100.0;
f2.l= 1000.0;
q3.l= -100.0;
f3.l= 1000.0;
q4.l= -100.0;
f4.l= 1000.0;

Model concon /all/;

Solve concon  using dnlp minimize obj;

 display p1.l; display p2.l; display p3.l;
 display p4.l; display p5.l; display p6.l;
 display p7.l; display q1.l; display f1.l;
 display q2.l; display f2.l; display q3.l;
 display f3.l; display q4.l; display f4.l;

 display obj.l;
