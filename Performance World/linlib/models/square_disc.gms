$ontext =======================================================================

FILENAME: squareMIP.gms

PURPOSE:  Creates a solve square for MIPs to compare solve/fail results.
          User must input two tracefiles (one for each solver).

          Works for MIP type models only

REQUIRED INPUTS:   
          --trace1:    trace file of solver 1
          --trace2:    trace file of solver 2

OPTIONAL INPUTS:
          --bnd:       relative objective function difference. Prints "optimal"
                       solution in boldface for HTML output for one solver if the
                       relative objective function difference is greater than --bnd.
                       (default 1e-5) 
          --outfile:   root names of square output file (default is out
                       --> out_sqr.htm)
          --modelfile: filename containing subset of models to consider. Useful,
                       if only a subset of models from the tracefile are to
                       be used in the solver square comparison.


REMARKS:  Each tracefile can contain information from only one (1) solver for a
          given set of models. For example, tracefiles containing solver A and
          solver B will cause error message upon compilation.

SAMPLE OUTPUT:   SQUARE:

    optimal within tol  -       modelstat=1 or 8      solvestat=1
    integer             -       modelstat=8           solvestat=2 or 3 or 4
    infeasible          -       modelstat=4,10 or 19  solvestat=1
    unbounded           -       modelstat=3 or 18     solvestat=1
    fail                -       all other

    Solver A is represented on the left (rows), solver B on top (columns).
    Solver A:   X
    Solver B:   Y

$offtext ======================================================================

$if not set outfile    $set outfile out
$if not set modelfile  $goto nomodelfile


*== If only the subset of models as listed in "modelfile" is to be analyzed
Set m(*) the subset of models to consider /
$onempty
$include %modelfile%
$offempty
/;

$echo > tracedata
$echo '$include %trace1%' >> tracedata
$echo '$include %trace2%' >> tracedata
$set tracefile tracedata
$include readtrace
$goto donemodelfile


*=== All models in trace files are to be analyzed
$label nomodelfile

$echo > tracedata
$echo '$include %trace1%' >> tracedata
$echo '$include %trace2%' >> tracedata
$set tracefile tracedata
$include readtrace

Set m(*);
m(modelname) = yes;

$label donemodelfile


*=== Set default options
$if not set bnd        $set bnd    1e-5
$if not set html       $set html   yes


Set bool  / no, yes /;
Parameter list_html/no 1, yes 2/;

Parameter bound "relative objc func difference threshold" / %bnd% /;



*=== Possible MIP solver outcomes
Set result /opt    "optimal within tol",
            integ  "integer sol.",
            infes  "infeasible",
            unbnd  "unbounded",
            f      "fail"           
/;

Alias(solvers,solvername)

Parameter square(*,*,result)   GAMS solver results for square;
square(modelname,solvername,result) = 0;

Parameter modstat /0/;
Parameter solstat /0/;
Parameter mstat(*,*,*), sstat(*,*,*);

parameter i /0/;



*=== Compute square totals 
loop( (modelname(m),modeltype,solvername,nlpdef,mipdef),
   i = i+1;

   modstat = tracedata(modelname,modeltype,solvername,nlpdef,mipdef,'modelstat');
   solstat = tracedata(modelname,modeltype,solvername,nlpdef,mipdef,'solvestat');


*=== Assign square only if data exists
   if (modstat and solstat,
      if( (modstat=1 or modstat=8) and solstat=1,
         square(modelname,solvername,"opt") = yes;
         mstat(modelname,solvername,"opt") = modstat;
         sstat(modelname,solvername,"opt") = solstat;
      elseif( modstat=8 and (solstat=2 or solstat=3 or solstat=4) ),
         square(modelname,solvername,"integ") = yes;
         mstat(modelname,solvername,"integ") = modstat;
         sstat(modelname,solvername,"integ") = solstat;
      elseif( (modstat=4 or modstat=10 or modstat=19) and solstat=1 ),
         square(modelname,solvername,"infes") = yes;
         mstat(modelname,solvername,"infes") = modstat;
         sstat(modelname,solvername,"infes") = solstat;
      elseif( (modstat=3 or modstat=18) and solstat=1 ),
         square(modelname,solvername,"unbnd") = yes;
         mstat(modelname,solvername,"unbnd") = modstat;
         sstat(modelname,solvername,"unbnd") = solstat;
      else
         square(modelname,solvername,"f") = yes;
         mstat(modelname,solvername,"f") = modstat;
         sstat(modelname,solvername,"f") = solstat;
      );
   );
);



