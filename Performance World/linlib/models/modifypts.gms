$ontext ====================================================================

FILENAME:  modifypts.gms

PURPOSE:   Reads in old point files (containing all model data and solution
           data) and writes out a new point file with only the solution
           data:
           - ee, eg, el, eobj
           - xc xb xi xsc xsi xs1 xs2 r

OPTIONS:   

--input  = (input .gdx filename w/o .gdx extension)
--output = (output .gdx filename w/o .gdx extension)

$offtext ===================================================================



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
     jc (j)   continuous columns
     jb (j)   binary columns
     ji (j)   integer columns
     jsc(j)   semi-continuous columns
     jsi(j)   semi-integer columns
     s        sos sets
     js1(s,j) sos 1 columns
     js2(s,j) sos 2 columns;


         variables obj        objective variable
positive variables xc (j)     continuous variables
                   r  (i)     ranged row variables


binary   variables xb (j)     binary variables
integer  variables xi (j)     integer variables
semicont variables xsc(j)     semi-continuous variables
semiint  variables xsi(j)     semi-integer variables
sos1     variables xs1(s,j)   sos 1 variables
sos2     variables xs2(s,j)   sos 2 variables;


parameters  c(j)        objective coefs
            cobj        objective constant
            b(i)        right hand sides
            ac (i,jc)   matrix coefs: continuous variables
            ab (i,jb)   matrix coefs: binary variables
            ai (i,ji)   matrix coefs: integer variables
      asc(i,jsc)  matrix coefs: semi-continuous variables
      asi(i,jsi)  matrix coefs: semi-integer variables
      as1(i,s,j)  matrix coefs: sos 1 variables
      as2(i,s,j)  matrix coefs: sos 2 variables;


eobj.. obj =e= sum(jc,       c(jc  )*xc (jc ))
             + sum(jb,       c(jb  )*xb (jb ))
             + sum(ji,       c(ji  )*xi (ji ))
             + sum(jsc,      c(jsc )*xsc(jsc))
             + sum(jsi,      c(jsi )*xsi(jsi))
             + sum(js1(s,j), c(j)*xs1(js1))
             + sum(js2(s,j), c(j)*xs2(js2)) + cobj;


eg(ig)..       sum(jc,  ac (ig,jc )*xc (jc ))
                       + sum(jb,  ab (ig,jb )*xb (jb ))
             + sum(ji,  ai (ig,ji )*xi (ji ))
             + sum(jsc, asc(ig,jsc)*xsc(jsc))
             + sum(jsi, asi(ig,jsi)*xsi(jsi))
             + sum(js1, as1(ig,js1)*xs1(js1))
             + sum(js2, as2(ig,js2)*xs2(js2)) =g= b(ig);


el(il)..       sum(jc,  ac (il,jc )*xc (jc ))
             + sum(jb,  ab (il,jb )*xb (jb ))
             + sum(ji,  ai (il,ji )*xi (ji ))
             + sum(jsc, asc(il,jsc)*xsc(jsc))
             + sum(jsi, asi(il,jsi)*xsi(jsi))
             + sum(js1, as1(il,js1)*xs1(js1))
             + sum(js2, as2(il,js2)*xs2(js2)) =l= b(il);


ee(ie)..       sum(jc,  ac (ie,jc )*xc (jc ))
             + sum(jb,  ab (ie,jb )*xb (jb ))
             + sum(ji,  ai (ie,ji )*xi (ji ))
             + sum(jsc, asc(ie,jsc)*xsc(jsc))
             + sum(jsi, asi(ie,jsi)*xsi(jsi))
             + sum(js1, as1(ie,js1)*xs1(js1))
             + sum(js2, as2(ie,js2)*xs2(js2)) =e= b(ie);


er(ir)..       sum(jc,  ac (ir,jc )*xc (jc ))
             + sum(jb,  ab (ir,jb )*xb (jb ))
             + sum(ji,  ai (ir,ji )*xi (ji ))
             + sum(jsc, asc(ir,jsc)*xsc(jsc))
             + sum(jsi, asi(ir,jsi)*xsi(jsi))
             + sum(js1, as1(ir,js1)*xs1(js1))
             + sum(js2, as2(ir,js2)*xs2(js2)) =e= r(ir);

model m / all /;

set mps2gdx;


$gdxin %input%.gdx
$load i j mps2gdx
$load ee eg el eobj
$load xc xb xi xsc xsi xs1 xs2 r
$gdxin

$gdxout %output%.gdx
$unload ee eg el eobj
$unload xc xb xi xsc xsi xs1 xs2 r
$gdxout
