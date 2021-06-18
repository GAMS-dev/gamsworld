$ontext ==================================================================

The GAMS scripts are divided into four parts:

PART 1:       Create the performance tools and support routines to 
              analyze the data. Should not be modified by user.  

PART 2:       GAMS script generators (create the scripts that generate 
	      the batch files). The script generators will be named
	      cr-____.gms creating a batch script named ____.gms. The
	      user can specify specific options.

PART 3:       Generate the batch files by running the scripts from 
	      category 1 (cr-___.gms) and running the batch files 
	      (____.gms) to get the desired performance data.
              
PART 4:	      Run the performance tools on selected data created in
	      parts 2.

Users need only modify / comment / uncomment code in PART 2, 3, and 4.

$offtext =================================================================



*=========================================================================
* PART 1: Create support routines for performance tools performance 
*	  routines themselves. This section  does not need to be modified 
*         and/or commented/uncommented.
*=========================================================================


********************
** SUPPORT ROUTINE 1
** Used to read in trace table created by the use of the options
** "trace=____ traceopt=3."
**

$onecho > readtrace.gms
$eolcom ,#

** Driving sets of trace table (traceopt=3)
Set modelname, modeltype, solvername, nlpdef, mipdef;
Set col /julian, direction,eqnum,varnum,dvarnum,nz,nlnz, optfile,modelstat,solvestat,obj,objest,res,iter,dom,nodes/

Set allsolvers /bdmlp, conopt, conopt1, conopt2, conopt3, cplex, decis, dicopt, miles, minos, 
			osl, osl2, path, sbb, snopt, xa, xpress/;
Alias(u1,u2,u3,u4,u5,*);
Set domain(*,*,*,*,*);

** Read in trace table
Table tracedata(*,*,*,*,*,col) 
$ondelim
modelname, modeltype, solvername, nlpdef, mipdef, julian, direction,eqnum,varnum,dvarnum,nz,nlnz, optfile,modelstat,solvestat,obj,objest,res,iter,dom,nodes
$offlisting
$include %tracefile%
$onlisting
$offdelim
;

** Extract driving sets
** Extract driving sets
domain(u1,u2,u3,u4,u5)$sum( col, tracedata(u1,u2,u3,u4,u5,col)) = yes;

loop(domain(u1,u2,u3,u4,u5),
   modelname(u1)  = yes;
   modeltype(u2)  = yes;
   solvername(u3) = yes;
   nlpdef(u4)     = yes;
   mipdef(u5)     = yes;
)
$offecho



********************
** SUPPORT ROUTINE 2
** Used to read in MIP trace table created by the use of the options
** "miptrace 1" in the option file of a solver.
**


$onecho > readmtr.gms
** Driving sets of MIP trace table 
Set index;
Set type /S,N,T,E/ ;
Set col /type, iter, time, bestint, bestbnd /;
		
Alias(u1,u2,*);
Set domain(*,*);

** Read in MIP trace table
Table mtrdata(*,*,col) 
$ondelim
index, type, iter, time, bestint, bestbnd
$offlisting
$include %mtrfile%
$onlisting
$offdelim
;

** Extract driving sets
domain(u1,u2)$sum( col, mtrdata(u1,u2,col)) = yes;

index(u1) = sum(domain(u1,u2), yes );

$offecho




**********************
** PERFORMANCE TOOL 1: 
** The first tool is used to compare performance of two solvers on a given 
** problem set. Results are shown in square format, for optimal, integer
** and fail status. Data input file is the tracefile as creatd in BATCH 1
** A sample result is shown assuming solvers=/solver A, solver B/ as 
** follows   	            
**                    optimal      integer      fail      total A
**  optimal                0           1           2           3
**  integer                1          27          30          58
**  fail                   0           0           4           4
**  total B                1          28          36
**
**

$echo '$include performlib' > square.gms
$echo '$include readtrace' >> square.gms 

$onecho >> square.gms
Set result /opt  "optimal", int  "integer",  f  "fail" /;
Alias(solvers,solvername)
Parameter trcdata(*,*,*);
Parameter square(*,*,result)   GAMS solver results;
square(modelname,solvername,result) = 0;


display tracedata;

*=== Compute totals
loop( (modelname,modeltype,solvername,nlpdef,mipdef)$tracedata(modelname,modeltype,solvername,nlpdef,mipdef,'modelstat'),    
    
    square(modelname,solvername,"opt") = ( tracedata(modelname,modeltype,solvername,nlpdef,mipdef,'modelstat') eq 1 and
							tracedata(modelname,modeltype,solvername,nlpdef,mipdef,'solvestat') eq 1);
    square(modelname,solvername,"int")   = ( tracedata(modelname,modeltype,solvername,nlpdef,mipdef,'modelstat') eq 8 and
							tracedata(modelname,modeltype,solvername,nlpdef,mipdef,'solvestat') eq 1);
    square(modelname,solvername,"f")    = ((tracedata(modelname,modeltype,solvername,nlpdef,mipdef,'modelstat') ne 1 and
							tracedata(modelname,modeltype,solvername,nlpdef,mipdef,'solvestat') ne 1) or 
                                             (tracedata(modelname,modeltype,solvername,nlpdef,mipdef,'modelstat') ne 8 and
							tracedata(modelname,modeltype,solvername,nlpdef,mipdef,'solvestat') ne 1));
);