*=== Compute result totals
Alias (result, resultA, resultB);
parameter resulttotals(resultA,resultB) GAMS solver totals for square;
          resulttotals(resultA, resultB) = 0;


Set solverA, solverB;
Parameter i;
i=1;
loop(solvername,
   if(i eq 1,
      solverA(solvername) = solvername(solvername);
      i = 2;
   elseif(i eq 2),
      solverB(solvername) = solvername(solvername);
   );
);

Set solversused(*);
solversused(solvername) = solverA(solvername) + solverB(solvername);



*=== Result totals for square
loop(resultA,
   loop(resultB,
      resulttotals(resultA, resultB) = sum((m,solverA,solverB),  square(m,solverA,resultA) and square(m, solverB,resultB) );
   );
);



*==== Extract resource times
Parameter resA(*)     "resource time of solver A", 
          resB(*)     "resource time of solver B"
          objA(*)     "objective value using solver A"
          objB(*)     "objective value using solverB"
          dir(*)      "direction of optimization: 0=min 1=max"
          modstatA(*) "model status of solver A"
          solstatA(*) "solver status of solver A"
          modstatB(*) "model status of solver B"
          solstatB(*) "solver status of solver B"
          ratio       "ratio of solver resource times" 
          objdiff(*)  "difference in objective function values of two solvers"
          doheader    "check if header has been written"
          solvernum   "dummy to check which solver is used";


loop( (modelname,modeltype,solverA,nlpdef,mipdef)$m(modelname),

   modstat = tracedata(modelname,modeltype,solverA,nlpdef,mipdef,'modelstat');
   solstat = tracedata(modelname,modeltype,solverA,nlpdef,mipdef,'solvestat');

   if (modstat and solstat,
      resA(modelname) = tracedata(modelname,modeltype,solverA,nlpdef,mipdef,'res');
      objA(modelname) = tracedata(modelname,modeltype,solverA,nlpdef,mipdef,'obj');
      dir(modelname)  = tracedata(modelname,modeltype,solverA,nlpdef,mipdef,'direction');
      modstatA(modelname) = tracedata(modelname,modeltype,solverA,nlpdef,mipdef,'modelstat');
      solstatA(modelname) = tracedata(modelname,modeltype,solverA,nlpdef,mipdef,'solvestat');
    );
);


loop( (modelname,modeltype,solverB,nlpdef,mipdef)$m(modelname),

   modstat = tracedata(modelname,modeltype,solverB,nlpdef,mipdef,'modelstat');
   solstat = tracedata(modelname,modeltype,solverB,nlpdef,mipdef,'solvestat');

   if (modstat and solstat,
      resB(modelname) = tracedata(modelname,modeltype,solverB,nlpdef,mipdef,'res');
      objB(modelname) = tracedata(modelname,modeltype,solverB,nlpdef,mipdef,'obj');
      modstatB(modelname) = tracedata(modelname,modeltype,solverB,nlpdef,mipdef,'modelstat');
      solstatB(modelname) = tracedata(modelname,modeltype,solverB,nlpdef,mipdef,'solvestat');
    );
);



*==============================================================================
*=== Output results to _sqr.htm file
*==============================================================================

file fhtm /%outfile%_sqr.htm/;
put fhtm;


*=== Output square
put / '<html><head> <title>MIP Solver Square Comparison - All Models</title>'
    / '<body bgcolor="#ffffff">'

