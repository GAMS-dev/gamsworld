$ontext ===============================================================

FILENAME: chktrcdata.gms

LAST MODIFIED:  2 April, 2003

PURPOSE:  
Checks to see if trace file has only:
	- one solver
	- one modeltype

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



*=== CHECK 1: Check if trace file contains only a single solver
Parameter numsolvers;
numsolvers = card(solvername);

display numsolvers;

file fnumstuff /numtrc_%trace1%.txt/;
fnumstuff.ap = 1;

if(numsolvers>1,
   put fnumstuff "Too many solvers in file %trace1%. Only 1 solver per file "; 
   put fnumstuff "allowed." / "Solvers: "/;
   loop(solvername,
      put fnumstuff "        " solvername.tl /;
   );
);



*=== CHECK 2: Check if trace file contains only a single model type
Parameter has_discretemods "indicator if trace file has discrete models";
Parameter has_contmods     "indicator if trace file has continuous models";

has_discretemods = sum((modelname, modeltype, solvername, nlpdef, mipdef)$[
                        tracedata(modelname,modeltype,solvername,nlpdef,mipdef,"dvarnum")], 1);
has_contmods = sum((modelname, modeltype, solvername, nlpdef, mipdef)$[
                        tracedata(modelname,modeltype,solvername,nlpdef,mipdef,"dvarnum")=0], 1);

display has_discretemods, has_contmods;

Parameter nummodtypes;
nummodtypes = card(modeltype);

display nummodtypes;

if(has_discretemods>0 and has_contmods>0,
   put fnumstuff "Too many modeltypes in file %trace1%. Cannot mix continuous and discrete models "; 
   put fnumstuff "in analysis." / "Modeltypes: "/;
   loop(modeltype,
       put fnumstuff "        " modeltype.tl /;
   );
);

putclose fnumstuff;



