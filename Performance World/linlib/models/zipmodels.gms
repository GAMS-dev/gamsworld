$ontext =============================================================================

FILENAME:  zipmodels

PURPOSE:   

1. Zips all individual models and best known points

2. Zips all models and points by origin:

        mittelmannLP.zip  "LP test sets from Mittelmann"
        netlib.zip        "NETLIB LP test sets"
        misc.zip          "MISC LP test sets from ftp.sztaki.hu"
        infeas.zip        "INFEASIBLE LP test sets from NETLIB"
        problematic.zip   "PROBLEMATIC LP test sets from ftp.sztaki.hu"
        stochlp.zip       "STOCHASTIC LP test sets from ftp.sztaki.hu"
        kennington.zip    "KENNINGTON LP test sets from NETLIB"
        miplib.zip        "Test sets from MIPLIB 3"
        fctp.zip          "FCTP MIP test set from Mittelmann"
        neos.zip          "NEOS MIP benchmarks from Argonne"
        mittelmannMIP.zip "MIP test set from Mittelmann"
        walserACC.zip     "ACC MIP test set from Walser"

3. Zips all models by size grouping.
        tiny.zip
        small.zip
        medium.zip
        large.zip
        huge.zip

$offtext ============================================================================


$onecho > cr-zipmodels.gms

$include performlib.gms
file fzip / zipm.gms /; 
put fzip;                    
 

*=== Zip all models
loop(m, 
   put '$call gmszip ' m.tl:0 '.gdx.zip ' m.tl:0 '.gdx ' /;    
);

*=== Zip all points
loop(bk(m,p), 
   put '$call gmszip ' m.tl:0 '_' p.tl:0  '.gdx.zip ' m.tl:0 '_' p.tl:0  '.gdx ' /;    
);


*=== Zip models and points by origin
Set runmodels(*);
Alias(d_alias,d);

loop(d_alias,
   runmodels(m) = sum( (s,d)$(ds(d,s) and sameas(d_alias,d) and ms(m,s)), ord(m) );

   loop(runmodels(m),   
      put '$call gmszip ' d_alias.tl:0 '.zip ' m.tl:0 '.gdx ' /;  
      put '$call gmszip ' d_alias.tl:0 '.zip ' m.tl:0 '.gms ' /;  
      put '$call gmszip ' d_alias.tl:0 '_pts.zip ' m.tl:0 '_p1.gdx ' /;    
   );
);



*=== Zip models by size classification
Table stats(m,mtype,*) 
$include mstats.txt
;

Parameter numnz;

loop(modsize,

   loop(m,          
      numnz = sum(mtype, stats(m,mtype,'NZ'));
 
      if ( size_bounds(modsize,'lo')<numnz  and  numnz <= size_bounds(modsize,'hi'),

         put '$call gmszip ' modsize.tl:0 '.zip ' m.tl:0 '.gdx ' /; 
         put '$call gmszip ' modsize.tl:0 '.zip ' m.tl:0 '.gms ' /;  

         loop(p$mp(m,p),
            put '$call gmszip ' modsize.tl:0 '_pts.zip ' m.tl:0 '_' p.tl:0 '.gdx ' /;    
         );

      );
   );

);


*=== Zip Ptools
set gmstools /readtrace, checksol, convopt4, square, gratio, runall,
              performlib, crbatch, schulz, restime, pprofile, plotprof,
              pprocess, converttrace/;
set inctools /performref/;
set txttools /tiny_mod, small_mod, medium_mod, large_mod, huge_mod, mstats/;
set trctools /trace1, trace2, A, B, C/;

loop(gmstools,
   put '$call gmszip Ptools.zip ' gmstools.tl:0 '.gms '/;
);

loop(inctools,
   put '$call gmszip Ptools.zip ' inctools.tl:0 '.inc '/;
);

loop(txttools,
   put '$call gmszip Ptools.zip ' txttools.tl:0 '.txt '/;
);

loop(trctools,
   put '$call gmszip Ptools.zip ' trctools.tl:0 '.trc '/;
);



putclose fzip;
$offecho


$call gams cr-zipmodels
$call gams zipm


