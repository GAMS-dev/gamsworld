$ontext =======================================================================

FILENAME: gratio.gms

PURPOSE:  Creates a solver resource time comparison using geometric means.

	  User must input one tracefiles for each solver or solver option. 
          Currently works for LP and NLP type models (no discrete variables allowed)

	  Each trace file can have model/solve information for only 1 solver.
	  For example trace1.trc can have info for all LPs in PerformanceLib
	  for solver A, and trace2.trc can have information for all LPs using
	  solver B.

GEOMETRIC MEAN DESCRIPTION:
          For each (solver i,solver j) pair we compute the solver resource time
          ratio for each model, that is:
         
                                     time(solver i, model m)
                    ratio(m,i,j) = ---------------------------
                                     time(solver j, model m)

          We then compute the geomtric mean over all ratios:

                     ( solver i )
               gratio(----------) = prod(m, ratio(m,i,j) )**(1/card(m)) 
                     ( solver j )

          Similarly, we compute the geometric mean for each solver with respect to the
          best possible time. 

REFERENCE:
          Bixby, R. E., "Solving real-world linear programs: a decade and more of
          progress", Operations Research, Vol 50 (1), pp.3-15, 2002. 

REQUIRED INPUTS:
	  --trace1:    trace file of solver 1
	  --trace2:    trace file of solver 2 etc up to --trace5

OPTIONAL INPUTS:
          --factor     factor for values of tau: 1, factor, factor^2, factor^3 (default 1.25)
	  --outfile:   root names of square output file (default is out
		       --> out_sqr.txt)
	  --modelfile: filename containing subset of models to consider. Useful,
		       if only a subset of models from the tracefile are to
		       be used in the solver square comparison.
          --numpts:    number of data points for each solver for performance profile
                       (default: 25)
          --outfile:   output filename (default: profile.txt)
	  --resmin:    minimum resource time threshold. If a solver reports a
		       resource time below --resmin, then it is increased to
		       resmin before being used in ratios. (default 0.05).


REMARKS:  Each tracefile can contain information from only one (1) solver for a
	  given set of models. For example, tracefiles containing solver A and
	  solver B will cause error message upon compilation.

$offtext ======================================================================


$if not set modelfile  $goto nomodelfile


*== If only the subset of models as listed in "modelfile" is to be analyzed
Set m(*) the subset of models to consider /
$onempty
$include %modelfile%
$offempty
/;

$echo > tracedata
$if set trace1 $echo '$include %trace1%' >> tracedata
$if set trace2 $echo '$include %trace2%' >> tracedata
$if set trace3 $echo '$include %trace3%' >> tracedata
$if set trace4 $echo '$include %trace4%' >> tracedata
$if set trace5 $echo '$include %trace5%' >> tracedata
$set tracefile tracedata
$include readtrace
$goto donemodelfile


*=== All models in trace files are to be analyzed
$label nomodelfile

$echo > tracedata
$if set trace1 $echo '$include %trace1%' >> tracedata
$if set trace2 $echo '$include %trace2%' >> tracedata
$if set trace3 $echo '$include %trace3%' >> tracedata
$if set trace4 $echo '$include %trace4%' >> tracedata
$if set trace5 $echo '$include %trace5%' >> tracedata
$set tracefile tracedata
$include readtrace

Set m(*);
m(modelname) = yes;

$label donemodelfile


*=== Set default options
$if not set numpts  $set numpts  25
$if not set outfile $set outfile "profile.txt"
$if not set factor  $set factor  1.25
$if not set resmin  $set resmin  5e-2



Parameter resourcemin  "min resource time threshold for ratio"   / %resmin%/
          tmpdata      "temporary parameter to compute intermediate data";

Alias(solvers,solvername)

Parameter restime(*,*)	  "resource usage"
          modstat         "model status"            /0/
          solstat         "solver status"           /0/
          resusd          "resource time used"      /0/
          resmax          "max resource time used"  /0/
          i               "index"                   /0/;


*=== Get resource times for each (model,solver) pair and determine models solved
Set notsolved(*,*)        "models not solved by all solvers"
    tmpallsolved(*,*)       "temporary parameter to check if model solved by all solvers"
    allsolved(*)          "models solved by all solvers";

loop( (modelname(m),modeltype,solvername,nlpdef,mipdef),
   i = i+1;

   modstat = tracedata(modelname,modeltype,solvername,nlpdef,mipdef,'modelstat');
   solstat = tracedata(modelname,modeltype,solvername,nlpdef,mipdef,'solvestat');
   resusd  = tracedata(modelname,modeltype,solvername,nlpdef,mipdef,'res');

*=== Assign resource data only if data exists
   if (modstat and solstat,
      if( (modstat=1 or modstat=2 or modstat=8) and solstat=1,
	 restime(modelname,solvername) = max( resusd, resourcemin);
         tmpallsolved(modelname,solvername) = yes;
*=== If model is not optimal, mark it with Infinite restime.
      else
	 restime(modelname,solvername) = Inf;
         notsolved(modelname,solvername) = yes;
         tmpallsolved(modelname,solvername) = no;
      );
   );
);

