$ontext =======================================================================

FILENAME: squareNLP.gms

PURPOSE:  Creates a solve square for NLPs to compare solve/fail results.
          User must input two tracefiles (one for each solver).

          Works only for NLP type models

REQUIRED INPUTS:   
          --trace1:    trace file of solver 1
          --trace2:    trace file of solver 2

OPTIONAL INPUTS:
          --bnd:       relative objective function difference. Prints "optimal"
                       solution in boldface for HTML output for one solver if the
                       relative objective function difference is greater than --bnd.
                       (default 1e-5) 
          --html:      yes/no. creates html file (default=yes)
          --outfile:   root names of square output file (default is out
                       --> out_sqr.txt)
          --modelfile: filename containing subset of models to consider. Useful,
                       if only a subset of models from the tracefile are to
                       be used in the solver square comparison.
          --text:      yes/no. creates text file (default=yes)

REMARKS:  Each tracefile can contain information from only one (1) solver for a
          given set of models. For example, tracefiles containing solver A and
          solver B will cause error message upon compilation.

SAMPLE OUTPUT:   SQUARE:

    optimal    -       modelstat=1 or 2        solvestat=1
    infeasible -       modelstat=4 or 5        solvestat=1
    interrupt  -                               solvestat=2 or 3
    fail       -       all other

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
$if not set bnd        $set bnd 1e-5
$if not set html    $set html    yes
$if not set text    $set text    no
$if not set tsame   $set tsame   10
$if not set tfaster $set tfaster 50


Set bool  / no, yes /;
Parameter list_text /no 1, yes 2/;
Parameter list_html/no 1, yes 2/;


Parameter bound "relative objc func difference threshold" / %bnd% /;


*=== Possible LP solver outcomes
Set result /opt    "optimal",
            infes  "infeasible",
            inter  "interrupt (time or iter.)",
            f      "fail"           
/;

Alias(solvers,solvername)

Parameter square(*,*,result)   GAMS solver results for square;
square(modelname,solvername,result) = 0;

Parameter modstat /0/;
Parameter solstat /0/;
Parameter mstat(*,*,*), sstat(*,*,*);

parameter i /0/;



