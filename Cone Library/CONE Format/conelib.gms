$ontext
The models
==========

The original algebraic models have been translated into a scalar format in
which documentation and comments have been removed, sets and set operators
have been unrolled, and the original data and structure of the model have
disappeared. This kind of model represenation has the advantage of an easy
translation into different languages and also hides propriotary
information. The latter is neccessary because the library contains
confidential models. For the purpose of algorithm development the
representaton of the model is not of much importantance. The models are
identified by their unique name (e.g. nb_l2_bessel.gms).

The points
==========

For a model in the CONELib we will collect points. A point represent
some solution to a problem. The header of the file containing a point
explains the details of the point. It might contain the contributor of
the point, the solution value, the algorithm which was used to produce
the point, and the CPU time for finding the point. The points are part
of the library. They are indentified by the model name plus the
extension .p1, .p2, .p3, ... (e.g. nb_l2_bessel.p1).

In order to start a model from a certain point you can run gams in the
following way:

	  gams nb_l2_bessel u1=nb_l2_bessek.p1

The controlling model conelib.gms
===================================

The library also contains the GAMS model conelib.gms that helps
organizing the models and points in the CONELib. All models are
matched with propper references to contributors, publications, and
application areas.

$offtext

$eolcom #

Set s sequence number / 1*31 /; 

$set GAMSMODURL   http://www.gams.com/modlib/libhtml
$set DIMACSMODURL http://plato.asu.edu/ftp/socp/
$set GAMSCONICURL http://www.gams.com/conic
$set VANDERBEI    http://www.princeton.edu/~rvdb/ampl/nlmodels/
$set MATLABFIR    http://www.csee.umbc.edu/~dschol2/opt.html 

