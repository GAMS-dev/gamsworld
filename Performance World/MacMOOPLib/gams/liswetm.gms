* liswetx.mod
* AMPL coding by Sven Leyffer, University of Dundee.
*
* A simple multi-objective optimization problem (MOOP)
* constructed from models liswet1-liswet4
* of Bob Vanderbei's cute-ampl collection.
*
* removed silly constant in objective.

* ... parameters

$Set nk 7
$Set n 5
$Set k 2
Set I      / i0*i%nk% /;
Alias(I,J);
Alias(I,R);


Set I1nk(I)  / i1*i%nk% /;
Set I0k(I)   / i0*i%k% / ;
Set I00k(I)  / i1*i%k% / ;
Set I1n(I)   / i1*i%n% / ;

Parameter B[I] ; B['i0'] = 1 ;
Loop{I$(I00k(I)),   B[I]  =  (B[I-1]*(ord(I)-1)) };


Parameter C[I] ; C['i0'] = 1 ; C['i1'] = -2 ; C['i2'] = 1 ;
Loop{I$(I00k(I)), C[I]  =  power((-1),(ord(I)-1))*B['i2']/(B[I]*
                           Sum(R$(ord(R) eq 3-(ord(I)-1)),B[R])) } ;

Parameter T[I] ;  T[I]$(I1nk(I)) = (ord(I)-2)/(5+2-1);
                  T['i1'] = 0.00001 ;
* ... variables
Variable x[I]   ,
         f1     ,
         f2     ;
Equation c1(I)     ,
         Def_Obj_1 ,
         Def_Obj_2 ;

c1(I)$I1nk(I)..
    Sum{J$I0k(J), C[I]* Sum{R$(ord(R) eq ord(J)+2-ord(I)),x[R]} } =g= 0 ;

* ... objective functions
Def_Obj_1..
    f1 =e=  Sum{I$I1nk(I), (-(sqrt(T[I])+0.1*Sin(ord(I)))*x[I]) } +
            Sum{I$I1nk(I), ( 0.25*x[I]*x[I] ) };
Def_Obj_2..
    f2 =e=  Sum{I$I1nk(I), (-(power(T[i],3)+0.1*Sin(ord(I)))*x[I])} +
            Sum{I$I1nk(I), ( 0.5*x[I]*x[I]) };
x.l[I] = 0 ;
x.lo[I] = 0 ;
Model liswetx_1 / c1 , Def_Obj_1 / ;
Model liswetx_2 / c1 , Def_Obj_2 / ;

Solve liswetx_1 using NLP minimazing f1 ;
Solve liswetx_2 using NLP minimazing f2 ;


Display f1.l ;
Display f2.l ;