allsolved(modelname) = no;
allsolved(modelname)$(sum( solvername$tmpallsolved(modelname,solvername),1) = card(solvername)) = yes;

display tmpallsolved;


*=== If resource time below --resmin, assign time as --resmin
restime(modelname,solvername)$(restime(modelname,solvername) < %resmin%) = %resmin%;


Alias(solvernameA,solvernameB,solvername);

*=== Get resource time ratios and ratios with respect to minimum
Parameter resmin(*)       "Best resource usage for all solvers"
          resrelAB(*,*,*) "Resource usage of solver A relative to solver B"
          resrel(*,*)     "Resource usage relative to the best = res / resmin" ;

resmin(modelname) = smin(solvername, restime(modelname,solvername));
resrelAB(modelname,solvernameA,solvernameB)$allsolved(modelname) = restime(modelname,solvernameA) / restime(modelname,solvernameB);
resrel(modelname,solvername)$allsolved(modelname) = restime(modelname,solvername) / resmin(modelname);


*=== Compute geomtric mean
Parameter gratio(*,*);
gratio(solvernameA,solvernameB) =
    prod(allsolved$(resrelAB(allsolved,solvernameA,solvernameB) < Inf), resrelAB(allsolved,solvernameA,solvernameB)**(1/card(allsolved)));
gratio(solvernameA,"best") = prod(allsolved$(resrel(allsolved,solvernameA) < Inf), resrel(allsolved,solvernameA)**(1/card(allsolved)));

display resrelAB, resrel, gratio, allsolved;



*==============================================================================
*=== Output results to _sqr.htm file
*==============================================================================

file fhtm /gratio.htm/;
put fhtm;


*=== Output square
put / '<html><head> <title>Solver Resource Time Ratios (Geometric Mean) - Optimally solved models</title>'
    / '<body bgcolor="#ffffff">'

*=== Output geometric mean of ratios in square format
put '<h2>Geometric mean of resource time ratios of optimally solved models:</h2>' //;

put / '<ul>'
    / '   <li>Geometric means are shown for Solver(row) / Solver(column)'
    / '   <li>Includes only models solved optimally by all solvers';
tmpdata = 100*card(allsolved) / card(modelname);
put '   <li>Percent of models solved optimally by all solvers: &nbsp' tmpdata:5:2
    '   <li>Number of models solved optimally by all solvers: &nbsp' card(allsolved):5:0
    '   <li>Total number of models: &nbsp' card(modelname):5:0;
put / '</ul>';

put / '<table width="100%" border=1>' ;
put / '<tr>'
    / '   <td align=right><b> Solver(row) / Solver(column) </b></td>';
loop(solvername,
   put / '   <td align=right><b>' solvername.tl:0 '</b></td>' ;
);
put / '   <td align=right><b> Best </b></td>';
put / '</tr>' ;


loop(solvernameA,
   put / '<tr>'
       / '   <td><b>' solvernameA.tl '</b></td>';
   loop(solvernameB,
      put / '   <td align=right>' gratio(solvernameA, solvernameB):0:3 '</td>';   
   );
   put / '   <td align=right><b>' gratio(solvernameA, "best"):0:3 '</b></td>';
   put / '</tr>';
);
put '</table>' /;

put / '<p align=right><a href="#top">Back to top</a></p>'


*=== Output models not solved optimally by all solvers
put '<hr><br>' / / / / ;

put '<h3>Models not solved optimally by all solvers:</h3>' //;

put '<ul>' /
    '   <li>Status NO indicates model not solved optimally by that solver' /;
put '</ul>' / / / /;

put  '<table width="100%" border=1>' /;
put  '<tr>' /
     '   <td><b>Modelname</b></td>';

loop(solvername,
   put '   <td align=right><b>' solvername.tl:0 '</b></td>' /;
);
 
put '</tr>' /;


loop(modelname,
   if( sum(solvername, notsolved(modelname,solvername)),
      put '<tr>' /;
      put '   <td>' modelname.tl:10 '</td>' /;
      loop(solvername,
         if(notsolved(modelname,solvername),
             put '   <td align=right> NO </td>' / ;   
         else
             put '   <td></td>' /;
         );
      );
      put '</tr>'/;
   );
);

put '</table>' /;

put / '<p align=right><a href="#top">Back to top</a></p>'
put / '<br><hr><br>' ///; 


