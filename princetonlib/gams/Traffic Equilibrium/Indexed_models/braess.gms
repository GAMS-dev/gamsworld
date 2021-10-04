* Objective: convex quadratic
* Constraints: linear

Set i /a,b,c,d/;
Alias (j,i);
Set origin(i) /a/;
Set destin(i) /d/;

Set intersect(i) /a,b,c,d/                     ;
Set other(i)                                   ;
other(i)=intersect(i)-origin(i)-destin(i)      ;

parameter demand;   demand=6;

set roads(i,j) /  a.b,  a.c,  b.d,  c.d/ ;

parameter fixed_time(i,j),           factor(i,j);

     fixed_time('a','b')=    50;     factor('a','b')=     1;
     fixed_time('a','c')=     0;     factor('a','c')=    10;
     fixed_time('b','d')=     0;     factor('b','d')=    10;
     fixed_time('c','d')=    50;     factor('c','d')=     1;

Positive variable
            Flow(i,j);
Variable    obj      ;

Equation
      balance(i),
      arrive    ,
      leave     ,
      defobj    ;

defobj..      obj=e= sum{(i,j)$(roads(i,j)),
                     ((fixed_time[i,j]*Flow[i,j])+
                     (1/2*factor[i,j]*sqr(Flow[i,j])))
                    };
leave..    sum((i,j)$(origin(i) and roads(i,j)),Flow[i,j])=e=demand;
arrive..   sum((i,j)$(destin(j) and roads(i,j)),Flow[i,j])=e=demand;
balance(i)$other(i)..
           sum(j$(roads(i,j)),Flow[i,j])=e=sum(j$(roads(j,i)),Flow[j,i]);
model braess /all/;

solve braess using nlp minimizing obj;

file demo /output/;  put demo;
Put "   Before new road is build"; Put /;
Put "obj        = ",        obj.l:20:10;  Put /;
Put "---------------------------"; Put /;
Put "  start    finish     flow "; Put /;
Put "  point    point           "; Put /;
Put "---------------------------"; Put /;
Loop(i,Loop(j$(roads(i,j)),
Put "   ", Put i.tl:5, Put "=>  ", Put j.tl:1,Put flow.l(i,j):12:2, Put /;
    );     );

**********************************************
*  If new road 'c.b' will be build
**********************************************
set new(i,j) /c.b/;
roads(i,j)=roads(i,j)+new(i,j);
fixed_time('c','b')=    10;     factor('c','b')=     1;

solve braess using nlp minimizing obj;

Put /;Put "   With new road 'b=>c'   "; Put /;
Put "obj        = ",        obj.l:20:10;  Put /;
Put "---------------------------"; Put /;
Put "  start    finish     flow "; Put /;
Put "  point    point           "; Put /;
Put "---------------------------"; Put /;
Loop(i,Loop(j$(roads(i,j)),
Put "   ", Put i.tl:5, Put "=>  ", Put j.tl:1,Put flow.l(i,j):12:2, Put /;
    );     );