put / '<a name="top"></a>';

put / '<h2>MIP Solver Square Comparison: Considers all models. </h2>' /; 
    
put / 'Solver comparison utility.<br><br>'
    / 'Compares all solver return outcomes (for example optimal within tolerances, infeasible,' 
    / 'integer, fail) of one solver with all return outcomes of another solver. Inteeger'
    / 'denotes integer solution found with resource or iteration limit reached.' /;

solvernum = 0;
loop(solvers,
   solvernum = solvernum+1;
   put$(solvernum eq 1) / 'Solver ' solvers.tl:0 ' is represented on the left (rows) and ';
   put$(solvernum eq 2) / 'solver ' solvers.tl:0 ' on top (columns).'
                        / 'See the <a href="#SquareDef">solver return definitions</a> for return codes.'
);


put / '<br><br><br>'
    / '<table width="50%" border=1>'
    / '   <tr><td align=left><b>Tracefile 1  :</b></td><td align=right><tt>%trace1%</tt></td></tr>' 
    / '   <tr><td align=left><b>Tracefile 2  :</b></td><td align=right><tt>%trace2%</tt></td></tr>' 
    / '   <tr><td align=left><b>Solvers used :</b></td> ';

solvernum = 0;
loop(solvers,
   solvernum = solvernum+1;
   put$(solvernum eq 1)   '<td align=right><tt>' solvers.tl:0 '</tt></td></tr>';
   put$(solvernum eq 2) / '   <tr><td></td><td align=right><tt>' solvers.tl:0 '</tt></td></tr>' /;
);
put / '</table><br>';

put '<br><br>' //;
 

solvernum = 0;
put / '<table width="100%" border=1>'
    / '<tr>';
loop(solvers,
   solvernum = solvernum+1;
   put$(solvernum eq 1)  /  '   <td></td>'
                         /  '   <td align=center><b>optimal within tol  </b></td>'
                         /  '   <td align=center><b>integer</b></td>'
                         /  '   <td align=center><b>infeasible</b></td>'
                         /  '   <td align=center><b>unbounded</b></td>'
                         /  '   <td align=center><b>fail      </b></td>'
                         /  '   <td align=center><b>total ' solvers.tl '</b></td>';
);
put / '</tr>';


*=== Output suqare totals to HTM file
loop(resultA,
   put / '<tr>'
       / '   <td><b>' resultA.te(resultA):0 '</b></td>';
   loop(resultB,
     put   '   <td align=right>'
     if(resulttotals(resultA,resultB),
        put  '<b><a href="#' resultA.tl:0 resultB.tl:0   '"><tt>' resulttotals(resultA, resultB):0:0 '</tt></b></a>';
     else
        put  '-';
     );
     put   '</td>' /;
   );
   if( sum(resultB, resulttotals(resultA, resultB ) ),
      put   '   <td align=right><tt><b><a href="#solverA' resultA.tl  '">' 
      put        sum(resultB, resulttotals(resultA, resultB ) ):0:0 '</a></b></tt></td>';
   else
      put   '   <td align=right><tt>-</tt></td>';
   )
   put / '</tr>';
);

solvernum = 0;
loop(solvers,
   solvernum = solvernum+1;
   put$(solvernum eq 2) '<tr>' / '   <td><b>total ' solvers.tl:9 '</b></td>' ;
);

loop(resultB,
   if (sum(resultA, resulttotals(resultA, resultB ) ),
      put / '   <td align=right><tt><b><a href="#solverB' resultB.tl '">' 
                sum(resultA, resulttotals(resultA, resultB ) ):0:0 '</a></b></tt></td>' ;
   else
      put / '   <td align=right><tt>-</tt></td>' ;
   );
);
put / '   <td align=right><tt>' sum( (resultA,resultB), resulttotals(resultA,resultB)  ):0:0 '</tt></td>' ;

put / '</tr>'
    / '</table>' //;



