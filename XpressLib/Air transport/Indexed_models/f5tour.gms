*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file f5tour.mos
*   ```````````````
*   Planning a flight tour
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "F-5 Tour planning"



* LONG VARIANT

Set CITIES
 / Bordeaux  , Brest      , Clermont_Ferrand , Dijon    ,
   Dunkerque , Grenoble   , Le_Havre         , Lille    , Limoges   ,
   Lyon      , Marseille  , Montpellier      , Mulhouse , Nancy     ,
   Nantes    , Nice       , Orleans          , Paris    , Perpignan ,
   Rennes    , Strasbourg , Toulouse         , Tours                 / ;
* Cities
Alias(CITIES,CITIES1);

Table DIST[CITIES,CITIES1]
                      Bordeaux Brest Clermont_Ferrand Dijon Dunkerque Grenoble Le_Havre Lille Limoges Lyon Marseille Montpellier Mulhouse Nancy Nantes  Nice Orleans Paris Perpignan Rennes Strasbourg Toulouse Tours
Bordeaux                     0   634      369           613       816   657      617     786    219    549     657     489        830      783    331    824   443    559     460     437      914      250      327
Brest                      634     0      752           812       718   996      468     723    602    890    1286    1048       1024      886    305   1351   539    564    1094     245     1026      884      456
Clermont_Ferrand           369   752        0           280       656   261      556     613    184    180     431     367        468      472    469    620   294    382     464     507      574      832      296
Dijon                      613   812      280             0       525   284      520     471    406    197     513     490        216      192    588    677   285    310     651     567      309      662      397
Dunkerque                  816   718      656           525         0   836      286     79     659    731    1049    1016        632      451    592   1216   400    275    1187     520      571      965      497
Grenoble                   657   996      261           284       836     0      776     750    472    104     286     288        447      466    711    340   493    576     449     747      505      543      536
Le_Havre                   617   468      556           520       286   776        0     284    503    676     983     950        692      511    374   1137   268    211    1028     279      651      809      290
Lille                      786   723      613           471        79   750      284       0    599    668     979     956        567      377    593   1148   339    224    1070     515      524      905      456
Limoges                    219   602      184           406       659   472      503     599      0    364     610     453        609      583    297    778   259    375     516     369      707      306      203
Lyon                       549   890      180           197       731   104      676     668    364      0     316     293        341      389    607    480   402    472     454     645      434      467      432
Marseille                  657  1286      431           513      1049   286      983     979    610    316       0     164        656      705    890    198   686    769     325     938      750      400      729
Montpellier                489  1048      367           490      1016   288      950     956    453    293     164       0        623      682    750    335   641    724     161     822      727      236      665
Mulhouse                   830  1024      468           216       632   447      692     567    609    341     656     623          0      178    812    765   490    467     784     779      106      864      611
Nancy                      783   886      472           192       451   466      511     377    583    389     705     682        178        0    674    806   376    307     843     655      140      854      492
Nantes                     331   305      469           588       592   711      374     593    297    607     890     750        812      674      0   1068   317    386     769     106      832      559      191
Nice                       824  1351      620           677      1216   340     1137    1148    778    480     198     335        765      806   1068      0   831    927     496    1106      842      582      877
Orleans                    443   539      294           285       400   493      268     339    259    402     686     641        490      376    317    831     0    116     752     285      515      565      116
Paris                      559   564      382           310       275   576      211     224    375    472     769     724        467      307    386    927   116      0     846     348      447      681      227
Perpignan                  460  1094      464           651      1187   449     1028    1070    516    454     325     161        784      843    769    496   752    846       0     875      888      210      719
Rennes                     437   245      507           567       520   747      279     515    369    645     938     822        779      655    106   1106   285    348     875       0      799      665      211
Strasbourg                 914  1026      574           309       571   505      651     524    707    434     750     727        106      140    832    842   515    447     888     799        0      901      632
Toulouse                   250   884      832           662       965   543      809     905    306    467     400     236        864      854    559    582   565    681     210     665      901        0      509
Tours                      327   456      296           397       497   536      290     456    203    432     729     665        611      492    191    877   116    227     719     211      632      509        0  ;



$ontext ;
* SHORT VARIANT
$Set NCITIES 7
Set CITIES / c1*c%NCITIES% / ;
* Cities
Alias(CITIES,CITIES1);

Table DIST[CITIES,CITIES1]
                   c1  c2  c3  c4  c5  c6  c7
          c1        0 786 549 657 331 559 250
          c2      786  0  668 979 593 224 905
          c3      549 668  0  316 607 472 467
          c4      657 979 316  0  890 769 400
          c5      331 593 607 890  0  386 559
          c6      559 224 472 769 386  0  681
          c7      250 905 467 400 559 681   0  ;
* Distance between cities
$offtext ;

Binary Variable fly[CITIES,CITIES1]
* 1 if flight from i to j

Variable TotalDist ;

Equation Eq_1(CITIES) ,
         Eq_2(CITIES) ,
         Def_obj      ;

* Visit every city once
Eq_1(CITIES)..
  Sum{CITIES1$(ord(CITIES) ne ord(CITIES1)), fly[CITIES1,CITIES]} =e= 1 ;
Eq_2(CITIES)..
  Sum{CITIES1$(ord(CITIES) ne ord(CITIES1)), fly[CITIES,CITIES1]} =e= 1 ;

* Objective: total distance
Def_obj..
 TotalDist =e= Sum{(CITIES,CITIES1)$(ord(CITIES) ne ord(CITIES1)),
                                   DIST[CITIES,CITIES1]*fly[CITIES,CITIES1] } ;


* Solve the problem
Model F_5_Tour_planning / All  / ;

Solve F_5_Tour_planning using MIP minimazing TotalDist ;

Display TotalDist.l ;