set m models /
* Begin cone models
    emfl_socp_200_25      "GAMS Model <a href=orig_models/emfl_socp.gms>emfl_socp.gms</a> from <a href=%VANDERBEI%facloc/emfl_socp.mod>%VANDERBEI%facloc/emfl_socp.mod</a>"
    emfl_socp_200_100     "GAMS Model <a href=orig_models/emfl_socp.gms>emfl_socp.gms</a> from <a href=%VANDERBEI%facloc/emfl_socp.mod>%VANDERBEI%facloc/emfl_socp.mod</a>"
    emfl_socp_500_100     "GAMS Model <a href=orig_models/emfl_socp.gms>emfl_socp.gms</a> from <a href=%VANDERBEI%facloc/emfl_socp.mod>%VANDERBEI%facloc/emfl_socp.mod</a>"
    emfl_socp_250_225     "GAMS Model <a href=orig_models/emfl_socp.gms>emfl_socp.gms</a> from <a href=%VANDERBEI%facloc/emfl_socp.mod>%VANDERBEI%facloc/emfl_socp.mod</a>"
    firl1linfeps          "FIR model created using the <a href=%MATLABFIR%>MATLAB FIR toolbox</a> using the script from http://plato.asu.edu/ftp/fir"
    firl2l1alph           "FIR model created using the <a href=%MATLABFIR%>MATLAB FIR toolbox</a> using the script from http://plato.asu.edu/ftp/fir"
    firl2linfeps          "FIR model created using the <a href=%MATLABFIR%>MATLAB FIR toolbox</a> using the script from http://plato.asu.edu/ftp/fir" 
    fir_socp_10           "GAMS Model <a href=orig_models/fir_socp.gms>fir_socp.gms</a> from <a href=%VANDERBEI%firfilter/fir_socp.mod>%VANDERBEI%firfilter/fir_socp.mod</a>"
    fir_socp_20           "GAMS Model <a href=orig_models/fir_socp.gms>fir_socp.gms</a> from <a href=%VANDERBEI%firfilter/fir_socp.mod>%VANDERBEI%firfilter/fir_socp.mod</a>"
    fir_socp_40           "GAMS Model <a href=orig_models/fir_socp.gms>fir_socp.gms</a> from <a href=%VANDERBEI%firfilter/fir_socp.mod>%VANDERBEI%firfilter/fir_socp.mod</a>"
    fir_socp_80           "GAMS Model <a href=orig_models/fir_socp.gms>fir_socp.gms</a> from <a href=%VANDERBEI%firfilter/fir_socp.mod>%VANDERBEI%firfilter/fir_socp.mod</a>"
    nb                    "DIMACS Challenge SOCP (extended MPS format) from <a href=%DIMACSMODURL%>%DIMACSMODURL%</a>"
    nb_l1                 "DIMACS Challenge SOCP (extended MPS format) from <a href=%DIMACSMODURL%>%DIMACSMODURL%</a>"
    nb_l2                 "DIMACS Challenge SOCP (extended MPS format) from <a href=%DIMACSMODURL%>%DIMACSMODURL%</a>"
    nb_l2_bessel          "DIMACS Challenge SOCP (extended MPS format) from <a href=%DIMACSMODURL%>%DIMACSMODURL%</a>"
    qp7                   "GAMS Model of <a href=%GAMSMODURL%/qp7.htm>qp7.gms</a> from GAMS Model Library"
    qp7_50_100            "GAMS Model of <a href=%GAMSMODURL%/qp7.htm>qp7.gms</a> from GAMS Model Library"
    qp7_100_100           "GAMS Model of <a href=%GAMSMODURL%/qp7.htm>qp7.gms</a> from GAMS Model Library"
    qp7_100_170           "GAMS Model of <a href=%GAMSMODURL%/qp7.htm>qp7.gms</a> from GAMS Model Library"
    sched_50_50_orig      "DIMACS Challenge SOCP (extended MPS format) from <a href=%DIMACSMODURL%>%DIMACSMODURL%</a>"
    sched_50_50_scaled    "DIMACS Challenge SOCP (extended MPS format) from <a href=%DIMACSMODURL%>%DIMACSMODURL%</a>"
    sched_100_50_orig     "DIMACS Challenge SOCP (extended MPS format) from <a href=%DIMACSMODURL%>%DIMACSMODURL%</a>"
    sched_100_50_scaled   "DIMACS Challenge SOCP (extended MPS format) from <a href=%DIMACSMODURL%>%DIMACSMODURL%</a>"
    sched_100_100_orig    "DIMACS Challenge SOCP (extended MPS format) from <a href=%DIMACSMODURL%>%DIMACSMODURL%</a>"
    sched_100_100_scaled  "DIMACS Challenge SOCP (extended MPS format) from <a href=%DIMACSMODURL%>%DIMACSMODURL%</a>"
    sched_200_100_orig    "DIMACS Challenge SOCP (extended MPS format) from <a href=%DIMACSMODURL%>%DIMACSMODURL%</a>"
    sched_200_100_scaled  "DIMACS Challenge SOCP (extended MPS format) from <a href=%DIMACSMODURL%>%DIMACSMODURL%</a>"
    springs_10            "GAMS Model <a href=orig_models/springs.gms>spring.gms</a> from <a href=%VANDERBEI%springs/springs.mod>%VANDERBEI%springs/springs.mod</a>"
    springs_100           "GAMS Model <a href=orig_models/springs.gms>spring.gms</a> from <a href=%VANDERBEI%springs/springs.mod>%VANDERBEI%springs/springs.mod</a>"
    springs_1000          "GAMS Model <a href=orig_models/springs.gms>spring.gms</a> from <a href=%VANDERBEI%springs/springs.mod>%VANDERBEI%springs/springs.mod</a>"
    springs_10000         "GAMS Model <a href=orig_models/springs.gms>spring.gms</a> from <a href=%VANDERBEI%springs/springs.mod>%VANDERBEI%springs/springs.mod</a>"
/

Set d application structure /
  dimacs     "DIMACS Challenge SOCP"
  gamsmod    "GAMS Model Library"
  vanderbei  "CONE Models from Vanderbei"
  matlabfir  "MATLAB FIR toolbox models"
/

set ms(m,s) model sequence mapping /
  nb                   .  1,  nb_l1                .  2,  nb_l2               .  3
  nb_l2_bessel         .  4,  qp7                  .  5,  qp7_50_100          .  6 
  qp7_100_100          .  7,  qp7_100_170          .  8,  sched_50_50_orig    .  9 
  sched_50_50_scaled   . 10,  sched_100_50_orig    . 11,  sched_100_50_scaled . 12
  sched_100_100_orig   . 13,  sched_100_100_scaled . 14,  sched_200_100_orig  . 15
  sched_200_100_scaled . 16,  emfl_socp_200_25     . 17,  emfl_socp_200_100   . 18 
  emfl_socp_500_100    . 19,  emfl_socp_250_225    . 20,  springs_10          . 21 
  springs_100          . 22,  springs_1000         . 23,  springs_10000       . 24
  fir_socp_10          . 25,  fir_socp_20          . 26,  fir_socp_40         . 27
  fir_socp_80          . 28,  firl1linfeps         . 29,  firl2l1alph         . 30
  firl2linfeps         . 31