*=== Write solver return definitions to HTM file
put / '<br><br><hr><br>'
put / '<h3><a name="#SquareDef">MIP Solver return definitions:</a></h3>' 
    / '<table width="50%" border=1>'
    / '   <tr><td align=left><b>Outcome</b></td><td align=right><b>Model Status</b></td>'
                                      '<td align=right><b>Solver Status</b></td> </tr>'
    / '   <tr><td align=left>optimal</td><td align=right> 1 or 8 </td><td align=right> 1 </td> </tr>'
    / '   <tr><td align=left>integer</td><td align=right> 8 </td><td align=right> 2 or 3 or 4 </td> </tr>'
    / '   <tr><td align=left>infeasible</td><td align=right> 4 or 10 or 19 </td><td align=right> 1 </td> </tr>'
    / '   <tr><td align=left>unbounded</td><td align=right> 3 or 18 </td><td align=right> 1 </td> </tr>'
    / '   <tr><td align=left>fail</td><td align=right> all other </td><td align=right> all other </td> </tr>'
    / '</table>' //

put / '<br><br><hr><br>'



*=== Output models to HTM file
put / '<h3>Solver Resource Times and Objective Values</h3>'
    / '<ul>'
    / '<li>Models for each solver pair outcome. Listed are the solver' 
    / 'resource times in seconds, as well as the ratio of resource'
    / 'times for the two solvers if both solved optimally.' 

    / '<li>Also listed are the objective values using both solvers. The '
    / 'better solution found is listed in boldface. A solution is considered '
    / 'better, if the relative objective function difference is greater than ';

fhtm.nr = 2;
put / bound:0 '.';       


put / '<li>If a solver does not solve optimally or return an integer solution, the'
    / 'model status (mstat) and sovler status (sstat) are listed instead.'

    / '</ul>'
    / '<p><hr><p>';

fhtm.nr = 1;