*=== Compute totals for square A
loop( (modelname(m),modeltype,solvername,nlpdef,mipdef),
   i = i+1;

   modstat = tracedata(modelname,modeltype,solvername,nlpdef,mipdef,'modelstat');
   solstat = tracedata(modelname,modeltype,solvername,nlpdef,mipdef,'solvestat');


*=== Assign square only if data exists
   if (modstat and solstat,
      if( (modstat=1 or modstat=2) and solstat=1,
         square(modelname,solvername,"opt") = yes;
         mstat(modelname,solvername,"opt") = modstat;
         sstat(modelname,solvername,"opt") = solstat;
      elseif( (modstat=4 or modstat=5) and solstat=1),
         square(modelname,solvername,"infes") = yes;
         mstat(modelname,solvername,"infes") = modstat;
         sstat(modelname,solvername,"infes") = solstat;
      elseif( solstat=2 or solstat=3 ),
         square(modelname,solvername,"inter") = yes;
         mstat(modelname,solvername,"inter") = modstat;
         sstat(modelname,solvername,"inter") = solstat;
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
Parameter resA(*)   "resource time of solver A", 
          resB(*)   "resource time of solver B"
          objA(*)   "objective value using solver A"
          objB(*)   "objective value using solverB"
          dir(*)    "direction of optimization: 0=min 1=max";

loop( (modelname,modeltype,solverA,nlpdef,mipdef)$m(modelname),

   modstat = tracedata(modelname,modeltype,solverA,nlpdef,mipdef,'modelstat');
   solstat = tracedata(modelname,modeltype,solverA,nlpdef,mipdef,'solvestat');

   if (modstat and solstat,
      resA(modelname) = tracedata(modelname,modeltype,solverA,nlpdef,mipdef,'res');
      objA(modelname) = tracedata(modelname,modeltype,solverA,nlpdef,mipdef,'obj');
      dir(modelname)  = tracedata(modelname,modeltype,solverA,nlpdef,mipdef,'direction');
    );
);


loop( (modelname,modeltype,solverB,nlpdef,mipdef)$m(modelname),

   modstat = tracedata(modelname,modeltype,solverB,nlpdef,mipdef,'modelstat');
   solstat = tracedata(modelname,modeltype,solverB,nlpdef,mipdef,'solvestat');

   if (modstat and solstat,
      resB(modelname) = tracedata(modelname,modeltype,solverB,nlpdef,mipdef,'res');
      objB(modelname) = tracedata(modelname,modeltype,solverB,nlpdef,mipdef,'obj');
    );
);



*==============================================================================
*=== Output results to _sqr.txt file
*==============================================================================

file fsqr /%outfile%_sqr.txt/;
parameter solvernum /0/;
parameter doheader    "dummy variable to check if header has already been written"
          ratio       "ratio of resource times"
          objdiff(*)  "relative difference in obj values";


if (list_text("%text%") = list_text("yes"),

*=== Output square
   put fsqr    'NLP solver return definitions: ' /;
   put         '-----------------------------' /;
   put         'optimal    -       modelstat=1 or 2        solvestat=1' /;
   put         'infeasible -       modelstat=4 or 5        solvestat=1' /;
   put         'interrupt  -                               solvestat=2 or 3' /;
   put         'fail       -       all other'/ /;


   solvernum = 0;
   loop(solvers,
      solvernum = solvernum+1;
      put$(solvernum eq 1) 'Solver ' solvers.tl:0 ' is represented on the left (rows) and ';
      put$(solvernum eq 2) 'solver ' solvers.tl:0 ' on top (columns).' /;
   );
   

   solvernum = 0;
   loop(solvers,
      solvernum = solvernum+1;
      put$(solvernum eq 1)  /  "                  optimal  infeasible "
                               "interrupt    fail  total "solvers.tl /;
   );
   
   loop(resultA,
      put resultA.te(resultA):15;
      loop(resultB,
         if( resulttotals(resultA, resultB),
            put resulttotals(resultA, resultB):10:0 ;
         else
            put '-':>10;
         );
      );
      if ( sum(resultB, resulttotals(resultA, resultB ) ),
         put sum(resultB, resulttotals(resultA, resultB ) ):10:0 ;
      else
         put '-':>10;
      )   
      put /;
   );
   
   
   solvernum = 0;
   loop(solvers,
      solvernum = solvernum+1;
      put$(solvernum eq 2) "total " solvers.tl:9 ;
   );
   
   loop(resultB,
      if ( sum(resultA, resulttotals(resultA, resultB ) ),
         put sum(resultA, resulttotals(resultA, resultB ) ):10:0 ;
      else
         put '-':>10;
      );
   );
   if (  sum( (resultA,resultB), resulttotals(resultA,resultB)  ),
      put sum( (resultA,resultB), resulttotals(resultA,resultB)  ):10:0 /;
   else
      put '-':>10 /;
   );


*=== Output models 

   put // '------------------------------------------------------------------- '//

   put / 'Models for each solver pair outcome. Listed are the solver resource times' 
       / 'in seconds and ratio of solve times if both solvers solved optimally.' // 
 
       / 'Also listed are objective values for both solvers. The better solution '
       / 'found is listed with an (*). A solution is considered better, if the '
       / 'relative objective function difference is greater than ';

   fsqr.nr = 2;
       put bound:0 '.';   
   fsqr.nr = 1;  

   
   loop( (resultA,resultB),

      doheader = yes;

      loop( (m(modelname),solverA,solverB),      
        
            if ( mstat(modelname,solverA,resultA) and mstat(modelname,solverB,resultB),

               if(doheader,
                  put // '========================================================================='//   
                  put solverA.tl:10 ': ';
                  put resultA.te(resultA):0 /;
                  put solverB.tl:10 ': ';
                  put resultB.te(resultB):0 //;
                  
                  put 'Modelname':15                
                  put solverA.tl:>14   ;
                  put solverB.tl:>14   ;
                  put '     RATIO OF RESOURCE TIMES ('solverA.tl:0 '/' solverB.tl:0 ')' ;
                  put '   OBJ ' solverA.tl:15      '    OBJ ' solverB.tl:15 /;     
                  
                  put '---------------------------------------------------------------------------------------' ;
                  put '---------------------------------------------' /;
                  doheader = no;
               );

               put modelname.tl:15;

               if( resA(modelname) > 1e-5 and resB(modelname) < 1e-5,
                   ratio = inf;
               elseif( resA(modelname) < 1e-5 and resB(modelname) < 1e-5),
                   ratio =1;
               else
                   ratio = resA(modelname) / resB(modelname);
               );
               put resA(modelname):>14:4  resB(modelname):>14:4 ;

*            === Output ratio of resource times
               if( sameas(resultA,"opt") and sameas(resultB,"opt"),

 
                   objdiff(modelname) = ( objA(modelname)-objB(modelname) ) / max( abs(objA(modelname)), abs(objB(modelname)), bound); 

                   if( ratio = inf,
                      put ratio:>16 '.000' ;
                   else
                      put ratio:20:3 ;
                   );

*                === Output objective values (maximize)
                   if( dir(modelname),
                      if (objdiff(modelname) > bound,
                         put objA(modelname):>40:8 '(*)'  objB(modelname):>20:8  /;
                      elseif (-objdiff(modelname) > bound),                      
                         put objA(modelname):>40:8 '   '  objB(modelname):>20:8 '(*)' /;
                      else
                         put objA(modelname):>40:8 '   ' objB(modelname):>20:8 /;
                      );
*                === Output objective values (minimize)
                   else
                      if (-objdiff(modelname) > bound,
                         put objA(modelname):>40:8 '(*)'  objB(modelname):>20:8 /;
                      elseif (objdiff(modelname) > bound),                      
                         put objA(modelname):>40:8 '   '  objB(modelname):>20:8 '(*)' /;
                      else
                         put objA(modelname):>40:8 '   ' objB(modelname):>20:8 /;
                      );
                   );
               elseif( sameas(resultA,"opt") ),
                   put '--':>20  objA(modelname):>40:8 '(*)'  objB(modelname):>20:8  /;
               elseif( sameas(resultB,"opt") ),
                   put '--':>20  objA(modelname):>40:8 '   '  objB(modelname):>20:8 '(*)' /;
               else
                  put '--':>20 '--':>40  '--':>20 /;
               );
            );
      );

   );

);   


putclose fsqr;


*==============================================================================
*=== Output results to _sqr.htm file
*==============================================================================

file fhtm /%outfile%_sqr.htm/;
put fhtm;

if (list_html("%html%") = list_html("yes"),

*=== Output square
   put / '<html><head> <title>NLP Solver Square Comparison - All Models</title>'
       / '<body bgcolor="#ffffff">'

   put / '<h2>NLP Solver Square Comparison: Considers all models. </h2>' /; 
       
   put / 'NLP solver comparison utility.<br><br>'
       / 'Compares all solver return outcomes (for example optimal, infeasible, unbounded,' 
       / 'interrupt, fail) of one solver with all return outcomes of another solver. Interrupt'
       / 'denotes resource or iteration limit has been reached.' /;
 
   solvernum = 0;
   loop(solvers,
      solvernum = solvernum+1;
      put$(solvernum eq 1) / 'Solver ' solvers.tl:0 ' is represented on the left (rows) and ';
      put$(solvernum eq 2) / 'solver ' solvers.tl:0 ' on top (columns).'
                           / 'See the NLP <a href="#SquareDef">solver return definitions</a> for return codes.'
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
                            /  '   <td align=center><b>optimal   </b></td>'
                            /  '   <td align=center><b>infeasible</b></td>'
                            /  '   <td align=center><b>interrupt (time or iter.)</b></td>'
                            /  '   <td align=center><b>fail      </b></td>'
                            /  '   <td align=center><b>total ' solvers.tl '</b></td>';
   );
   put / '</tr>';
   
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
      put   '   <td align=right><tt>' sum(resultB, resulttotals(resultA, resultB ) ):0:0 '</tt></td>';
      put / '</tr>';
   );

   solvernum = 0;
   loop(solvers,
      solvernum = solvernum+1;
      put$(solvernum eq 2) '<tr>' / '   <td><b>total ' solvers.tl:9 '</b></td>' ;
   );
   
   loop(resultB,
      put / '   <td align=right><tt>' sum(resultA, resulttotals(resultA, resultB ) ):0:0 '</tt></td>' ;
   );
   put / '   <td align=right><tt>' sum( (resultA,resultB), resulttotals(resultA,resultB)  ):0:0 '</tt></td>' ;

   put / '</tr>'
       / '</table>' //;



   put / '<br><br><hr><br>'

   put / '<h3><a name="#SquareDef">NLP solver return definitions:</a></h3>' 
       / '<table width="50%" border=1>'
       / '   <tr><td align=left><b>Outcome</b></td><td align=right><b>Model Status</b></td>'
                                         '<td align=right><b>Solver Status</b></td> </tr>'
       / '   <tr><td align=left>optimal</td><td align=right> 1 or 2 </td><td align=right> 1 </td> </tr>'
       / '   <tr><td align=left>infeasible</td><td align=right> 4 or 5 </td><td align=right> 1 </td> </tr>'
       / '   <tr><td align=left>interrupt</td><td align=right> any </td><td align=right> 2 or 3 </td> </tr>'
       / '   <tr><td align=left>fail</td><td align=right> all other </td><td align=right> all other </td> </tr>'
       / '</table>' //

   put / '<br><br><hr><br>'



*=== Output models 

   put / '<h3>Solver Resource Times</h3>'
       / 'Models for each solver pair outcome. Listed are the solver' 
       / 'resource times in seconds, as well as the ratio of resource'
       / 'times for the two solvers if both solved optimally.<br><br>' //

       / 'Also listed are the objective values using both solvers. The '
       / 'better solution found is listed in boldface. A solution is considered '
       / 'better, if the relative objective function difference is greater than ';

   fhtm.nr = 2;
   put / bound:0 '. <br><br>';       
   fhtm.nr = 1;

   
   loop( (resultA,resultB),

      doheader = yes;

      loop( (m(modelname),solverA,solverB),      
        
            if ( mstat(modelname,solverA,resultA) and mstat(modelname,solverB,resultB),

               if(doheader,
                  put / '<a name="' resultA.tl:0 resultB.tl:0 '">' ;
                  put / '<h4>'solverA.tl:10 ': '
                         resultA.te(resultA):>10 ' -- ';
                  put    solverB.tl:10 ': '
                         resultB.te(resultB):>10 '</h4>'/;

                  put / '<table width="100%" border=1>'
                  put / '<tr>'
                  
                  put /  '   <td align=left><b>Modelname</b></td>'                
                      /  '   <td align=right><b>' solverA.tl:>10 '</b></td>'
                      /  '   <td align=right><b>' solverB.tl:>10 '</b></td>'
                      /  '   <td align=center><b>Ratio ('solverA.tl:0 '/' solverB.tl:0 ') </b></td>'
                      /  '   <td align=right><b>Obj ('solverA.tl:0') </b></td>'
                      /  '   <td align=right><b>Obj ('solverB.tl:0') </b></td>'
                      /  '</tr>';
 
                  doheader = no;
               );


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


*            === Output ratios of resource times                 
               if( sameas(resultA,"opt") and sameas(resultB,"opt"),

                   if (ratio = inf,
                     put '<td align=right><tt>' ratio:16 '.000</tt></td>';
                  else
                     put '<td align=right><tt>' ratio:0:3 '</tt></td>';
                  );
     
*             === Output objective values (maximizing)
                   if( dir(modelname),
                      if (objdiff(modelname) > bound,
                         put '<td align=right><b><tt>' objA(modelname):>40:8 '</tt></b></td><td align=right><tt>'  objB(modelname):>20:8 '</tt></td>'/;
                      elseif (-objdiff(modelname) > bound),                      
                         put '<td align=right><tt>' objA(modelname):>40:8 '</tt></td><td align=right><b><tt>'  objB(modelname):>20:8 '</tt></b></td>'/;   
                      else
                         put '<td align=right><tt>' objA(modelname):>40:8 '</tt></td><td align=right><tt>' objB(modelname):>20:8 '</tt></td>' /;
                      );
*             === Output objective values (minimizing)
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
               elseif( sameas(resultA,"opt") ),                
                   put '<td align=right>---</td><td align=right><tt>' objA(modelname):0:8 '</tt></td><td align=right>---</td></tr>';  
               elseif( sameas(resultB,"opt") ),                
                   put '<td align=right>---</td><td align=right>---</td><td align=right><tt>' objB(modelname):0:8 '</tt></td></tr>';                      else
                  put '<td align=right>---</td><td align=right>---</td><td align=right>---</td></tr>';
               );
            );
      );

      put$(not doheader) / '</tr></table><br><br><hr><br>' ///;
      

   );

   put / '</body>'
       / '</html>';

);

