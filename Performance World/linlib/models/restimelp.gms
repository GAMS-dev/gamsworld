$ontext =======================================================================

FILENAME: restimeLP.gms

PURPOSE:  Creates two tables of comparative solve resource times of two 
          solvers. One table considers those models where an optimal 
          solution has been found and the other considers all models
          in the trace files. Both tables output model resource times. 
          For the first table, optimal is defined as modelstat=1, 
          solvestat=1, and the two solutions of the solvers are 
          "close" (scaled difference in obj. is within 1e-5). For the
          second, if one solver found a solution, but the other did
          not, the first solver is considered infinitely faster. If
          both failed to find a solution, then the resource times are 
          considered the same.
 
          Output is in .txt or in .html files. Also lists models for
          each resource time category.

          Works for LP type models only.

REQUIRED INPUTS:   
          --trace1:  trace file of solver 1
          --trace2:  trace file of solver 2

OPTIONAL INPUTS:
          --bnd:     real. Bound for optimal outcome. Outcome is optimal if both solvers 
                     scaled solutions are within bnd of eachother. (default: 1e-5) 
          --html:    yes/no. creates html file (default=yes)
          --modelfile: modelfile containing models to be considered in 
                     comparison
          --outfile: root filename of restimes output file (default is
                     out --> out_resA.txt, out_resB.txt, out_resA.htm,
                     out_resB.htm)
          --text:    yes/no. creates text file (default=no)
          --tsame:   bound in % for solver res. times to be considered same
                     (default 10%)
          --tfaster: bound in % for solver res. times to be considered much
                     faster (default 50%)

REMARKS:  Each tracefile can contain information from only one (1) solver for a
          given set of models. For example, tracefiles containing solver A and
          solver B will cause error message upon compilation.

SAMPLE OUTPUT:

               Solvers used : A, B

               Solver A much faster          :      1
               Solver B faster               :     28
               Solvers perform the same      :     31
               Solver A faster               :    184
               Solver B much faster          :     40

               Total models solved optimally :    284


$offtext ======================================================================

$if not set bnd        $set  bnd inf
$if not set outfile    $set  outfile out
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
$if not set html    $set html    yes
$if not set text    $set text    no
$if not set tsame   $set tsame   10
$if not set tfaster $set tfaster 50


Set result /opt    "optimal",        
	    infes  "infeasible",    
	    unbnd  "unbounded",     
	    inter  "interrupt",     
	    f      "fail"           
/;


Set bool  / no, yes /;
Parameter list_text /no 1, yes 2/;
Parameter list_html/no 1, yes 2/;


Alias(solvers,solvername)
Parameter square(*,*,result)   GAMS solver results;
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
Parameter scale(*)       this is the scaling factor
          optimal(*)     this is 1 if an optimal solution has been found
          error(*)       relative error between solutions of solver A and B
          bound          relative bound to determine optimal solution /%bnd%/;


*=== Determine scale
loop((modelname,modeltype,nlpdef,mipdef),
   scale(modelname) = max( smax(solvername, abs(tracedata(modelname,modeltype,
                               solvername,nlpdef,mipdef,"obj"))), 1e-4);
);

*=== Determine error
loop((modelname,modeltype,nlpdef,mipdef),
   error(modelname) = abs( sum(solverA,tracedata(modelname,modeltype,solverA,nlpdef,mipdef,"obj"))
      - sum(solverB,tracedata(modelname,modeltype,solverB,nlpdef,mipdef,"obj"))   ) / scale(modelname);
);


Parameter modstat /0/;
Parameter solstat /0/;

loop( (modelname,modeltype,solvername,nlpdef,mipdef)
            $tracedata(modelname,modeltype,solvername,nlpdef,mipdef,'modelstat'),

    modstat = tracedata(modelname,modeltype,solvername,nlpdef,mipdef,'modelstat');
    solstat = tracedata(modelname,modeltype,solvername,nlpdef,mipdef,'solvestat');

    if(modstat=1 and solstat=1 and error(modelname) le bound,
       square(modelname,solvername,"opt") = yes;
    elseif( (modstat=4 or modstat=19) and solstat=1),
       square(modelname,solvername,"infes") = yes;
    elseif( (modstat=3 or modstat=18) and solstat=1),
       square(modelname,solvername,"unbnd") = yes;
    elseif( solstat=2 or solstat=3 ),
       square(modelname,solvername,"inter") = yes;
    else
       square(modelname,solvername,"f")   = yes;
   );
);