/

Set demo(s) models that fit into demo system;  
Set big(s) model that do not fit into the GAMS demo system;
demo('9') = yes;
demo('21') = yes;
demo('22') = yes;
big(s)$[not demo(s)] = yes;



set mtype / LP, NLP /;
set smt(s,mtype); smt(s,'LP') = yes;

* set is(s) //;
* smt(is,'NLP') = yes; smt(is,'LP') = no;

display smt;

Set ds(d,s) model application mapping /
  dimacs    . (5*8, 13*20)
  gamsmod   . (9*12)
  vanderbei . (1*4,21*28)
  matlabfir . (29*31)
/;


$if not exist gams.bib $goto nobib
$echo r1  458  > g2g.txt
$echo r2  459 >> g2g.txt
$echo r3  460 >> g2g.txt
$echo r4  461 >> g2g.txt
$echo r5  381 >> g2g.txt
$echo r6  467 >> g2g.txt
$echo r7  468 >> g2g.txt

$set cat type
$if %system.filesys% == UNIX $set cat cat

$call "bib2gms gams.bib r=g2g.txt i=cone"
$echo set a authors /                             > coneref.inc
$call %cat% cone.a                               >> coneref.inc
$echo               /                            >> coneref.inc
$echo set r references /                         >> coneref.inc
$call %cat% cone.r                               >> coneref.inc
$echo                  /                         >> coneref.inc
$echo $onempty                                   >> coneref.inc
$echo set cr(r,r) cross references /             >> coneref.inc
$call %cat% cone.crr                             >> coneref.inc
$echo                              /             >> coneref.inc
$echo set ca(a) credit authors /                 >> coneref.inc
$call %cat% cone.ca                              >> coneref.inc
$echo                          /                 >> coneref.inc
$echo set af(a,r) first author     /             >> coneref.inc
$call %cat% cone.far                             >> coneref.inc
$echo                              /             >> coneref.inc
$echo set ar(a,r) author reference mapping /     >> coneref.inc
$call %cat% cone.ar                              >> coneref.inc
$echo                                      /     >> coneref.inc
$echo $offempty                                  >> coneref.inc


$label nobib

$include coneref.inc

set nopubs(r) not real publications; nopubs(r) = no;

set pubs(r) real publications;
pubs(r) = not nopubs(r);

set mr(m,r) model reference mapping /
* Cone model references
  emfl_socp_200_25     . (r2,r6,r7) 
  emfl_socp_200_100    . (r2,r6,r7) 
  emfl_socp_500_100    . (r2,r6,r7) 
  emfl_socp_250_225    . (r2,r6,r7) 
  firl1linfeps         . (r7) 
  firl2l1alph          . (r7)
  firl2linfeps         . (r7) 
  fir_socp_10          . (r2,r6) 
  fir_socp_20          . (r2,r6) 
  fir_socp_40          . (r2,r6) 
  fir_socp_80          . (r2,r6) 
  nb                   . (r3,r4)     
  nb_l1                . (r3,r4)     
  nb_l2                . (r3,r4)     
  nb_l2_bessel         . (r3,r4)     
  qp7                  . (r1,r5)     
  qp7_50_100           . (r1,r5)     
  qp7_100_100          . (r1,r5)     
  qp7_100_170          . (r1,r5)     
  sched_50_50_orig     . (r3,r4)  
  sched_50_50_scaled   . (r3,r4)  
  sched_100_50_orig    . (r3,r4)  
  sched_100_50_scaled  . (r3,r4)  
  sched_100_100_orig   . (r3,r4)  
  sched_100_100_scaled . (r3,r4)  
  sched_200_100_orig   . (r3,r4)  
  sched_200_100_scaled . (r3,r4)  
  springs_10           . (r6,r7) 
  springs_100          . (r6,r7) 
  springs_1000         . (r6,r7) 
  springs_10000        . (r6,r7) 
/		     
    	
set p restart or solution points /p1*p1/;

