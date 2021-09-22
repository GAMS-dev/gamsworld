$ontext ==================================================================

LAST MODIFIED:  17 July, 2002

FILENAME: restimeall.gms

PURPOSE:  Creates two tables of comparative solve resource times of 
          two solvers. One table considers those models where an 
          optimal solution has been found and the other considers 
          all models in the trace files. Both tables output model 
          resource times. For the first table, optimal is defined 
          as modelstat=1 or 2,  solvestat=1. For the second, if 
          one solver found a solution, but the other did not, the 
          first solver is considered infinitely faster. If both 
          failed to find a solution, then the resource times 
          are considered the same.

          Also, each resource time category (same, faster, much 
          faster, etc. is subdivided into subcategories, comparing 
          objective function values.  

          Output is in .txt or in .html files. Also lists models 
          for each resource time category.

          Works for LP, NLP, and MIP modeltypes.

REQUIRED INPUTS:   
          --trace1:  trace file of solver 1
          --trace2:  trace file of solver 2

OPTIONAL INPUTS:
          --bnd:     real. Bound for optimal outcome. Outcome is 
                     optimal if both solvers 
                     scaled solutions are within bnd of eachother. 
                     (default: 1e-5) 
          --modelfile: modelfile containing models to be considered 
                     in comparison
          --outfile: root filename of restimes output file (default 
                     is out --> out_resA.txt, out_resB.txt, out_resA.htm,
                     out_resB.htm)
          --resmin:  minimum resource time threshold. If both solvers
                     report a resource time below --resmin, then no 
                     ratio is reported. In this case, both solver 
                     times are considered the same (default 0.05).
          --tsame:   bound in % for solver res. times to be considered 
                     same (default 10%)
          --tfaster: bound in % for solver res. times to be considered 
                     much faster (default 50%)

REMARKS:  Each tracefile can contain information from only one (1) 
          solver for a given set of models. For example, tracefiles 
          containing solver A and solver B will cause error message 
          upon compilation.

SAMPLE OUTPUT:

               Solvers used : A, B

               Solver A much faster          :      1
               Solver B faster               :     28
               Solvers perform the same      :     31
               Solver A faster               :    184
               Solver B much faster          :     40

               Total models solved optimally :    284


$offtext =================================================================


*=== Error checks
$if not set trace1     $goto errors_notrace1
$if not set trace2     $goto errors_notrace2
$if not exist %trace1% $goto errors_trace1notexist
$if not exist %trace2% $goto errors_trace2notexist


*=== Set defaults
$if not set bnd        $set  bnd 1e-5
$if not set outfile    $set  outfile out
$if not set modelfile  $goto nomodelfile




*=== If only the subset of models as listed in "modelfile" is to be 
*=== analyzed
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
$if not set resmin  $set resmin  5e-2
$if not set tsame   $set tsame   10
$if not set tfaster $set tfaster 50


*=== Possible solver outcomes
Set all_results /opt    "optimal",   
                 integ  "integer sol.", 
                 inter  "interrupt (time or iter.)",           
	         infes  "infeasible",
                 unbnd  "unbounded",   
	         f      "fail"           
/;

Set result_cont(all_results) "possible results for cont. models"
    result_mip (all_results) "possible results for discrete models"
;
result_cont("opt")   = yes;
result_cont("infes") = yes;
result_cont("unbnd") = yes;
result_cont("inter") = yes;
result_cont("f")     = yes;

result_mip("opt")    = yes;
result_mip("integ")  = yes;
result_mip("infes")  = yes;
result_mip("unbnd")  = yes;
result_mip("f")      = yes;


Parameter is_discrete/0/;
Set discrete_mods / MIP, MINLP/;
loop(modeltype,
   is_discrete = sum(discrete_mods, sameas(modeltype, discrete_mods));
);



Set result(*), resultA(*), resultB(*);

if(is_discrete,
   result(result_mip) = yes;
   resultA(result_mip) = yes;
   resultB(result_mip) = yes;
else
   result(result_cont) = yes;
   resultA(result_cont) = yes;
   resultB(result_cont) = yes;
);



Parameter solvernum /0/
          nummodels /0/
          ratio /0/;


Alias(solvers,solvername)
Parameter square(*,*,*)   GAMS solver results;
square(modelname,solvername,result) = 0;


*=== Determine solvers in tracefiles
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

*=== Compute totals
Parameter scale(*)   "this is the scaling factor"
          optimal(*) "this is 1 if optimal solution found"
          error(*)   "relative error between solutions of A and B"
;
   
Parameter bound       "relative objc func difference threshold" 
              / %bnd% /
          resourcemin "min resource time threshold for ratio"   
              / %resmin%/
;


*=== Determine scale
loop((modelname,modeltype,nlpdef,mipdef),
   scale(modelname) = max(smax(solvername, abs(tracedata(modelname,modeltype,
                               solvername,nlpdef,mipdef,"obj"))), 1e-4);
);

*=== Determine error
loop((modelname,modeltype,nlpdef,mipdef),
   error(modelname) = abs( sum(solverA,
        tracedata(modelname,modeltype,solverA,nlpdef,mipdef,"obj"))
      - sum(solverB,
        tracedata(modelname,modeltype,solverB,nlpdef,mipdef,"obj")) ) 
        / scale(modelname);
);


Parameter modstat /0/;
Parameter solstat /0/;

loop( (modelname,modeltype,solvername,nlpdef,mipdef)
    $tracedata(modelname,modeltype,solvername,nlpdef,mipdef,'modelstat'),
    modstat = 
        tracedata(modelname,modeltype,solvername,nlpdef,mipdef,'modelstat');
    solstat = 
        tracedata(modelname,modeltype,solvername,nlpdef,mipdef,'solvestat');

*=== Assign DISCRETE model square only if data exists
    if(is_discrete,
       if( (modstat=1 or modstat=8) and solstat=1,
          square(modelname,solvername,"opt") = yes;
       elseif( (modstat=4 or modstat=10 or modstat=19) and solstat=1),
          square(modelname,solvername,"infes") = yes;
       elseif( modstat=8 and (solstat=2 or solstat=3 or solstat=4 )),
          square(modelname,solvername,"integ") = yes;
       elseif( (modstat=3 or modstat=18) and solstat=1  ),
          square(modelname,solvername,"unbnd") = yes;
       else
          square(modelname,solvername,"f") = yes;
       );
*=== Assign CONTINUOUS model square only if data exists
    else
       if( (modstat=1 or modstat=2) and solstat=1,
          square(modelname,solvername,"opt") = yes;
       elseif( (modstat=4 or modstat=5 or modstat=19) and solstat=1),
          square(modelname,solvername,"infes") = yes;
       elseif( (modstat=3 or modstat=19) and solstat=1), 
          square(modelname,solvername,"unbnd") = yes;
       elseif( solstat=2 or solstat=3 ),
          square(modelname,solvername,"inter") = yes;
       else
          square(modelname,solvername,"f")   = yes;
       );
   );
);




*=========================================================================
*=== Create type 1 output: considers only models solved optimally 
*=== by both solvers
*=========================================================================


*=== Compute result total

*=== Compute models which were solved succesfully by both solvers
set bothsolve(*);
bothsolve(modelname) = no;
parameter tmpA, tmpB;
loop(modelname,
   bothsolve(modelname) = yes$( 
               sum(solverA, square(modelname,solverA,'opt'))
               and sum(solverB,square(modelname,solverB,'opt'))  );
);


Set restype  /Aifaster  "Solver A infinitely faster",
              Amfaster  "Solver A much faster",
              Afaster   "Solver A faster",
              same      "Solvers perform same on optimally solved models",
              Bfaster   "Solver B faster",
              Bmfaster  "Solver B much faster",
              Bifaster  "Solver B infinitely faster"
              ABnonopt  "Both solvers failed to solve optimally"
/;

Set objtype / ObjAbet   "Solver A has better solution"
              Objsame   "Solvers both return optimal solution"
              ObjBbet   "Solver B has better solution"
/;


Parameter  res_same     "times within tsame %"
           res_faster   "times within tfaster %"
;
           res_same =   0.01*%tsame%;
           res_faster = 0.01*%tfaster%;


*==== Extract resource times
Parameter 
   restimes(restype)       "resource times by category", 
   modelrestime(*,restype) "resource times by model and category",
   modelresobj(*,restype,objtype) "resource times",
   resdiff                 "difference in resource times", 
   resA(*)                 "resource times for solver A", 
   resB(*)                 "resource times for solver B",
   objA(*)                 "objective value using solver A",
   objB(*)                 "objective value using solver B",
   objdiff                 "difference in obj value",
   dir(*)                  "direction of optimization: 0=min 1=max"
;


modelrestime(modelname,restype) = 0;
restimes(restype) = 0;

loop( (modelname,modeltype,solverA,nlpdef,mipdef)$m(modelname),

   modstat = 
        tracedata(modelname,modeltype,solverA,nlpdef,mipdef,'modelstat');
   solstat = 
        tracedata(modelname,modeltype,solverA,nlpdef,mipdef,'solvestat');

   if( modstat and solstat,
      resA(modelname) = 
         tracedata(modelname,modeltype,solverA,nlpdef,mipdef,'res');
      objA(modelname) = 
         tracedata(modelname,modeltype,solverA,nlpdef,mipdef,'obj');
      dir(modelname)  = 
         tracedata(modelname,modeltype,solverA,nlpdef,mipdef,'direction');
   );
);


loop( (modelname,modeltype,solverB,nlpdef,mipdef)$m(modelname),

   modstat = tracedata(modelname,modeltype,solverB,nlpdef,mipdef,'modelstat');
   solstat = tracedata(modelname,modeltype,solverB,nlpdef,mipdef,'solvestat');

   if (modstat and solstat,
      resB(modelname) = 
         tracedata(modelname,modeltype,solverB,nlpdef,mipdef,'res');
      objB(modelname) = 
         tracedata(modelname,modeltype,solverB,nlpdef,mipdef,'obj');
    );
);


loop(modelname,
   objdiff(modelname) = ( objA(modelname)-objB(modelname) ) 
        / max( abs(objA(modelname)), abs(objB(modelname)), bound); 
);



loop(bothsolve(modelname)$m(modelname),
   resdiff = (resA(modelname) - resB(modelname))
             / max(abs(resA(modelname)), abs(resB(modelname)), 1e-5 );

*=== Solver B much faster
   if ( resdiff > res_faster,
         restimes("Bmfaster") =    restimes("Bmfaster") + 1;
         modelrestime(modelname,"Bmfaster") = yes;
   );
*=== Solver B faster
   if ( (res_same < resdiff and resdiff <= res_faster),
         restimes("Bfaster")  =    restimes("Bfaster") + 1;
         modelrestime(modelname,"Bfaster") = yes;
   );
*=== Res times are the same
   if ( (-res_same < resdiff and resdiff <= res_same),
         restimes("same")     =    restimes("same") + 1;
         modelrestime(modelname,"same") = yes;
   );
*=== Solver A faster
   if ( (res_same < -resdiff and -resdiff <= res_faster),
         restimes("Afaster")  =    restimes("Afaster") + 1;
         modelrestime(modelname,"Afaster") = yes;
   );
*=== Solver A much faster
   if ( -resdiff > res_faster,
         restimes("Amfaster") =    restimes("Amfaster") + 1;
         modelrestime(modelname,"Amfaster") = yes;
   );
);


*=== Disaggregate resource time categories by objective function 
*=== categories
loop( (modelname,restype)$modelrestime(modelname,restype),
   
*  === Maximize objective function
   if (dir(modelname),
      if (objdiff(modelname) > bound,
         modelresobj(modelname,restype,"ObjAbet") = yes;
      elseif(-objdiff(modelname) > bound ),
         modelresobj(modelname,restype,"ObjBbet") = yes;
      else
         modelresobj(modelname,restype,"Objsame") = yes;
      )
   
*  === Minimize objective function   
   else
      if (-objdiff(modelname) > bound,
         modelresobj(modelname,restype,"ObjAbet") = yes;
      elseif(objdiff(modelname) > bound),
         modelresobj(modelname,restype,"ObjBbet") = yes;
      else
         modelresobj(modelname,restype,"Objsame") = yes;
      )

   );
);




*===
*=== Create HTML file 
*===

file fresA_htm /%outfile%_resA.htm/;
put fresA_htm;


put / '<html> <head> <title>Resource Time Comparison - Optimally '
      'Solved Models</title>' 
    / '<body bgcolor="#ffffff">'
    / '<font face="Arial, Helvetica, sans-serif">';
 
fresA_htm.nr = 2;

put   '<h2>Table A:&nbsp&nbsp  Considers only models solved optimally '
      'by both solvers. </h2>' /
    / 'Total resource time for models solved optimally by solver A '
      'and solver B.<br><br>'
if(bound = inf,
   put    / 'See the <a href="#SquareDef">solver return definitions</a>'
          / 'for optimal model and solve statuses.'
            'Solutions are not'/
   put      'checked for how close they are to eachother.' //;
else
   put    / 'See the <a href="#SquareDef">solver return definitions</a>'
          / 'for optimal model and solve statuses. '
          / 'Solutions are not checked for how close they are '
          / 'to oneanother.';
);

fresA_htm.nr = 1;

put / 'Resource times are considered the same, if they are within ' 
       %tsame%:0:0 '%' /
      'of eachother. A solver is considered faster than another, if '
      'it is less ' /
      'than ' %tfaster%:0:0 '% faster than the other. A solver is '
      'considered much' /
      'faster than another, if it is more than ' %tfaster%:0:0 '% '
      'faster than the ' /
      'other.' //;

fresA_htm.nr = 2;

put / '<br><br>'
    / 'A solver is considered to have a better objective function '
      'value, if the '
    / 'relative objective value difference is greater than ' 
       bound:0:2 '.' //; 

fresA_htm.nr = 1;

put / '<br><br>'
    / '<table width="75%" border=1>'
    / '<tr><td align=left><b>Tracefile 1  :</b></td><td align=right>'      
      '<tt>%trace1%</tt></td></tr>' 
    / '<tr><td align=left><b>Tracefile 2  :</b></td><td align=right>'
      '<tt>%trace2%</tt></td></tr>' 
    / '<tr><td align=left><b>Solvers used :</b></td> ';

solvernum = 0;
loop(solvers,
   solvernum = solvernum+1;
   put$(solvernum eq 1) '<td align=right><tt>' solvers.tl:0 '</tt>'
                        '</td></tr>';
   put$(solvernum eq 2) '<tr><td></td><td align=right><tt>' 
                         solvers.tl:0 '</tt></td></tr>' ;
);

put / '   <tr><td align=left><b>Modeltype(s)</b></td> '
             '<td align=right>';
loop(modeltype,
   put ' &nbsp ' modeltype.tl:0 
);
put '</td></tr>';
put / '</table>'
put / '<br><br>' //


put / '<table width="75%" border=1>';
  
put '<tr><td></td><td><b>Total</b></td>';
loop(objtype,
   put / '   <td align=right><b>'; 
   if ( sameas(objtype,"ObjAbet"),
      put 'Obj. ';
      loop(solverA, put solverA.tl ); 
      put 'better </b></td>';
   elseif ( sameas(objtype,"Objsame") ),
      put 'Obj. same </b></td>';
   else
      put 'Obj. ';
      loop(solverB, put solverB.tl ); 
      put 'better </b></td>';  
   );
);
put / '</tr>'/;

solvernum = 0;

loop(solvers,
  solvernum = solvernum+1;
  if((solvernum eq 1),
       put  / '<tr>';
       put  / '   <td align=left>Solver ' solvers.tl:8 
              ' much faster       :</td>';
       put  / '   <td align=right>';
       if (restimes("Amfaster"),
           put '<a href="#Amfaster"><tt>' restimes("Amfaster"):>6:0 
               '</tt></a></td>';
       else
           put '- </td>';
       );
       loop(objtype,
          nummodels =  sum(modelname, 
              modelresobj(modelname,"Amfaster",objtype));
          put$nummodels / '   <td align=right><a href=#Amfaster' objtype.tl:0 '><tt>'  nummodels:>10:0 '</tt></a></td>';
          put$(not nummodels) / '   <td align=right> - </td>';
       );
       put / '</tr>';
  );
  if((solvernum eq 1),
       put  /  '<tr>'
       put  /  '   <td align=left>Solver ' solvers.tl:8 
               ' faster       :</td>';
       put  /  '   <td align=right>';
       if (restimes("Afaster"),
           put '<a href="#Afaster"><tt>' restimes("Afaster"):>6:0 
               '</tt></a></td>';
       else
           put '- </td>';
       );
       loop(objtype,
          nummodels =  sum(modelname, 
              modelresobj(modelname,"Afaster",objtype));
          put$nummodels  / '   <td align=right><a href=#Afaster' 
              objtype.tl:0 '><tt>'  nummodels:>10:0 '</tt></a></td>';
          put$(not nummodels) / '   <td align=right> - </td>'; 
       );
       put / '</tr>';
  );
  if((solvernum eq 1),
       put  /  '<tr>'
       put  /  '   <td align=left>Solvers perform the same:</td>';
       put  /  '   <td align=right>';
       if (restimes("same"),
           put '<a href="#same"><tt>' restimes("same"):>6:0 '</tt></a></td>';
       else
           put '- </td>';
       );
       loop(objtype,
          nummodels =  sum(modelname, 
              modelresobj(modelname,"same",objtype));
          put$nummodels / '   <td align=right><a href=#same' 
              objtype.tl:0 '><tt>'  nummodels:>10:0 '</tt></a></td>';
          put$(not nummodels) / '   <td align=right> - </td>'; 
       );
       put / '</tr>';
  );
  if((solvernum eq 2),
       put  /  '<tr>';
       put  /  '   <td align=left>Solver ' solvers.tl:8 
               ' faster            :</td>';
       put  /  '   <td align=right>'
       if (restimes("Bfaster"),
           put '<a href="#Bfaster"><tt>' restimes("Bfaster"):>6:0 
               '</tt></a></td>';
       else
           put '- </td>';
       );
       loop(objtype,
          nummodels =  sum(modelname, 
             modelresobj(modelname,"Bfaster",objtype));
          put$nummodels / '   <td align=right><a href=#Bfaster' 
             objtype.tl:0 '><tt>'  nummodels:>10:0 '</tt></a></td>';
          put$(not nummodels) / '   <td align=right> - </td>'; 
       );
       put / '</tr>';
  );
  if((solvernum eq 2),
       put  /  '<tr>'
       put  /  '   <td align=left>Solver ' solvers.tl:8 ' much faster :</td>';
       put  /  '   <td align=right>';
       if (restimes("Bmfaster"),
           put '<a href="#Bmfaster"><tt>' restimes("Bmfaster"):>6:0 
               '</tt></a></td>';
       else
           put '- </td>';
       );
       loop(objtype,
          nummodels =  sum(modelname, 
              modelresobj(modelname,"Bmfaster",objtype));
          put$nummodels / '   <td align=right><a href=#Bmfaster' 
              objtype.tl:0 '><tt>'  nummodels:>10:0 '</tt></a></td>';
          put$(not nummodels) / '   <td align=right> - </td>'; 
       );
       put / '</tr>';
  );
);

put / '</tr>'
put / '<tr>'
put / '   <td align=left>';
put / 'Total models solved optimally':0 ' :</td><td align=right><b><tt>'
       sum(restype, restimes(restype)):>6:0 '</tt></b></td>';

loop(objtype,
   nummodels = sum( (modelname,restype), 
        modelresobj(modelname,restype,objtype) );
   put$nummodels / '   <td align=right><b><tt> ' nummodels:>10:0 
        '</tt></b></td>';
   put$(not nummodels) / '   <td align=right> - </td>'; 
);   
put / '</tr>';
put / '</table>';


put // '<br><br><hr><br>' ;
put / '<h3><a name="SquareDef">Solver return definition:</a></h3>' 
    / '<table width="50%" border=1>';
if(is_discrete,
    put / '   <tr><td align=left><b>Outcome</b></td><td align=right>'
          '<b>Model Status</b></td>'
          '<td align=right><b>Solver Status</b></td> </tr>'
        / '   <tr><td align=left>optimal</td><td align=right> 1 or 8 '
          '</td><td align=right> 1 </td> </tr>'
else
    put / '   <tr><td align=left><b>Outcome</b></td><td align=right>'
          '<b>Model Status</b></td>'
          '<td align=right><b>Solver Status</b></td> </tr>'
        / '   <tr><td align=left>optimal</td><td align=right> 1 or 2'
          '</td><td align=right> 1 </td> </tr>'
);
put / '</table>' //



put // '<br><br><hr><br>' ;
put / '<h3>Resource Times:</h3>'; 
put / 'Resource times (as in trace file) listed in seconds.';

fresA_htm.nr = 2;

put / '<ul>'
    / '<li>Models for each resource time category. Listed are the '
      'solver resource times in'
    / ' seconds, as well as the ratio of resource times for the two '
      'solvers if both solved optimally.' 
    / '<li>Also listed are the objective values using both solvers. '
      'The better solution found is listed'
    / 'in boldface. A solution is considered better, if the relative '
      'objective function difference is'
    / ' greater than ' bound:0 '.'  
    / '<li>Solver resource time ratios for a particular model are '
      'listed only if both solvers are optimal '
    / 'and if one solver has resource time greater than ' resourcemin '.' 
    / '</ul>' //;

fresA_htm.nr = 1;


put / '<p><hr><p>';

loop((restype,objtype),

   if(sum(modelname,modelresobj(modelname,restype,objtype)),
      if (sameas(restype,"Amfaster"),
         put // '<a name=' restype.tl:0 objtype.tl:0 '></a>';
         put / '<h4><a name="Amfaster">Solver ';
         loop(solverA, put solverA.tl:0);
         put ' much faster - ';
         if ( sameas(objtype,"ObjAbet"),
            put ' Obj of ';
            loop(solverA, put solverA.tl:0);
            put ' better:';   
         elseif( sameas(objtype,"Objsame") ),
            put ' Obj same for both solvers: ';
         elseif( sameas(objtype,"ObjBbet")),
            put ' Obj of ';
            loop(solverB, put solverB.tl:0);
            put ' better:';                  
         );
         put ' </a>&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top'
             '</a></h4>' /;
      elseif( sameas(restype,"Afaster")),
         put // '<a name=' restype.tl:0 objtype.tl:0 '></a>';
         put / '<h4><a name="Afaster">Solver ';
         loop(solverA, put solverA.tl:0);
         put ' faster - ';
         if ( sameas(objtype,"ObjAbet"),
            put ' Obj of ';
            loop(solverA, put solverA.tl:0);
            put ' better:';   
         elseif( sameas(objtype,"Objsame") ),
            put ' Obj same for both solvers: ';
         elseif( sameas(objtype,"ObjBbet") ),
            put ' Obj of ';
            loop(solverB, put solverB.tl:0);
            put ' better:';                  
         );
         put '</a>&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top'
             '</a></h4>' /;
      elseif( sameas(restype,"same")),
         put // '<a name=' restype.tl:0 objtype.tl:0 '></a>';
         put / '<h4><a name="same">Solvers perform the same  -';
         if ( sameas(objtype,"ObjAbet"),
            put ' Obj of ';
            loop(solverA, put solverA.tl:0);
            put ' better:';   
         elseif( sameas(objtype,"Objsame") ),
            put ' Obj same for both solvers: ';
         elseif( sameas(objtype,"ObjBbet")),
            put ' Obj of ';
            loop(solverB, put solverB.tl:0);
            put ' better:';                  
         );
         put '</a>&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top'
             '</a></h4>' /;
      elseif( sameas(restype,"Bfaster")),
         put // '<a name=' restype.tl:0 objtype.tl:0 '></a>';
         put / '<h4><a name="Bfaster">Solver ';
         loop(solverB, put solverB.tl:0);
         put ' faster - ';
         if ( sameas(objtype,"ObjAbet"),
            put ' Obj of ';
            loop(solverA, put solverA.tl:0);
            put ' better:';   
         elseif( sameas(objtype,"Objsame") ),
            put ' Obj same for both solvers: ';
         elseif( sameas(objtype,"ObjBbet") ),
            put ' Obj of ';
            loop(solverB, put solverB.tl:0);
            put ' better:';                  
         );
         put '</a>&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top'
             '</a></h4>' /;
      elseif( sameas(restype,"Bmfaster")),
         put // '<a name=' restype.tl:0 objtype.tl:0 '></a>';
         put / '<h4><a name="Bmfaster">Solver ';
         loop(solverB, put solverB.tl:0);
         put ' much faster - ';
         if ( sameas(objtype,"ObjAbet"),
            put ' Obj of ';
            loop(solverA, put solverA.tl:0);
            put ' better:';   
         elseif( sameas(objtype,"Objsame") ),
            put ' Obj same for both solvers: ';
         elseif( sameas(objtype,"ObjBbet")),
            put ' Obj of ';
            loop(solverB, put solverB.tl:0);
            put ' better:';                  
         );
         put '</a>&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top'
             '</a></h4>' /;
      );


      put / '<table width="100%" border=1>'
          / '<tr>'
          / '   <td align=left><b>Modelname</b></td>'
      loop(solverA, put / '   <td align=right><b>' solverA.tl:>15 
            '</b></td>');
      loop(solverB, put / '   <td align=right><b>' solverB.tl:>15 
            '</b></td>');
      put '   <td align=right><b>Ratio (';
      loop(solverA, put solverA.tl:0 ' / ');
      loop(solverB, put solverB.tl:0 ')' );
      put   '</b></td>';
      loop(solverA, put '<td align=right><b>Obj ' solverA.tl:0 
            '</b></td>');
      loop(solverB, put '<td align=right><b>Obj ' solverB.tl:0 
            '</b></td>');
      put   /  '</tr>' ;
   );

   loop(modelname$modelresobj(modelname,restype,objtype),
      put / '<tr>'
            '<td align=left><tt>' modelname.tl:15 '</tt></td>'
            '<td align=right><tt>' resA(modelname):0:4 '</tt></td>'
            '<td align=right><tt>' resB(modelname):0:4 '</tt></td>' ;

      if( resA(modelname) > 1e-5 and resB(modelname) < 1e-5,
          ratio = inf;
      elseif( resA(modelname) < 1e-5 and resB(modelname) < 1e-5),
          ratio =1;
      else
          ratio = resA(modelname) / resB(modelname);
      );

      if(resA(modelname) < resourcemin and resB(modelname) < resourcemin,
         put '<td align=right><tt>---</tt></td>';
      elseif (ratio = inf),
         put '<td align=right><tt>' ratio:0 '.000 </tt></td>';
      else
         put  '<td align=right><tt>' ratio:0:3  '</tt></td>';             
      );


      fresA_htm.nr=2;

      if (sameas(objtype,"ObjAbet"),
         put / '   <td align=right><b><tt>' ObjA(modelname):>25:8 
               '</tt></b></td><td align=right><tt>' ObjB(modelname):>20:8 
               '</tt></td>' /;
      elseif(sameas(objtype,"ObjBbet")),
         put / '   <td align=right><tt>' ObjA(modelname):>25:8 
               '</tt></td><td align=right><b><tt>' ObjB(modelname):>20:8 
               '</tt></b></td>' /;
      else
         put / '   <td align=right><tt>' ObjA(modelname):>25:8 
               '</tt></td><td align=right><tt>' ObjB(modelname):>20:8 
               '</tt></td>' /;
      );

      put  '</tr>';

      fresA_htm.nr = 1;

   );


   if(sum(modelname,modelresobj(modelname,restype,objtype)),
      put / '</table>';
      put / '<p align=right><a href="#top">Back to top</a></p>'
      put / '<hr><br>' /;
   );

);


put / '</body>'
       / '</html>';
putclose fresA_htm;



*=========================================================================
*=== Create square 2: considers all models
*=========================================================================

*=== Compute models which were solved succesfully by one solver only
set onesolve(*,*);
onesolve(modelname,solvers) = no;
loop(modelname$(not bothsolve(modelname) and m(modelname)),
   onesolve(modelname,solverA) = yes$(square(modelname,solverA,'opt')
        and not sum(solverB, square(modelname,solverB,'opt'))  );
   onesolve(modelname,solverB) = yes$(square(modelname,solverB,'opt')
        and not sum(solverA, square(modelname,solverA,'opt'))  );
);


*=== Compute models which were not solved succesfully by any solver
set nosolve(*);
nosolve(modelname) = no;
loop(m(modelname)$(not bothsolve(modelname) and 
       not sum(solvers,onesolve(modelname,solvers))),
   nosolve(modelname) = yes;
);


*=== Compute result total
modelrestime(modelname,"Aifaster") = no;
modelrestime(modelname,"Bifaster") = no;
modelresobj(modelname,"Aifaster",objtype) = no;
modelresobj(modelname,"Bifaster",objtype)=no;

loop( onesolve(m(modelname),solvers),
   if(sum(solverA,onesolve(m,solverA)),
      restimes("Aifaster") =    restimes("Aifaster") + 1;
      modelrestime(modelname,"Aifaster") = yes;
      modelresobj(modelname,"Aifaster","ObjAbet") = yes;
   elseif(sum(solverB,onesolve(m,solverB))),
      restimes("Bifaster") =    restimes("Bifaster") + 1;
      modelrestime(modelname,"Bifaster") = yes;
      modelresobj(modelname,"Bifaster","ObjBbet") = yes;
   );
);


loop( nosolve(modelname),
   restimes("ABnonopt") = restimes("ABnonopt") + 1;
   modelrestime(modelname,"ABnonopt") = yes;
   modelresobj(modelname,"ABnonopt","Objsame") = yes;
);



res_same   = res_same*100;
res_faster = res_faster*100;



*===
*=== Create HTML file 
*===

file fresB_htm /%outfile%_resB.htm/;
put fresB_htm;



put / '<html> <head> <title>Resource Time Comparison - All Models</title>' 
    / '<body bgcolor="#ffffff">'
    / '<font face="Arial, Helvetica, sans-serif">';
  
put / '<h2>Table B:&nbsp&nbsp  Considers all models. </h2>' /
    / 'Total resource time for all models.<br><br>' /
put / 'See the <a href="#SquareDef">solver return definitions</a>'
    / 'for optimal model and solve statuses.'
    / ' Solutions are not checked for how close they are to eachother.' /;

fresB_htm.nr = 0;


put / 'Resource times are considered the same, if they are within ' 
      %tsame%:2:0 '%' /
      'of eachother. A solver is considered faster than another, '
      'if it is less ' /
      'than ' %tfaster%:2:0 '% faster than the other. A solver is '
      'considered much' /
      'faster than another, if it is more than ' %tfaster%:2:0 
      '% faster than the ' /
      'other.<br><br>' /

put / 'If a model was not solved optimally by both solvers, the '
      'resource time is '/
      'considered the same. If a model was solved optimally by '
      'solver A but not by' /
      'solver B, then solver A is considered infinitely faster '
      'than solver B.'/;

fresB_htm.nr = 2;

put / '<br><br>'
    / 'A solver is considered to have a better objective function '
      'value, if the '
    / 'relative objective value difference is greater than ' 
       bound:0:2 '.'  //; 

fresB_htm.nr = 1;

put / '<br><br>'
    / '<table width="75%" border=1>'
    / '   <tr><td align=left><b>Tracefile 1  :</b></td><td align=right>'
         '<tt>%trace1%</tt></td></tr>' 
    / '   <tr><td align=left><b>Tracefile 2  :</b></td><td align=right>'    
         '<tt>%trace2%</tt></td></tr>' 
    / '   <tr><td align=left><b>Solvers used :</b></td> ';

solvernum = 0;
loop(solvers,
   solvernum = solvernum+1;
   put$(solvernum eq 1) '<td align=right><tt>' solvers.tl:0 
       '</tt></td></tr>';
   put$(solvernum eq 2) / '   <tr><td></td><td align=right><tt>' 
        solvers.tl:0 '</tt></td></tr>' ;
);

put / '   <tr><td align=left><b>Modeltype(s)</b></td> '
             '<td align=right>';
loop(modeltype,
   put ' &nbsp ' modeltype.tl:0 
);
put '</td></tr>';
put / '</table>'
put / '<br><br>' //;

put / '<table width="75%" border=1>';
put / '<tr>'
    / '   <td></td><td><b>Total</b></td>';

loop(objtype,
   if (sameas(objtype,"ObjAbet"),
      put / '   <td align=right><b>Obj ';
      loop(solverA, put solverA.tl:0);
      put ' better</b></td>';
   elseif(sameas(objtype,"ObjBbet")),
      put / '   <td align=right><b>Obj ';
      loop(solverB, put solverB.tl:0);
      put ' better</b></td>';
   else
      put / '   <td align=right><b>Obj same</b></td>';
   );
);  
put / '</tr>';   

solvernum = 0;
loop(solvers,
  solvernum = solvernum+1;
  if((solvernum eq 1),
      put  /  '<tr>'
           /  '   <td align=left>Solver ' solvers.tl:8  
              'infinitely faster :</td><td align=right>'
      if(restimes("Aifaster"),
         put  '<a href="#Aifaster"><tt>' restimes("Aifaster"):>6:0 
              '</tt></a></td>';
      else
         put  '-</td>';
      );
      loop(objtype,
         nummodels = sum(modelname, 
               modelresobj(modelname,"Aifaster",objtype) );
         if (nummodels,
            put  / '   <td align=right><a href="#Aifaster' 
                 objtype.tl:0  '"><tt>' nummodels:0:0 '</tt></a></td>';
         else
            put  / '   <td align=right> - </td>';    
         );
      );
      put / '</tr>';
  );
  if((solvernum eq 1),
      put  /   '<tr><td align=left>Solver ' solvers.tl:8 
               ' much faster :</td><td align=right>'
      if(restimes("Amfaster"),
         put   '<a href="#Amfaster"><tt>' restimes("Amfaster"):>6:0 
               '</tt></a>';
      else
         put  '-';
      );
      loop(objtype,
         nummodels = sum(modelname, 
            modelresobj(modelname,"Amfaster",objtype) );
         if (nummodels,
            put  / '   <td align=right><a href="#Amfaster' objtype.tl:0 
                   '"><tt>'  nummodels:0:0 '</tt></a></td>';
         else
            put  / '   <td align=right> - </td>';
         );
      );
      put / '</tr>';
  );          
  if((solvernum eq 1),
      put  /  '<tr>'
           /  '   <td align=left>Solver ' solvers.tl:8 
              ' faster :</td><td align=right>';
      if(restimes("Afaster"),
         put  '<a href="#Afaster"><tt>' restimes("Afaster"):>6:0 
              '</tt></a>';
      else
         put  '-';
      );
      loop(objtype,
         nummodels = sum(modelname, 
            modelresobj(modelname,"Afaster",objtype) );
         if (nummodels,
            put  / '   <td align=right><a href="#Afaster' objtype.tl:0 
                   '"><tt>'  nummodels:0:0 '</tt></a></td>';
         else
            put  / '   <td align=right> - </td>';
         );
      );
      put / '</tr>';
  );     
  if((solvernum eq 1),
      put  /  '<tr>'
           /  '   <td align=left>Solvers perform the same':0  
              ' :</td><td align=right>';
      if(restimes("same"),
         put  '<a href="#same"><tt>' restimes("same"):>6:0 '</tt></a>';
      else
         put  '-';
      );
      loop(objtype,
         nummodels = sum(modelname, modelresobj(modelname,"same",objtype) );
         if (nummodels,
            put  / '   <td align=right><a href="#same' objtype.tl:0 
                   '"><tt>'  nummodels:0:0 '</tt></a></td>';
         else
            put  / '   <td align=right> - </td>';
         );
      );
      put / '</tr>'; 
  );   
  if((solvernum eq 2),
      put  /  '<tr>'
           /  '   <td align=left>Solver ' solvers.tl:8 ' faster :</td>'
              '<td align=right>';
      if(restimes("Bfaster"),
         put  '<a href="#Bfaster"><tt>' restimes("Bfaster"):>6:0 
              '</tt></a>';
      else
         put  '-';
      );
      loop(objtype,
         nummodels = sum(modelname, 
             modelresobj(modelname,"Bfaster",objtype) );
         if (nummodels,
            put  / '   <td align=right><a href="#Bfaster' 
                objtype.tl:0 '"><tt>'  nummodels:0:0 '</tt></a></td>';
         else
            put  / '   <td align=right> - </td>';
         );
      );
      put '</tr>';
  );  
  if((solvernum eq 2),
      put  /  '<tr>'
           /  '   <td align=left>Solver ' solvers.tl:8 
              ' much faster :</td><td align=right>';
      if(restimes("Bmfaster"),
         put  '<a href="#Bmfaster"><tt>' restimes("Bmfaster"):>6:0 
              '</tt></a>';
      else
         put  '-';
      );
      loop(objtype,
         nummodels = sum(modelname, 
             modelresobj(modelname,"Bmfaster",objtype) );
         if (nummodels,
            put  / '   <td align=right><a href="#Bmfaster' 
             objtype.tl:0 '"><tt>'  nummodels:0:0 '</tt></a></td>';
         else
            put  / '   <td align=right> - </td>';
         );
      );
      put / '</tr>';
  );
  if((solvernum eq 2),
      put  /  '<tr>'
           /  '   <td align=left>Solver ' solvers.tl:8 
              ' infinitely faster :</td><td align=right>';
      if(restimes("Bifaster"),
         put  '<a href="#Bifaster"><tt>' restimes("Bifaster"):>6:0 
              '</tt></a>';
      else
         put  '-';
      );
      loop(objtype,
         nummodels = sum(modelname, 
             modelresobj(modelname,"Bifaster",objtype) );
         if (nummodels,
            put  / '   <td align=right><a href="#Bifaster' 
             objtype.tl:0 '"><tt>'  nummodels:0:0 '</tt></a></td>';
         else
            put  / '   <td align=right> - </td>';
         );
      );
      put / '</tr>';  
  );
  if((solvernum eq 2),
      put  /  '<tr>'
           /  '   <td align=left>Both solvers failed to solve '
              'optimally :</td><td align=right>';
      if(restimes("ABnonopt"),
         put  '<a href="#ABnonopt"><tt>' restimes("ABnonopt"):>6:0 
              '</tt></a>';
      else
         put  '-';
      );
      loop(objtype,
         nummodels = sum(modelname, 
             modelresobj(modelname,"ABnonopt",objtype) );
         if (nummodels,
            put  / '   <td align=right><a href="#ABnonopt' 
             objtype.tl:0 '"><tt>'  nummodels:0:0 '</tt></a></td>';
         else
            put  / '   <td align=right> - </td>';
         );
      );
      put / '</tr>'; 
  );
);

put / '</tr>'
    / '<tr>'
put / '   <td align=left>';
put   'Total models:':33 ' :</td>' / '   <td align=right><b><tt>'
      sum(restype, restimes(restype)):>6:0 '</tt></b></td>';
loop(objtype,
    nummodels = sum((modelname,restype), 
          modelresobj(modelname,restype,objtype));
    put '<td align=right><b><tt>' nummodels:0:0 '</tt></b></td>'; 	
);

put / '</table>';




put / '<br><br><hr><br>' //
put / '<h3><a name="SquareDef">Solver return definition:</a></h3>' 
    / '<table width="50%" border=1>';
if(is_discrete,
    put / '   <tr><td align=left><b>Outcome</b></td><td align=right>'
          '<b>Model Status</b></td>'
          '<td align=right><b>Solver Status</b></td> </tr>'
        / '   <tr><td align=left>optimal</td><td align=right> 1 or 8 '
          '</td><td align=right> 1 </td> </tr>'
else
    put / '   <tr><td align=left><b>Outcome</b></td><td align=right>'
          '<b>Model Status</b></td>'
          '<td align=right><b>Solver Status</b></td> </tr>'
        / '   <tr><td align=left>optimal</td><td align=right> 1 or 2'
          '</td><td align=right> 1 </td> </tr>'
);
put / '</table>' //



put / '<br><br><hr><br>' //
put / '<h3>Resource Times:</h3>'; 

fresB_htm.nr = 2;

put / '<ul>'
    / '<li>Models for each resource time category. Listed are the '
      'solver resource times in'
    / 'seconds, as well as the ratio of resource times for the two '
      'solvers if both solved optimally.'
    / ' Models not solved optimally by a solver have status listed '
      'instead of resource time.' 
    / '<li>Also listed are the objective values using both solvers. '
      'The better solution found is listed'
    / 'in boldface. A solution is considered better, if the relative '
      'objective function difference is'
    / ' greater than ' bound:0 '.'  
    / '<li>Solver resource time ratios for a particular model are '
      'listed only if both solvers are '
    / 'optimal and if one solver has resource time greater than ' 
       resourcemin '.' 
    / '</ul>' //;

fresB_htm.nr = 1;

loop( (restype,objtype),

   if(sum(modelname,modelresobj(modelname,restype,objtype)),

      if (sameas(restype,"Aifaster"),
         put // '<a name="Aifaster"></a>';
         put /  '<h4><a name="Aifaster' objtype.tl:0  '">Solver ';
         loop(solverA, put solverA.tl:0);
         put ' infinitely faster - ';
         if (sameas(objtype,"ObjAbet"),
             put 'Obj of ';
             loop(solverA, put solverA.tl:0 );
             put ' better:';
         elseif(sameas(objtype,"ObjBbet")),
             put 'Obj of ';
             loop(solverB, put solverB.tl:0 );
             put ' better:';
         else
             put 'Obj same for both solvers: ';
         );
         put '</a>&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top'
             '</a></h4>' //;
      elseif (sameas(restype,"Amfaster")),
         put //'<a name="Amfaster"></a>';
         put / '<h4><a name="Amfaster' objtype.tl:0 '"> Solver ';
         loop(solverA, put solverA.tl:0);
         put ' much faster - '
         if (sameas(objtype,"ObjAbet"),
             put 'Obj of ';
             loop(solverA, put solverA.tl:0 );
             put ' better:';
         elseif(sameas(objtype,"ObjBbet")),
             put 'Obj of ';
             loop(solverB, put solverB.tl:0 );
             put ' better:';
         else
             put 'Obj same for both solvers: ';
         );

         put '</a>&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top'      
             '</a></h4>' //;
      elseif( sameas(restype,"Afaster")),
         put // '<a name="Afaster"></a>';
         put / '<h4><a name="Afaster' objtype.tl:0 '">Solver ';
         loop(solverA, put solverA.tl:0);
         put ' faster - '
         if (sameas(objtype,"ObjAbet"),
             put 'Obj of ';
             loop(solverA, put solverA.tl:0 );
             put ' better:';
         elseif(sameas(objtype,"ObjBbet")),
             put 'Obj of ';
             loop(solverB, put solverB.tl:0 );
             put ' better:';
         else
             put 'Obj same for both solvers: ';
         );
         put '</a>&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top'
             '</a></h4>' //;
      elseif( sameas(restype,"same")),
         put // '<a name="same"></a>';
         put /  '<h4><a name="same' objtype.tl:0  '">Solvers perform '
                'the same:'
                '</a>&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top'
                '</a></h4>' /;
      elseif( sameas(restype,"Bfaster")),
         put // '<a name="Bfaster"></a>';
         put /  '<h4><a name="Bfaster' objtype.tl:0 '">Solver ';
         loop(solverB, put solverB.tl:0);
         put ' faster - '
         if (sameas(objtype,"ObjAbet"),
             put 'Obj of ';
             loop(solverA, put solverA.tl:0 );
             put ' better:';
         elseif(sameas(objtype,"ObjBbet")),
             put 'Obj of ';
             loop(solverB, put solverB.tl:0 );
             put ' better:';
         else
             put 'Obj same for both solvers: ';
         );
         put '</a>&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top'
             '</a></h4>' //;
      elseif( sameas(restype,"Bmfaster")),
         put // '<a name="Bmfaster"></a>';
         put /  '<h4><a name="Bmfaster' objtype.tl:0 '">Solver ';
         loop(solverB, put solverB.tl:0);
         put ' much faster - '
         if (sameas(objtype,"ObjAbet"),
             put 'Obj of ';
             loop(solverA, put solverA.tl:0 );
             put ' better:';
         elseif(sameas(objtype,"ObjBbet")),
             put 'Obj of ';
             loop(solverB, put solverB.tl:0 );
             put ' better:';
         else
             put 'Obj same for both solvers: ';
         );
         put '</a>&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top'
             '</a></h4>' //;
      elseif( sameas(restype,"Bifaster")),
         put // '<a name="Bifaster"></a>';
         put /  '<h4><a name="Bifaster' objtype.tl:0 '">Solver ';
         loop(solverB, put solverB.tl:0);
         put ' infinitely faster - '
         if (sameas(objtype,"ObjAbet"),
             put 'Obj of ';
             loop(solverA, put solverA.tl:0 );
             put ' better:';
         elseif(sameas(objtype,"ObjBbet")),
             put 'Obj of ';
             loop(solverB, put solverB.tl:0 );
             put ' better:';
         else
             put 'Obj same for both solvers: ';
         ); 
         put '</a>&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top'
             '</a></h4>' //;
      elseif( sameas(restype,"ABnonopt")),
         put // '<a name="ABnonopt"></a>';
         put /  '<h4><a name="ABnonopt' objtype.tl:0 '">'
                'Both solvers failed to solve optimally - ';
         if (sameas(objtype,"ObjAbet"),
             put 'Obj of ';
             loop(solverA, put solverA.tl:0 );
             put ' better:';
         elseif(sameas(objtype,"ObjBbet")),
             put 'Obj of ';
             loop(solverB, put solverB.tl:0 );
             put ' better:';
         else
             put 'Obj same for both solvers: ';
         );
         put '</a>&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top</a></h4>' //;
      );


      put / '<table width="100%" border=1>'
      put / '<tr>'
          / '   <td align=left><b>Modelname</b></td>'
      loop(solverA, put / '   <td align=right><b>' solverA.tl:>15 
            '</b></td>');
      loop(solverB, put / '   <td align=right><b>' solverB.tl:>15 
            '</b></td>' );
      put / '   <td align=right><b>Ratio (';
      loop(solverA, put solverA.tl:0 ' / ');
      loop(solverB, put solverB.tl:0 ')' );
      put   '</b></td>';
      loop(solverA, put / '   <td align=right><b> Obj ' solverA.tl:0 
            '</b></td>');
      loop(solverB, put / '   <td align=right><b> Obj ' solverB.tl:0 
            '</b></td>');          
      put  / '</tr>' /;
   );


   loop(modelname$modelresobj(modelname,restype,objtype),
      if( min(resA(modelname),resB(modelname)) < 1e-5,
          ratio = inf;
      else 
          ratio = max(resA(modelname),resB(modelname)) 
                / min(resA(modelname),resB(modelname));
      );
      if(bothsolve(modelname),
         put / '<tr><td align=left><tt>' modelname.tl:15 '</tt></td>'
             '<td align=right><tt>' resA(modelname):0:4 '</tt></td>'
             '<td align=right><tt>' resB(modelname):0:4 '</tt></td>' ;

         if( resA(modelname) > 1e-5 and resB(modelname) < 1e-5,
            ratio = inf;
         elseif( resA(modelname) < 1e-5 and resB(modelname) < 1e-5),
            ratio =1;
         else
            ratio = resA(modelname) / resB(modelname);
         );

         if(resA(modelname)<resourcemin and resB(modelname)<resourcemin,
            put '<td align=right><tt>---</tt></td>';
         elseif (ratio = inf),
            put '<td align=right><tt>' ratio:0 '.000 </tt></td>';
         else
            put '<td align=right><tt>' ratio:0:3  '</tt></td>';             
         );

         fresB_htm.nr = 2;
         if (sameas(objtype,"ObjAbet"),
            put / '   <td align=right><b><tt>' ObjA(modelname):>25:8 
                  '</tt></b></td><td align=right><tt>' 
                       ObjB(modelname):>20:8 '</tt></td>' /;
         elseif(sameas(objtype,"ObjBbet")),
            put / '   <td align=right><tt>' ObjA(modelname):>25:8 
                  '</tt></td><td align=right><b><tt>' 
                       ObjB(modelname):>20:8 '</tt></b></td>' /;
         else
            put / '   <td align=right><tt>' ObjA(modelname):>25:8 
                  '</tt></td><td align=right><tt>' 
                       ObjB(modelname):>20:8 '</tt></td>' /;
         );
         fresB_htm.nr = 1;
         put '</tr>'
      elseif(sameas(restype,"Aifaster")),
         put / '<tr><td align=left><tt>' modelname.tl:15 '</tt></td>'
             '<td align=right><tt>' resA(modelname):0:4 
             '</tt></td><td align=right><tt>'; 
             loop( (solverB,result),
                if( square(modelname,solverB,result),
                   put result.te(result):0;
                );
             );  
         put '</tt></td><td align=center> -- </td>' ;
         fresB_htm.nr = 2;
         if (sameas(objtype,"ObjAbet"),
            put / '   <td align=right><b><tt>' ObjA(modelname):>25:8 
                  '</tt></b></td><td align=right></tt>' 
                  ObjB(modelname):>20:8 '</tt></td>' /;
         elseif(sameas(objtype,"ObjBbet")),
            put / '   <td align=right><tt>' ObjA(modelname):>25:8 
                  '</tt></td><td align=right><b><tt>' 
                  ObjB(modelname):>20:8 '</tt></b></td>' /;
         else
            put / '   <td align=right><tt>' ObjA(modelname):>25:8 
                  '</tt></td><td align=right><tt>' 
                  ObjB(modelname):>20:8 '</tt></td>' /;
         );
         fresB_htm.nr = 1;
         put '</tr>';

      elseif(sameas(restype,"Bifaster")),
         put / '<tr><td align=left><tt>' modelname.tl:15 
               '</tt></td><td align=right><tt>';
             loop( (solverA,result),
                if( square(modelname,solverA,result),
                   put result.te(result):0;
                );
             );
         put '</tt></td><td align=right><tt>' resB(modelname):15:4 
             '</tt></td><td align=center> -- </td>';
         fresB_htm.nr = 2;
         if (sameas(objtype,"ObjAbet"),
            put / '   <td align=right><b><tt>' ObjA(modelname):>25:8 
                  '</tt></b></td><td align=right><tt>' 
                  ObjB(modelname):>20:8 '</tt></td>' /;
         elseif(sameas(objtype,"ObjBbet")),
            put / '   <td align=right><tt>' ObjA(modelname):>25:8 
                  '</tt></td><td align=right><b><tt>' 
                  ObjB(modelname):>20:8 '</tt></b></td>' /;
         else
            put / '   <td align=right><tt>' ObjA(modelname):>25:8 
                  '</tt></td><td align=right><tt>' 
                   ObjB(modelname):>20:8 '</tt></td>' /;
         );
         fresB_htm.nr = 1;
         put '</tr>';

      elseif(nosolve(modelname)),
         put / '<tr><td align=left><tt>' modelname.tl:15 
               '</tt></td><td align=right><tt>'
             loop( (solverA,result),
                if( square(modelname,solverA,result),
                   put result.te(result):0;
                );
             );
         put / '</tt></td><td align=right><tt>'
             loop( (solverB,result),
                if( square(modelname,solverB,result),
                   put result.te(result):0;
                );
             );
         put /  '</tt></td><td align=center> -- </td>' ;
         fresB_htm.nr = 2;
         put '<td align=right><tt>' ObjA(modelname):>25:8 '</tt></td>'
             '<td align=right><tt>' 
                ObjB(modelname):>20:8 '</tt></td></tr>' /;
         fresB_htm.nr = 1;
      );
   );


   if(sum(modelname,modelresobj(modelname,restype,objtype)),
      put / '</table>';
      put / '<p align=right><a href="#top">Back to top</a></p>'
      put / '<hr><br>' //;
   );

);


put / '</body>'
       / '</html>';

putclose fresB_htm;

$goto noerrors



*=== Error messages
$label errors_notrace1
execute "echo ---     ABORTING --trace1 option required: Trace file not specified..."
abort   "Aborting because --trace1 option not specified"
$goto noerrors

$label errors_notrace2
execute "echo ---     ABORTING --trace2 option required: Trace file not specified..."
abort   "Aborting because --trace2 option not specified"
$goto noerrors

$label errors_trace1notexist
execute "echo ---     ABORTING --trace1 file not found..."
abort   "Aborting because trace file 1 not found"
$goto noerrors

$label errors_trace2notexist
execute "echo ---     ABORTING --trace2 file not found..."
abort   "Aborting because trace file 2 not found"
$goto noerrors


$label noerrors



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
