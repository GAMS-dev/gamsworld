$ontext ===============================================================

FILENAME: chktrcnumsol.gms

LAST MODIFIED:  6 Feburary, 2003

PURPOSE:  
Checks to see if trace file has only one solver.

REQUIRED INPUTS:
--trace1: trace file to be checked

$offtext ===============================================================

*=== Create trace reading routine (readtrace.gms)
$onecho > %gams.scrdir%readtrace.gms
$eolcom ,#
display '++++ TRACEOPT=3';


Set modelname, modeltype, solvername, nlpdef, mipdef;
Set col /julian, direction,eqnum,varnum,dvarnum,nz,nlnz, optfile,modelstat,solvestat,obj,objest,res,iter,dom,nodes/


Alias(u1,u2,u3,u4,u5,*);
Set domain(*,*,*,*,*);


Table tracedata(*,*,*,*,*,col) 
$ondelim
modelname, modeltype, solvername, nlpdef, mipdef, julian, direction,eqnum,varnum,dvarnum,nz,nlnz, optfile,modelstat,solvestat,obj,objest,res,iter,dom,nodes
$offlisting
$include %tracefile%
$onlisting
$offdelim
;


domain(u1,u2,u3,u4,u5)$sum( col, tracedata(u1,u2,u3,u4,u5,col)) = yes;

loop(domain(u1,u2,u3,u4,u5),
  modelname(u1)  = yes;
  modeltype(u2)  = yes;
  solvername(u3) = yes;
  nlpdef(u4)     = yes;
  mipdef(u5)     = yes;
);
*execute 'rm -f tracedata'
$offecho 

$set tracefile %trace1%
$include %gams.scrdir%readtrace.gms



Parameter numsolvers;
numsolvers = card(solvername);

display numsolvers;

file fnumsol /numsol_%trace1%.txt/;
if(numsolvers>1,
   put fnumsol "Too many solvers in file %trace1%. Only 1 solver per file "; 
   put fnumsol "allowed." / "Solvers: "/;
   loop(solvername,
      put fnumsol "        " solvername.tl /;
   );
);