*=== Output square results for solver outcome pairs
loop( (resultA,resultB),

   doheader = yes;

   loop( (m(modelname),solverA,solverB),      
     
      if ( mstat(modelname,solverA,resultA) and mstat(modelname,solverB,resultB),

*       === Write header 
        if(doheader,
            put / '<a name="' resultA.tl:0 resultB.tl:0 '">'; 
            put / '<h4>'solverA.tl:10 ': '
                   resultA.te(resultA):>25 ' -- ';
            put    solverB.tl:10 ': '
                   resultB.te(resultB):>25 
                  '&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top</a></h4>'/;

            put / '<table width="100%" border=1>'
            put / '<tr>'
               
            put /  '   <td align=left><b>Modelname</b></td>'                
                /  '   <td align=right><b>' solverA.tl:>10 '</b></td>'
                /  '   <td align=right><b>' solverB.tl:>10 '</b></td>'
                /  '   <td align=right><b>Ratio ('solverA.tl:0 '/' solverB.tl:0 ') </b></td>';
                   
            if( not (sameas(resultA,"opt") or sameas(resultA,"integ") ),
               put /  '   <td align=right><b>Status ('solverA.tl:0') </b></td>';
            else
               put /  '   <td align=right><b>Obj ('solverA.tl:0') </b></td>';
            );
                   
            if( not (sameas(resultB,"opt") or sameas(resultB,"integ") ),
               put /  '   <td align=right><b>Status ('solverB.tl:0') </b></td>';
            else
               put /  '   <td align=right><b>Obj ('solverB.tl:0') </b></td>';
            );

            put /  '</tr>';

            doheader = no;
         );  
*        === end "if(doheader," loop


         if( resA(modelname) > 1e-5 and resB(modelname) < 1e-5,
            ratio = inf;
         elseif( resA(modelname) < 1e-5 and resB(modelname) < 1e-5),
            ratio =1;
         else
            ratio = resA(modelname) / resB(modelname);
         );

       
         put / '<tr>'
               '<td align=left><tt>' modelname.tl:15 '</tt></td>';
         put   '<td align=right><tt>' resA(modelname):>15:4 '</tt></td>' 
               '<td align=right><tt>' resB(modelname):>15:4 '</tt></td>' /;


         objdiff(modelname) = ( objA(modelname)-objB(modelname) ) / max( abs(objA(modelname)), abs(objB(modelname)), bound); 


*        === Output ratios of resource times   
         if ( (not sameas(resultA,"opt") and not sameas(resultA,"integ")) or ( not sameas(resultB,"opt") and not sameas(resultB,"integ")),
            put '<td align=right><tt>---</tt></td>';
         else
            if (ratio = inf,
               put '<td align=right><tt>' ratio:16 '.000</tt></td>';
            else
               put '<td align=right><tt>' ratio:0:3 '</tt></td>';
            );
         );
 
*        === Output objective values 
         if( (sameas(resultA,"opt") or sameas(resultA,"integ")) and (sameas(resultB,"opt") or sameas(resultB,"integ")),

*           === Maximizing obj
            if( dir(modelname),
               if (objdiff(modelname) > bound,
                  put '<td align=right><b><tt>' objA(modelname):>40:8 '</tt></b></td><td align=right><tt>'  objB(modelname):>20:8 '</tt></td>'/;
               elseif (-objdiff(modelname) > bound),                      
                  put '<td align=right><tt>' objA(modelname):>40:8 '</tt></td><td align=right><b><tt>'  objB(modelname):>20:8 '</tt></b></td>'/;   
               else
                  put '<td align=right><tt>' objA(modelname):>40:8 '</tt></td><td align=right><tt>' objB(modelname):>20:8 '</tt></td>' /;
               );
               
*           === Minimizing obj
            else
               if (-objdiff(modelname) > bound,
                  put '<td align=right><b><tt>' objA(modelname):>40:8 '</tt></b></td><td align=right><tt>'  objB(modelname):>20:8 '</tt></td>'/;   
               elseif (objdiff(modelname) > bound),    
                  put '<td align=right><tt>' objA(modelname):>40:8 '</tt></td><td align=right><b><tt>'  objB(modelname):>20:8 '</tt></b></td>'/;                 
               else
                  put '<td align=right><tt>' objA(modelname):>40:8 '</tt></td><td align=right><tt>' objB(modelname):>20:8 '</tt></td>'/;
               );                  
               put '</tr>' ; 
            ); 

         elseif( not( sameas(resultA,"opt") or sameas(resultA,"integ")  ) and ( sameas(resultB,"opt") or sameas(resultB,"integ") )  ), 
            put '<td align=right><tt>mstat(' modstatA(modelname):>2:0  ') sstat(' solstatA(modelname):>2:0  ')</tt></td>';
            put '<td align=right><tt><b>' objB(modelname):>20:8  '</b></tt></td>'
                '</tr>';        
         elseif( ( sameas(resultA,"opt") or sameas(resultA,"integ") ) and not( sameas(resultB,"opt") or sameas(resultB,"integ")  ) ), 
            put '<td align=right><tt><b>' objA(modelname):>20:8  '</b></tt></td>'
            put '<td align=right><tt>mstat(' modstatB(modelname):>2:0  ') sstat(' solstatB(modelname):>2:0  ')</tt></td>'
                '</tr>';      
         else
            put '<td align=right><tt>mstat(' modstatA(modelname):>2:0  ') sstat(' solstatA(modelname):>2:0  ')</tt></td>';
            put '<td align=right><tt>mstat(' modstatB(modelname):>2:0  ') sstat(' solstatB(modelname):>2:0  ')</tt></td>' 
                '</tr>';        
         );  

      );

   );

   if(not doheader,
      put / '</tr></table>' 
      put / '<p align=right><a href="#top">Back to top</a></p>'
      put / '<br><br><hr><br>' ///; 
   );

);




