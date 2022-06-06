*==> kojshin.gms

$TITLE KOJIMA/SHINDO
$offsymxref offsymlist offuellist offuelxref
$inlinecom /* */

/* ****************************************************************

This simple four-variable problem was given by:
M. Kojima and S. Shindo, "Extensions of Newton and Quasi-Newton
Method to PC^1 equations", Journal of Operations Research Society of
Japan (29) p352-374.

Two solutions: x1 = (1.2247, 0, 0, 0.5), x2 = (1, 0, 3, 0).

******************************************************************* */

sets
J       / 1 * 4 / ;
alias (J,I);

variable obj;

positive variables
         x(J);

equations
         f(I), cost;

f(I) ..
        (3*sqr(x("1"))+2*x("1")*x("2")+2*sqr(x("2"))+x("3")+3*x("4")-6
         )$(ord(I) eq 1)
        + (2*sqr(x("1"))+x("1")+sqr(x("2"))+10*x("3")+2*x("4")-2)$(ord(I) eq 2)
        + (3*sqr(x("1"))+x("1")*x("2")+2*sqr(x("2"))+2*x("3")+9*x("4")-9
           )$(ord(I) eq 3)
        + (sqr(x("1"))+3*sqr(x("2"))+2*x("3")+3*x("4")-3)$(ord(I) eq 4)
        =g= 0;

cost..  obj =e= x("4");

model kojshin / cost, f.x /;

x.l(J) = 100;

solve kojshin using mpec minimizing obj;

