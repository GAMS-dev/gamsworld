$ontext ====================================================================

FILENAME:  modifypts.gms

PURPOSE:   Converts all old point files (containing all model data and solution
           data) and writes out a new point file with only the solution
           data:
           - ee, eg, el, eobj
           - xc xb xi xsc xsi xs1 xs2 r

FILES NEEDED: 
          Calls modifypts.gms


$offtext ===================================================================



$onecho > cr-modpts.gms

$offlisting
$include performlib.gms
$onlisting

file fbat / modpts.gms /;
put fbat

loop(bk(m,p),

   put '$call cp  ' m.tl:0 '_' p.tl:0 '.gdx  tmp.gdx' /
   put '$call gams modifypts.gms --input=tmp  --output= ' m.tl:0 '_' p.tl:0 /
  
);


$offecho

$call gams cr-modpts.gms
$call gams modpts.gms