*================================================================================
*=== Create type 1 output: considers only models solved optimally by both solvers
*================================================================================


*=== Compute result total
Alias (result, resultA, resultB);


*=== Compute models which were solved succesfully by both solvers
set bothsolve(*);
bothsolve(modelname) = no;
loop(modelname,
   bothsolve(modelname) = yes$( sum(solverA, square(modelname,solverA,'opt'))
                            and sum(solverB,square(modelname,solverB,'opt'))  );
);

Set restype  /Aifaster     "Solver A infinitely faster",
              Amfaster     "Solver A much faster",
              Afaster      "Solver A faster",
              same         "Solvers perform the same on optimally solved models",
              Bfaster      "Solver B faster",
              Bmfaster     "Solver B much faster",
              Bifaster     "Solver B infinitely faster"
              ABnonopt     "Both solvers failed to solve optimally"
/;


Parameter modelrestime(*,restype);
modelrestime(modelname,restype) = 0;

Parameter restimes(restype), resdiff, resA(*), resB(*);
restimes(restype) = 0;

Parameter  res_same     times within tsame %
           res_faster   times within tfaster %;
           res_same =   0.01*%tsame%;
           res_faster = 0.01*%tfaster%;


*==== Extract resource times
loop( (modelname,modeltype,nlpdef,mipdef)$m(modelname),
   resA(modelname) = sum(solverA,
                    tracedata(modelname,modeltype,solverA,nlpdef,mipdef,'res'));
   resB(modelname) = sum(solverB,
                    tracedata(modelname,modeltype,solverB,nlpdef,mipdef,'res'));
);


