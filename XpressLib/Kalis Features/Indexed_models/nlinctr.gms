*****************************************************************
*   CP example problems
*   ===================
*
*   file nlinctr.mos
*   ````````````````
*   Definition and use of non-linear constraints.
*
*   (c) 2007 Artelys SA and Dash Associates
*
******************************************************************

* model "Non-linear constraints"
* uses "kalis"

Scalar PREC / 1e-10 / ;

* Setting default precision of continuous variables

Set ISET / i1*i8 / ;



Variable
         x[ISET] ,
         Obj     ;

Equation
         Eq_1    ,
         Eq_2    ,
         Eq_3    ,
         Eq_4    ,
         Eq_5    ,
         Eq_6    ,
         Eq_7    ,
         Eq_8    ,
         Def_Obj ;

* Defining and posting non-linear constraints
Eq_1..
       x['i1'] + x['i2']*(x['i1'] + x['i3']) +
                 x['i4']*(x['i3'] + x['i5']) +
                 x['i6']*(x['i5'] + x['i7']) -
                (x['i8']*((1/8)-x['i7'])) =e= 0 ;
Eq_2..
       x['i2'] + x['i3']*(x['i1']+x['i5']) +
                 x['i4']*(x['i2']+x['i6']) +
                 x['i5']*x['i7']           -
                 (x['i8']*((2/8)-x['i6'])) =e= 0 ;
Eq_3..
       x['i3']*(1 + x['i6']) +
                 x['i4']*(x['i1']+x['i7']) +
                 x['i2']*x['i5']           -
                 (x['i8']*((3/8)-x['i5'])) =e= 0 ;
Eq_4..
       x['i4'] + x['i1']*x['i5'] +
                 x['i2']*x['i6'] +
                 x['i3']*x['i7'] -
                 (x['i8']*((4/8)-x['i4'])) =e= 0 ;
Eq_5..
       x['i5'] + x['i1']*x['i6'] +
                 x['i2']*x['i7'] -
                 (x['i8']*((5/8)-x['i3'])) =e= 0 ;
Eq_6..
       x['i6'] + x['i1']*x['i7'] -
                 (x['i8']*((6/8)-x['i2'])) =e= 0 ;
Eq_7..
       x['i7'] - (x['i8']*((7/8)-x['i1'])) =e= 0 ;

Eq_8..
       Sum{ISET, x[ISET] } =e= -1 ;

Def_Obj..
       Obj =e= 1 ;

x.lo[ISET] = -100 ;
x.up[ISET] =    0 ;

Model Non_linear_constraints / all / ;

Solve Non_linear_constraints using NLP maximazing Obj ;

Display Obj.l ;