*=== Compute result total 
Alias (result, resultA, resultB);
parameter resulttotals(resultA,resultB) GAMS solver totals;
resulttotals(resultA, resultB) = 0;

Set solverA, solverB;
Parameter i /1/;
loop(solvername,
   if(i eq 1,
	solverA(solvername) = solvername(solvername);
   elseif(i eq 2),
        solverB(solvername) = solvername(solvername);
   );
   i = 2;
);

loop(resultA,
   loop(resultB,
      resulttotals(resultA, resultB) = sum((m,solverA,solverB),  square(m,solverA,resultA) and square(m, solverB,resultB) );
   );
);


* Output results to .sqr file
file fsqr /out_%tracefile%/;
put fsqr 'Solver A is represented on the left (rows), solver B on top (columns).' /
put 'Solvers are:  ';
loop(solvers,
  put solvers.tl;
);
put  / / "                   optimal      integer      fail      total A" / ;

loop(resultA,
   put resultA.te(resultA):12;
   loop(resultB,
     put resulttotals(resultA, resultB):12:0 ;
   );
   put sum(resultB, resulttotals(resultA, resultB ) ):12:0 ;
   put /;
);

put "total B     ";
loop(resultB,
   put sum(resultA, resulttotals(resultA, resultB ) ):12:0 ;
);
put sum( (resultA,resultB), resulttotals(resultA,resultB)  ):12:0 ;
putclose fsqr

display square


$offecho




**********************
** PERFORMANCE TOOL 2: 
** Extracts the best bound and best integer solution per time step
** from a miptrace file.
**

$onecho > bestbndint.gms
$include readmtr

display mtrdata;
display "type is...";
display type;

file fbndint / bndint_%mtrfile% /;
put fbndint;

Alias(type2,type);

put "        TIME      BESTBND      BESTINT" /;
loop( (index,type)$( ord(type) ne 2  and mtrdata(index,type,"time")),
   put mtrdata(index,type,"time"):12:4  mtrdata(index,type,"bestbnd"):13:4  mtrdata(index,type,"bestint"):12:4 /;
);


$offecho





*=========================================================================
* PART 2: Create GAMS batch script generators (cr-___.gms)
*=========================================================================

***************
** BATCH TYPE 1 
** Create a GAMS script generator (cr-solvers.gms) which creates a batch
** script called "solvers.gms." "Solver.gms" runs all MIP models defined 
** in the set runmodels using all MIP solvers listed in the set solvers. 
** The results are saved in a  trace file called "solvers.trc." In this 
** case we run all MIPLIB models with the solvers CPLEX and XA. Also 
** creates a data file "solvers.data" containing the models and the solvers
** used.


*$ontext
$onecho > cr-solvers.gms
$include performlib.gms	

$set opts "reslim=200 optcr=0  trace=solvers.trc traceopt=3"
set solvers      / cplex, xa /;
   
set runmodels(m); 
runmodels(m) = sum( (s,d)$(ds(d,s) and sameas("miplib",d) and ms(m,s)), ord(m) );

* Rename mip models to model name
file fgms /f.gms/;
put fgms 
loop(runmodels,
   put_utilities 'ren' / runmodels.tl:0 '.gms' 
   put '$include mip.gms' 
);

* Create batch file
file fsol / solvers.gms /;
loop(runmodels,
   loop(solvers,
     put fsol "$call gams " runmodels.tl:0  " --gdxfile=" runmodels.tl:0 " mip=" solvers.tl:0 " %opts%" 
     put /;                    
   );                         
);                             
$offecho  

*$offtext


***************
** BATCH TYPE 2 
** Create a GAMS script generator (cr-miptrace.gms) which creates a batch
** script called "cr-miptrace.gms." "Miptrace.gms" runs the model
** "blend2" using the solver XPRESS, creating a miptrace file in the
** process.


$ontext
$onecho > xpress.opt
miptrace miptrace.mtr
miptracetime 0.1
miptracenode 5
$offecho

$onecho > cr-miptrace.gms
$include performlib.gms	

$set opts "reslim=600 optcr=0  optfile=1  iterlim=1000000"
set solvers      / xpress /;
   
set runmodels(m) /blend2/;

* Rename mip models to model name
file fgms /f.gms/;
put fgms 
loop(runmodels,
   put_utilities 'ren' / runmodels.tl:0 '.gms' 
   put '$include mip.gms' 
);