loop( ( bothsolve(modelname),modeltype,nlpdef,mipdef)$m(modelname),
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


*===
*=== Output square summary to .txt file
*===
file fresA /%outfile%_resA.txt/;
parameter solvernum;
parameter ratio    "ratio of resource times"


if (list_text("%text%") = list_text("yes"),

   fresA.nr = 2;
   put fresA 'LP Table A:  Considers only models solved optimally by both solvers. ' //
   put       'Total resource time for models solved optimally by solver A and solver B.'/
   if(bound = inf,
      put    'Optimal solve is defined as modelstat=1, solvestat=1. Solutions are not'/
      put    'checked for how close they are to eachother.' //;
   else
      put    'Optimal solve is defined as modelstat=1, solvestat=1, and scaled solutions '/
      put    'are within ' bound:7:5 ' of eachother.' / /;
   );
   fresA.nr = 0;
   put      'Resource times are considered the same, if they are within ' %tsame%:2:0 '%' /
   put      'of eachother. A solver is considered faster than another, if it is less ' /
   put      'than ' %tfaster%:2:0 '% faster than the other. A solver is considered much' /
   put      'faster than another, if it is more than ' %tfaster%:2:0 '% faster than the ' /
   put      'other.' //;
   
   solvernum = 0;
   
   put 'Tracefile 1  :  %trace1%' /
       'Tracefile 2  :  %trace2%' //;
   
   put 'Solvers used : ';
   loop(solvers,
     solvernum = solvernum+1;
     put$(solvernum eq 1) solvers.tl:0 ', ' ;
     put$(solvernum eq 2) solvers.tl:0 /;
   );
   
   solvernum = 0;
   loop(solvers,
     solvernum = solvernum+1;
     put$(solvernum eq 1)  /   'Solver ' solvers.tl:8 ' much faster       : '
                           restimes("Amfaster"):>6:0 /;
     put$(solvernum eq 1)      'Solver ' solvers.tl:8 ' faster            : '
                           restimes("Afaster"):>6:0 /;
     put$(solvernum eq 1)      'Solvers perform the same':33            ' : '
                           restimes("same"):>6:0 /;
     put$(solvernum eq 2)      'Solver ' solvers.tl:8 ' faster            : '
                           restimes("Bfaster"):>6:0 /;
     put$(solvernum eq 2)      'Solver ' solvers.tl:8 ' much faster       : '
                           restimes("Bmfaster"):>6:0 /;
   );

   put /'Total models solved optimally':33                          ' : '
                        sum(restype, restimes(restype)):>6:0 /;


*===
*=== Output resource times for all models .txt file
*===

   put /'-----------------------------------------------------------------------------' //

   put 'Resource times (as listed in trace file) listed in seconds.' //

   loop(restype,

      if(sum(modelname,modelrestime(modelname,restype)),

         if (sameas(restype,"Amfaster"),
            put // 'Solver ';
            loop(solverA, put solverA.tl:0);
            put ' much faster:' //;
         elseif( sameas(restype,"Afaster")),
            put // 'Solver ';
            loop(solverA, put solverA.tl:0);
            put ' faster:' //;
         elseif( sameas(restype,"same")),
            put // 'Solvers perform the same:' /;
         elseif( sameas(restype,"Bfaster")),
            put // 'Solver ';
            loop(solverB, put solverB.tl:0);
            put ' faster:' //;
         elseif( sameas(restype,"Bmfaster")),
            put // 'Solver ';
            loop(solverB, put solverB.tl:0);
            put ' much faster:' //;
         );

         put 'Modelname':15
         loop(solverA, put solverA.tl:>15);
         loop(solverB, put solverB.tl:>15);
         put '      RATIO OF RESOURCE TIMES (';
         loop(solverA, put solverA.tl:0 '/');
         loop(solverB, put solverB.tl:0 ')' / );
         put '--------------------------------------------------------------------------------------------' /
      );

      loop(modelname$modelrestime(modelname,restype),
          if( resA(modelname) > 1e-5 and resB(modelname) < 1e-5,
              ratio = inf;
          elseif( resA(modelname) < 1e-5 and resB(modelname) < 1e-5),
              ratio =1;
          else
              ratio = resA(modelname) / resB(modelname);
          );

         put modelname.tl:15 resA(modelname):15:4 resB(modelname):15:4;
         if ( ratio = inf, 
            put ratio:>16 '.000' /;
         else
            put ratio:>20:3 /;
         );
      );
   );

);


putclose fresA;


*===
*=== Create HTML file if specified
*===

file fresA_htm /%outfile%_resA.htm/;
put fresA_htm;

if (list_html("%html%") eq list_html("yes"),

   put / '<html> <head> <title>LP Resource Time Comparison - Optimally Solved Models</title>' 
       / '<body bgcolor="#ffffff">'
    
   put   '<h2>LP Table A:&nbsp&nbsp  Considers only models solved optimally by both solvers. </h2>' /
       / 'Total resource time for models solved optimally by solver A and solver B.<br><br>'
   if(bound = inf,
      put      'Optimal solve is defined as modelstat=1, solvestat=1. Solutions are not'/
      put      'checked for how close they are to eachother.' //;
   else
      put      'Optimal solve is defined as modelstat=1, solvestat=1, and scaled solutions '/
      put      'are within ' bound:7:5 ' of eachother.' / /;
   );
   fresA.nr = 0;

   put / 'Resource times are considered the same, if they are within ' %tsame%:2:0 '%' /
         'of eachother. A solver is considered faster than another, if it is less ' /
         'than ' %tfaster%:2:0 '% faster than the other. A solver is considered much' /
         'faster than another, if it is more than ' %tfaster%:2:0 '% faster than the ' /
         'other.' //

   put / '<br><br>'
       / '<table width="50%" border=1>'
       / '<tr><td align=left><b>Tracefile 1  :</b></td><td align=right><tt>%trace1%</tt></td></tr>' 
       / '<tr><td align=left><b>Tracefile 2  :</b></td><td align=right><tt>%trace2%</tt></td></tr>' 
       / '<tr><td align=left><b>Solvers used :</b></td> ';

   solvernum = 0;
   loop(solvers,
      solvernum = solvernum+1;
      put$(solvernum eq 1) '<td align=right><tt>' solvers.tl:0 '</tt></td></tr>';
      put$(solvernum eq 2) '<tr><td></td><td align=right><tt>' solvers.tl:0 '</tt></td></tr>' ;
   );
   put / '</table>'
   put / '<br><br>' //


   put / '<table width="50%" border=1>';
     
   solvernum = 0;
   loop(solvers,
     solvernum = solvernum+1;
     if((solvernum eq 1),
          put  /   '<tr><td align=left>Solver ' solvers.tl:8 ' much faster       :</td><td align=right>';
          if (restimes("Amfaster"),
              put '<a href="#Amfaster"><tt>' restimes("Amfaster"):>6:0 '</tt></a>';
          else
              put '0';
          );
          put '</td></tr>';
     );
     if((solvernum eq 1),
          put  /   '<tr><td align=left>Solver ' solvers.tl:8 ' faster       :</td><td align=right>';
          if (restimes("Afaster"),
              put '<a href="#Afaster"><tt>' restimes("Afaster"):>6:0 '</tt></a>';
          else
              put '0';
          );
          put '</td></tr>';
     );
     if((solvernum eq 1),
          put  /   '<tr><td align=left>Solvers perform the same:</td><td align=right>';
          if (restimes("same"),
              put '<a href="#same"><tt>' restimes("same"):>6:0 '</tt></a>';
          else
              put '0';
          );
          put '</td></tr>';
     );
     if((solvernum eq 2),
          put  /   '<tr><td align=left>Solver ' solvers.tl:8 ' faster            :</td><td align=right>'
          if (restimes("Bfaster"),
              put '<a href="#Bfaster"><tt>' restimes("Bfaster"):>6:0 '</tt></a>';
          else
              put '0';
          );
          put '</td></tr>';
     );
     if((solvernum eq 2),
          put  /   '<tr><td align=left>Solver ' solvers.tl:8 ' much faster            :</td><td align=right>'
          if (restimes("Bmfaster"),
              put '<a href="#Bmfaster"><tt>' restimes("Bmfaster"):>6:0 '</tt></a>';
          else
              put '0';
          );
          put '</td></tr>';
     );
   );

   put / '</tr>'
   put / '<tr><td align=left>';
   put / 'Total models solved optimally':33                          ' :</td><td align=right><tt>'
                                    sum(restype, restimes(restype)):>6:0 '</tt></td></tr>'
  
       / '</table>';

   put // '<br><br><hr><br>' ;
   put / '<h3>Resource Times:</h3>'; 
   put / 'Resource times (as in trace file) listed in seconds.' //

   loop(restype,

      if(sum(modelname,modelrestime(modelname,restype)),
         if (sameas(restype,"Amfaster"),
            put // '<h4><a name="Amfaster">Solver ';
            loop(solverA, put solverA.tl:0);
            put ' much faster:</a>&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top</a></h4>' //;
         elseif( sameas(restype,"Afaster")),
            put // '<h4><a name="Afaster">Solver ';
            loop(solverA, put solverA.tl:0);
            put ' faster:</a>&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top</a></h4>' //;
         elseif( sameas(restype,"same")),
            put // '<h4><a name="same">Solvers perform the same:</a>&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top</a></h4>' /;
         elseif( sameas(restype,"Bfaster")),
            put // '<h4><a name="Bfaster">Solver ';
            loop(solverB, put solverB.tl:0);
            put ' faster:</a>&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top</a></h4>' //;
         elseif( sameas(restype,"Bmfaster")),
            put // '<h4><a name="Bmfaster">Solver ';
            loop(solverB, put solverB.tl:0);
            put ' much faster:</a>&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top</a></h4>' //;
         );


         put / '<table width="50%" border=1>'
         put / '<tr><td align=left><b>Modelname</b></td>'
         loop(solverA, put '<td align=right><b>' solverA.tl:>15 '</b></td>');
         loop(solverB, put '<td align=right><b>' solverB.tl:>15 '</b></td>');
         put '<td align=center><b>Ratio (';
         loop(solverA, put solverA.tl:0 '/');
         loop(solverB, put solverB.tl:0 ')' );
         put '</b></td></tr>' /;
      );

      loop(modelname$modelrestime(modelname,restype),
         put / '<tr><td align=left><tt>' modelname.tl:15 '</tt></td>'
               '    <td align=right><tt>' resA(modelname):15:4 '</tt></td>'
               '    <td align=right><tt>' resB(modelname):15:4 '</tt></td>' ;

         if( resA(modelname) > 1e-5 and resB(modelname) < 1e-5,
             ratio = inf;
         elseif( resA(modelname) < 1e-5 and resB(modelname) < 1e-5),
             ratio =1;
         else
             ratio = resA(modelname) / resB(modelname);
         );
 
         if (ratio = inf,
            put '<td align=right><tt>' ratio:0 '.000 </tt></td>';
         else
            put '<td align=right><tt>' ratio:0:3  '</tt></td>';             
         );

         put '</tr>'
      );

      if(sum(modelname,modelrestime(modelname,restype)),
         put / '</table>';
         put / '<p align=right><a href="#top">Back to top</a></p>'
         put / '<hr><br>' /;
      );

   );


   put / '</body>'
       / '</html>';
);

putclose fresA_htm;



*==============================================================================
*=== Create square 2: considers all models
*==============================================================================

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
loop(m(modelname)$(not bothsolve(modelname) and not sum(solvers,onesolve(modelname,solvers))),
   nosolve(modelname) = yes;
);


*=== Compute result total
modelrestime(modelname,"Aifaster") = no;
modelrestime(modelname,"Bifaster") = no;
loop( onesolve(m(modelname),solvers),
   if(sum(solverA,onesolve(m,solverA)),
      restimes("Aifaster") =    restimes("Aifaster") + 1;
      modelrestime(modelname,"Aifaster") = yes;
   elseif(sum(solverB,onesolve(m,solverB))),
      restimes("Bifaster") =    restimes("Bifaster") + 1;
      modelrestime(modelname,"Bifaster") = yes;
   );
);


loop( nosolve(modelname),
   restimes("ABnonopt") = restimes("ABnonopt") + 1;
   modelrestime(modelname,"ABnonopt") = yes;
);


res_same   = res_same*100;
res_faster = res_faster*100;


*===
*=== Output res times to .res file
*===
file fresB /%outfile%_resB.txt/;

if(list_text("%text%") eq list_text("yes"),

   fresB.nr = 2;
   put fresB 'LP Table B:  Considers all models. ' //
   put      'Total resource time for all models. Optimal solve is defined as ' /
   put      'modelstat=1, solvestat=1, and scaled solutions are within ' bound:7:5 
   put      'of eachother.' / /;
   put      'Total resource time for all models.'/
   if(bound = inf,
      put      'Optimal solve is defined as modelstat=1, solvestat=1. Solutions are not'/
      put      'checked for how close they are to eachother.' //;
   else
      put      'Optimal solve is defined as modelstat=1, solvestat=1, and scaled solutions '/
      put      'are within ' bound:7:5 ' of eachother.' / /;
   );
   fresB.nr = 0;
   put      'Resource times are considered the same, if they are within ' %tsame%:2:0 '%' /
   put      'of eachother. A solver is considered faster than another, if it is less ' /
   put      'than ' %tfaster%:2:0 '% faster than the other. A solver is considered much' /
   put      'faster than another, if it is more than ' %tfaster%:2:0 '% faster than the ' /
   put      'other.' //;
   
   solvernum = 0;
   
   put 'Tracefile 1  :  %trace1%' /
       'Tracefile 2  :  %trace2%' //;
   
   put 'Solvers used : ';
   loop(solvers,
     solvernum = solvernum+1;
     put$(solvernum eq 1) solvers.tl:0 ', ' ;
     put$(solvernum eq 2) solvers.tl:0 /;
   );
   
   
   solvernum = 0;
   loop(solvers,
     solvernum = solvernum+1;
     put$(solvernum eq 1)  /   'Solver ' solvers.tl:8 ' infinitely faster      : '
                                    restimes("Aifaster"):>6:0 /;
     put$(solvernum eq 1)      'Solver ' solvers.tl:8 ' much faster            : '
                                    restimes("Amfaster"):>6:0 /;
     put$(solvernum eq 1)      'Solver ' solvers.tl:8 ' faster                 : '
                                    restimes("Afaster"):>6:0 /;
     put$(solvernum eq 1)      'Solvers perform the same':33            '      : '
                                    restimes("same"):>6:0 /;
     put$(solvernum eq 2)      'Solver ' solvers.tl:8 ' faster                 : '
                                    restimes("Bfaster"):>6:0 /;
     put$(solvernum eq 2)      'Solver ' solvers.tl:8 ' much faster            : '
                                    restimes("Bmfaster"):>6:0 /;
     put$(solvernum eq 2)      'Solver ' solvers.tl:8 ' infinitely faster      : '
                                    restimes("Bifaster"):>6:0 /;
     put$(solvernum eq 2)      'Both solvers failed to solve optimally : '
                                    restimes("ABnonopt"):>6:0 /;
   );
   
   put /'Total models':33                          '      : '
                                    sum(restype, restimes(restype)):>6:0 /;
   
*===   
*=== Output resource times for all models
*===   
   
   put /'-------------------------------------------------------------------' //
   
   put 'Resource times (as listed in trace file) listed in seconds for '/
          'models solved optimally. Models not solved optimally by a solver'/ 
          'have status listed instead of resource time.' //

   loop(restype,

      if(sum(modelname,modelrestime(modelname,restype)),

         if (sameas(restype,"Aifaster"),
            put // 'Solver ';
            loop(solverA, put solverA.tl:0);
            put ' infinitely faster:' //;
         elseif (sameas(restype,"Amfaster")),
            put // 'Solver ';
            loop(solverA, put solverA.tl:0);
            put ' much faster:' //;
         elseif( sameas(restype,"Afaster")),
            put // 'Solver ';
            loop(solverA, put solverA.tl:0);
            put ' faster:' //;
         elseif( sameas(restype,"same")),
            put // 'Solvers perform the same:' /;
         elseif( sameas(restype,"Bfaster")),
            put // 'Solver ';
            loop(solverB, put solverB.tl:0);
            put ' faster:' //;
         elseif( sameas(restype,"Bmfaster")),
            put // 'Solver ';
            loop(solverB, put solverB.tl:0);
            put ' much faster:' //;
         elseif( sameas(restype,"Bifaster")),
            put // 'Solver ';
            loop(solverB, put solverB.tl:0);
            put ' infinitely faster:' //;
         elseif( sameas(restype,"ABnonopt")),
            put // 'Both solvers failed to solve optimally : ' //;
         );

         put 'Modelname':15
         loop(solverA, put solverA.tl:>15);
         loop(solverB, put solverB.tl:>15 );
         put '      RATIO OF RESOURCE TIMES (';
         loop(solverA, put solverA.tl:0 '/');
         loop(solverB, put solverB.tl:0 ')' / );
         put '--------------------------------------------------------------------------------------------' /;
      );
   
      loop(modelname$modelrestime(modelname,restype),

         if( resA(modelname) > 1e-5 and resB(modelname) < 1e-5,
             ratio = inf;
         elseif( resA(modelname) < 1e-5 and resB(modelname) < 1e-5),
             ratio =1;
         else
             ratio = resA(modelname) / resB(modelname);
         );


         if(bothsolve(modelname),
            put / modelname.tl:15 resA(modelname):15:4 resB(modelname):15:4 ;
            if( ratio = inf,
               put ratio:16 '.000' ;
            else
               put ratio:>20:3;
            );
         elseif(sameas(restype,"Aifaster")),
            put / modelname.tl:15 resA(modelname):15:4 
            loop( (solverB,result),
               if( square(modelname,solverB,result),
                  put result.te(result):>15 ;
               );
            );
            put '--':<>35;
         elseif(sameas(restype,"Bifaster")),
            put / modelname.tl:15 
            loop( (solverA,result),
               if( square(modelname,solverA,result),
                  put result.te(result):>15;  
               );
            );
            put resB(modelname):15:4 ;
            put '--':<>35;
         elseif(nosolve(modelname)),
            put / modelname.tl:15;
            loop( (solverA,result),
               if( square(modelname,solverA,result),
                  put result.te(result):>15;  
               );
            );
            loop( (solverB,result),
               if( square(modelname,solverB,result),
                  put result.te(result):>15 ;
               );
            );
            put '--':<>35;
         );
      );

   );
);

putclose fresB;


*===
*=== Create HTML file if specified
*===

file fresB_htm /%outfile%_resB.htm/;
put fresB_htm;

if (list_html("%html%") eq list_html("yes"),

   put / '<html> <head> <title>LP Resource Time Comparison - All Models</title>' 
       / '<body bgcolor="#ffffff">'
     
   put / '<h2>LP Table B:&nbsp&nbsp  Considers all models. </h2>' /
       / 'Total resource time for all models.<br><br>'
   if(bound = inf,
      put      'Optimal solve is defined as modelstat=1, solvestat=1. Solutions are not'/
      put      'checked for how close they are to eachother.' /;
   else
      put      'Optimal solve is defined as modelstat=1, solvestat=1, and scaled solutions '/
      put      'are within ' bound:7:5 ' of eachother.' / /;
   );
   fresA.nr = 0;

   put / 'Resource times are considered the same, if they are within ' %tsame%:2:0 '%' /
         'of eachother. A solver is considered faster than another, if it is less ' /
         'than ' %tfaster%:2:0 '% faster than the other. A solver is considered much' /
         'faster than another, if it is more than ' %tfaster%:2:0 '% faster than the ' /
         'other.<br><br>' /
   put / 'If a model was not solved optimally by both solvers, the resource time is '/
         'considered the same. If a model was solved optimally by solver A but not by' /
         'solver B, then solver A is considered infinitely faster than solver B.'//

   put / '<br><br>'
       / '<table width="50%" border=1>'
       / '<tr><td align=left><b>Tracefile 1  :</b></td><td align=right><tt>%trace1%</tt></td></tr>' 
       / '<tr><td align=left><b>Tracefile 2  :</b></td><td align=right><tt>%trace2%</tt></td></tr>' 
       / '<tr><td align=left><b>Solvers used :</b></td> ';

   solvernum = 0;
   loop(solvers,
      solvernum = solvernum+1;
      put$(solvernum eq 1) '<td align=right><tt>' solvers.tl:0 '</tt></td></tr>';
      put$(solvernum eq 2) '<tr><td></td><td align=right><tt>' solvers.tl:0 '</tt></td></tr>' ;
   );
   put / '</table>'
   put / '<br><br>' //;

   put / '<table width="50%" border=1>';
     
   solvernum = 0;
   loop(solvers,
     solvernum = solvernum+1;
     if((solvernum eq 1),
         put  /   '<tr><td align=left>Solver ' solvers.tl:8 ' infinitely faster       :</td><td align=right>'
         if(restimes("Aifaster"),
            put  '<a href="#Aifaster"><tt>' restimes("Aifaster"):>6:0 '</tt></a>';
         else
            put  '-';
         );
         put '</td></tr>';
     );
     if((solvernum eq 1),
         put  /   '<tr><td align=left>Solver ' solvers.tl:8 ' much faster       :</td><td align=right>'
         if(restimes("Amfaster"),
            put  '<a href="#Amfaster"><tt>' restimes("Amfaster"):>6:0 '</tt></a>';
         else
            put  '-';
         );
         put '</td></tr>';
     );          
     if((solvernum eq 1),
         put  /   '<tr><td align=left>Solver ' solvers.tl:8 ' faster            :</td><td align=right>';
         if(restimes("Afaster"),
            put  '<a href="#Afaster"><tt>' restimes("Afaster"):>6:0 '</tt></a>';
         else
            put  '-';
         );
         put '</td></tr>';  
     );     
     if((solvernum eq 1),
         put  /   '<tr><td align=left>Solvers perform the same':0             ' :</td><td align=right>';
         if(restimes("same"),
            put  '<a href="#same"><tt>' restimes("same"):>6:0 '</tt></a>';
         else
            put  '-';
         );
         put '</td></tr>'; 
     );   
     if((solvernum eq 2),
         put  /   '<tr><td align=left>Solver ' solvers.tl:8 ' faster            :</td><td align=right>';
         if(restimes("Bfaster"),
            put  '<a href="#Bfaster"><tt>' restimes("Bfaster"):>6:0 '</tt></a>';
         else
            put  '-';
         );
         put '</td></tr>';  
     );  
     if((solvernum eq 2),
         put  /   '<tr><td align=left>Solver ' solvers.tl:8 ' much faster       :</td><td align=right>';
         if(restimes("Bmfaster"),
            put  '<a href="#Bmfaster"><tt>' restimes("Bmfaster"):>6:0 '</tt></a>';
         else
            put  '-';
         );
         put '</td></tr>';  
     );
     if((solvernum eq 2),
         put  /   '<tr><td align=left>Solver ' solvers.tl:8 ' infinitely faster       :</td><td align=right>';
         if(restimes("Bifaster"),
            put  '<a href="#Bifaster"><tt>' restimes("Bifaster"):>6:0 '</tt></a>';
         else
            put  '-';
         );
         put '</td></tr>';  
     );
     if((solvernum eq 2),
         put  /   '<tr><td align=left>Both solvers failed to solve optimally          :</td><td align=right>';
         if(restimes("ABnonopt"),
            put  '<a href="#ABnonopt"><tt>' restimes("ABnonopt"):>6:0 '</tt></a>';
         else
            put  '-';
         );
         put '</td></tr>';  
     );
   );

   put / '</tr><tr>'
   put / '<td align=left>';
   put / 'Total models:':33                          ' :</td><td align=right><tt>'
                                    sum(restype, restimes(restype)):>6:0 '</tt></td>'
  
       / '</table>';

   put / '<br><br><hr><br>' //
   put / '<h3>Resource Times:</h3>'; 
   put / 'Resource times (as listed in trace file) listed in seconds for '
       / 'models solved optimally. Models not solved optimally by a solver'
       / 'have status listed instead of resource time.'

   loop(restype,
 
      if(sum(modelname,modelrestime(modelname,restype)),

         if (sameas(restype,"Aifaster"),
            put // '<h4><a name="Aifaster">Solver ';
            loop(solverA, put solverA.tl:0);
            put ' infinitely faster:</a>&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top</a></h4>' //;
         elseif (sameas(restype,"Amfaster")),
            put // '<h4><a name="Amfaster">Solver ';
            loop(solverA, put solverA.tl:0);
            put ' much faster:</a>&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top</a></h4>' //;
         elseif( sameas(restype,"Afaster")),
            put // '<h4><a name="Afaster">Solver ';
            loop(solverA, put solverA.tl:0);
            put ' faster:</a>&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top</a></h4>' //;
         elseif( sameas(restype,"same")),
            put // '<h4><a name="same">Solvers perform the same:</a>&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top</a></h4>' /;
         elseif( sameas(restype,"Bfaster")),
            put // '<h4><a name="Bfaster">Solver ';
            loop(solverB, put solverB.tl:0);
            put ' faster:</a>&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top</a></h4>' //;
         elseif( sameas(restype,"Bmfaster")),
            put // '<h4><a name="Bmfaster">Solver ';
            loop(solverB, put solverB.tl:0);
            put ' much faster:</a>&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top</a></h4>' //;
         elseif( sameas(restype,"Bifaster")),
            put // '<h4><a name="Bifaster">Solver ';
            loop(solverB, put solverB.tl:0);
            put ' infinitely faster:</a>&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top</a></h4>' //;
         elseif( sameas(restype,"ABnonopt")),
            put // '<h4><a name="ABnonopt">Both solvers failed to solve optimally';
            put '</a>&nbsp&nbsp&nbsp&nbsp<a href="#top">Back to top</a></h4>' //;
         );


         put / '<table width="50%" border=1>'
         put / '<tr><td align=left><b>Modelname</b></td>'
         loop(solverA, put '<td align=right><b>' solverA.tl:>15 '</b></td>');
         loop(solverB, put '<td align=right><b>' solverB.tl:>15 '</b></td>' );
         put '<td align=center><b>Ratio (';
         loop(solverA, put solverA.tl:0 '/');
         loop(solverB, put solverB.tl:0 ')' );
         put '</b></td></tr>' /;
      );


      loop(modelname$modelrestime(modelname,restype),
         if( min(resA(modelname),resB(modelname)) < 1e-5,
             ratio = inf;
         else 
             ratio = max(resA(modelname),resB(modelname)) / min(resA(modelname),resB(modelname));
         );
         if(bothsolve(modelname),
            put / '<tr><td align=left><tt>' modelname.tl:15 '</tt></td>'
                '<td align=right><tt>' resA(modelname):15:4 '</tt></td>'
                '<td align=right><tt>' resB(modelname):15:4 '</tt></td>' ;

            if( resA(modelname) > 1e-5 and resB(modelname) < 1e-5,
               ratio = inf;
            elseif( resA(modelname) < 1e-5 and resB(modelname) < 1e-5),
               ratio =1;
            else
               ratio = resA(modelname) / resB(modelname);
            );
 
            if (ratio = inf,
               put '<td align=right><tt>' ratio:0 '.000 </tt></td>';
            else
               put '<td align=right><tt>' ratio:0:3  '</tt></td>';             
            );

            put '</tr>'
         elseif(sameas(restype,"Aifaster")),
            put / '<tr><td align=left><tt>' modelname.tl:15 '</tt></td>'
                '<td align=right><tt>' resA(modelname):15:4 '</tt></td><td align=right><tt>'; 
                loop( (solverB,result),
                   if( square(modelname,solverB,result),
                      put result.te(result):0;
                   );
                );  
            put '</TT></td><td align=center> -- </td></tr>' ;
         elseif(sameas(restype,"Bifaster")),
            put / '<tr><td align=left><tt>' modelname.tl:15 '</tt></td><td align=right><tt>';
                loop( (solverA,result),
                   if( square(modelname,solverA,result),
                      put result.te(result):0;
                   );
                );
            put '</tt></td><td align=right>' resB(modelname):15:4 '</td><td align=center> -- </td></tr>' ;
         elseif(nosolve(modelname)),
            put / '<tr><td align=left><tt>' modelname.tl:15 '</tt></td><td align=right><tt>'
                loop( (solverA,result),
                   if( square(modelname,solverA,result),
                      put result.te(result):0;
                   );
                );
            put   '</tt></td><td align=right><tt>'
                loop( (solverB,result),
                   if( square(modelname,solverB,result),
                      put result.te(result):0;
                   );
                );
            put   '</tt></td><td align=center> -- </td></tr>' ;
         );
      );


      if(sum(modelname,modelrestime(modelname,restype)),
         put / '</table>';
         put / '<p align=right><a href="#top">Back to top</a></p>'
         put / '<hr><br>' //;
      );

   );


   put / '</body>'
       / '</html>';
);

putclose fresB_htm;





