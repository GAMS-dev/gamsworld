$Title Fixed Cost Network Flow Problem with Cuts using BCH Facility - script generator

$version 140 goto OK
$abort 'need newer GAMS version'
$label OK

set allinst all 83 instances /
   beasleyC1,     beasleyC2,     beasleyC3,     beavma       
   berlin,        brasil,        fixnet6,       g150x1100    
   g150x1650,     g180x666,      g200x740b,     g200x740c    
   g200x740d,     g200x740e,     g200x740f,     g200x740g    
   g200x740h,     g200x740i,     g200x740,      g40x132      
   g50x170,       g55x188c,      g55x188,       h50x2450b    
   h50x2450c,     h50x2450d,     h50x2450e,     h50x2450     
   h80x6320b,     h80x6320c,     h80x6320d,     k10x90       
   k14x182b,      k14x182,       k15x210,       k15x420      
   k15x630,       k16x240b,      k16x240,       k20x380b     
   k20x380c,      k20x380d,      k20x380e,      k20x380      
   l121x232,      l451x885b,     l451x885,      l61x114      
   mc11,          mc7,           mc8,           mtest4ma     
   p100x588b,     p100x588c,     p100x588d,     p100x588     
   p200x1188b,    p200x1188c,    p200x1188,     p500x2988b   
   p500x2988c,    p500x2988d,    p500x2988,     p50x288b     
   p50x288,       p50x576,       p50x864,       p80x400b     
   p80x400,       r20x100,       r20x200,       r30x160      
   r50x360,       r80x800,       sp100x200,     sp150x300b   
   sp150x300c,    sp150x300d,    sp150x300,     sp50x100     
   sp80x160,      sp90x180,      sp90x250/


Table mdata(allinst,*) data for managing BCH
$ontext
 startcut: 
  the LP relaxation needs to be at least startcut before the
  dicut generation starts (inf disables cuts)

 startheur: 
  the best integer needs to be less than startheur before the
  local branching heuristic starts (0 disables heuristic)
$offtext

                         startcut      startheur
brasil                  10161.80        16457.00
berlin                    652.64            0.00
mc7                      3318.35         5876.00
mc8                      1450.95         1957.00
mc11                    10887.26        13548.00
beasleyC2                 110.32          172.00
beasleyC3                 666.18          933.00
g150x1100               67499.06        86672.00
g150x1650               60989.08        70649.00
g200x740c              668844.61       680539.00
l451x885               415230.32       441922.00
l451x885b              547702.18       571882.00
p200x1188c              10838.71        15078.00
h50x2450                29771.88        33299.46
h50x2450b                3012.79         3050.09
h50x2450c                4584.24         5176.87
h50x2450d                4368.81         4754.81
h50x2450e                3815.53         4231.33
h80x6320b                5363.76            0.00
h80x6320c                5727.62            0.00
h80x6320d                5672.82            0.00
g200x740                43570.54        44401.00
g200x740b              175165.55       183992.00
g200x740g               37945.53        58183.00
g200x740h              126648.84       137554.00
g200x740i               26262.14        44069.00
g55x188                 22326.14        25332.00
k16x240                  8941.48        10886.00
k16x240b                 9970.23        12294.00
k20x380                  1777.97         1970.00
r20x200                 13070.78        15011.00
r30x160                 19940.40        22130.00
r50x360                  1571.35         1735.00
r80x800                  5066.87         5472.00
p100x588b               43131.23        58977.00
p200x1188b              51093.94        57752.00
p500x2988b             164185.20       179598.00
p50x288b                20519.06        22547.00
p80x400b                34692.06        42409.00
p100x588                 8481.40         9067.00
p200x1188               10778.22        11546.00
p500x2988               70513.42        71963.00
p80x400                  8200.37         8860.00
sp150x300b                 48.70           56.00
sp150x300d                 59.37           69.00
;

mdata(allinst,'startcut')$(mdata(allinst,'startcut')=0) = inf;

set m(allinst) difficult instances /
   beasleyC3,   berlin,      brasil,      g150x1100,   g150x1650  
   g200x740,    g200x740b,   g200x740e,   g200x740g,   g200x740h  
   g200x740i,   h50x2450,    h50x2450b,   h50x2450c,   h50x2450d  
   h50x2450e,   h80x6320b,   h80x6320c,   h80x6320d,   k16x240    
   k16x240b,    k20x380,     l451x885,    mc11,        mc7        
   mc8,         p100x588,    p100x588b,   p200x1188,   p200x1188b
   p500x2988,   p500x2988b,  p80x400,     p80x400b,    r20x200  
   r50x360,     r80x800
/;

$if set dataonly $exit

file frun /run.gms/;

$if set optfile       $set xoptfile 1
$if not set optfile   $set xoptfile 0
$if not set step      $set step bch
$if not set cutsoff   $set cutsoff 0
$if not set heuroff   $set heuroff 0
$if not set solver    $set solver cplex
$if not set reslim    $set reslim 1800
$if not set nicedir   $set nicedir includes
$if not set tracebase $set tracebase %solver%

$onecho > trc.txt
* Trace Record Definition
* GamsExit
* InputFileName NumberOfVariables NumberOfEquations NumberOfNonZeros ModelStatus SolverTime ObjectiveValue ObjectiveValueEstimate WallTime
*
$offecho

$set genopt reslim=%reslim% optfile=%xoptfile% mip=%solver% traceopt=5 lo=2 ps=0 stepsum=1 idir=%nicedir% optcr=0 iterlim=10000000 savepoint=1

$ifi %step% == bch     $goto runbch
$ifi %step% == convert $goto runconvert
$abort 'unknown step name: %step%'

$label runconvert
* Create CONVERT run file
$set CONVERTopt %genopt% mip=convert optfile=1

put frun '* CONVERT run file'
loop(m,
  put / '$echo CplexMps ' m.tl:0 '.mps > convert.opt'
      / '$call gams bchfcnet.gms --fname ' m.tl:0 ' %CONVERTopt% ';
);

$goto done

$label runbch
* Create BCH run file
$set tracef %tracebase%.txt
$set BCHoptC --startcut  ' (mdata(mx,"startcut")-1):0 '
$set BCHoptH --startheur ' mdata(mx,"startheur"):0 '
$call mv -f trc.txt %tracef%

set mx(allinst) models to run; mx(m) = yes;
$if set runall mx(allinst) = yes;

put frun '* BCH run file' / '$echo {print $2} > x.awk';
loop(mx,
  put / '$call cp -f bchfcnet.gms ' mx.tl:0 '.gms'
      / '$call gams ' mx.tl:0 ' --fname ' mx.tl:0 ' %genopt% trace=%tracef%';
  put$(%cutsoff% = 1) ' --cutsoff 1'; put$(%cutsoff% = 0) ' %BCHoptC%'
  put$(%heuroff% = 1) ' --heuroff 1'; put$(%heuroff% = 0) ' %BCHoptH%'
  put / '$echon "$setglobal xxx " > %gams.scrdir%wall.scr'
      / "$call tail -n 2 " mx.tl:0 ".lst | head -n 1 | awk -f x.awk >> %gams.scrdir%wall.scr"
      / '$include %gams.scrdir%wall.scr'
      / '$call sed /"^[a-z]"/s/WallTime/%xxx%/ %tracef% > %gams.scrdir%xxx'
      / '$call mv -f %gams.scrdir%xxx %tracef%'
      / '$if exist master_p.gdx $call mv -f master_p.gdx ' mx.tl:0 '.gdx'
);
$goto done

$label done
putclose frun;
$if set doexec execute '=gams run lo=3'