* Create batch file
file fsol / miptrace.gms /;
loop(runmodels,
   loop(solvers,
     put fsol "$call gams " runmodels.tl:0  " --gdxfile=" runmodels.tl:0 " mip=" solvers.tl:0 " %opts%" 
     put /;                    
   );                         
);                             
$offecho  

$offtext



***************
** BATCH TYPE 3
** Create a GAMS script generator (cr-best.gms) which creates a batch 
** script called "best.gms." "Best.gms" runs all MIP models with known best 
** solution point using solver listed under set solvers. Results are saved
** in a tracefile called "best.trc." In this case we use the solver OSL.

$ontext
$onecho > cr-best.gms

$set opts "reslim=1200 optcr=0  trace=best.trc traceopt=3 "
set solver / osl /; 

$include performlib.gms	   
set runmodels(m,p), uniqmodels(m);                             
runmodels(m,p) = bk(m,p);
uniqmodels(m) = sum(p, runmodels(m,p));  

* Rename mip models to model name
file fgms /f.gms/;
put fgms 
loop(uniqmodels(m),
   put_utilities 'ren' / m.tl:0 '.gms' 
   put '$include mip.gms' 
);
        
file fbst / best.gms /;           
loop(  (runmodels(m,p),solver),   
   put fbst "$call gams " m.tl  " mip=" solver.tl:0 " --gdxfile=" m.tl:0 " gdx=" m.tl:0  "_p1.gdx  %opts%"
put /;                            
);                                
$offecho
$offtext


***************
** BATCH TYPE 4
** Generate a batch script generator (cr-miplib.gms) which creates a batch
** script called "miplib.gms". "Miplib.gms" runs all miplib models, using 
** the  best known solution point (if one exists) and the solver defined 
** in the set solver. User must specify the proper solver options file. 
** Performance results  are saved in a tracefile called "miplib.trc." Our 
** solver in this case is OSL.

$ontext
$onecho > cr-miplib.gms

$set opts "reslim=1200 optcr=0  trace=miplib.trc traceopt=3"

$include performlib.gms   
set runmodels(m);        
runmodels(m) = sum( (s,d)$(ds(d,s) and sameas("miplib",d) and ms(m,s)), ord(m) );
set solver / osl /; 

* Rename mip models to model name
file fgms /f.gms/;
put fgms 
loop(runmodels(m),
   put_utilities 'ren' / m.tl:0 '.gms' 
   put '$include mip.gms' 
);

file fmip  / miplib.gms /;
loop( (runmodels(m), solver),
   put fmip "$call gams " m.tl:0  " mip=" solver.tl:0  " %opts%" 
   loop(bk(m,p), put " --gdxfile=" m.tl:0 "_" p.tl:0);
   put /; 
);             

$offecho
$offtext


***************
** BATCH TYPE 5
** Generate a batch script generator (cr-runmip.gms) which creates a batch 
** script called "runmips.gms." "Runmips.gms" runs all MIP models using 
** the solver defined in the set solver. The user must create an options 
** file if desired. Results are saved in the tracefile "runmips.trc."

$ontext
$onecho > cr-runmips.gms

$set opts "optfile=1 reslim=1200 optcr=0   trace=runmips.trc  traceopt=3"

$include performlib.gms
set runmodels(m);    
runmodels(m) = mMIP(m);
set solver /xpress/; 

* Rename mip models to model name
file fgms /f.gms/;
put fgms 
loop(runmodels(m),
   put_utilities 'ren' / m.tl:0 '.gms' 
   put '$include mip.gms' 
);
 
file fmip  / runmips.gms /;
loop( (runmodels(m), solver),
  put fmip "$call gams " m.tl:0  " mip=" solver.tl:0 " --gdxfile=" m.tl:0   " %opts%";  
  put /;
); 

$offecho
$offtext



*=========================================================================
* PART 3: Run GAMS script generators (cr-___.gms) to create batch files
*         (___.gms) and run batch files to obtain data. Uncomment (*) 
*         code as needed.
*=========================================================================

** RUN BATCH 1 
$call gams cr-solvers
$call gams solvers


** RUN BATCH 2
*$call gams cr-miptrace
*$call gams miptrace


** RUN BATCH 3
*$call gams cr-best
*$call gams best


** RUN BATCH 4
*$call gams cr-miplib
*$call gams miplib


** RUN BATCH 5
*$call gams cr-runmips
*$call gams runmips




*=========================================================================
* PART 4:  Run selected performance tools to analyze the data
*          obtained previously.
*=========================================================================

**************
** RUN TOOL 1:
** We will run the solver comparison tool using the tracefile created in
** batch 1.
**

$call gams square --tracefile=solvers.trc



**************
** RUN TOOL 2:
** We will run the best bound and best integer extraction tool 
** using the miptrace file created in batch 2.
**

*$call gams bestbndint --mtrfile=miptrace.mtr