$onempty  		
set mp(m,p) models with bestknown point /
  emfl_socp_200_25    .p1
  fir_socp_10         .p1
  fir_socp_20         .p1
  nb_l2               .p1
  nb_l1               .p1
  nb_l2_bessel        .p1
  qp7                 .p1
  qp7_50_100          .p1
  qp7_100_100         .p1
  qp7_100_170         .p1
  sched_50_50_orig    .p1
  sched_50_50_scaled  .p1
  sched_100_50_orig   .p1
  sched_100_50_scaled .p1
  sched_100_100_scaled.p1
  sched_200_100_scaled.p1
  springs_10          .p1
  springs_100         .p1
  springs_1000        .p1
/;

set bk(m,p) models with bestknown point /
/;

set msol(m) models with bestknown solution /
  emfl_socp_200_25    
  fir_socp_10         
  fir_socp_20         
  nb_l2                  
  nb_l1               
  nb_l2_bessel        
  qp7                 
  qp7_50_100          
  qp7_100_100         
  qp7_100_170         
  sched_50_50_orig    
  sched_50_50_scaled  
  sched_100_50_orig   
  sched_100_50_scaled 
  sched_100_100_scaled
  sched_200_100_scaled
  springs_10          
  springs_100         
  springs_1000        
/

parameter bestknown(m,p) /
$ondelim
  emfl_socp_200_25    .p1         4.6867543084e+01 
  fir_socp_10         .p1      -  1.7382374235e+000
  fir_socp_20         .p1         1.0000818096e+000
  nb_l2               .p1        -0.05070309
  nb_l1               .p1       -13.01227068
  nb_l2_bessel        .p1        -0.10256951
  qp7                 .p1         0.00080932
  qp7_50_100          .p1         1.8160859181e-003
  qp7_100_100         .p1         4.2907248079e-003
  qp7_100_170         .p1         3.4124057685e-003
  sched_50_50_orig    .p1     26672.99160412
  sched_50_50_scaled  .p1         7.85203848
  sched_100_50_orig   .p1    181889.91807851
  sched_100_50_scaled .p1        67.16508012
  sched_100_100_scaled.p1        27.33082540
  sched_200_100_scaled.p1        51.81197317
  springs_10          .p1        -1.8544606599e+02 
  springs_100         .p1        -4.1591042203e+004
  springs_1000        .p1        -4.0032605842e+007
/;
$offdelim


set xp(m) extra run parameter for scalar version /
/
$offempty

parameter numcones(m) "number of conic equations" /
    emfl_socp_200_25        5625
    emfl_socp_200_100      30000
    emfl_socp_500_100      60000
    emfl_socp_250_225     106875
    firl1linfeps            3844
    firl2l1alph             1923
    firl2linfeps            2943
    fir_socp_10                1
    fir_socp_20                1
    fir_socp_40                1
    fir_socp_80                1 
    nb                       793  
    nb_l1                    793
    nb_l2                    839
    nb_l2_bessel             839
    qp7                        1 
    qp7_50_100                 1
    qp7_100_100                1
    qp7_100_170                1
    sched_50_50_orig           2
    sched_50_50_scaled         1
    sched_100_50_orig          2
    sched_100_50_scaled        1
    sched_100_100_orig         2   
    sched_100_100_scaled       1
    sched_200_100_orig         2
    sched_200_100_scaled       1
    springs_10                11   
    springs_100              101
    springs_1000            1001 
    springs_10000          10001
/;

Set error01(s)   sequence numbers with no model
    error02(m)   models with no sequence number
    error03(s)   models with no application
    error04(d)   applications with no models
    error06(m)   models without a reference
    error07(r)   reference without an author
    error08(a)   authors without reference
    error10(r)   references without a model
    error11(s)   more or less than one model type;

error01(s)   = sum(ms(m,s),1)=0;
error02(m)   = sum(ms(m,s),1)=0;
error03(s)   = sum(ds(d,s),1)=0;
error04(d)   = sum(ds(d,s),1)=0;
error06(m)   = sum(mr(m,r),1)=0;
error07(r)   = sum(ar(a,r),1)=0;
error08(a)   = sum(ar(a,r),1)=0;
error10(r)   = sum(mr(m,r),1)=0;
error11(s)   = sum(mtype$smt(s,mtype),1) <> 1;

abort$card(error01) error01;
abort$card(error02) error02;
abort$card(error03) error03;
abort$card(error04) error04;
abort$card(error06) error06;
abort$card(error07) error07;
abort$card(error08) error08;
display error10;

parameter report;

report("#applications")      = card(d);
report("#models")            = card(s);

option report:0:0:1;
display report;