*=== Output result totals for solver A outcome 
loop( resultA,

   doheader = yes;

   loop( (m(modelname),solverA),      
     
      if ( mstat(modelname,solverA,resultA),

         if(doheader,
            put / '<a name="solverA' resultA.tl:0 '">'; 
            put / '<h4>'solverA.tl:10 ': '
                   resultA.te(resultA):>25  ':'
                  '&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top</a></h4>'/;

            put / '<table width="100%" border=1>'
            put / '<tr>'
               
            put /  '   <td align=left><b>Modelname</b></td>'                
                /  '   <td align=right><b>' solverA.tl:>10 '</b></td>'
                   
            if( not (sameas(resultA,"opt") or sameas(resultA,"integ") ),
               put /  '   <td align=right><b>Status ('solverA.tl:0') </b></td>';
            else
               put /  '   <td align=right><b>Obj ('solverA.tl:0') </b></td>';
            );
                   

            put /  '</tr>';

            doheader = no;
         );  
*        === end "if(doheader," loop


         put / '<tr>'
               '<td align=left><tt>' modelname.tl:15 '</tt></td>';
         put   '<td align=right><tt>' resA(modelname):>15:4 '</tt></td>' /;
 

*        === Output objective values 
         if( (sameas(resultA,"opt") or sameas(resultA,"integ")),
            put '<td align=right><b><tt>' objA(modelname):>40:8 '</tt></b>'/;
         else
            put '<td align=right><tt>mstat(' modstatA(modelname):>2:0  ') sstat(' solstatA(modelname):>2:0  ')</tt></td></tr>';   
         )              

      );
   );  


    


   if(not doheader,
      put / '</tr></table>' 
      put / '<p align=right><a href="#top">Back to top</a></p>'
      put / '<br><br><hr><br>' ///; 
   );
 
);



*=== Output result totals for solver B outcome 
loop( resultB,

   doheader = yes;

   loop( (m(modelname),solverB),      
     
      if ( mstat(modelname,solverB,resultB),

         if(doheader,
            put / '<a name="solverB' resultB.tl:0 '">'; 
            put / '<h4>'solverB.tl:10 ': '
                   resultB.te(resultB):>25  ':'
                  '&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top</a></h4>'/;

            put / '<table width="100%" border=1>'
            put / '<tr>'
               
            put /  '   <td align=left><b>Modelname</b></td>'                
                /  '   <td align=right><b>' solverB.tl:>10 '</b></td>'
                   
            if( not (sameas(resultB,"opt") or sameas(resultB,"integ") ),
               put /  '   <td align=right><b>Status ('solverB.tl:0') </b></td>';
            else
               put /  '   <td align=right><b>Obj ('solverB.tl:0') </b></td>';
            );
                   

            put /  '</tr>';

            doheader = no;
         );  
*        === end "if(doheader," loop


         put / '<tr>'
               '<td align=left><tt>' modelname.tl:15 '</tt></td>';
         put   '<td align=right><tt>' resB(modelname):>15:4 '</tt></td>' /;
 

*        === Output objective values 
         if( (sameas(resultB,"opt") or sameas(resultB,"integ")),
            put '<td align=right><b><tt>' objA(modelname):>40:8 '</tt></b>'/;
         else
            put '<td align=right><tt>mstat(' modstatB(modelname):>2:0  ') sstat(' solstatB(modelname):>2:0  ')</tt></td></tr>';   
         )              

      );
   );  
 

   if(not doheader,
      put / '</tr></table>' 
      put / '<p align=right><a href="#top">Back to top</a></p>'
      put / '<br><br><hr><br>' ///; 
   );
 
);




put / '</body>'
    / '</html>';


putclose fhtm;



*=== Warning message if more than two solvers defined in trace file
file fput /solvers.tmp/;
put fput "--- ";

if (card(solvers) > 2,
  loop(solvers,
     put fput solvers.tl:0 "  ";
  );
  execute "echo ---"
  execute "echo --- WARNING: more than two solvers defined in trace files."
  execute "echo ---          Results may not be what you intend."
  execute "echo ---          Solvers defined are:"
  execute "head solvers.txt"
  execute "echo ---"
);

putclose fput;
execute "rm solvers.tmp"
