
sets i      all rows in MPS order
ig(i)  greater-than-or equal rows
il(i)  less-than-or equal rows
ie(i)  equality rows
ir(i)  ranged rows;


equations eobj   objective function
  eg(i)  greater-than-or equal equs
  el(i)  less-than-or equal equs
  ee(i)  equality equs
  er(i)  ranged equs;


sets j        all columns in MPS order
jc (j)   continuous columns;


         variables obj        objective variable
positive variables xc (j)     continuous variables
                   r  (i)     ranged row variables;


parameters  c(j)        objective coefs
            cobj        objective constant
            b(i)        right hand sides
            ac (i,jc)   matrix coefs: continuous variables;


eobj.. obj =e= sum(jc,       c(jc  )*xc (jc ))
       + cobj;


eg(ig)..       sum(jc,  ac (ig,jc )*xc (jc ))
             =g= b(ig);


el(il)..       sum(jc,  ac (il,jc )*xc (jc ))
             =l= b(il);


ee(ie)..       sum(jc,  ac (ie,jc )*xc (jc ))
             =e= b(ie);


er(ir)..       sum(jc,  ac (ir,jc )*xc (jc ))
             =e= r(ir);


model m / all /;


set mps2gdx; parameter mps2gdxstats(mps2gdx);


set mps2gdx; parameter mps2gdxstats(mps2gdx);


*=== If --gdxfile specified
*======= Load model data
$if not set gdxfile $goto nogdxfile
$gdxin %gdxfile%.gdx
$load i j mps2gdx  mps2gdxstats
$load ig il ie ir
$load jc
$load cobj c b
$load ac
$load xc
$gdxin


*====== If specified, load point data
$if     set point $gdxin %gdxfile%_%point%.gdx
$if set point $load ee eg el eobj
$if set point $load xc
$goto donegdxfile




*=== No --gdxfile specified
*======= Load model data
$label nogdxfile
$gdxin l30.gdx
$load i j mps2gdx  mps2gdxstats
$load ig il ie ir
$load jc
$load cobj c b
$load ac
$load xc
$gdxin


*======= If specified, load point data
$if     set point $gdxin l30_%point%.gdx
$if     set point $load ee eg el eobj
$if     set point $load xc
$label donegdxfile


option limcol=0,limrow=0,solprint=off;


solve m using lp minimizing obj;


