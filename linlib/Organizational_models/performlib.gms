$ontext

The models
==========

The original algebraic models have been translated into generic LP and
MIP format respectively in which documentation and comments have been 
removed, sets and set operators have been unrolled, and the original data 
and structure of the model have disappeared. The models themselves are in 
the form of generic LP or MIP  models respectively, where the model data 
which defines the problem is in .GDX (GAMS data exchange) format.

This kind of model representation has the advantage of easy
translation into different languages and also hides proprietary
information. The latter is neccessary because the library contains
confidential models. For the purpose of algorithm development and
performance testing the representaton of the model is not of much 
importance. The models are identified by their model nam  (e.g. 
10teams.gms) and the generic GAMS model data (e.g. 10teams.gdx). 
Although the model names are unique a MIP model differs from another
really only through different data and not the model structure itself.
This is also true for LPs.

Model from PerformanceLib are run exactly the same as other GAMS models:

>> gams (modelname)

The points
==========

For a model in the Performance Library we will collect points. A point 
represents some solution to a problem. The header of the file containing 
a point explains the details of the point. It contains the solution 
value and the algorithm which was used to produce the point. The points 
are part of the library. They are indentified by the model name plus the
extension _p1.gdx, _p2.gdx, ._p3.gdx, ... (e.g. 10teams_p1.gdx) and are in
.GDX format.

MIP:
----
In order to start a MIP model from a certain point users can run GAMS in the following way: 

     >> gams (modelname) --point=(point number) optfile=1

where 

        --point=p1 (p2, p3, etc.)

The option --point=(point number) tells GAMS to use a feasible point, 
where the --point value is the point number (p1, p2, p3, etc.). 

For MIP models, users will also have to create an option file for the 
specific solver used in order to tell it to use the restart point. For 
example, for CPLEX one would create an option file cplex.opt with the 
entry 

mipstart 1

Furthermore, users need to include the optfile=1 option to specify that 
a solver option file is used. 

LP:
---

If users with to make use of a starting point for LPs, the syntax is 
similar as for MIP models. 

     >> gams (modelname) --point=(point number)

No solver option file is necessary to tell GAMS to use the point. 

Resource Times (JFK)
====================

Each point web page contains information about the time the model took 
to solve. The resource time listed is the time it took to run on one 
of the GAMS workstations (JFK). JFK has the following specifications:

Processor Type:   Dual Pentium3 1.0 GHz each
Memory:		  2.0 Gb Total
OS:	          Red Hat Linux 7.1

The controlling model performlib.gms
====================================

The library also contains the GAMS model performlib.gms that helps in
organizing the models and points in the Performance Library. All models 
are matched with proper references to contributors, publications, and
application areas. It is essentially a database of information associated
with the Performance library models.

The Performance Library Statistics and HTML generators
======================================================

If the user chooses to recreate the Peformance library model statistics,
i.e. number of variables (continuous, binary, integer, etc.), equations,
and nonzeros, the user can run

          gams plibstat

which will create a text file performstat.txt containing the model
statistics, as well as a webpage performstat.htm containing similar
data. 

Running

          gams peformhtm

creates the actual webpages for each of the models showing the model
origin, references, best solution (if known), etc. The code also 
generates webpages for the point files, if any exist.


$offtext

$eolcom #


Set s sequence number / 1*699 /;

$set BASEURL1    http://plato.la.asu.edu/ftp/lptestset
$set BASEURL2    ftp://ftp.caam.rice.edu/pub/people/bixby/miplib/miplib3
$set BASEURL3    http://www.netlib.org/lp/data
$set BASEURL4    http://www.sztaki.hu/~meszaros/public_ftp/lptestset/
$set BASEURL5    http://www.netlib.org/lp/infeas
$set BASEURL6    http://plato.la.asu.edu/ftp/fctp
$set BASEURL7    ftp://ftp.mcs.anl.gov/neos/mip-bench
$set BASEURL8    http://plato.la.asu.edu/ftp/milp
$set BASEURL9    http://www.ps.uni-sb.de/~walser/benchmarks/acc-benchmarks-mps.tar.gz


set m models /
    10teams       "MPS file <a href=%BASEURL2%/10teams>10teams</a> from MIPLIB 3.0."
    25fv47        "MPS file (compressed EMPS format) <a href=%BASEURL3%/25fv47>25fv47</a> from NETLIB."
    80bau3b       "MPS file (compressed EMPS format) <a href=%BASEURL3%/80bau3b>80bau3b</a> from NETLIB."
    aa01          "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/aa01.gz>aa01.gz</a> from %BASEURL4%/misc/."
    aa03          "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/aa03.gz>aa03.gz</a> from %BASEURL4%/misc/."
    aa3           "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/aa3.gz>aa3.gz</a> from %BASEURL4%/misc/."
    aa4           "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/aa4.gz>aa4.gz</a> from %BASEURL4%/misc/."
    aa5           "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/aa5.gz>aa5.gz</a> from %BASEURL4%/misc/."
    aa6           "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/aa6.gz>aa6.gz</a> from %BASEURL4%/misc/."
    acc-tight-0   "MPS file acc-tight-0.mps from Joachim Walser's benchmarks at <a href=%BASEURL9%>acc-benchmarks-mps.tar.gz</a>."
    acc-tight-1   "MPS file acc-tight-1.mps from Joachim Walser's benchmarks at <a href=%BASEURL9%>acc-benchmarks-mps.tar.gz</a>."
    acc-tight-2   "MPS file acc-tight-2.mps from Joachim Walser's benchmarks at <a href=%BASEURL9%>acc-benchmarks-mps.tar.gz</a>."
    acc-tight-3   "MPS file acc-tight-3.mps from Joachim Walser's benchmarks at <a href=%BASEURL9%>acc-benchmarks-mps.tar.gz</a>."
    acc-tight-4   "MPS file acc-tight-4.mps from Joachim Walser's benchmarks at <a href=%BASEURL9%>acc-benchmarks-mps.tar.gz</a>."
    acc-tight-5   "MPS file acc-tight-5.mps from Joachim Walser's benchmarks at <a href=%BASEURL9%>acc-benchmarks-mps.tar.gz</a>."
    acc-tight-6   "MPS file acc-tight-6.mps from Joachim Walser's benchmarks at <a href=%BASEURL9%>acc-benchmarks-mps.tar.gz</a>."
    adlittle      "MPS file (compressed EMPS format) <a href=%BASEURL3%/adlittle>adlittle</a> from NETLIB."
    afiro         "MPS file (compressed EMPS format) <a href=%BASEURL3%/afiro>afiro</a> from NETLIB."
    agg           "MPS file (compressed EMPS format) <a href=%BASEURL3%/agg>agg</a> from NETLIB."
    agg2          "MPS file (compressed EMPS format) <a href=%BASEURL3%/agg2>agg2</a> from NETLIB."
    agg3          "MPS file (compressed EMPS format) <a href=%BASEURL3%/agg3>agg3</a> from NETLIB."
    air02         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/air02.gz>air02.gz</a> from %BASEURL4%/misc/."
    air03         "MPS file <a href=%BASEURL2%/air03>air03</a> from MIPLIB 3.0."
    air04         "MPS file <a href=%BASEURL2%/air04>air04</a> from MIPLIB 3.0."
    air05         "MPS file <a href=%BASEURL2%/air05>air05</a> from MIPLIB 3.0."
    air06         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/air06.gz>air06.gz</a> from %BASEURL4%/misc/."
    aircraft      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/aircraft.gz>aircraft.gz</a> from %BASEURL4%/misc/."
    arki001       "MPS file <a href=%BASEURL2%/arki001>arki001</a> from MIPLIB 3.0."
    bal8x12       "MPS file <a href=%BASEURL6%/bal8x12.mps.gz>bal8x12.mps.gz</a> from %BASEURL6%."
    bandm         "MPS file (compressed EMPS format) <a href=%BASEURL3%/bandm>bandm</a> from NETLIB."
    bas1lp        "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/bas1lp.gz>bas1lp.gz</a> from %BASEURL4%/misc/."
    baxter        "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/baxter.gz>baxter.gz</a> from %BASEURL4%/misc/."
    bc            "MPS file <a href=%BASEURL7%/bc.mps.gz>bc.mps.gz</a> from <a href=http://www-neos.mcs.anl.gov/>NEOS</a>."
    bc1           "MPS file <a href=%BASEURL8%/bc1.mps.gz>bc1.mps.gz</a> from %BASEURL8%."
    beaconfd      "MPS file (compressed EMPS format) <a href=%BASEURL3%/beaconfd>beaconfd</a> from NETLIB."
    bell3a        "MPS file <a href=%BASEURL2%/bell3a>bell3a</a> from MIPLIB 3.0."
    bell5         "MPS file <a href=%BASEURL2%/bell5>bell5</a> from MIPLIB 3.0."
    bgdbg1        "MPS file (compressed EMPS format) <a href=%BASEURL5%/bgdbg1>bgdbg1</a> from NETLIB."
    bgetam        "MPS file (compressed EMPS format) <a href=%BASEURL5%/bgetam>bgetam</a> from NETLIB."
    bgindy        "MPS file (compressed EMPS format) <a href=%BASEURL5%/bgindy>bgindy</a> from NETLIB."
    bgprtr        "MPS file (compressed EMPS format) <a href=%BASEURL5%/bgprtr>bgprtr</a> from NETLIB."
    bienst1       "MPS file <a href=%BASEURL8%/bienst1.mps.gz>bienst1.mps.gz</a> from %BASEURL8%."
    bienst2       "MPS file <a href=%BASEURL8%/bienst2.mps.gz>bienst2.mps.gz</a> from %BASEURL8%."
    binkar10_1    "MPS file <a href=%BASEURL7%/binkar10_1.mps.gz>binkar10_1.mps.gz</a> from <a href=http://www-neos.mcs.anl.gov/>NEOS</a>."
    bk4x3         "MPS file <a href=%BASEURL6%/bk4x3.mps.gz>bk4x3.mps.gz</a> from %BASEURL6%."
    blend         "MPS file (compressed EMPS format) <a href=%BASEURL3%/blend>blend</a> from NETLIB."
    blend2        "MPS file <a href=%BASEURL2%/blend2>blend2</a> from MIPLIB 3.0."
    bnl1          "MPS file (compressed EMPS format) <a href=%BASEURL3%/bnl1>bnl1</a> from NETLIB."
    bnl2          "MPS file (compressed EMPS format) <a href=%BASEURL3%/bnl2>bnl2</a> from NETLIB."
    boeing1       "MPS file (compressed EMPS format) <a href=%BASEURL3%/boeing1>boeing1</a> from NETLIB."
    boeing2       "MPS file (compressed EMPS format) <a href=%BASEURL3%/boeing2>boeing2</a> from NETLIB."
    bore3d        "MPS file (compressed EMPS format) <a href=%BASEURL3%/bore3d>bore3d</a> from NETLIB."
    box1          "MPS file (compressed EMPS format) <a href=%BASEURL5%/box1>box1</a> from NETLIB."
    brandy        "MPS file (compressed EMPS format) <a href=%BASEURL3%/brandy>brandy</a> from NETLIB."
    cap6000       "MPS file <a href=%BASEURL2%/cap6000>cap6000</a> from MIPLIB 3.0."
    capri         "MPS file (compressed EMPS format) <a href=%BASEURL3%/capri>capri</a> from NETLIB."
    car4          "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/car4.gz>car4.gz</a> from %BASEURL4%/misc/."
    cari          "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/cari.gz>cari.gz</a> from %BASEURL4%/misc/."
    cracker1
    cracker2
    cep1          "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/cep1.gz>cep1.gz</a> from %BASEURL4%/stochlp/."
    ceria3d       "MPS file (compressed EMPS format) <a href=%BASEURL5%/ceria3d>ceria3d</a> from NETLIB."
    ch            "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/ch.gz>ch.gz</a> from %BASEURL4%/misc/."
    chemcom       "MPS file (compressed EMPS format) <a href=%BASEURL5%/chemcom>chemcom</a> from NETLIB."
    cl120a13l1
    cl180a13l1
    cl3a13l1
    cl30a13l1
    cl60a13l1
    cl90a13l1
    client1
    co5           "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/co5.gz>co5.gz</a> from %BASEURL4%/misc/."
    co9           "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/co9.gz>co9.gz</a> from %BASEURL4%/misc/."
    complex       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/complex.gz>complex.gz</a> from %BASEURL4%/misc/."
    cplex1        "MPS file (compressed EMPS format) <a href=%BASEURL5%/cplex1>cplex1</a> from NETLIB."
    cplex2        "MPS file (compressed EMPS format) <a href=%BASEURL5%/cplex2>cplex2</a> from NETLIB."
    cq5           "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/cq5.gz>cq5.gz</a> from %BASEURL4%/misc/."
    cq9           "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/cq9.gz>cq9.gz</a> from %BASEURL4%/misc/."
    cr42          "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/cr42.gz>cr42.gz</a> from %BASEURL4%/misc/."
    cre-a         "MPS file (compressed EMPS format) <a href=%BASEURL3%/kennington/cre-a.gz>cre-a.gz</a> from %BASEURL3%/kennington/."
    cre-b         "MPS file (compressed EMPS format) <a href=%BASEURL3%/kennington/cre-b.gz>cre-b.gz</a> from %BASEURL3%/kennington/."
    cre-c         "MPS file (compressed EMPS format) <a href=%BASEURL3%/kennington/cre-c.gz>cre-c.gz</a> from %BASEURL3%/kennington/."
    cre-d         "MPS file (compressed EMPS format) <a href=%BASEURL3%/kennington/cre-d.gz>cre-d.gz</a> from %BASEURL3%/kennington/."
    crew1         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/crew1.gz>crew1.gz</a> from %BASEURL4%/misc/."
    cycle         "MPS file (compressed EMPS format) <a href=%BASEURL3%/cycle>cycle</a> from NETLIB."
    czprob        "MPS file (compressed EMPS format) <a href=%BASEURL3%/czprob>czprob</a> from NETLIB."
    d2q06c        "MPS file (compressed EMPS format) <a href=%BASEURL3%/d2q06c>d2q06c</a> from NETLIB."
    d6cube        "MPS file (compressed EMPS format) <a href=%BASEURL3%/d6cube>d6cube</a> from NETLIB."
    dano3_3       "MPS file <a href=%BASEURL8%/dano3_3.mps.gz>dano3_3.mps.gz</a> from %BASEURL8%."
    dano3_4       "MPS file <a href=%BASEURL8%/dano3_4.mps.gz>dano3_4.mps.gz</a> from %BASEURL8%."
    dano3_5       "MPS file <a href=%BASEURL8%/dano3_5.mps.gz>dano3_5.mps.gz</a> from %BASEURL8%."
    dano3mip      "MPS file <a href=%BASEURL2%/dano3mip>dano3mip</a> from MIPLIB 3.0."
    danoint       "MPS file <a href=%BASEURL2%/danoint>danoint</a> from MIPLIB 3.0."
    dbic1         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/dbic1.gz>dbic1.gz</a> from %BASEURL4%/misc/."
    dbir1         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/dbir1.gz>dbir1.gz</a> from %BASEURL4%/misc/."
    dbir2         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/dbir2.gz>dbir2.gz</a> from %BASEURL4%/misc/."
    dcmulti       "MPS file <a href=%BASEURL2%/dcmulti>dcmulti</a> from MIPLIB 3.0."
    de063155      "MPS file (compressed EMPS format) <a href=%BASEURL4%/problematic/de063155.gz>de063155.gz</a> from %BASEURL4%/infeas/."
    de063157      "MPS file (compressed EMPS format) <a href=%BASEURL4%/problematic/de063157.gz>de063157.gz</a> from %BASEURL4%/infeas/."
    de080285      "MPS file (compressed EMPS format) <a href=%BASEURL4%/problematic/de080285.gz>de080285.gz</a> from %BASEURL4%/infeas/."
    degen2        "MPS file (compressed EMPS format) <a href=%BASEURL3%/degen2>degen2</a> from NETLIB."
    degen3        "MPS file (compressed EMPS format) <a href=%BASEURL3%/degen3>degen3</a> from NETLIB."
    delf000       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf000.gz>delf000.gz</a> from %BASEURL4%/misc/."
    delf001       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf001.gz>delf001.gz</a> from %BASEURL4%/misc/."
    delf002       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf002.gz>delf002.gz</a> from %BASEURL4%/misc/."
    delf003       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf003.gz>delf003.gz</a> from %BASEURL4%/misc/."
    delf004       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf004.gz>delf004.gz</a> from %BASEURL4%/misc/."
    delf005       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf005.gz>delf005.gz</a> from %BASEURL4%/misc/."
    delf006       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf006.gz>delf006.gz</a> from %BASEURL4%/misc/."
    delf007       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf007.gz>delf007.gz</a> from %BASEURL4%/misc/."
    delf008       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf008.gz>delf008.gz</a> from %BASEURL4%/misc/."
    delf009       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf009.gz>delf009.gz</a> from %BASEURL4%/misc/."
    delf010       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf010.gz>delf010.gz</a> from %BASEURL4%/misc/."
    delf011       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf011.gz>delf011.gz</a> from %BASEURL4%/misc/."
    delf012       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf012.gz>delf012.gz</a> from %BASEURL4%/misc/."
    delf013       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf013.gz>delf013.gz</a> from %BASEURL4%/misc/."
    delf014       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf014.gz>delf014.gz</a> from %BASEURL4%/misc/."
    delf015       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf015.gz>delf015.gz</a> from %BASEURL4%/misc/."
    delf017       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf017.gz>delf017.gz</a> from %BASEURL4%/misc/."
    delf018       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf018.gz>delf018.gz</a> from %BASEURL4%/misc/."
    delf019       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf019.gz>delf019.gz</a> from %BASEURL4%/misc/."
    delf020       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf020.gz>delf020.gz</a> from %BASEURL4%/misc/."
    delf021       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf021.gz>delf021.gz</a> from %BASEURL4%/misc/."
    delf022       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf022.gz>delf022.gz</a> from %BASEURL4%/misc/."
    delf023       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf023.gz>delf023.gz</a> from %BASEURL4%/misc/."
    delf024       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf024.gz>delf024.gz</a> from %BASEURL4%/misc/."
    delf025       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf025.gz>delf025.gz</a> from %BASEURL4%/misc/."
    delf026       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf026.gz>delf026.gz</a> from %BASEURL4%/misc/."
    delf027       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf027.gz>delf027.gz</a> from %BASEURL4%/misc/."
    delf028       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf028.gz>delf028.gz</a> from %BASEURL4%/misc/."
    delf029       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf029.gz>delf029.gz</a> from %BASEURL4%/misc/."
    delf030       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf030.gz>delf030.gz</a> from %BASEURL4%/misc/."
    delf031       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf031.gz>delf031.gz</a> from %BASEURL4%/misc/."
    delf032       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf032.gz>delf032.gz</a> from %BASEURL4%/misc/."
    delf033       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf033.gz>delf033.gz</a> from %BASEURL4%/misc/."
    delf034       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf034.gz>delf034.gz</a> from %BASEURL4%/misc/."
    delf035       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf035.gz>delf035.gz</a> from %BASEURL4%/misc/."
    delf036       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/delf036.gz>delf036.gz</a> from %BASEURL4%/misc/."
    deter0        "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/deter0.gz>deter0.gz</a> from %BASEURL4%/stochlp/."
    deter1        "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/deter1.gz>deter1.gz</a> from %BASEURL4%/stochlp/."
    deter2        "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/deter2.gz>deter2.gz</a> from %BASEURL4%/stochlp/."
    deter3        "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/deter3.gz>deter3.gz</a> from %BASEURL4%/stochlp/."
    deter4        "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/deter4.gz>deter4.gz</a> from %BASEURL4%/stochlp/."
    deter5        "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/deter5.gz>deter5.gz</a> from %BASEURL4%/stochlp/."
    deter6        "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/deter6.gz>deter6.gz</a> from %BASEURL4%/stochlp/."
    deter7        "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/deter7.gz>deter7.gz</a> from %BASEURL4%/stochlp/."
    deter8        "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/deter8.gz>deter8.gz</a> from %BASEURL4%/stochlp/."
    df2177        "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/df2177.gz>df2177.gz</a> from %BASEURL4%/misc/."
    dfl001        "MPS file (compressed EMPS format) <a href=%BASEURL3%/dfl001>dfl001</a> from NETLIB."
    disp3         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/disp3.gz>disp3.gz</a> from %BASEURL4%/misc/."
    dsbmip        "MPS file <a href=%BASEURL2%/dsbmip>dsbmip</a> from MIPLIB 3.0."
    e226          "MPS file (compressed EMPS format) <a href=%BASEURL3%/e226>e226</a> from NETLIB."
    egout         "MPS file <a href=%BASEURL2%/egout>egout</a> from MIPLIB 3.0."
    eild76        "MPS file <a href=%BASEURL7%/eild76.mps.gz>eild76.mps.gz</a> from <a href=http://www-neos.mcs.anl.gov/>NEOS</a>."
    enigma        "MPS file <a href=%BASEURL2%/enigma>enigma</a> from MIPLIB 3.0."
    etamacro      "MPS file (compressed EMPS format) <a href=%BASEURL3%/etamacro>etamacro</a> from NETLIB."
    ex3sta1       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/ex3sta1.gz>ex3sta1.gz</a> from %BASEURL4%/misc/."
    ex72a         "MPS file (compressed EMPS format) <a href=%BASEURL5%/ex72a>ex72a</a> from NETLIB."
    ex73a         "MPS file (compressed EMPS format) <a href=%BASEURL5%/ex73a>ex73a</a> from NETLIB."
    farm          "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/farm.gz>farm.gz</a> from %BASEURL4%/misc/."
    fast0507      "MPS file <a href=%BASEURL2%/fast0507>fast0507</a> from MIPLIB 3.0."
    fffff800      "MPS file (compressed EMPS format) <a href=%BASEURL3%/fffff800>fffff800</a> from NETLIB."
    fiber         "MPS file <a href=%BASEURL2%/fiber>fiber</a> from MIPLIB 3.0."
    finnis        "MPS file (compressed EMPS format) <a href=%BASEURL3%/finnis>finnis</a> from NETLIB."
    fit1d         "MPS file (compressed EMPS format) <a href=%BASEURL3%/fit1d>fit1d</a> from NETLIB."
    fit1p         "MPS file (compressed EMPS format) <a href=%BASEURL3%/fit1p>fit1p</a> from NETLIB."
    fit2d         "MPS file (compressed EMPS format) <a href=%BASEURL3%/fit2d>fit2d</a> from NETLIB."
    fit2p         "MPS file (compressed EMPS format) <a href=%BASEURL3%/fit2p>fit2p</a> from NETLIB."
    fixnet6       "MPS file <a href=%BASEURL2%/fixnet6>fixnet6</a> from MIPLIB 3.0."
    flugpl        "MPS file <a href=%BASEURL2%/flugpl>flugpl</a> from MIPLIB 3.0."
    fome10        "MPS file (compressed EMPS format) <a href=%BASEURL1%/fome/fome10.gz>fome10.gz</a> from Mittelmann LP Test Problems."
    fome11        "MPS file (compressed EMPS format) <a href=%BASEURL1%/fome/fome11.gz>fome11.gz</a> from Mittelmann LP Test Problems."
    fome12        "MPS file (compressed EMPS format) <a href=%BASEURL1%/fome/fome12.gz>fome12.gz</a> from Mittelmann LP Test Problems."
    fome13        "MPS file (compressed EMPS format) <a href=%BASEURL1%/fome/fome13.gz>fome13.gz</a> from Mittelmann LP Test Problems."
    fome20        "MPS file (compressed EMPS format) <a href=%BASEURL1%/fome/fome20.gz>fome20.gz</a> from Mittelmann LP Test Problems."
    fome21        "MPS file (compressed EMPS format) <a href=%BASEURL1%/fome/fome21.gz>fome21.gz</a> from Mittelmann LP Test Problems."
    forest6       "MPS file (compressed EMPS format) <a href=%BASEURL5%/forest6>forest6</a> from NETLIB."
    forplan       "MPS file (compressed EMPS format) <a href=%BASEURL3%/forplan>forplan</a> from NETLIB."
    fxm2-16       "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/fxm2-16.gz>fxm2-16.gz</a> from %BASEURL4%/stochlp/."
    fxm2-6        "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/fxm2-6.gz>fxm2-6.gz</a> from %BASEURL4%/stochlp/."
    fxm3_16       "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/fxm3_16.gz>fxm3_16.gz</a> from %BASEURL4%/stochlp/."
    fxm3_6        "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/fxm3_6.gz>fxm3_6.gz</a> from %BASEURL4%/stochlp/."
    fxm4_6        "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/fxm4_6.gz>fxm4_6.gz</a> from %BASEURL4%/stochlp/."
    galenet       "MPS file (compressed EMPS format) <a href=%BASEURL5%/galenet>galenet</a> from NETLIB."
    gams10a       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/gams10a.gz>gams10a.gz</a> from %BASEURL4%/misc/."
    gams10am      "MPS file (compressed EMPS format) <a href=%BASEURL4%/infeas/gams10am.gz>gams10am.gz</a> from %BASEURL4%/infeas/."
    gams30a       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/gams30a.gz>gams30a.gz</a> from %BASEURL4%/misc/."
    gams30am      "MPS file (compressed EMPS format) <a href=%BASEURL4%/infeas/gams30am.gz>gams30am.gz</a> from %BASEURL4%/infeas/."
    gams60am      "MPS file (compressed EMPS format) <a href=%BASEURL4%/infeas/gams60am.gz>gams60am.gz</a> from %BASEURL4%/infeas/."
    ganges        "MPS file (compressed EMPS format) <a href=%BASEURL3%/ganges>ganges</a> from NETLIB."
    gas11         "MPS file (compressed EMPS format) <a href=%BASEURL4%/infeas/gas11.gz>gas11.gz</a> from %BASEURL4%/infeas/."
    ge            "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/ge.gz>ge.gz</a> from %BASEURL4%/misc/."
    gen           "MPS file <a href=%BASEURL2%/gen >gen</a> from MIPLIB 3.0."
    gen1          "MPS file (compressed EMPS format) <a href=%BASEURL4%/problematic/gen1.gz>gen1.gz</a> from %BASEURL4%/infeas/."
    gen2          "MPS file (compressed EMPS format) <a href=%BASEURL4%/problematic/gen2.gz>gen2.gz</a> from %BASEURL4%/infeas/."
    gen4          "MPS file (compressed EMPS format) <a href=%BASEURL4%/problematic/gen4.gz>gen4.gz</a> from %BASEURL4%/infeas/."
    gesa2         "MPS file <a href=%BASEURL2%/gesa2>gesa2</a> from MIPLIB 3.0."
    gesa2_o       "MPS file <a href=%BASEURL2%/gesa2_o>gesa2_o</a> from MIPLIB 3.0."
    gesa3         "MPS file <a href=%BASEURL2%/gesa3>gesa3</a> from MIPLIB 3.0."
    gesa3_o       "MPS file <a href=%BASEURL2%/gesa3_o>gesa3_o</a> from MIPLIB 3.0."
    gfrd-pnc      "MPS file (compressed EMPS format) <a href=%BASEURL3%/gfrd-pnc>gfrd-pnc</a> from NETLIB."
    gosh          "MPS file (compressed EMPS format) <a href=%BASEURL5%/gosh>gosh</a> from NETLIB."
    gr4x6         "MPS file <a href=%BASEURL6%/gr4x6.mps.gz>gr4x6.mps.gz</a> from %BASEURL6%."
    gran          "MPS file (compressed EMPS format) <a href=%BASEURL5%/gran>gran</a> from NETLIB."
    greenbea      "MPS file (compressed EMPS format) <a href=%BASEURL3%/greenbea>greenbea</a> from NETLIB."
    greenbeb      "MPS file (compressed EMPS format) <a href=%BASEURL3%/greenbeb>greenbeb</a> from NETLIB."
    greenbei      "MPS file (compressed EMPS format) <a href=%BASEURL4%/infeas/greenbei.gz>greenbei.gz</a> from %BASEURL4%/infeas/."
    grow15        "MPS file (compressed EMPS format) <a href=%BASEURL3%/grow15>grow15</a> from NETLIB."
    grow22        "MPS file (compressed EMPS format) <a href=%BASEURL3%/grow22>grow22</a> from NETLIB."
    grow7         "MPS file (compressed EMPS format) <a href=%BASEURL3%/grow7>grow7</a> from NETLIB."
    gt2           "MPS file <a href=%BASEURL2%/gt2>gt2</a> from MIPLIB 3.0."
    haprp         "MPS file <a href=%BASEURL7%/haprp.mps.gz>haprp.mps.gz</a> from <a href=http://www-neos.mcs.anl.gov/>NEOS</a>."
    harp2         "MPS file <a href=%BASEURL2%/harp2>harp2</a> from MIPLIB 3.0."
    iair04
    iair05
    ibc1
    ibienst1
    icap6000
    iiasa         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/iiasa.gz>iiasa.gz</a> from %BASEURL4%/misc/."
    imas284
    imisc07
    imod011
    ineos4
    ineos5
    iprob         "MPS file (compressed EMPS format) <a href=%BASEURL4%/problematic/iprob.gz>iprob.gz</a> from %BASEURL4%/infeas/."
    iqiu
    iran13x13
    iran8x32
    irp           "MPS file <a href=%BASEURL7%/irp.mps.gz>irp.mps.gz</a> from <a href=http://www-neos.mcs.anl.gov/>NEOS</a>."
    israel        "MPS file (compressed EMPS format) <a href=%BASEURL3%/israel>israel</a> from NETLIB."
    iswath2
    itest2        "MPS file (compressed EMPS format) <a href=%BASEURL5%/itest2>itest2</a> from NETLIB."
    itest6        "MPS file (compressed EMPS format) <a href=%BASEURL5%/itest6>itest6</a> from NETLIB."
    jendrec1      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/jendrec1.gz>jendrec1.gz</a> from %BASEURL4%/misc/."
    kb2           "MPS file (compressed EMPS format) <a href=%BASEURL3%/kb2>kb2</a> from NETLIB."
    ken-07        "MPS file (compressed EMPS format) <a href=%BASEURL3%/kennington/ken-07.gz>ken-07.gz</a> from %BASEURL3%/kennington/."
    ken-11        "MPS file (compressed EMPS format) <a href=%BASEURL3%/kennington/ken-11.gz>ken-11.gz</a> from %BASEURL3%/kennington/."
    ken-13        "MPS file (compressed EMPS format) <a href=%BASEURL3%/kennington/ken-13.gz>ken-13.gz</a> from %BASEURL3%/kennington/."
    ken-18        "MPS file (compressed EMPS format) <a href=%BASEURL3%/kennington/ken-18.gz>ken-18.gz</a> from %BASEURL3%/kennington/."
    kent          "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/kent.gz>kent.gz</a> from %BASEURL4%/misc/."
    khb05250      "MPS file <a href=%BASEURL2%/khb05250>khb05250</a> from MIPLIB 3.0."
    kl02          "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/kl02.gz>kl02.gz</a> from %BASEURL4%/misc/."
    kleemin3      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/kleemin3.gz>kleemin3.gz</a> from %BASEURL4%/misc/."
    kleemin4      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/kleemin4.gz>kleemin4.gz</a> from %BASEURL4%/misc/."
    kleemin5      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/kleemin5.gz>kleemin5.gz</a> from %BASEURL4%/misc/."
    kleemin6      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/kleemin6.gz>kleemin6.gz</a> from %BASEURL4%/misc/."
    kleemin7      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/kleemin7.gz>kleemin7.gz</a> from %BASEURL4%/misc/."
    kleemin8      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/kleemin8.gz>kleemin8.gz</a> from %BASEURL4%/misc/."
    klein1        "MPS file (compressed EMPS format) <a href=%BASEURL5%/klein1>klein1</a> from NETLIB."
    klein2        "MPS file (compressed EMPS format) <a href=%BASEURL5%/klein2>klein2</a> from NETLIB."
    klein3        "MPS file (compressed EMPS format) <a href=%BASEURL5%/klein3>klein3</a> from NETLIB."
    l152lav       "MPS file <a href=%BASEURL2%/l152lav>l152lav</a> from MIPLIB 3.0."
    l30           "MPS file (compressed EMPS format) <a href=%BASEURL4%/problematic/l30.gz>l30.gz</a> from %BASEURL4%/infeas/."
    l9            "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/l9.gz>l9.gz</a> from %BASEURL4%/misc/."
    large000      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large000.gz>large000.gz</a> from %BASEURL4%/misc/."
    large001      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large001.gz>large001.gz</a> from %BASEURL4%/misc/."
    large002      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large002.gz>large002.gz</a> from %BASEURL4%/misc/."
    large003      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large003.gz>large003.gz</a> from %BASEURL4%/misc/."
    large004      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large004.gz>large004.gz</a> from %BASEURL4%/misc/."
    large005      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large005.gz>large005.gz</a> from %BASEURL4%/misc/."
    large006      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large006.gz>large006.gz</a> from %BASEURL4%/misc/."
    large007      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large007.gz>large007.gz</a> from %BASEURL4%/misc/."
    large008      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large008.gz>large008.gz</a> from %BASEURL4%/misc/."
    large009      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large009.gz>large009.gz</a> from %BASEURL4%/misc/."
    large010      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large010.gz>large010.gz</a> from %BASEURL4%/misc/."
    large011      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large011.gz>large011.gz</a> from %BASEURL4%/misc/."
    large012      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large012.gz>large012.gz</a> from %BASEURL4%/misc/."
    large013      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large013.gz>large013.gz</a> from %BASEURL4%/misc/."
    large014      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large014.gz>large014.gz</a> from %BASEURL4%/misc/."
    large015      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large015.gz>large015.gz</a> from %BASEURL4%/misc/."
    large016      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large016.gz>large016.gz</a> from %BASEURL4%/misc/."
    large017      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large017.gz>large017.gz</a> from %BASEURL4%/misc/."
    large018      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large018.gz>large018.gz</a> from %BASEURL4%/misc/."
    large019      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large019.gz>large019.gz</a> from %BASEURL4%/misc/."
    large020      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large020.gz>large020.gz</a> from %BASEURL4%/misc/."
    large021      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large021.gz>large021.gz</a> from %BASEURL4%/misc/."
    large022      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large022.gz>large022.gz</a> from %BASEURL4%/misc/."
    large023      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large023.gz>large023.gz</a> from %BASEURL4%/misc/."
    large024      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large024.gz>large024.gz</a> from %BASEURL4%/misc/."
    large025      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large025.gz>large025.gz</a> from %BASEURL4%/misc/."
    large026      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large026.gz>large026.gz</a> from %BASEURL4%/misc/."
    large027      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large027.gz>large027.gz</a> from %BASEURL4%/misc/."
    large028      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large028.gz>large028.gz</a> from %BASEURL4%/misc/."
    large029      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large029.gz>large029.gz</a> from %BASEURL4%/misc/."
    large030      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large030.gz>large030.gz</a> from %BASEURL4%/misc/."
    large031      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large031.gz>large031.gz</a> from %BASEURL4%/misc/."
    large032      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large032.gz>large032.gz</a> from %BASEURL4%/misc/."
    large033      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large033.gz>large033.gz</a> from %BASEURL4%/misc/."
    large034      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large034.gz>large034.gz</a> from %BASEURL4%/misc/."
    large035      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large035.gz>large035.gz</a> from %BASEURL4%/misc/."
    large036      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/large036.gz>large036.gz</a> from %BASEURL4%/misc/."
    lotfi         "MPS file (compressed EMPS format) <a href=%BASEURL3%/lotfi>lotfi</a> from NETLIB."
    lp22          "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/lp22.gz>lp22.gz</a> from %BASEURL4%/misc/."
    lpl1          "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/lpl1.gz>lpl1.gz</a> from %BASEURL4%/misc/."
    lpl2          "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/lpl2.gz>lpl2.gz</a> from %BASEURL4%/misc/."
    lpl3          "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/lpl3.gz>lpl3.gz</a> from %BASEURL4%/misc/."
    lseu          "MPS file <a href=%BASEURL2%/lseu>lseu</a> from MIPLIB 3.0."
    markshare1    "MPS file <a href=%BASEURL2%/markshare1>markshare1</a> from MIPLIB 3.0."
    markshare2    "MPS file <a href=%BASEURL2%/markshare2>markshare2</a> from MIPLIB 3.0."
    maros-r7      "MPS file (compressed EMPS format) <a href=%BASEURL3%/maros-r7>maros-r7</a> from NETLIB."
    maros         "MPS file (compressed EMPS format) <a href=%BASEURL3%/maros>maros</a> from NETLIB."
    mas284        "MPS file <a href=%BASEURL7%/mas284.mps.gz>mas284.mps.gz</a> from <a href=http://www-neos.mcs.anl.gov/>NEOS</a>."
    mas74         "MPS file <a href=%BASEURL2%/mas74>mas74</a> from MIPLIB 3.0."
    mas76         "MPS file <a href=%BASEURL2%/mas76>mas76</a> from MIPLIB 3.0."
    misc03        "MPS file <a href=%BASEURL2%/misc03>misc03</a> from MIPLIB 3.0."
    misc06        "MPS file <a href=%BASEURL2%/misc06>misc06</a> from MIPLIB 3.0."
    misc07        "MPS file <a href=%BASEURL2%/misc07>misc07</a> from MIPLIB 3.0."
    mitre         "MPS file <a href=%BASEURL2%/mitre>mitre</a> from MIPLIB 3.0."
    mkc           "MPS file <a href=%BASEURL2%/mkc>mkc</a> from MIPLIB 3.0."
    mkc1          "MPS file <a href=%BASEURL8%/mkc1.mps.gz>mkc1.mps.gz</a> from %BASEURL8%."
    mod008        "MPS file <a href=%BASEURL2%/mod008>mod008</a> from MIPLIB 3.0."
    mod010        "MPS file <a href=%BASEURL2%/mod010>mod010</a> from MIPLIB 3.0."
    mod011        "MPS file <a href=%BASEURL2%/mod011>mod011</a> from MIPLIB 3.0."
    mod2          "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/mod2.gz>mod2.gz</a> from %BASEURL4%/misc/."
    model1        "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/model1.gz>model1.gz</a> from %BASEURL4%/misc/."
    model10       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/model10.gz>model10.gz</a> from %BASEURL4%/misc/."
    model11       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/model11.gz>model11.gz</a> from %BASEURL4%/misc/."
    model2        "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/model2.gz>model2.gz</a> from %BASEURL4%/misc/."
    model3        "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/model3.gz>model3.gz</a> from %BASEURL4%/misc/."
    model4        "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/model4.gz>model4.gz</a> from %BASEURL4%/misc/."
    model5        "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/model5.gz>model5.gz</a> from %BASEURL4%/misc/."
    model6        "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/model6.gz>model6.gz</a> from %BASEURL4%/misc/."
    model7        "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/model7.gz>model7.gz</a> from %BASEURL4%/misc/."
    model8        "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/model8.gz>model8.gz</a> from %BASEURL4%/misc/."
    model9        "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/model9.gz>model9.gz</a> from %BASEURL4%/misc/."
    modglob       "MPS file <a href=%BASEURL2%/modglob>modglob</a> from MIPLIB 3.0."
    modszk1       "MPS file (compressed EMPS format) <a href=%BASEURL3%/modszk1>modszk1</a> from NETLIB."
    mondou2       "MPS file (compressed EMPS format) <a href=%BASEURL5%/mondou2>mondou2</a> from NETLIB."
    multi         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/multi.gz>multi.gz</a> from %BASEURL4%/misc/."
    n3700         "MPS file <a href=%BASEURL6%/n3700.mps.gz>n3700.mps.gz</a> from %BASEURL6%."
    n3701         "MPS file <a href=%BASEURL6%/n3701.mps.gz>n3701.mps.gz</a> from %BASEURL6%."
    n3702         "MPS file <a href=%BASEURL6%/n3702.mps.gz>n3702.mps.gz</a> from %BASEURL6%."
    n3703         "MPS file <a href=%BASEURL6%/n3703.mps.gz>n3703.mps.gz</a> from %BASEURL6%."
    n3704         "MPS file <a href=%BASEURL6%/n3704.mps.gz>n3704.mps.gz</a> from %BASEURL6%."
    n3705         "MPS file <a href=%BASEURL6%/n3705.mps.gz>n3705.mps.gz</a> from %BASEURL6%."
    n3706         "MPS file <a href=%BASEURL6%/n3706.mps.gz>n3706.mps.gz</a> from %BASEURL6%."
    n3707         "MPS file <a href=%BASEURL6%/n3707.mps.gz>n3707.mps.gz</a> from %BASEURL6%."
    n3708         "MPS file <a href=%BASEURL6%/n3708.mps.gz>n3708.mps.gz</a> from %BASEURL6%."
    n3709         "MPS file <a href=%BASEURL6%/n3709.mps.gz>n3709.mps.gz</a> from %BASEURL6%."
    n370a         "MPS file <a href=%BASEURL6%/n370a.mps.gz>n370a.mps.gz</a> from %BASEURL6%."
    n370b         "MPS file <a href=%BASEURL6%/n370b.mps.gz>n370b.mps.gz</a> from %BASEURL6%."
    n370c         "MPS file <a href=%BASEURL6%/n370c.mps.gz>n370c.mps.gz</a> from %BASEURL6%."
    n370d         "MPS file <a href=%BASEURL6%/n370d.mps.gz>n370d.mps.gz</a> from %BASEURL6%."
    n370e         "MPS file <a href=%BASEURL6%/n370e.mps.gz>n370e.mps.gz</a> from %BASEURL6%."
    nemsafm       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/nemsafm.gz>nemsafm.gz</a> from %BASEURL4%/misc/."
    nemscem       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/nemscem.gz>nemscem.gz</a> from %BASEURL4%/misc/."
    nemsemm1      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/nemsemm1.gz>nemsemm1.gz</a> from %BASEURL4%/misc/."
    nemsemm2      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/nemsemm2.gz>nemsemm2.gz</a> from %BASEURL4%/misc/."
    nemspmm1      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/nemspmm1.gz>nemspmm1.gz</a> from %BASEURL4%/misc/."
    nemspmm2      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/nemspmm2.gz>nemspmm2.gz</a> from %BASEURL4%/misc/."
    nemswrld      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/nemswrld.gz>nemswrld.gz</a> from %BASEURL4%/misc/."
    neos1         "MPS file <a href=%BASEURL8%/neos1.mps.gz>neos1.mps.gz</a> from %BASEURL8%."
    neos2         "MPS file <a href=%BASEURL8%/neos2.mps.gz>neos2.mps.gz</a> from %BASEURL8%."
    neos3         "MPS file <a href=%BASEURL8%/neos3.mps.gz>neos3.mps.gz</a> from %BASEURL8%."
    neos4         "MPS file <a href=%BASEURL8%/neos4.mps.gz>neos4.mps.gz</a> from %BASEURL8%."
    neos5         "MPS file <a href=%BASEURL8%/neos5.mps.gz>neos5.mps.gz</a> from %BASEURL8%."
    neos6         "MPS file <a href=%BASEURL8%/neos6.mps.gz>neos6.mps.gz</a> from %BASEURL8%."
    neos7         "MPS file <a href=%BASEURL8%/neos7.mps.gz>neos7.mps.gz</a> from %BASEURL8%."
    nesm          "MPS file (compressed EMPS format) <a href=%BASEURL3%/nesm>nesm</a> from NETLIB."
    nl            "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/nl.gz>nl.gz</a> from %BASEURL4%/misc/."
    noswot        "MPS file <a href=%BASEURL2%/noswot>noswot</a> from MIPLIB 3.0."
    nql201
    nql30
    nsct1         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/nsct1.gz>nsct1.gz</a> from %BASEURL4%/misc/."
    nsct2         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/nsct2.gz>nsct2.gz</a> from %BASEURL4%/misc/."
    nsic1         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/nsic1.gz>nsic1.gz</a> from %BASEURL4%/misc/."
    nsic2         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/nsic2.gz>nsic2.gz</a> from %BASEURL4%/misc/."
    nsir1         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/nsir1.gz>nsir1.gz</a> from %BASEURL4%/misc/."
    nsir2         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/nsir2.gz>nsir2.gz</a> from %BASEURL4%/misc/."
    nug05         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/nug05.gz>nug05.gz</a> from %BASEURL4%/misc/."
    nug06         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/nug06.gz>nug06.gz</a> from %BASEURL4%/misc/."
    nug07         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/nug07.gz>nug07.gz</a> from %BASEURL4%/misc/."
    nug08         "MPS file <a href=%BASEURL8%/nug08.mps.gz>nug08.mps.gz</a> from %BASEURL8%."
    nug12         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/nug12.gz>nug12.gz</a> from %BASEURL4%/misc/."
    nug15         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/nug15.gz>nug15.gz</a> from %BASEURL4%/misc/."
    nug20         "MPS file (compressed EMPS format) <a href=%BASEURL1%/nug/nug20.gz>nug20.gz</a> from Mittelmann LP Test Problems."
    nug30         "MPS file (compressed EMPS format) <a href=%BASEURL1%/nug/nug30.gz>nug30.gz</a> from Mittelmann LP Test Problems."
    nw04          "MPS file <a href=%BASEURL2%/nw04>nw04</a> from MIPLIB 3.0."
    nw14          "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/nw14.gz>nw14.gz</a> from %BASEURL4%/misc/."
    orna1         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/orna1.gz>orna1.gz</a> from %BASEURL4%/misc/."
    orna2         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/orna2.gz>orna2.gz</a> from %BASEURL4%/misc/."
    orna3         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/orna3.gz>orna3.gz</a> from %BASEURL4%/misc/."
    orna4         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/orna4.gz>orna4.gz</a> from %BASEURL4%/misc/."
    orna7         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/orna7.gz>orna7.gz</a> from %BASEURL4%/misc/."
    orswq2        "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/orswq2.gz>orswq2.gz</a> from %BASEURL4%/misc/."
    osa-07        "MPS file (compressed EMPS format) <a href=%BASEURL3%/kennington/osa-07.gz>osa-07.gz</a> from %BASEURL3%/kennington/."
    osa-14        "MPS file (compressed EMPS format) <a href=%BASEURL3%/kennington/osa-14.gz>osa-14.gz</a> from %BASEURL3%/kennington/."
    osa-30        "MPS file (compressed EMPS format) <a href=%BASEURL3%/kennington/osa-30.gz>osa-30.gz</a> from %BASEURL3%/kennington/."
    osa-60        "MPS file (compressed EMPS format) <a href=%BASEURL3%/kennington/osa-60.gz>osa-60.gz</a> from %BASEURL3%/kennington/."
    p0033         "MPS file <a href=%BASEURL2%/p0033>p0033</a> from MIPLIB 3.0."
    p0040         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/p0040.gz>p0040.gz</a> from %BASEURL4%/misc/."
    p010          "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/p010.gz>p010.gz</a> from %BASEURL4%/misc/."
    p0201         "MPS file <a href=%BASEURL2%/p0201>p0201</a> from MIPLIB 3.0."
    p0282         "MPS file <a href=%BASEURL2%/p0282>p0282</a> from MIPLIB 3.0."
    p0291         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/p0291.gz>p0291.gz</a> from %BASEURL4%/misc/."
    p05           "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/p05.gz>p05.gz</a> from %BASEURL4%/misc/."
    p0548         "MPS file <a href=%BASEURL2%/p0548>p0548</a> from MIPLIB 3.0."
    p19           "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/p19.gz>p19.gz</a> from %BASEURL4%/misc/."
    p2756         "MPS file <a href=%BASEURL2%/p2756>p2756</a> from MIPLIB 3.0."
    p6000         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/p6000.gz>p6000.gz</a> from %BASEURL4%/misc/."
    pang          "MPS file (compressed EMPS format) <a href=%BASEURL5%/pang>pang</a> from NETLIB."
    pcb1000       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/pcb1000.gz>pcb1000.gz</a> from %BASEURL4%/misc/."
    pcb3000       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/pcb3000.gz>pcb3000.gz</a> from %BASEURL4%/misc/."
    pds-02        "MPS file (compressed EMPS format) <a href=%BASEURL3%/kennington/pds-02.gz>pds-02.gz</a> from %BASEURL3%/kennington/."
    pds-06        "MPS file (compressed EMPS format) <a href=%BASEURL3%/kennington/pds-06.gz>pds-06.gz</a> from %BASEURL3%/kennington/."
    pds-10        "MPS file (compressed EMPS format) <a href=%BASEURL3%/kennington/pds-10.gz>pds-10.gz</a> from %BASEURL3%/kennington/."
    pds-100       "MPS file (compressed EMPS format) <a href=%BASEURL1%/pds/pds-100.gz>pds-100.gz</a> from Mittelmann LP Test Problems."
    pds-2         "MPS file (compressed EMPS format) <a href=%BASEURL1%/pds/pds-2.gz>pds-2.gz</a> from Mittelmann LP Test Problems."
    pds-20        "MPS file (compressed EMPS format) <a href=%BASEURL3%/kennington/pds-20.gz>pds-20.gz</a> from %BASEURL3%/kennington/."
    pds-30        "MPS file (compressed EMPS format) <a href=%BASEURL1%/pds/pds-30.gz>pds-30.gz</a> from Mittelmann LP Test Problems."
    pds-40        "MPS file (compressed EMPS format) <a href=%BASEURL1%/pds/pds-40.gz>pds-40.gz</a> from Mittelmann LP Test Problems."
    pds-50        "MPS file (compressed EMPS format) <a href=%BASEURL1%/pds/pds-50.gz>pds-50.gz</a> from Mittelmann LP Test Problems."
    pds-60        "MPS file (compressed EMPS format) <a href=%BASEURL1%/pds/pds-60.gz>pds-60.gz</a> from Mittelmann LP Test Problems."
    pds-70        "MPS file (compressed EMPS format) <a href=%BASEURL1%/pds/pds-70.gz>pds-70.gz</a> from Mittelmann LP Test Problems."
    pds-80        "MPS file (compressed EMPS format) <a href=%BASEURL1%/pds/pds-80.gz>pds-80.gz</a> from Mittelmann LP Test Problems."
    pds-90        "MPS file (compressed EMPS format) <a href=%BASEURL1%/pds/pds-90.gz>pds-90.gz</a> from Mittelmann LP Test Problems."
    perold        "MPS file (compressed EMPS format) <a href=%BASEURL3%/perold>perold</a> from NETLIB."
    pf2177        "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/pf2177.gz>pf2177.gz</a> from %BASEURL4%/misc/."
    pgp2          "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/pgp2.gz>pgp2.gz</a> from %BASEURL4%/stochlp/."
    pilot-ja      "MPS file (compressed EMPS format) <a href=%BASEURL3%/pilot.ja>pilot-ja</a> from NETLIB."
    pilot-we      "MPS file (compressed EMPS format) <a href=%BASEURL3%/pilot.we>pilot-we</a> from NETLIB."
    pilot         "MPS file (compressed EMPS format) <a href=%BASEURL3%/pilot>pilot</a> from NETLIB."
    pilot4        "MPS file (compressed EMPS format) <a href=%BASEURL3%/pilot4>pilot4</a> from NETLIB."
    pilot4i       "MPS file (compressed EMPS format) <a href=%BASEURL5%/pilot4i>pilot4i</a> from NETLIB."
    pilot87       "MPS file (compressed EMPS format) <a href=%BASEURL3%/pilot87>pilot87</a> from NETLIB."
    pilotnov      "MPS file (compressed EMPS format) <a href=%BASEURL3%/pilotnov>pilotnov</a> from NETLIB."
    pk1           "MPS file <a href=%BASEURL2%/pk1>pk1</a> from MIPLIB 3.0."
    pldd000b      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/pldd000b.gz>pldd000b.gz</a> from %BASEURL4%/misc/."
    pldd001b      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/pldd001b.gz>pldd001b.gz</a> from %BASEURL4%/misc/."
    pldd002b      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/pldd002b.gz>pldd002b.gz</a> from %BASEURL4%/misc/."
    pldd003b      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/pldd003b.gz>pldd003b.gz</a> from %BASEURL4%/misc/."
    pldd004b      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/pldd004b.gz>pldd004b.gz</a> from %BASEURL4%/misc/."
    pldd005b      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/pldd005b.gz>pldd005b.gz</a> from %BASEURL4%/misc/."
    pldd006b      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/pldd006b.gz>pldd006b.gz</a> from %BASEURL4%/misc/."
    pldd007b      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/pldd007b.gz>pldd007b.gz</a> from %BASEURL4%/misc/."
    pldd008b      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/pldd008b.gz>pldd008b.gz</a> from %BASEURL4%/misc/."
    pldd009b      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/pldd009b.gz>pldd009b.gz</a> from %BASEURL4%/misc/."
    pldd010b      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/pldd010b.gz>pldd010b.gz</a> from %BASEURL4%/misc/."
    pldd011b      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/pldd011b.gz>pldd011b.gz</a> from %BASEURL4%/misc/."
    pldd012b      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/pldd012b.gz>pldd012b.gz</a> from %BASEURL4%/misc/."
    pltexpa2-16   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/pltexpA2-16.gz>pltexpA2-16.gz</a> from %BASEURL4%/stochlp/."
    pltexpa2-6    "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/pltexpA2-6.gz>pltexpA2-6.gz</a> from %BASEURL4%/stochlp/."
    pltexpa3_16   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/pltexpA3_16.gz>pltexpA3_16.gz</a> from %BASEURL4%/stochlp/."
    pltexpa3_6    "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/pltexpA3_6.gz>pltexpA3_6.gz</a> from %BASEURL4%/stochlp/."
    pltexpa4_6    "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/pltexpA4_6.gz>pltexpA4_6.gz</a> from %BASEURL4%/stochlp/."
    power
    pp08a         "MPS file <a href=%BASEURL2%/pp08a>pp08a</a> from MIPLIB 3.0."
    pp08acuts     "MPS file <a href=%BASEURL2%/pp08acuts>pp08acuts</a> from MIPLIB 3.0."
    primagaz      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/primagaz.gz>primagaz.gz</a> from %BASEURL4%/misc/."
    problem       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/problem.gz>problem.gz</a> from %BASEURL4%/misc/."
    prod1         "MPS file <a href=%BASEURL7%/prod1.mps.gz>prod1.mps.gz</a> from <a href=http://www-neos.mcs.anl.gov/>NEOS</a>."
    progas        "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/progas.gz>progas.gz</a> from %BASEURL4%/misc/."
    q18a13l1
    q30a13l1
    q9a13l1
    qap08         "MPS file (compressed EMPS format) <a href=%BASEURL4%/NETLIB/qap08.gz>qap08.gz</a> from %BASEURL4%/NETLIB/."
    qap10         "MPS file <a href=%BASEURL8%/qap10.mps.gz>qap10.mps.gz</a> from %BASEURL8%."
    qap12         "MPS file (compressed EMPS format) <a href=%BASEURL4%/NETLIB/qap12.gz>qap12.gz</a> from %BASEURL4%/NETLIB/."
    qap15         "MPS file (compressed EMPS format) <a href=%BASEURL4%/NETLIB/qap15.gz>qap15.gz</a> from %BASEURL4%/NETLIB/."
    qiu           "MPS file <a href=%BASEURL2%/qiu>qiu</a> from MIPLIB 3.0."
    qiulp         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/qiulp.gz>qiulp.gz</a> from %BASEURL4%/misc/."
    qnet1         "MPS file <a href=%BASEURL2%/qnet1>qnet1</a> from MIPLIB 3.0."
    qnet1_o       "MPS file <a href=%BASEURL2%/qnet1_o>qnet1_o</a> from MIPLIB 3.0."
    qssp120l1
    qssp180l1
    qssp18l1
    qssp30l1
    qssp60l1
    qssp90l1
    qt120a13l1
    qt12a13l1
    qt180a13l1
    qt18a13l1
    qt30a13l1
    qt60a13l1
    qt90a13l1
    qt9a13l1
    q60a13l1
    qual          "MPS file (compressed EMPS format) <a href=%BASEURL5%/qual>qual</a> from NETLIB."
    r05           "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/r05.gz>r05.gz</a> from %BASEURL4%/misc/."
    rail2586      "MPS file (compressed EMPS format) <a href=%BASEURL1%/rail/rail2586.gz>rail2586.gz</a> from Mittelmann LP Test Problems."
    rail4284      "MPS file (compressed EMPS format) <a href=%BASEURL1%/rail/rail4284.gz>rail4284.gz</a> from Mittelmann LP Test Problems."
    rail507       "MPS file (compressed EMPS format) <a href=%BASEURL1%/rail/rail507.gz>rail507.gz</a> from Mittelmann LP Test Problems."
    rail516       "MPS file (compressed EMPS format) <a href=%BASEURL1%/rail/rail516.gz>rail516.gz</a> from Mittelmann LP Test Problems."
    rail582       "MPS file (compressed EMPS format) <a href=%BASEURL1%/rail/rail582.gz>rail582.gz</a> from Mittelmann LP Test Problems."
    ran10x10a     "MPS file <a href=%BASEURL6%/ran10x10a.mps.gz>ran10x10a.mps.gz</a> from %BASEURL6%."
    ran10x10b     "MPS file <a href=%BASEURL6%/ran10x10b.mps.gz>ran10x10b.mps.gz</a> from %BASEURL6%."
    ran10x10c     "MPS file <a href=%BASEURL6%/ran10x10c.mps.gz>ran10x10c.mps.gz</a> from %BASEURL6%."
    ran10x12      "MPS file <a href=%BASEURL6%/ran10x12.mps.gz>ran10x12.mps.gz</a> from %BASEURL6%."
    ran10x26      "MPS file <a href=%BASEURL6%/ran10x26.mps.gz>ran10x26.mps.gz</a> from %BASEURL6%."
    ran12x12      "MPS file <a href=%BASEURL6%/ran12x12.mps.gz>ran12x12.mps.gz</a> from %BASEURL6%."
    ran12x21      "MPS file <a href=%BASEURL6%/ran12x21.mps.gz>ran12x21.mps.gz</a> from %BASEURL6%."
    ran13x13      "MPS file <a href=%BASEURL6%/ran13x13.mps.gz>ran13x13.mps.gz</a> from %BASEURL6%."
    ran14x18      "MPS file <a href=%BASEURL6%/ran14x18.mps.gz>ran14x18.mps.gz</a> from %BASEURL6%."
    ran16x16      "MPS file <a href=%BASEURL6%/ran16x16.mps.gz>ran16x16.mps.gz</a> from %BASEURL6%."
    ran17x17      "MPS file <a href=%BASEURL6%/ran17x17.mps.gz>ran17x17.mps.gz</a> from %BASEURL6%."
    ran4x64       "MPS file <a href=%BASEURL6%/ran4x64.mps.gz>ran4x64.mps.gz</a> from %BASEURL6%."
    ran6x43       "MPS file <a href=%BASEURL6%/ran6x43.mps.gz>ran6x43.mps.gz</a> from %BASEURL6%."
    ran8x32       "MPS file <a href=%BASEURL6%/ran8x32.mps.gz>ran8x32.mps.gz</a> from %BASEURL6%."
    rat1          "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/rat1.gz>rat1.gz</a> from %BASEURL4%/misc/."
    rat5          "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/rat5.gz>rat5.gz</a> from %BASEURL4%/misc/."
    rat7a         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/rat7a.gz>rat7a.gz</a> from %BASEURL4%/misc/."
    reactor       "MPS file (compressed EMPS format) <a href=%BASEURL5%/reactor>reactor</a> from NETLIB."
    recipe        "MPS file (compressed EMPS format) <a href=%BASEURL3%/recipe>recipe</a> from NETLIB."
    refine        "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/refine.gz>refine.gz</a> from %BASEURL4%/misc/."
    refinery      "MPS file (compressed EMPS format) <a href=%BASEURL5%/refinery>refinery</a> from NETLIB."
    rentacar      "MPS file <a href=%BASEURL2%/rentacar>rentacar</a> from MIPLIB 3.0."
    rgn           "MPS file <a href=%BASEURL2%/rgn>rgn</a> from MIPLIB 3.0."
    rlfddd        "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/rlfddd.gz>rlfddd.gz</a> from %BASEURL4%/misc/."
    rlfdual       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/rlfdual.gz>rlfdual.gz</a> from %BASEURL4%/misc/."
    rlfprim       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/rlfprim.gz>rlfprim.gz</a> from %BASEURL4%/misc/."
    rlp2          "MPS file <a href=%BASEURL7%/rlp2.mps.gz>rlp2.mps.gz</a> from <a href=http://www-neos.mcs.anl.gov/>NEOS</a>."
    rosen1        "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/rosen1.gz>rosen1.gz</a> from %BASEURL4%/misc/."
    rosen10       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/rosen10.gz>rosen10.gz</a> from %BASEURL4%/misc/."
    rosen2        "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/rosen2.gz>rosen2.gz</a> from %BASEURL4%/misc/."
    rosen7        "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/rosen7.gz>rosen7.gz</a> from %BASEURL4%/misc/."
    rosen8        "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/rosen8.gz>rosen8.gz</a> from %BASEURL4%/misc/."
    rout          "MPS file <a href=%BASEURL2%/rout>rout</a> from MIPLIB 3.0."
    route         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/route.gz>route.gz</a> from %BASEURL4%/misc/."
    sc105         "MPS file (compressed EMPS format) <a href=%BASEURL3%/sc105>sc105</a> from NETLIB."
    sc205-2r-100  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sc205-2r-100.gz>sc205-2r-100.gz</a> from %BASEURL4%/stochlp/."
    sc205-2r-16   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sc205-2r-16.gz>sc205-2r-16.gz</a> from %BASEURL4%/stochlp/."
    sc205-2r-1600 "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sc205-2r-1600.gz>sc205-2r-1600.gz</a> from %BASEURL4%/stochlp/."
    sc205-2r-200  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sc205-2r-200.gz>sc205-2r-200.gz</a> from %BASEURL4%/stochlp/."
    sc205-2r-27   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sc205-2r-27.gz>sc205-2r-27.gz</a> from %BASEURL4%/stochlp/."
    sc205-2r-32   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sc205-2r-32.gz>sc205-2r-32.gz</a> from %BASEURL4%/stochlp/."
    sc205-2r-4    "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sc205-2r-4.gz>sc205-2r-4.gz</a> from %BASEURL4%/stochlp/."
    sc205-2r-400  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sc205-2r-400.gz>sc205-2r-400.gz</a> from %BASEURL4%/stochlp/."
    sc205-2r-50   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sc205-2r-50.gz>sc205-2r-50.gz</a> from %BASEURL4%/stochlp/."
    sc205-2r-64   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sc205-2r-64.gz>sc205-2r-64.gz</a> from %BASEURL4%/stochlp/."
    sc205-2r-8    "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sc205-2r-8.gz>sc205-2r-8.gz</a> from %BASEURL4%/stochlp/."
    sc205-2r-800  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sc205-2r-800.gz>sc205-2r-800.gz</a> from %BASEURL4%/stochlp/."
    sc205         "MPS file (compressed EMPS format) <a href=%BASEURL3%/sc205>sc205</a> from NETLIB."
    sc50a         "MPS file (compressed EMPS format) <a href=%BASEURL3%/sc50a>sc50a</a> from NETLIB."
    sc50b         "MPS file (compressed EMPS format) <a href=%BASEURL3%/sc50b>sc50b</a> from NETLIB."
    scagr25       "MPS file (compressed EMPS format) <a href=%BASEURL3%/scagr25>scagr25</a> from NETLIB."
    scagr7-2b-16  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scagr7-2b-16.gz>scagr7-2b-16.gz</a> from %BASEURL4%/stochlp/."
    scagr7-2b-4   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scagr7-2b-4.gz>scagr7-2b-4.gz</a> from %BASEURL4%/stochlp/."
    scagr7-2b-64  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scagr7-2b-64.gz>scagr7-2b-64.gz</a> from %BASEURL4%/stochlp/."
    scagr7-2c-16  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scagr7-2c-16.gz>scagr7-2c-16.gz</a> from %BASEURL4%/stochlp/."
    scagr7-2c-4   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scagr7-2c-4.gz>scagr7-2c-4.gz</a> from %BASEURL4%/stochlp/."
    scagr7-2c-64  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scagr7-2c-64.gz>scagr7-2c-64.gz</a> from %BASEURL4%/stochlp/."
    scagr7-2r-108 "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scagr7-2r-108.gz>scagr7-2r-108.gz</a> from %BASEURL4%/stochlp/."
    scagr7-2r-16  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scagr7-2r-16.gz>scagr7-2r-16.gz</a> from %BASEURL4%/stochlp/."
    scagr7-2r-216 "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scagr7-2r-216.gz>scagr7-2r-216.gz</a> from %BASEURL4%/stochlp/."
    scagr7-2r-27  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scagr7-2r-27.gz>scagr7-2r-27.gz</a> from %BASEURL4%/stochlp/."
    scagr7-2r-32  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scagr7-2r-32.gz>scagr7-2r-32.gz</a> from %BASEURL4%/stochlp/."
    scagr7-2r-4   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scagr7-2r-4.gz>scagr7-2r-4.gz</a> from %BASEURL4%/stochlp/."
    scagr7-2r-432 "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scagr7-2r-432.gz>scagr7-2r-432.gz</a> from %BASEURL4%/stochlp/."
    scagr7-2r-54  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scagr7-2r-54.gz>scagr7-2r-54.gz</a> from %BASEURL4%/stochlp/."
    scagr7-2r-64  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scagr7-2r-64.gz>scagr7-2r-64.gz</a> from %BASEURL4%/stochlp/."
    scagr7-2r-8   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scagr7-2r-8.gz>scagr7-2r-8.gz</a> from %BASEURL4%/stochlp/."
    scagr7-2r-864 "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scagr7-2r-864.gz>scagr7-2r-864.gz</a> from %BASEURL4%/stochlp/."
    scagr7        "MPS file (compressed EMPS format) <a href=%BASEURL3%/scagr7>scagr7</a> from NETLIB."
    scfxm1-2b-16  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scfxm1-2b-16.gz>scfxm1-2b-16.gz</a> from %BASEURL4%/stochlp/."
    scfxm1-2b-4   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scfxm1-2b-4.gz>scfxm1-2b-4.gz</a> from %BASEURL4%/stochlp/."
    scfxm1-2b-64  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scfxm1-2b-64.gz>scfxm1-2b-64.gz</a> from %BASEURL4%/stochlp/."
    scfxm1-2c-4   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scfxm1-2c-4.gz>scfxm1-2c-4.gz</a> from %BASEURL4%/stochlp/."
    scfxm1-2r-128 "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scfxm1-2r-128.gz>scfxm1-2r-128.gz</a> from %BASEURL4%/stochlp/."
    scfxm1-2r-16  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scfxm1-2r-16.gz>scfxm1-2r-16.gz</a> from %BASEURL4%/stochlp/."
    scfxm1-2r-256 "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scfxm1-2r-256.gz>scfxm1-2r-256.gz</a> from %BASEURL4%/stochlp/."
    scfxm1-2r-27  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scfxm1-2r-27.gz>scfxm1-2r-27.gz</a> from %BASEURL4%/stochlp/."
    scfxm1-2r-32  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scfxm1-2r-32.gz>scfxm1-2r-32.gz</a> from %BASEURL4%/stochlp/."
    scfxm1-2r-4   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scfxm1-2r-4.gz>scfxm1-2r-4.gz</a> from %BASEURL4%/stochlp/."
    scfxm1-2r-64  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scfxm1-2r-64.gz>scfxm1-2r-64.gz</a> from %BASEURL4%/stochlp/."
    scfxm1-2r-8   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scfxm1-2r-8.gz>scfxm1-2r-8.gz</a> from %BASEURL4%/stochlp/."
    scfxm1-2r-96  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scfxm1-2r-96.gz>scfxm1-2r-96.gz</a> from %BASEURL4%/stochlp/."
    scfxm1        "MPS file (compressed EMPS format) <a href=%BASEURL3%/scfxm1>scfxm1</a> from NETLIB."
    scfxm2        "MPS file (compressed EMPS format) <a href=%BASEURL3%/scfxm2>scfxm2</a> from NETLIB."
    scfxm3        "MPS file (compressed EMPS format) <a href=%BASEURL3%/scfxm3>scfxm3</a> from NETLIB."
    scorpion      "MPS file (compressed EMPS format) <a href=%BASEURL3%/scorpion>scorpion</a> from NETLIB."
    scrs8-2b-16   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scrs8-2b-16.gz>scrs8-2b-16.gz</a> from %BASEURL4%/stochlp/."
    scrs8-2b-4    "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scrs8-2b-4.gz>scrs8-2b-4.gz</a> from %BASEURL4%/stochlp/."
    scrs8-2b-64   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scrs8-2b-64.gz>scrs8-2b-64.gz</a> from %BASEURL4%/stochlp/."
    scrs8-2c-16   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scrs8-2c-16.gz>scrs8-2c-16.gz</a> from %BASEURL4%/stochlp/."
    scrs8-2c-32   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scrs8-2c-32.gz>scrs8-2c-32.gz</a> from %BASEURL4%/stochlp/."
    scrs8-2c-4    "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scrs8-2c-4.gz>scrs8-2c-4.gz</a> from %BASEURL4%/stochlp/."
    scrs8-2c-64   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scrs8-2c-64.gz>scrs8-2c-64.gz</a> from %BASEURL4%/stochlp/."
    scrs8-2c-8    "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scrs8-2c-8.gz>scrs8-2c-8.gz</a> from %BASEURL4%/stochlp/."
    scrs8-2r-128  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scrs8-2r-128.gz>scrs8-2r-128.gz</a> from %BASEURL4%/stochlp/."
    scrs8-2r-16   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scrs8-2r-16.gz>scrs8-2r-16.gz</a> from %BASEURL4%/stochlp/."
    scrs8-2r-256  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scrs8-2r-256.gz>scrs8-2r-256.gz</a> from %BASEURL4%/stochlp/."
    scrs8-2r-27   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scrs8-2r-27.gz>scrs8-2r-27.gz</a> from %BASEURL4%/stochlp/."
    scrs8-2r-32   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scrs8-2r-32.gz>scrs8-2r-32.gz</a> from %BASEURL4%/stochlp/."
    scrs8-2r-4    "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scrs8-2r-4.gz>scrs8-2r-4.gz</a> from %BASEURL4%/stochlp/."
    scrs8-2r-512  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scrs8-2r-512.gz>scrs8-2r-512.gz</a> from %BASEURL4%/stochlp/."
    scrs8-2r-64   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scrs8-2r-64.gz>scrs8-2r-64.gz</a> from %BASEURL4%/stochlp/."
    scrs8-2r-64b  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scrs8-2r-64b.gz>scrs8-2r-64b.gz</a> from %BASEURL4%/stochlp/."
    scrs8-2r-8    "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scrs8-2r-8.gz>scrs8-2r-8.gz</a> from %BASEURL4%/stochlp/."
    scrs8         "MPS file (compressed EMPS format) <a href=%BASEURL3%/scrs8>scrs8</a> from NETLIB."
    scsd1         "MPS file (compressed EMPS format) <a href=%BASEURL3%/scsd1>scsd1</a> from NETLIB."
    scsd6         "MPS file (compressed EMPS format) <a href=%BASEURL3%/scsd6>scsd6</a> from NETLIB."
    scsd8-2b-16   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scsd8-2b-16.gz>scsd8-2b-16.gz</a> from %BASEURL4%/stochlp/."
    scsd8-2b-4    "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scsd8-2b-4.gz>scsd8-2b-4.gz</a> from %BASEURL4%/stochlp/."
    scsd8-2b-64   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scsd8-2b-64.gz>scsd8-2b-64.gz</a> from %BASEURL4%/stochlp/."
    scsd8-2c-16   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scsd8-2c-16.gz>scsd8-2c-16.gz</a> from %BASEURL4%/stochlp/."
    scsd8-2c-4    "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scsd8-2c-4.gz>scsd8-2c-4.gz</a> from %BASEURL4%/stochlp/."
    scsd8-2c-64   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scsd8-2c-64.gz>scsd8-2c-64.gz</a> from %BASEURL4%/stochlp/."
    scsd8-2r-108  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scsd8-2r-108.gz>scsd8-2r-108.gz</a> from %BASEURL4%/stochlp/."
    scsd8-2r-16   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scsd8-2r-16.gz>scsd8-2r-16.gz</a> from %BASEURL4%/stochlp/."
    scsd8-2r-216  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scsd8-2r-216.gz>scsd8-2r-216.gz</a> from %BASEURL4%/stochlp/."
    scsd8-2r-27   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scsd8-2r-27.gz>scsd8-2r-27.gz</a> from %BASEURL4%/stochlp/."
    scsd8-2r-32   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scsd8-2r-32.gz>scsd8-2r-32.gz</a> from %BASEURL4%/stochlp/."
    scsd8-2r-4    "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scsd8-2r-4.gz>scsd8-2r-4.gz</a> from %BASEURL4%/stochlp/."
    scsd8-2r-432  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scsd8-2r-432.gz>scsd8-2r-432.gz</a> from %BASEURL4%/stochlp/."
    scsd8-2r-54   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scsd8-2r-54.gz>scsd8-2r-54.gz</a> from %BASEURL4%/stochlp/."
    scsd8-2r-64   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scsd8-2r-64.gz>scsd8-2r-64.gz</a> from %BASEURL4%/stochlp/."
    scsd8-2r-8    "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scsd8-2r-8.gz>scsd8-2r-8.gz</a> from %BASEURL4%/stochlp/."
    scsd8-2r-8b   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/scsd8-2r-8b.gz>scsd8-2r-8b.gz</a> from %BASEURL4%/stochlp/."
    scsd8         "MPS file (compressed EMPS format) <a href=%BASEURL3%/scsd8>scsd8</a> from NETLIB."
    sctap1-2b-16  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sctap1-2b-16.gz>sctap1-2b-16.gz</a> from %BASEURL4%/stochlp/."
    sctap1-2b-4   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sctap1-2b-4.gz>sctap1-2b-4.gz</a> from %BASEURL4%/stochlp/."
    sctap1-2b-64  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sctap1-2b-64.gz>sctap1-2b-64.gz</a> from %BASEURL4%/stochlp/."
    sctap1-2c-16  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sctap1-2c-16.gz>sctap1-2c-16.gz</a> from %BASEURL4%/stochlp/."
    sctap1-2c-4   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sctap1-2c-4.gz>sctap1-2c-4.gz</a> from %BASEURL4%/stochlp/."
    sctap1-2c-64  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sctap1-2c-64.gz>sctap1-2c-64.gz</a> from %BASEURL4%/stochlp/."
    sctap1-2r-108 "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sctap1-2r-108.gz>sctap1-2r-108.gz</a> from %BASEURL4%/stochlp/."
    sctap1-2r-16  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sctap1-2r-16.gz>sctap1-2r-16.gz</a> from %BASEURL4%/stochlp/."
    sctap1-2r-216 "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sctap1-2r-216.gz>sctap1-2r-216.gz</a> from %BASEURL4%/stochlp/."
    sctap1-2r-27  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sctap1-2r-27.gz>sctap1-2r-27.gz</a> from %BASEURL4%/stochlp/."
    sctap1-2r-32  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sctap1-2r-32.gz>sctap1-2r-32.gz</a> from %BASEURL4%/stochlp/."
    sctap1-2r-4   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sctap1-2r-4.gz>sctap1-2r-4.gz</a> from %BASEURL4%/stochlp/."
    sctap1-2r-480 "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sctap1-2r-480.gz>sctap1-2r-480.gz</a> from %BASEURL4%/stochlp/."
    sctap1-2r-54  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sctap1-2r-54.gz>sctap1-2r-54.gz</a> from %BASEURL4%/stochlp/."
    sctap1-2r-64  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sctap1-2r-64.gz>sctap1-2r-64.gz</a> from %BASEURL4%/stochlp/."
    sctap1-2r-8   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sctap1-2r-8.gz>sctap1-2r-8.gz</a> from %BASEURL4%/stochlp/."
    sctap1-2r-8b  "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/sctap1-2r-8b.gz>sctap1-2r-8b.gz</a> from %BASEURL4%/stochlp/."
    sctap1        "MPS file (compressed EMPS format) <a href=%BASEURL3%/sctap1>sctap1</a> from NETLIB."
    sctap2        "MPS file (compressed EMPS format) <a href=%BASEURL3%/sctap2>sctap2</a> from NETLIB."
    sctap3        "MPS file (compressed EMPS format) <a href=%BASEURL3%/sctap3>sctap3</a> from NETLIB."
    seba          "MPS file (compressed EMPS format) <a href=%BASEURL3%/seba>seba</a> from NETLIB."
    self          "MPS file (compressed EMPS format) <a href=%BASEURL4%/infeas/self.gz>self.gz</a> from %BASEURL4%/infeas/."
    set1ch        "MPS file <a href=%BASEURL2%/set1ch>set1ch</a> from MIPLIB 3.0."
    seymour       "MPS file <a href=%BASEURL2%/seymour>seymour</a> from MIPLIB 3.0."
    seymour1      "MPS file <a href=%BASEURL8%/seymour1.mps.gz>seymour1.mps.gz</a> from %BASEURL8%."
    seymourl      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/seymourl.gz>seymourl.gz</a> from %BASEURL4%/misc/."
    sgpf5y6       "MPS file (compressed EMPS format) <a href=%BASEURL1%/misc/sgpf5y6.gz>sgpf5y6.gz</a> from Mittelmann LP Test Problems."
    share1b       "MPS file (compressed EMPS format) <a href=%BASEURL3%/share1b>share1b</a> from NETLIB."
    share2b       "MPS file (compressed EMPS format) <a href=%BASEURL3%/share2b>share2b</a> from NETLIB."
    shell         "MPS file (compressed EMPS format) <a href=%BASEURL3%/shell>shell</a> from NETLIB."
    ship04l       "MPS file (compressed EMPS format) <a href=%BASEURL3%/ship04l>ship04l</a> from NETLIB."
    ship04s       "MPS file (compressed EMPS format) <a href=%BASEURL3%/ship04s>ship04s</a> from NETLIB."
    ship08l       "MPS file (compressed EMPS format) <a href=%BASEURL3%/ship08l>ship08l</a> from NETLIB."
    ship08s       "MPS file (compressed EMPS format) <a href=%BASEURL3%/ship08s>ship08s</a> from NETLIB."
    ship12l       "MPS file (compressed EMPS format) <a href=%BASEURL3%/ship12l>ship12l</a> from NETLIB."
    ship12s       "MPS file (compressed EMPS format) <a href=%BASEURL3%/ship12s>ship12s</a> from NETLIB."
    sierra        "MPS file (compressed EMPS format) <a href=%BASEURL3%/sierra>sierra</a> from NETLIB."
    slptsk        "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/slptsk.gz>slptsk.gz</a> from %BASEURL4%/misc/."
    small000      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/small000.gz>small000.gz</a> from %BASEURL4%/misc/."
    small001      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/small001.gz>small001.gz</a> from %BASEURL4%/misc/."
    small002      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/small002.gz>small002.gz</a> from %BASEURL4%/misc/."
    small003      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/small003.gz>small003.gz</a> from %BASEURL4%/misc/."
    small004      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/small004.gz>small004.gz</a> from %BASEURL4%/misc/."
    small005      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/small005.gz>small005.gz</a> from %BASEURL4%/misc/."
    small006      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/small006.gz>small006.gz</a> from %BASEURL4%/misc/."
    small007      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/small007.gz>small007.gz</a> from %BASEURL4%/misc/."
    small008      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/small008.gz>small008.gz</a> from %BASEURL4%/misc/."
    small009      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/small009.gz>small009.gz</a> from %BASEURL4%/misc/."
    small010      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/small010.gz>small010.gz</a> from %BASEURL4%/misc/."
    small011      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/small011.gz>small011.gz</a> from %BASEURL4%/misc/."
    small012      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/small012.gz>small012.gz</a> from %BASEURL4%/misc/."
    small013      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/small013.gz>small013.gz</a> from %BASEURL4%/misc/."
    small014      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/small014.gz>small014.gz</a> from %BASEURL4%/misc/."
    small015      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/small015.gz>small015.gz</a> from %BASEURL4%/misc/."
    small016      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/small016.gz>small016.gz</a> from %BASEURL4%/misc/."
    south31       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/south31.gz>south31.gz</a> from %BASEURL4%/misc/."
    stair         "MPS file (compressed EMPS format) <a href=%BASEURL3%/stair>stair</a> from NETLIB."
    standata      "MPS file (compressed EMPS format) <a href=%BASEURL3%/standata>standata</a> from NETLIB."
    standgub      "MPS file (compressed EMPS format) <a href=%BASEURL3%/standgub>standgub</a> from NETLIB."
    standmps      "MPS file (compressed EMPS format) <a href=%BASEURL3%/standmps>standmps</a> from NETLIB."
    stein27       "MPS file <a href=%BASEURL2%/stein27>stein27</a> from MIPLIB 3.0."
    stein45       "MPS file <a href=%BASEURL2%/stein45>stein45</a> from MIPLIB 3.0."
    stocfor1      "MPS file (compressed EMPS format) <a href=%BASEURL3%/stocfor1>stocfor1</a> from NETLIB."
    stocfor2      "MPS file (compressed EMPS format) <a href=%BASEURL3%/stocfor2>stocfor2</a> from NETLIB."
    stocfor3      "MPS file (compressed EMPS format) <a href=%BASEURL3%/stocfor3>stocfor3</a> from NETLIB."
    stormg2-125   "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/stormg2-125.gz>stormG2-125.gz</a> from %BASEURL4%/stochlp/."
    stormg2-27    "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/stormg2-27.gz>stormg2-27.gz</a> from %BASEURL4%/stochlp/."
    stormg2-8     "MPS file (compressed EMPS format) <a href=%BASEURL4%/stochlp/stormg2-8.gz>stormg2-8.gz</a> from %BASEURL4%/stochlp/."
    stormg2_1000  "MPS file (compressed EMPS format) <a href=%BASEURL1%/misc/stormg2_1000.gz>stormg2_1000.gz</a> from Mittelmann LP Test Problems."
    swath         "MPS file <a href=%BASEURL2%/swath>swath</a> from MIPLIB 3.0."
    swath1        "MPS file <a href=%BASEURL8%/swath1.mps.gz>swath1.mps.gz</a> from %BASEURL8%."
    swath2        "MPS file <a href=%BASEURL8%/swath2.mps.gz>swath2.mps.gz</a> from %BASEURL8%."
    sws           "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/sws.gz>sws.gz</a> from %BASEURL4%/misc/."
    t0331-4l      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/t0331-4l.gz>t0331-4l.gz</a> from %BASEURL4%/misc/."
    testbig       "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/testbig.gz>testbig.gz</a> from %BASEURL4%/misc/."
    truss         "MPS file (compressed EMPS format) <a href=%BASEURL3%/truss>truss</a> from NETLIB."
    tuff          "MPS file (compressed EMPS format) <a href=%BASEURL3%/tuff>tuff</a> from NETLIB."
    ulevimin      "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/ulevimin.gz>ulevimin.gz</a> from %BASEURL4%/misc/."
    us04          "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/us04.gz>us04.gz</a> from %BASEURL4%/misc/."
    vol1          "MPS file (compressed EMPS format) <a href=%BASEURL5%/vol1>vol1</a> from NETLIB."
    vpm1          "MPS file <a href=%BASEURL2%/vpm1>vpm1</a> from MIPLIB 3.0."
    vpm2          "MPS file <a href=%BASEURL2%/vpm2>vpm2</a> from MIPLIB 3.0."
    vtp-base      "MPS file (compressed EMPS format) <a href=%BASEURL4%/NETLIB/vtp-base.gz>vtp-base.gz</a> from %BASEURL4%/NETLIB/."
    watson_1      "MPS file (compressed EMPS format) <a href=%BASEURL1%/misc/watson_1.gz>watson_1.gz</a> from Mittelmann LP Test Problems."
    wood1p        "MPS file (compressed EMPS format) <a href=%BASEURL3%/wood1p>wood1p</a> from NETLIB."
    woodinfe      "MPS file (compressed EMPS format) <a href=%BASEURL5%/woodinfe>woodinfe</a> from NETLIB."
    woodw         "MPS file (compressed EMPS format) <a href=%BASEURL3%/woodw>woodw</a> from NETLIB."
    world         "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/world.gz>world.gz</a> from %BASEURL4%/misc/."
    zed           "MPS file (compressed EMPS format) <a href=%BASEURL4%/misc/zed.gz>zed.gz</a> from %BASEURL4%/misc/."
/


    
*=== Order in groups of 100
Parameter size /100/;
Set i_htm /1*7/;
Set m_htm(i_htm,m)     models divided into groups 
    first_m(i_htm,m)   first model in group i_htm
    last_m(i_htm,m)    last model in group i_htm;

loop(i_htm,
   m_htm(i_htm,m)   = (ord(m) gt (ord(i_htm)-1)*size) and (ord(m) le ord(i_htm)*size);
   first_m(i_htm,m) = ord(m) eq ( (ord(i_htm)-1) *size+1 );
);

loop(m_htm(i_htm,m),
   if( ord(m) eq (ord(i_htm)*size),
      last_m(i_htm,m)  = ord(m) eq (ord(i_htm)*size);
   else
      last_m(i_htm,m)  = ( ord(m) eq card(m) ) and ( ord(i_htm) eq card(i_htm) ); 
   );
);



*=== Define model to model type mapping
Set mtype(*)     "model types" / LP, MIP, QCP, MIQCP /
    mMIP(m)      "MIP models"
    mLP(m)       "LP  models"
    mQCP(m)      "QCP models"
    mMIQCP(m)    "MIQCP models"
;

Set tmp_mips(m)  "temporary MIP model set" /
   10teams,
   acc-tight-0,
   acc-tight-1,
   acc-tight-2,
   acc-tight-3,
   acc-tight-4,
   acc-tight-5,
   acc-tight-6,
   air03,
   air04,
   air05,
   arki001,
   bal8x12,
   bc,
   bc1,
   bell3a,
   bell5,
   bienst1,
   bienst2,
   binkar10_1,
   bk4x3,
   blend2,
   cap6000,
   client1,
   dano3_3,
   dano3_4,
   dano3_5,
   dano3mip,
   danoint,
   dcmulti,
   dsbmip,
   egout,
   eild76,
   enigma,
   fast0507,
   fiber,
   fixnet6,
   flugpl,
   gen,
   gesa2,
   gesa2_o,
   gesa3,
   gesa3_o,
   gr4x6,
   gt2,
   harp2,
   irp,
   khb05250,
   l152lav,
   lseu,
   markshare1,
   markshare2,
   mas284,
   mas74,
   mas76,
   misc03,
   misc06,
   misc07,
   mitre,
   mkc,
   mkc1,
   mod008,
   mod010,
   mod011,
   modglob,
   n3700,
   n3701,
   n3702,
   n3703,
   n3704,
   n3705,
   n3706,
   n3707,
   n3708,
   n3709,
   n370a,
   n370b,
   n370c,
   n370d,
   n370e,
   neos1,
   neos2,
   neos3,
   neos4,
   neos5,
   neos6,
   neos7,
   noswot,
   nug08,
   nw04,
   p0033,
   p0201,
   p0282,
   p0548,
   p2756,
   pk1,
   pp08a,
   pp08aCUTS,
   prod1,
   qap10,
   qiu,
   qnet1,
   qnet1_o,
   ran10x10a,
   ran10x10b,
   ran10x10c,
   ran10x12,
   ran10x26,
   ran12x12,
   ran12x21,
   ran13x13,
   ran14x18,
   ran16x16,
   ran17x17,
   ran4x64,
   ran6x43,
   ran8x32,
   rentacar,
   rgn,
   rlp2,
   rout,
   set1ch,
   seymour,
   seymour1,
   stein27,
   stein45,
   swath,
   swath1,
   swath2,
   vpm1,
   vpm2
/;

Set tmp_qcps(m)  "temporary QCP model set" /
   cl120a13l1
   cl180a13l1
   cl3a13l1
   cl30a13l1
   cl60a13l1
   cl90a13l1
   nql201
   nql30
   q18a13l1
   q30a13l1
   q9a13l1
   qssp120l1
   qssp180l1
   qssp18l1
   qssp30l1
   qssp60l1
   qssp90l1
   qt120a13l1
   qt12a13l1
   qt180a13l1
   qt18a13l1
   qt30a13l1
   qt60a13l1
   qt90a13l1
   qt9a13l1
   q60a13l1
/;

Set tmp_miqcps(m)  "temporary MIQCP model set" /
   iair04
   iair05
   ibc1
   ibienst1
   icap6000
   imas284
   imisc07
   imod011
   ineos4
   ineos5
   iqiu
   iran13x13
   iran8x32
   iswath2
/;
   
   
Set m_mtype(*,*);
m_mtype(tmp_mips,'mip')   = yes;
m_mtype(tmp_qcps,'qcp')   = yes;
m_mtype(tmp_miqcps,'miqcp') = yes;
m_mtype(m,'lp')$[not tmp_mips(m) and not tmp_qcps(m) and not tmp_miqcps(m)] = yes;


*=== Define LP and MIP models
mMIP(m)   = m_mtype(m,'mip');
mLP(m)    = m_mtype(m,'lp');
mQCP(m)   = m_mtype(m,'qcp');
mMIQCP(m) = m_mtype(m,'miqcp');


*=== Define known infeasible models
Set m_infeas(*) /
bgdbg1,   bgetam,   bgindy,   bgprtr,  box1,     ceria3d,   chemcom,   cplex1,
cplex2,   ex72a,    ex73a,    forest6, galenet,  gosh,      gran,      itest2,
itest6,   klein1,   klein2,   klein3,  mondou2,  pang,      pilot4i,   qual,
reactor,  refinery, vol1,     woodinfe 
/;



Set d(*) origin / 
  client          "Client models"
  fctp            "FCTP MIP test set from Hans D. Mittelmann"
  infeas          "Infeasible LP test sets from NETLIB"
  kennington      "Kennington LP test sets from NETLIB"
  miplib          "MIPLIB 3.0 test set"
  misc            "Miscellaneous LP test sets from Hungarian Academy of Sciences"
  misc_binous     "Miscellaneous models by Housam Binous"
  mittelmannLP    "LP test sets from Hans D. Mittelmann"
  mittelmannMIP   "MIP test set from Hans D. Mittelmann"
  mittelmannMIQCP "MIQCP test set from Hans D. Mittelmann"
  mosekQCP        "QCP models from MOSEK ApS Consulting"
  neos            "NEOS MIP benchmarks from Argonne National Laboratory"
  netlib          "NETLIB collection LP test sets"
  problematic     "Problematic LP test sets from Hungarian Academy of Sciences"
  stochlp         "Stochastic LP test sets from Hungarian Academy of Sciences"
  walserACC       "ACC scheduling MIP test set from Martin Walser"
/



set ms(m,s) model sequence mapping /
  fome10        .  1,     fome11        .  2,     fome12        .  3,
  fome13        .  4,     fome20        .  5,     fome21        .  6,
  sgpf5y6       .  7,     stormG2_1000  .  8,     watson_1      .  9,
  nug20         . 10,     nug30         . 11,     pds-100       . 12,
  pds-2         . 13,     pds-30        . 14,     pds-40        . 15,
  pds-50        . 16,     pds-60        . 17,     pds-70        . 18,
  pds-80        . 19,     pds-90        . 20,     rail2586      . 21,
  rail4284      . 22,     rail507       . 23,     rail516       . 24,
  rail582       . 25,     25fv47        . 26,     80bau3b       . 27,
  adlittle      . 28,     afiro         . 29,     agg2          . 30,
  agg3          . 31,     agg           . 32,     bandm         . 33,
  beaconfd      . 34,     blend         . 35,     bnl1          . 36,
  bnl2          . 37,     boeing1       . 38,     boeing2       . 39,
  bore3d        . 40,     brandy        . 41,     capri         . 42,
  cycle         . 43,     czprob        . 44,     d2q06c        . 45,
  d6cube        . 46,     degen2        . 47,     degen3        . 48,
  dfl001        . 49,     e226          . 50,     etamacro      . 51,
  fffff800      . 52,     finnis        . 53,     fit1d         . 54,
  fit1p         . 55,     fit2d         . 56,     fit2p         . 57,
  forplan       . 58,     ganges        . 59,     gfrd-pnc      . 60,
  greenbea      . 61,     greenbeb      . 62,     grow15        . 63,
  grow22        . 64,     grow7         . 65,     israel        . 66,
  kb2           . 67,     lotfi         . 68,     maros         . 69,
  maros-r7      . 70,     modszk1       . 71,     nesm          . 72,
  perold        . 73,     pilot4        . 74,     pilot87       . 75,
  pilot         . 76,     pilot-ja      . 77,     pilotnov      . 78,
  pilot-we      . 79,     qap08         . 80,     qap12         . 81,
  qap15         . 82,     recipe        . 83,     sc105         . 84,
  sc205         . 85,     sc50a         . 86,     sc50b         . 87,
  scagr25       . 88,     scagr7        . 89,     scfxm1        . 90,
  scfxm2        . 91,     scfxm3        . 92,     scorpion      . 93,
  scrs8         . 94,     scsd1         . 95,     scsd6         . 96,
  scsd8         . 97,     sctap1        . 98,     sctap2        . 99,
  sctap3        .100,     seba          .101,     share1b       .102,
  share2b       .103,     shell         .104,     ship04l       .105,
  ship04s       .106,     ship08l       .107,     ship08s       .108,
  ship12l       .109,     ship12s       .110,     sierra        .111,
  stair         .112,     standata      .113,     standgub      .114,
  standmps      .115,     stocfor1      .116,     stocfor2      .117,
  stocfor3      .118,     truss         .119,     tuff          .120,
  vtp-base      .121,     wood1p        .122,     woodw         .123,
  aa01          .124,     aa03          .125,     aa3           .126,
  aa4           .127,     aa5           .128,     aa6           .129,
  air02         .130,     air06         .131,     aircraft      .132,
  bas1lp        .133,     baxter        .134,     car4          .135,
  cari          .136,     ch            .137,     co5           .138,
  co9           .139,     complex       .140,     cq5           .141,
  cq9           .142,     cr42          .143,     crew1         .144,
  dbic1         .145,     dbir1         .146,     dbir2         .147,
  delf000       .148,     delf001       .149,     delf002       .150,
  delf003       .151,     delf004       .152,     delf005       .153,
  delf006       .154,     delf007       .155,     delf008       .156,
  delf009       .157,     delf010       .158,     delf011       .159,
  delf012       .160,     delf013       .161,     delf014       .162,
  delf015       .163,     delf017       .164,     delf018       .165,
  delf019       .166,     delf020       .167,     delf021       .168,
  delf022       .169,     delf023       .170,     delf024       .171,
  delf025       .172,     delf026       .173,     delf027       .174,
  delf028       .175,     delf029       .176,     delf030       .177,
  delf031       .178,     delf032       .179,     delf033       .180,
  delf034       .181,     delf035       .182,     delf036       .183,
  df2177        .184,     disp3         .185,     ex3sta1       .186,
  farm          .187,     gams10a       .188,     gams30a       .189,
  ge            .190,     iiasa         .191,     jendrec1      .192,
  kent          .193,     kl02          .194,     kleemin3      .195,
  kleemin4      .196,     kleemin5      .197,     kleemin6      .198,
  kleemin7      .199,     kleemin8      .200,     l9            .201,
  large000      .202,     large001      .203,     large002      .204,
  large003      .205,     large004      .206,     large005      .207,
  large006      .208,     large007      .209,     large008      .210,
  large009      .211,     large010      .212,     large011      .213,
  large012      .214,     large013      .215,     large014      .216,
  large015      .217,     large016      .218,     large017      .219,
  large018      .220,     large019      .221,     large020      .222,
  large021      .223,     large022      .224,     large023      .225,
  large024      .226,     large025      .227,     large026      .228,
  large027      .229,     large028      .230,     large029      .231,
  large030      .232,     large031      .233,     large032      .234,
  large033      .235,     large034      .236,     large035      .237,
  large036      .238,     lp22          .239,     lpl1          .240,
  lpl2          .241,     lpl3          .242,     mod2          .243,
  model10       .244,     model11       .245,     model1        .246,
  model2        .247,     model3        .248,     model4        .249,
  model5        .250,     model6        .251,     model7        .252,
  model8        .253,     model9        .254,     multi         .255,
  nemsafm       .256,     nemscem       .257,     nemsemm1      .258,
  nemsemm2      .259,     nemspmm1      .260,     nemspmm2      .261,
  nemswrld      .262,     nl            .263,     nsct1         .264,
  nsct2         .265,     nsic1         .266,     nsic2         .267,
  nsir1         .268,     nsir2         .269,     nug05         .270,
  nug06         .271,     nug07         .272,     nug12         .273,
  nug15         .274,     nw14          .275,     orna1         .276,
  orna2         .277,     orna3         .278,     orna4         .279,
  orna7         .280,     orswq2        .281,     p0040         .282,
  p010          .283,     p0291         .284,     p05           .285,
  p19           .286,     p6000         .287,     pcb1000       .288,
  pcb3000       .289,     pf2177        .290,     pldd000b      .291,
  pldd001b      .292,     pldd002b      .293,     pldd003b      .294,
  pldd004b      .295,     pldd005b      .296,     pldd006b      .297,
  pldd007b      .298,     pldd008b      .299,     pldd009b      .300,
  pldd010b      .301,     pldd011b      .302,     pldd012b      .303,
  primagaz      .304,     problem       .305,     progas        .306,
  qiulp         .307,     r05           .308,     rat1          .309,
  rat5          .310,     rat7a         .311,     refine        .312,
  rlfddd        .313,     rlfdual       .314,     rlfprim       .315,
  rosen10       .316,     rosen1        .317,     rosen2        .318,
  rosen7        .319,     rosen8        .320,     route         .321,
  seymourl      .322,     slptsk        .323,     small000      .324,
  small001      .325,     small002      .326,     small003      .327,
  small004      .328,     small005      .329,     small006      .330,
  small007      .331,     small008      .332,     small009      .333,
  small010      .334,     small011      .335,     small012      .336,
  small013      .337,     small014      .338,     small015      .339,
  small016      .340,     south31       .341,     sws           .342,
  t0331-4l      .343,     testbig       .344,     ulevimin      .345,
  us04          .346,     world         .347,     zed           .348,
  bgdbg1        .349,     bgetam        .350,     bgindy        .351,
  bgprtr        .352,     box1          .353,     ceria3d       .354,
  chemcom       .355,     cplex1        .356,     cplex2        .357,
  ex72a         .358,     ex73a         .359,     forest6       .360,
  galenet       .361,     gams10am      .362,     gams30am      .363,
  gams60am      .364,     gas11         .365,     gosh          .366,
  gran          .367,     greenbei      .368,     itest2        .369,
  itest6        .370,     klein1        .371,     klein2        .372,
  klein3        .373,     mondou2       .374,     pang          .375,
  pilot4i       .376,     qual          .377,     reactor       .378,
  refinery      .379,     self          .380,     vol1          .381,
  woodinfe      .382,     de063155      .383,     de063157      .384,
  de080285      .385,     gen1          .386,     gen2          .387,
  gen4          .388,     iprob         .389,     l30           .390,
  cep1          .391,     deter0        .392,     deter1        .393,
  deter2        .394,     deter3        .395,     deter4        .396,
  deter5        .397,     deter6        .398,     deter7        .399,
  deter8        .400,     fxm2-16       .401,     fxm2-6        .402,
  fxm3_16       .403,     fxm3_6        .404,     fxm4_6        .405,
  pgp2          .406,     pltexpA2-16   .407,     pltexpA2-6    .408,
  pltexpA3_16   .409,     pltexpA3_6    .410,     pltexpA4_6    .411,
  sc205-2r-100  .412,     sc205-2r-1600 .413,     sc205-2r-16   .414,
  sc205-2r-200  .415,     sc205-2r-27   .416,     sc205-2r-32   .417,
  sc205-2r-400  .418,     sc205-2r-4    .419,     sc205-2r-50   .420,
  sc205-2r-64   .421,     sc205-2r-800  .422,     sc205-2r-8    .423,
  scagr7-2b-16  .424,     scagr7-2b-4   .425,     scagr7-2b-64  .426,
  scagr7-2c-16  .427,     scagr7-2c-4   .428,     scagr7-2c-64  .429,
  scagr7-2r-108 .430,     scagr7-2r-16  .431,     scagr7-2r-216 .432,
  scagr7-2r-27  .433,     scagr7-2r-32  .434,     scagr7-2r-432 .435,
  scagr7-2r-4   .436,     scagr7-2r-54  .437,     scagr7-2r-64  .438,
  scagr7-2r-864 .439,     scagr7-2r-8   .440,     scfxm1-2b-16  .441,
  scfxm1-2b-4   .442,     scfxm1-2b-64  .443,     scfxm1-2c-4   .444,
  scfxm1-2r-128 .445,     scfxm1-2r-16  .446,     scfxm1-2r-256 .447,
  scfxm1-2r-27  .448,     scfxm1-2r-32  .449,     scfxm1-2r-4   .450,
  scfxm1-2r-64  .451,     scfxm1-2r-8   .452,     scfxm1-2r-96  .453,
  scrs8-2b-16   .454,     scrs8-2b-4    .455,     scrs8-2b-64   .456,
  scrs8-2c-16   .457,     scrs8-2c-32   .458,     scrs8-2c-4    .459,
  scrs8-2c-64   .460,     scrs8-2c-8    .461,     scrs8-2r-128  .462,
  scrs8-2r-16   .463,     scrs8-2r-256  .464,     scrs8-2r-27   .465,
  scrs8-2r-32   .466,     scrs8-2r-4    .467,     scrs8-2r-512  .468,
  scrs8-2r-64b  .469,     scrs8-2r-64   .470,     scrs8-2r-8    .471,
  scsd8-2b-16   .472,     scsd8-2b-4    .473,     scsd8-2b-64   .474,
  scsd8-2c-16   .475,     scsd8-2c-4    .476,     scsd8-2c-64   .477,
  scsd8-2r-108  .478,     scsd8-2r-16   .479,     scsd8-2r-216  .480,
  scsd8-2r-27   .481,     scsd8-2r-32   .482,     scsd8-2r-432  .483,
  scsd8-2r-4    .484,     scsd8-2r-54   .485,     scsd8-2r-64   .486,
  scsd8-2r-8b   .487,     scsd8-2r-8    .488,     sctap1-2b-16  .489,
  sctap1-2b-4   .490,     sctap1-2b-64  .491,     sctap1-2c-16  .492,
  sctap1-2c-4   .493,     sctap1-2c-64  .494,     sctap1-2r-108 .495,
  sctap1-2r-16  .496,     sctap1-2r-216 .497,     sctap1-2r-27  .498,
  sctap1-2r-32  .499,     sctap1-2r-480 .500,     sctap1-2r-4   .501,
  sctap1-2r-54  .502,     sctap1-2r-64  .503,     sctap1-2r-8b  .504,
  sctap1-2r-8   .505,     stormG2-125   .506,     stormG2-27    .507,
  stormG2-8     .508,     cre-a         .509,     cre-b         .510,
  cre-c         .511,     cre-d         .512,     ken-07        .513,
  ken-11        .514,     ken-13        .515,     ken-18        .516,
  osa-07        .517,     osa-14        .518,     osa-30        .519,
  osa-60        .520,     pds-02        .521,     pds-06        .522,
  pds-10        .523,     pds-20        .524,     10teams       .525,
  air03         .526,     air04         .527,     air05         .528,
  arki001       .529,     bell3a        .530,     bell5         .531,
  blend2        .532,     cap6000       .533,     dano3mip      .534,
  danoint       .535,     dcmulti       .536,     dsbmip        .537,
  egout         .538,     enigma        .539,     fast0507      .540,
  fiber         .541,     fixnet6       .542,     flugpl        .543,
  gen           .544,     gesa2         .545,     gesa2_o       .546,
  gesa3         .547,     gesa3_o       .548,     gt2           .549,
  harp2         .550,     khb05250      .551,     l152lav       .552,
  lseu          .553,     markshare1    .554,     markshare2    .555,
  mas74         .556,     mas76         .557,     misc03        .558,
  misc06        .559,     misc07        .560,     mitre         .561,
  mkc           .562,     mod008        .563,     mod010        .564,
  mod011        .565,     modglob       .566,     noswot        .567,
  nw04          .568,     p0033         .569,     p0201         .570,
  p0282         .571,     p0548         .572,     p2756         .573,
  pk1           .574,     pp08a         .575,     pp08aCUTS     .576,
  qiu           .577,     qnet1         .578,     qnet1_o       .579,
  rentacar      .580,     rgn           .581,     rout          .582,
  set1ch        .583,     seymour       .584,     stein27       .585,
  stein45       .586,     swath         .587,     vpm1          .588,
  vpm2          .589,     bal8x12       .590,     bk4x3         .591,
  gr4x6         .592,     n3700         .593,     n3701         .594,
  n3702         .595,     n3703         .596,     n3704         .597,
  n3705         .598,     n3706         .599,     n3707         .600,
  n3708         .601,     n3709         .602,     n370a         .603,
  n370b         .604,     n370c         .605,     n370d         .606,
  n370e         .607,     ran10x10a     .608,     ran10x10b     .609,
  ran10x10c     .610,     ran10x12      .611,     ran10x26      .612,
  ran12x12      .613,     ran12x21      .614,     ran13x13      .615,
  ran14x18      .616,     ran16x16      .617,     ran17x17      .618,
  ran4x64       .619,     ran6x43       .620,     ran8x32       .621,
  bc            .622,     binkar10_1    .623,     eilD76        .624,
  haprp         .625,     irp           .626,     mas284        .627,
  prod1         .628,     rlp2          .629,     bc1           .630,
  bienst1       .631,     bienst2       .632,     dano3_3       .633,
  dano3_4       .634,     dano3_5       .635,     mkc1          .636,
  neos1         .637,     neos2         .638,     neos3         .639,
  neos4         .640,     neos5         .641,     neos6         .642,
  neos7         .643,     nug08         .644,     qap10         .645,
  seymour1      .646,     swath1        .647,     swath2        .648,
  acc-tight-0   .649,     acc-tight-1   .650,     acc-tight-2   .651,
  acc-tight-3   .652,     acc-tight-4   .653,     acc-tight-5   .654,
  acc-tight-6   .655,     cl120a13l1    .656,     cl180a13l1    .657,
  cl3a13l1      .658,     cl30a13l1     .659,     cl60a13l1     .660,
  cl90a13l1     .661,     nql201        .662,     nql30         .663,
  q18a13l1      .664,     q30a13l1      .665,     q9a13l1       .666,
  qssp120l1     .667,     qssp180l1     .668,     qssp18l1      .669,
  qssp30l1      .670,     qssp60l1      .671,     qssp90l1      .672,
  qt120a13l1    .673,     qt12a13l1     .674,     qt180a13l1    .675,
  qt18a13l1     .676,     qt30a13l1     .677,     qt60a13l1     .678,
  qt90a13l1     .679,     qt9a13l1      .680,     q60a13l1      .681,
  iair04        .682,     iair05        .683,     ibc1          .684,
  ibienst1      .685,     icap6000      .686,     imas284       .687,     
  imisc07       .688,     imod011       .689,     ineos4        .690,     
  ineos5        .691,     iqiu          .692,     iran13x13     .693,     
  iran8x32      .694,     iswath2       .695,     cracker1      .696,
  cracker2      .697,     power         .698,     client1       .699 
/;
  
  
  
*=== Define LP and MIPs as a function of sequence number
Set smip(s) 
    slp(s)
    sqcp(s) 
    smiqcp(s)
;
smip(s) = sum(ms(mMIP,s),1);
sqcp(s) = sum(ms(mQCP,s),1);
smiqcp(s) = sum(ms(mMIQCP,s),1);
slp(s) = sum(ms(m,s)$[not smip(s) and not sqcp(s) and not smiqcp(s)],1); 

Set smt(s,mtype);
smt(slp,'LP') = yes;
smt(smip,'MIP') = yes;
smt(sqcp,'QCP') = yes;
smt(sqcp,'MIQCP') = yes;

Set ds(d,s) model application mapping /
  fctp            . (590*621)
  infeas          . (349*382)
  kennington      . (509*524)
  miplib          . (525*589)
  misc            . (124*348)
  misc_binous     . (696*698)
  mittelmannLP    . (1*25)
  mittelmannMIP   . (630*648)
  mittelmannMIQCP . (682*695)
  mosekQCP        . (656*681)
  neos            . (622*629)
  netlib          . (26*123)
  problematic     . (383*390)
  stochlp         . (391*508)
  walserACC       . (649*655)
  client          .  699
/;



*=== Output for references
$if not exist gams.bib $goto nobib
$echo r1  351  > g2g.txt
$echo r2  352 >> g2g.txt
$echo r3  353 >> g2g.txt
$echo r4  354 >> g2g.txt
$echo r5  355 >> g2g.txt
$echo r6  356 >> g2g.txt
$echo r7  357 >> g2g.txt
$echo r8  358 >> g2g.txt
$echo r9  359 >> g2g.txt
$echo r10 360 >> g2g.txt
$echo r11 361 >> g2g.txt
$echo r12 362 >> g2g.txt
$echo r13 363 >> g2g.txt
$echo r14 364 >> g2g.txt
$echo r15 365 >> g2g.txt
$echo r16 366 >> g2g.txt
$echo r17 367 >> g2g.txt
$echo r18 368 >> g2g.txt
$echo r19 369 >> g2g.txt
$echo r20 370 >> g2g.txt
$echo r21 371 >> g2g.txt
$echo r22 372 >> g2g.txt
$echo r23 384 >> g2g.txt
$echo r24 385 >> g2g.txt
$echo r25 386 >> g2g.txt
$echo r26 387 >> g2g.txt
$echo r27 388 >> g2g.txt
$echo r28 391 >> g2g.txt
$echo r29 392 >> g2g.txt
$echo r30 393 >> g2g.txt
$echo r31 394 >> g2g.txt
$echo r32 395 >> g2g.txt
$echo r33 396 >> g2g.txt
$echo r34 480 >> g2g.txt
$echo r35 481 >> g2g.txt
$echo r36 508 >> g2g.txt
$echo r37  13 >> g2g.txt
$echo r38  37 >> g2g.txt

$set cat type
$if %system.filesys% == UNIX $set cat cat

$call "bib2gms gams.bib r=g2g.txt i=perform"
$echo set a authors /                              > performref.inc
$call %cat% perform.a                             >> performref.inc
$echo               /                             >> performref.inc
$echo set r references /                          >> performref.inc
$call %cat% perform.r                             >> performref.inc
$echo                  /                          >> performref.inc
$echo $onempty                                    >> performref.inc
$echo set cr(r,r) cross references /              >> performref.inc
$call %cat% perform.crr                           >> performref.inc
$echo                              /              >> performref.inc
$echo set ca(a) credit authors /                  >> performref.inc
$call %cat% perform.ca                            >> performref.inc
$echo                          /                  >> performref.inc
$echo $offempty                                   >> performref.inc
$echo set af(a,r) first author     /              >> performref.inc
$call %cat% perform.far                           >> performref.inc
$echo                              /              >> performref.inc
$echo set ar(a,r) author reference mapping /      >> performref.inc
$call %cat% perform.ar                            >> performref.inc
$echo                                      /      >> performref.inc

$label nobib

$include performref.inc

set nopubs(r) not real publications; nopubs(r) = no;

set pubs(r) real publications;
pubs(r) = not nopubs(r);

set mr(m,r) model reference mapping;
* MIPLIB references 
mr(m,'r1') = sum(ms(m,s),ds('miplib',s));
mr(m,'r27') = sum(ms(m,s),ds('miplib',s));

mr('air03','r4') = yes;
mr('bell3a','r5') = yes;
mr('bell3a','r6') = yes;
mr('bell3a','r7') = yes;
mr('bell3a','r8') = yes;
mr('dcmulti','r11') = yes;
mr('dcmulti','r12') = yes;
mr('dcmulti','r13') = yes;
mr('egout','r14') = yes;
mr('gen','r14') = yes;
mr('khb05250','r14') = yes;
mr('modglob','r14') = yes;
mr('lseu','r10') = yes;
mr('lseu','r15') = yes;
mr('p0033','r16') = yes;
mr('p0033','r17') = yes;
mr('p0033','r18') = yes;
mr('p0033','r19') = yes;
mr('p0033','r20') = yes;
mr('p0040','r16') = yes;
mr('p0040','r17') = yes;
mr('p0040','r18') = yes;
mr('p0040','r19') = yes;
mr('p0040','r20') = yes;
mr('p0201','r16') = yes;
mr('p0201','r17') = yes;
mr('p0201','r18') = yes;
mr('p0201','r19') = yes;
mr('p0201','r20') = yes;
mr('p0282','r16') = yes;
mr('p0282','r17') = yes;
mr('p0282','r18') = yes;
mr('p0282','r19') = yes;
mr('p0282','r20') = yes;
mr('p0291','r16') = yes;
mr('p0291','r17') = yes;
mr('p0291','r18') = yes;
mr('p0291','r19') = yes;
mr('p0291','r20') = yes;
mr('p0548','r16') = yes;
mr('p0548','r17') = yes;
mr('p0548','r18') = yes;
mr('p0548','r19') = yes;
mr('p0548','r20') = yes;
mr('qiu','r11') = yes;
mr('qiu','r12') = yes;
mr('qiu','r13') = yes;
mr('qiu','r21') = yes;

* KENNINGTON references
mr(m,'r2') = sum(ms(m,s),ds('kennington',s));

* WalserACC references
mr(m,'r3') = sum(ms(m,s),ds('walserACC',s));

* MISC references
mr(m,'r29') = sum(ms(m,s),ds('misc',s));
mr('air02','r4') = yes;

* MISC Binous references
mr(m,'r36') = sum(ms(m,s),ds('misc_binous',s));
mr(m,'r37') = sum(ms(m,s),ds('misc_binous',s));

* NETLIB references
mr(m,'r23') = sum(ms(m,s),ds('netlib',s));

* NEOS references
mr(m,'r24') = sum(ms(m,s),ds('neos',s));

* FCTP references
mr(m,'r25') = sum(ms(m,s),ds('fctp',s));
mr(m,'r26') = sum(ms(m,s),ds('fctp',s));

* NETLIB INFEASIBLE references 
mr(m,'r28') = sum(ms(m,s),ds('infeas',s));

* Mittelmann LP references 
mr(m,'r30') = sum(ms(m,s),ds('mittelmannLP',s));

* Mittelmann MIP references 
mr(m,'r31') = sum(ms(m,s),ds('mittelmannMIP',s));

* Mittelmann MIQCP references 
mr(m,'r35') = sum(ms(m,s),ds('mittelmannMIQCP',s));

* Probelmatic LP references 
mr(m,'r32') = sum(ms(m,s),ds('problematic',s));

* Stochastic LP references 
mr(m,'r33') = sum(ms(m,s),ds('stochLP',s));

* MOSEK ApS Consulting references 
mr(m,'r34') = sum(ms(m,s),ds('mosekQCP',s));

* Client model references
mr('client1','r38') = yes;

* origin reference mapping
set dr(d,r) origin reference mapping;
dr('fctp','r25') = yes;
dr('fctp','r26') = yes;
dr('infeas','r28') = yes;
dr('kennington','r2') = yes;
dr('misc_binous','r36') = yes;
dr('misc_binous','r37') = yes;
dr('misc','r29') = yes;
dr('miplib','r1') = yes;
dr('miplib','r27') = yes;
dr('mittelmannLP','r30') = yes;
dr('mittelmannMIP','r31') = yes;
dr('mittelmannMIQCP','r35') = yes;
dr('netlib','r23') = yes;
dr('neos','r24') = yes;
dr('problematic','r32') = yes;
dr('stochLP','r33') = yes;
dr('walserACC','r3') = yes;


set nogdx(m) models with no GDX data file;
nogdx('client1') = yes;
nogdx('cracker1') = yes;
nogdx('cracker2') = yes;
nogdx('power') = yes;
nogdx(mQCP)   = yes;
nogdx(mMIQCP) = yes;


set p restart or solution points /p1*p10/;

set mp(m,p) available restart or solution points /
10TEAMS         .P1    
25FV47          .P1            
80BAU3B        	.P1 
AA01           	.P1 
AA03           	.P1 
AA3            	.P1 
AA4            	.P1 
AA5            	.P1 
AA6            	.P1 
ACC-TIGHT-0     .P1     
ACC-TIGHT-1     .P1    
ACC-TIGHT-4     .P1     
ADLITTLE       	.P1 
AFIRO          	.P1 
AGG            	.P1 
AGG2            .p1
AGG3           	.P1 
AIR02          	.P1 
AIR03           .P1     
AIR04           .P1    
AIR05           .P1     
AIR06          	.P1 
AIRCRAFT       	.P1 
BAL8X12		.P1     
BANDM          	.P1 
BAS1LP         	.P1 
BAXTER         	.P1 
BEACONFD       	.P1 
BELL3A		.P1     
BELL5		.P1     
BIENST1		.P1     
BINKAR10_1      .P1     
BK4X3		.P1     
BLEND          	.P1 
BLEND2		.P1     
BNL1           	.P1 
BNL2           	.P1 
BOEING1        	.P1 
BOEING2        	.P1 
BORE3D         	.P1 
BRANDY         	.P1 
CAP6000		.P1     
CAPRI          	.P1 
CAR4           	.P1 
CARI           	.P1 
CEP1           	.P1 
CH             	.P1 
CO5            	.P1 
CO9            	.P1 
COMPLEX        	.P1 
CQ5            	.P1 
CQ9            	.P1 
CR42           	.P1 
CRE-A          	.P1 
CRE-B          	.P1 
CRE-C          	.P1 
CRE-D          	.P1 
CREW1          	.P1 
CYCLE          	.P1 
CZPROB         	.P1 
D2Q06C         	.P1 
D6CUBE         	.P1 
DBIR1          	.P1 
DBIR2          	.P1 
DCMULTI		.P1     
DE063155       	.P1 
DE063157       	.P1 
DE080285       	.P1 
DEGEN2         	.P1 
DEGEN3         	.P1 
DELF000        	.P1 
DELF001        	.P1 
DELF002        	.P1 
DELF003        	.P1 
DELF004        	.P1 
DELF005        	.P1 
DELF006        	.P1 
DELF007        	.P1 
DELF008        	.P1 
DELF009        	.P1 
DELF010        	.P1 
DELF011        	.P1 
DELF012        	.P1 
DELF013        	.P1 
DELF014        	.P1 
DELF015        	.P1 
DELF017        	.P1 
DELF018        	.P1 
DELF019        	.P1 
DELF020        	.P1 
DELF021        	.P1 
DELF022        	.P1 
DELF023        	.P1 
DELF024        	.P1 
DELF025        	.P1 
DELF026        	.P1 
DELF027        	.P1 
DELF028         .P1 
DELF029        	.P1 
DELF030        	.P1 
DELF031        	.P1 
DELF032        	.P1 
DELF033        	.P1 
DELF034        	.P1 
DELF035        	.P1 
DELF036        	.P1 
DETER0         	.P1 
DETER1         	.P1 
DETER2         	.P1 
DETER3         	.P1 
DETER4         	.P1 
DETER5         	.P1 
DETER6         	.P1 
DETER7         	.P1 
DETER8         	.P1 
DF2177         	.P1 
DFL001         	.P1 
DISP3          	.P1 
DSBMIP          .P1      
E226           	.P1 
EGOUT		.P1     
ENIGMA		.P1     
ETAMACRO       	.P1 
EX3STA1        	.P1 
FARM           	.P1 
FFFFF800       	.P1 
FIBER		.P1     
FINNIS         	.P1 
FIT1D          	.P1 
FIT1P          	.P1 
FIT2D          	.P1 
FIT2P          	.P1 
FIXNET6		.P1     
FLUGPL          .P1     
FOME10         	.P1 
FOME11         	.P1 
FOME12         	.P1 
FOME13         	.P1 
FOME20         	.P1 
FOME21         	.P1 
GAMS10A        	.P1 
GAMS30A        	.P1 
GANGES         	.P1 
GAS11           .P1
GE             	.P1 
GEN		.P1    
GEN1           	.P1 
GEN2           	.P1 
GEN4           	.P1 
GESA2		.P1    
GESA2_O		.P1    
GESA3		.P1    
GESA3_O		.P1    
GFRD-PNC       	.P1 
GR4X6		.P1    
GREENBEA       	.P1 
GREENBEB       	.P1 
GROW15         	.P1 
GROW22         	.P1 
GROW7          	.P1 
GT2		.P1    
HAPRP		.P1    
IIASA          	.P1 
IRP		.P1    
ISRAEL         	.P1 
JENDREC1       	.P1 
KB2            	.P1 
KEN-07         	.P1 
KEN-11         	.P1 
KEN-13         	.P1 
KEN-18         	.P1 
KHB05250	.P1    
KL02           	.P1 
KLEEMIN3       	.P1 
KLEEMIN4       	.P1 
KLEEMIN5       	.P1 
KLEEMIN6       	.P1 
KLEEMIN7       	.P1 
KLEEMIN8       	.P1 
L152LAV		.P1    
L30            	.P1 
L9             	.P1 
LARGE000       	.P1 
LARGE001       	.P1 
LARGE002       	.P1 
LARGE003       	.P1 
LARGE004       	.P1 
LARGE005       	.P1 
LARGE006       	.P1 
LARGE007       	.P1 
LARGE008       	.P1 
LARGE009       	.P1 
LARGE010       	.P1 
LARGE011        .P1 
LARGE012       	.P1 
LARGE013       	.P1 
LARGE014       	.P1 
LARGE015       	.P1 
LARGE016       	.P1 
LARGE017       	.P1 
LARGE018       	.P1 
LARGE019       	.P1 
LARGE020       	.P1 
LARGE021       	.P1 
LARGE022       	.P1 
LARGE023       	.P1 
LARGE024       	.P1 
LARGE025       	.P1 
LARGE026       	.P1 
LARGE027       	.P1 
LARGE028       	.P1 
LARGE029       	.P1 
LARGE030       	.P1 
LARGE031       	.P1 
LARGE032       	.P1 
LARGE033       	.P1 
LARGE034       	.P1 
LARGE035       	.P1 
LARGE036       	.P1 
LOTFI          	.P1 
LP22           	.P1 
LPL2           	.P1 
LPL3           	.P1 
LSEU		.P1    
MAROS-R7       	.P1 
MAROS          	.P1 
MAS284		.P1    
MAS76		.P1    
MISC03		.P1    
MISC06		.P1    
MISC07		.P1    
MITRE		.P1    
MOD008		.P1    
MOD010		.P1    
MOD2           	.P1 
MODEL1         	.P1 
MODEL10        	.P1 
MODEL11        	.P1 
MODEL2         	.P1 
MODEL3         	.P1 
MODEL4         	.P1 
MODEL5         	.P1 
MODEL6         	.P1 
MODEL7         	.P1 
MODEL8         	.P1 
MODEL9         	.P1 
MODGLOB         .P1    
MODSZK1        	.P1 
MULTI          	.P1 
NEMSAFM        	.P1 
NEMSCEM        	.P1 
NEMSEMM1       	.P1 
NEMSEMM2       	.P1 
NEMSPMM1       	.P1 
NEMSPMM2       	.P1 
NEMSWRLD       	.P1 
NEOS1		.P1    
NEOS2		.P1    
NEOS4		.P1    
NEOS5		.P1    
NESM           	.P1 
NL             	.P1 
NSCT1          	.P1 
NSCT2          	.P1 
NSIC1          	.P1 
NSIC2          	.P1 
NSIR1          	.P1 
NSIR2          	.P1 
NUG05          	.P1 
NUG06          	.P1 
NUG07          	.P1 
NW04		.P1    
NW14           	.P1 
ORSWQ2         	.P1 
OSA-07         	.P1 
OSA-14         	.P1 
OSA-30         	.P1 
OSA-60         	.P1 
P0033		.P1    
P0040          	.P1 
P010           	.P1 
P0201		.P1    
P0291          	.P1 
P05            	.P1 
P0548		.P1    
P19            	.P1 
P2756		.P1    
P6000          	.P1 
PCB1000        	.P1 
PCB3000        	.P1 
PDS-02         	.P1 
PDS-06         	.P1 
PDS-10          .P1  
PDS-2          	.P1 
PDS-20         	.P1 
PDS-30         	.P1 
PDS-40         	.P1 
PDS-50         	.P1 
PDS-60         	.P1 
PDS-70         	.P1 
PDS-80         	.P1 
PEROLD         	.P1 
PF2177         	.P1 
PGP2           	.P1 
PILOT-JA       	.P1 
PILOT-WE       	.P1 
PILOT          	.P1 
PILOT4         	.P1 
PILOT87        	.P1 
PILOTNOV       	.P1 
PK1		.P1    
PLDD000B       	.P1 
PLDD001B       	.P1 
PLDD002B       	.P1 
PLDD003B       	.P1 
PLDD004B       	.P1 
PLDD005B       	.P1 
PLDD006B       	.P1 
PLDD007B       	.P1 
PLDD008B       	.P1 
PLDD009B       	.P1 
PLDD010B       	.P1 
PLDD011B       	.P1 
PLDD012B       	.P1 
PP08A		.P1    
PP08ACUTS	.P1    
PRIMAGAZ       	.P1 
PROBLEM        	.P1 
PROD1		.P1    
PROGAS         	.P1 
QAP08          	.P1 
QIU		.P1    
QIULP          	.P1 
QNET1		.P1    
QNET1_O		.P1    
R05            	.P1 
RAIL507        	.P1 
RAIL516        	.P1 
RAIL582        	.P1 
RAN10X10A	.P1    
RAN10X10B	.P1    
RAN10X10C	.P1    
RAN10X12	.P1    
RAN10X26        .P1    
RAN12X12	.P1    
RAN12X21	.P1    
RAN13X13	.P1    
RAN17X17	.P1    
RAN4X64		.P1    
RAN6X43		.P1    
RAN8X32		.P1    
RAT1           	.P1 
RAT5           	.P1 
RAT7A          	.P1 
RECIPE         	.P1 
REFINE         	.P1 
RENTACAR	.P1    
RGN		.P1    
RLFDDD         	.P1 
RLFDUAL        	.P1 
RLFPRIM        	.P1 
RLP2		.P1    
ROSEN1         	.P1 
ROSEN10        	.P1 
ROSEN2         	.P1 
ROSEN7         	.P1 
ROSEN8         	.P1 
ROUTE          	.P1 
SC105          	.P1 
SC205-2R-100   	.P1 
SC205-2R-16    	.P1 
SC205-2R-1600  	.P1 
SC205-2R-200   	.P1 
SC205-2R-27    	.P1 
SC205-2R-32    	.P1 
SC205-2R-4     	.P1 
SC205-2R-400   	.P1 
SC205-2R-50    	.P1 
SC205-2R-64    	.P1 
SC205-2R-8     	.P1 
SC205-2R-800   	.P1 
SC205          	.P1 
SC50A          	.P1 
SC50B          	.P1 
SCAGR25        	.P1 
SCAGR7-2B-16   	.P1 
SCAGR7-2B-4    	.P1 
SCAGR7-2B-64   	.P1 
SCAGR7-2C-16   	.P1 
SCAGR7-2C-4    	.P1 
SCAGR7-2C-64   	.P1 
SCAGR7-2R-108  	.P1 
SCAGR7-2R-16   	.P1 
SCAGR7-2R-216  	.P1 
SCAGR7-2R-27    .P1 
SCAGR7-2R-32   	.P1 
SCAGR7-2R-4    	.P1 
SCAGR7-2R-432  	.P1 
SCAGR7-2R-54   	.P1 
SCAGR7-2R-64   	.P1 
SCAGR7-2R-8    	.P1 
SCAGR7-2R-864  	.P1 
SCAGR7         	.P1 
SCFXM1-2B-16   	.P1 
SCFXM1-2B-4    	.P1 
SCFXM1-2B-64   	.P1 
SCFXM1-2C-4    	.P1 
SCFXM1-2R-128  	.P1 
SCFXM1-2R-16   	.P1 
SCFXM1-2R-256  	.P1 
SCFXM1-2R-27   	.P1 
SCFXM1-2R-32   	.P1 
SCFXM1-2R-4    	.P1 
SCFXM1-2R-64   	.P1 
SCFXM1-2R-8    	.P1 
SCFXM1-2R-96   	.P1 
SCFXM1         	.P1 
SCFXM2         	.P1 
SCFXM3         	.P1 
SCORPION       	.P1 
SCRS8-2B-16    	.P1 
SCRS8-2B-4     	.P1 
SCRS8-2B-64    	.P1 
SCRS8-2C-16    	.P1 
SCRS8-2C-32    	.P1 
SCRS8-2C-4     	.P1 
SCRS8-2C-64    	.P1 
SCRS8-2C-8     	.P1 
SCRS8-2R-128   	.P1 
SCRS8-2R-16    	.P1 
SCRS8-2R-256   	.P1 
SCRS8-2R-27    	.P1 
SCRS8-2R-32    	.P1 
SCRS8-2R-4     	.P1 
SCRS8-2R-512   	.P1 
SCRS8-2R-64    	.P1 
SCRS8-2R-64B   	.P1 
SCRS8-2R-8     	.P1 
SCRS8          	.P1 
SCSD1          	.P1 
SCSD6          	.P1 
SCSD8-2B-16    	.P1 
SCSD8-2B-4     	.P1 
SCSD8-2B-64    	.P1 
SCSD8-2C-16    	.P1 
SCSD8-2C-4     	.P1 
SCSD8-2C-64    	.P1 
SCSD8-2R-108   	.P1 
SCSD8-2R-16    	.P1 
SCSD8-2R-216   	.P1 
SCSD8-2R-27    	.P1 
SCSD8-2R-32    	.P1 
SCSD8-2R-4     	.P1 
SCSD8-2R-432   	.P1 
SCSD8-2R-54    	.P1 
SCSD8-2R-64    	.P1 
SCSD8-2R-8     	.P1 
SCSD8-2R-8B    	.P1 
SCSD8          	.P1 
SCTAP1-2B-16   	.P1 
SCTAP1-2B-4    	.P1 
SCTAP1-2B-64   	.P1 
SCTAP1-2C-16   	.P1 
SCTAP1-2C-4    	.P1 
SCTAP1-2C-64   	.P1 
SCTAP1-2R-108  	.P1 
SCTAP1-2R-16   	.P1 
SCTAP1-2R-216  	.P1 
SCTAP1-2R-27   	.P1 
SCTAP1-2R-32   	.P1 
SCTAP1-2R-4    	.P1 
SCTAP1-2R-480  	.P1 
SCTAP1-2R-54   	.P1 
SCTAP1-2R-64   	.P1 
SCTAP1-2R-8     .P1 
SCTAP1-2R-8B   	.P1 
SCTAP1         	.P1 
SCTAP2         	.P1 
SCTAP3         	.P1 
SEBA           	.P1 
SET1CH		.P1    
SEYMOURL       	.P1 
SHARE1B        	.P1 
SHARE2B        	.P1 
SHELL          	.P1 
SHIP04L        	.P1 
SHIP04S        	.P1 
SHIP08L        	.P1 
SHIP08S        	.P1 
SHIP12L        	.P1 
SHIP12S        	.P1 
SIERRA         	.P1 
SLPTSK         	.P1 
SMALL000       	.P1 
SMALL001       	.P1 
SMALL002       	.P1 
SMALL003       	.P1 
SMALL004       	.P1 
SMALL005       	.P1 
SMALL006       	.P1 
SMALL007       	.P1 
SMALL008       	.P1 
SMALL009       	.P1 
SMALL010       	.P1 
SMALL011       	.P1 
SMALL012       	.P1 
SMALL013       	.P1 
SMALL014       	.P1 
SMALL015       	.P1 
SMALL016       	.P1 
SOUTH31        	.P1 
STAIR          	.P1 
STANDATA       	.P1 
STANDGUB       	.P1 
STANDMPS       	.P1 
STEIN27		.P1    
STEIN45		.P1    
STOCFOR1       	.P1 
STOCFOR2       	.P1 
STOCFOR3       	.P1 
SWATH1		.P1    
T0331-4L       	.P1 
TESTBIG        	.P1 
TRUSS          	.P1 
TUFF           	.P1 
ULEVIMIN       	.P1 
US04           	.P1 
VPM1		.P1    
VPM2		.P1    
VTP-BASE       	.P1 
WOOD1P         	.P1 
WOODW          	.P1 
WORLD          	.P1 
ZED            	.P1 
/;
*  ex2_1_3        .p1

set bk(m,p) point with best known solution (resource time in sec)/
10TEAMS           .P1               "CPLEX  in    39.42100 sec on JFK."
25FV47            .P1               "CPLEX  in     2.04000 sec on JFK."
80BAU3B           .P1               "XPRESS in     1.77000 sec on JFK."
AA01              .P1               "CPLEX  in    19.48000 sec on JFK."
AA03              .P1               "CPLEX  in    10.03000 sec on JFK."
AA3               .P1               "CPLEX  in     9.31000 sec on JFK."
AA4               .P1               "CPLEX  in     5.35000 sec on JFK."
AA5               .P1               "CPLEX  in    10.10000 sec on JFK."
AA6               .P1               "CPLEX  in     5.37000 sec on JFK."
ACC-TIGHT-0       .P1               "CPLEX  in     1.92100 sec on JFK."
ACC-TIGHT-1       .P1               "CPLEX  in   262.04600 sec on JFK."
ACC-TIGHT-4       .P1               "CPLEX  in   140.92100 sec on JFK."
ADLITTLE          .P1               "CPLEX  in     0.01000 sec on JFK."
AFIRO             .P1               "XPRESS in     0.01000 sec on JFK."
AGG               .P1               "XPRESS in     0.01000 sec on JFK."
AGG2              .P1               "XPRESS in     0.03000 sec on JFK."
AGG3              .P1               "CPLEX  in     0.04000 sec on JFK."
AIR02             .P1               "CPLEX  in     0.60000 sec on JFK."
AIR03             .P1               "CPLEX  in     2.43700 sec on JFK."
AIR04             .P1               "CPLEX  in   185.57800 sec on JFK."
AIR05             .P1               "CPLEX  in   162.76500 sec on JFK."
AIR06             .P1               "CPLEX  in     9.64000 sec on JFK."
AIRCRAFT          .P1               "XPRESS in     1.88000 sec on JFK."
BAL8X12           .P1               "CPLEX  in     0.26500 sec on JFK."
BANDM             .P1               "CPLEX  in     0.06000 sec on JFK."
BAS1LP            .P1               "XPRESS in    17.56000 sec on JFK."
BAXTER            .P1               "XPRESS in    12.03000 sec on JFK."
BEACONFD          .P1               "CPLEX  in     0.02000 sec on JFK."
BELL3A            .P1               "CPLEX  in    15.87500 sec on JFK."
BELL5             .P1               "CPLEX  in   232.70300 sec on JFK."
BIENST1           .P1               "CPLEX  in   208.04600 sec on JFK."
BINKAR10_1        .P1               "CPLEX  in    96.95300 sec on JFK."
BK4X3             .P1               "CPLEX  in     0.01500 sec on JFK."
BLEND             .P1               "CPLEX  in     0.01000 sec on JFK."
BLEND2            .P1               "CPLEX  in     2.65600 sec on JFK."
BNL1              .P1               "XPRESS in     0.23000 sec on JFK."
BNL2              .P1               "XPRESS in     0.47000 sec on JFK."
BOEING1           .P1               "XPRESS in     0.06000 sec on JFK."
BOEING2           .P1               "CPLEX  in     0.02000 sec on JFK."
BORE3D            .P1               "XPRESS in     0.02000 sec on JFK."
BRANDY            .P1               "XPRESS in     0.03000 sec on JFK."
CAP6000           .P1               "CPLEX  in   220.87500 sec on JFK."
CAPRI             .P1               "XPRESS in     0.01000 sec on JFK."
CAR4              .P1               "CPLEX  in     5.22000 sec on JFK."
CARI              .P1               "CPLEX  in     0.50000 sec on JFK."
CEP1              .P1               "XPRESS in     0.19000 sec on JFK."
CH                .P1               "XPRESS in     3.62000 sec on JFK."
CO5               .P1               "CPLEX  in    21.60000 sec on JFK."
CO9               .P1               "CPLEX  in   133.87000 sec on JFK."
COMPLEX           .P1               "XPRESS in    19.93000 sec on JFK."
CQ5               .P1               "CPLEX  in    21.04000 sec on JFK."
CQ9               .P1               "CPLEX  in    98.60000 sec on JFK."
CR42              .P1               "XPRESS in     0.13000 sec on JFK."
CRE-A             .P1               "CPLEX  in     1.26000 sec on JFK."
CRE-B             .P1               "CPLEX  in    29.74000 sec on JFK."
CRE-C             .P1               "XPRESS in     1.17000 sec on JFK."
CRE-D             .P1               "CPLEX  in    16.47000 sec on JFK."
CREW1             .P1               "CPLEX  in     2.14000 sec on JFK."
CYCLE             .P1               "CPLEX  in     0.29000 sec on JFK."
CZPROB            .P1               "XPRESS in     0.17000 sec on JFK."
D2Q06C            .P1               "CPLEX  in    18.04000 sec on JFK."
D6CUBE            .P1               "CPLEX  in     1.75000 sec on JFK."
DBIR1             .P1               "CPLEX  in     8.55000 sec on JFK."
DBIR2             .P1               "CPLEX  in    15.78000 sec on JFK."
DCMULTI           .P1               "CPLEX  in     1.09300 sec on JFK."
DE063155          .P1               "XPRESS in     0.15000 sec on JFK."
DE063157          .P1               "XPRESS in     0.20000 sec on JFK."
DE080285          .P1               "XPRESS in     0.12000 sec on JFK."
DEGEN2            .P1               "CPLEX  in     0.12000 sec on JFK."
DEGEN3            .P1               "XPRESS in     2.41000 sec on JFK."
DELF000           .P1               "XPRESS in     0.53000 sec on JFK."
DELF001           .P1               "XPRESS in     0.54000 sec on JFK."
DELF002           .P1               "XPRESS in     0.69000 sec on JFK."
DELF003           .P1               "XPRESS in     0.79000 sec on JFK."
DELF004           .P1               "XPRESS in     0.97000 sec on JFK."
DELF005           .P1               "XPRESS in     1.24000 sec on JFK."
DELF006           .P1               "CPLEX  in     1.28000 sec on JFK."
DELF007           .P1               "XPRESS in     1.33000 sec on JFK."
DELF008           .P1               "CPLEX  in     1.53000 sec on JFK."
DELF009           .P1               "XPRESS in     1.19000 sec on JFK."
DELF010           .P1               "XPRESS in     1.34000 sec on JFK."
DELF011           .P1               "XPRESS in     1.27000 sec on JFK."
DELF012           .P1               "XPRESS in     1.55000 sec on JFK."
DELF013           .P1               "XPRESS in     1.24000 sec on JFK."
DELF014           .P1               "XPRESS in     1.40000 sec on JFK."
DELF015           .P1               "XPRESS in     1.31000 sec on JFK."
DELF017           .P1               "XPRESS in     0.98000 sec on JFK."
DELF018           .P1               "XPRESS in     0.99000 sec on JFK."
DELF019           .P1               "XPRESS in     0.82000 sec on JFK."
DELF020           .P1               "CPLEX  in     1.43000 sec on JFK."
DELF021           .P1               "XPRESS in     1.23000 sec on JFK."
DELF022           .P1               "XPRESS in     1.35000 sec on JFK."
DELF023           .P1               "CPLEX  in     1.63000 sec on JFK."
DELF024           .P1               "CPLEX  in     1.69000 sec on JFK."
DELF025           .P1               "CPLEX  in     1.63000 sec on JFK."
DELF026           .P1               "XPRESS in     1.46000 sec on JFK."
DELF027           .P1               "CPLEX  in     1.66000 sec on JFK."
DELF028           .P1               "XPRESS in     1.47000 sec on JFK."
DELF029           .P1               "CPLEX  in     1.71000 sec on JFK."
DELF030           .P1               "CPLEX  in     1.42000 sec on JFK."
DELF031           .P1               "XPRESS in     1.15000 sec on JFK."
DELF032           .P1               "CPLEX  in     1.37000 sec on JFK."
DELF033           .P1               "XPRESS in     1.40000 sec on JFK."
DELF034           .P1               "CPLEX  in     1.44000 sec on JFK."
DELF035           .P1               "CPLEX  in     1.44000 sec on JFK."
DELF036           .P1               "XPRESS in     1.41000 sec on JFK."
DETER0            .P1               "XPRESS in     0.78000 sec on JFK."
DETER1            .P1               "XPRESS in     4.13000 sec on JFK."
DETER2            .P1               "CPLEX  in     2.73000 sec on JFK."
DETER3            .P1               "CPLEX  in     4.04000 sec on JFK."
DETER4            .P1               "CPLEX  in     0.88000 sec on JFK."
DETER5            .P1               "CPLEX  in     3.24000 sec on JFK."
DETER6            .P1               "CPLEX  in     2.11000 sec on JFK."
DETER7            .P1               "CPLEX  in     4.12000 sec on JFK."
DETER8            .P1               "CPLEX  in     1.85000 sec on JFK."
DF2177            .P1               "CPLEX  in     4.44000 sec on JFK."
DFL001            .P1               "XPRESS in     0.34000 sec on JFK."
DISP3             .P1               "XPRESS in     0.11000 sec on JFK."
DSBMIP            .P1               "CPLEX  in     2.43700 sec on JFK."
E226              .P1               "XPRESS in     0.04000 sec on JFK."
EGOUT             .P1               "CPLEX  in     0.01500 sec on JFK."
ENIGMA            .P1               "CPLEX  in     1.92100 sec on JFK."
ETAMACRO          .P1               "XPRESS in     0.06000 sec on JFK."
EX3STA1           .P1               "XPRESS in    80.53000 sec on JFK."
FARM              .P1               "CPLEX  in     0.00000 sec on JFK."
FFFFF800          .P1               "XPRESS in     0.06000 sec on JFK."
FIBER             .P1               "CPLEX  in     0.76500 sec on JFK."
FINNIS            .P1               "XPRESS in     0.03000 sec on JFK."
FIT1D             .P1               "XPRESS in     0.09000 sec on JFK."
FIT1P             .P1               "CPLEX  in     0.37000 sec on JFK."
FIT2D             .P1               "XPRESS in     1.75000 sec on JFK."
FIT2P             .P1               "CPLEX  in    36.02000 sec on JFK."
FIXNET6           .P1               "CPLEX  in     0.54600 sec on JFK."
FLUGPL            .P1               "CPLEX  in     0.03100 sec on JFK."
FOME10            .P1               "XPRESS in     0.30000 sec on JFK."
FOME11            .P1               "XPRESS in     0.65000 sec on JFK."
FOME12            .P1               "XPRESS in     1.35000 sec on JFK."
FOME13            .P1               "XPRESS in     2.78000 sec on JFK."
FOME20            .P1               "XPRESS in    31.35000 sec on JFK."
FOME21            .P1               "XPRESS in    76.64000 sec on JFK."
GAMS10A           .P1               "XPRESS in     0.01000 sec on JFK."
GAMS30A           .P1               "XPRESS in     0.01000 sec on JFK."
GANGES            .P1               "XPRESS in     0.08000 sec on JFK."
GAS11             .P1               "XPRESS in     0.04000 sec on JFK."
GE                .P1               "XPRESS in     6.33000 sec on JFK."
GEN               .P1               "CPLEX  in     0.07800 sec on JFK."
GEN1              .P1               "CPLEX  in     2.16000 sec on JFK."
GEN2              .P1               "XPRESS in   214.21000 sec on JFK."
GEN4              .P1               "CPLEX  in    26.04000 sec on JFK."
GESA2             .P1               "CPLEX  in     1.93700 sec on JFK."
GESA2_O           .P1               "CPLEX  in     1.56200 sec on JFK."
GESA3             .P1               "CPLEX  in     2.76500 sec on JFK."
GESA3_O           .P1               "CPLEX  in     2.20300 sec on JFK."
GFRD-PNC          .P1               "XPRESS in     0.02000 sec on JFK."
GR4X6             .P1               "CPLEX  in     0.01500 sec on JFK."
GREENBEA          .P1               "XPRESS in     2.03000 sec on JFK."
GREENBEB          .P1               "XPRESS in     4.32000 sec on JFK."
GROW15            .P1               "CPLEX  in     0.38000 sec on JFK."
GROW22            .P1               "XPRESS in     1.88000 sec on JFK."
GROW7             .P1               "CPLEX  in     0.07000 sec on JFK."
GT2               .P1               "CPLEX  in     0.09300 sec on JFK."
HAPRP             .P1               "XPRESS in     0.06000 sec on JFK."
IIASA             .P1               "XPRESS in     0.17000 sec on JFK."
IRP               .P1               "CPLEX  in    12.89000 sec on JFK."
ISRAEL            .P1               "CPLEX  in     0.02000 sec on JFK."
JENDREC1          .P1               "XPRESS in    15.44000 sec on JFK."
KB2               .P1               "XPRESS in     0.01000 sec on JFK."
KEN-07            .P1               "XPRESS in     0.15000 sec on JFK."
KEN-11            .P1               "XPRESS in     2.11000 sec on JFK."
KEN-13            .P1               "XPRESS in     7.26000 sec on JFK."
KEN-18            .P1               "CPLEX  in    62.53000 sec on JFK."
KHB05250          .P1               "CPLEX  in     0.23400 sec on JFK."
KL02              .P1               "XPRESS in     2.86000 sec on JFK."
KLEEMIN3          .P1               "CPLEX  in     0.00000 sec on JFK."
KLEEMIN4          .P1               "CPLEX  in     0.01000 sec on JFK."
KLEEMIN5          .P1               "XPRESS in     0.00000 sec on JFK."
KLEEMIN6          .P1               "XPRESS in     0.00000 sec on JFK."
KLEEMIN7          .P1               "XPRESS in     0.01000 sec on JFK."
KLEEMIN8          .P1               "CPLEX  in     0.01000 sec on JFK."
L152LAV           .P1               "CPLEX  in     2.90600 sec on JFK."
L30               .P1               "XPRESS in    80.67000 sec on JFK."
L9                .P1               "XPRESS in     0.18000 sec on JFK."
LARGE000          .P1               "XPRESS in     1.36000 sec on JFK."
LARGE001          .P1               "XPRESS in     7.66000 sec on JFK."
LARGE002          .P1               "XPRESS in     2.63000 sec on JFK."
LARGE003          .P1               "XPRESS in     1.86000 sec on JFK."
LARGE004          .P1               "XPRESS in     3.02000 sec on JFK."
LARGE005          .P1               "XPRESS in     1.65000 sec on JFK."
LARGE006          .P1               "XPRESS in     1.95000 sec on JFK."
LARGE007          .P1               "XPRESS in     2.67000 sec on JFK."
LARGE008          .P1               "CPLEX  in     2.40000 sec on JFK."
LARGE009          .P1               "CPLEX  in     2.27000 sec on JFK."
LARGE010          .P1               "XPRESS in     2.67000 sec on JFK."
LARGE011          .P1               "XPRESS in     2.31000 sec on JFK."
LARGE012          .P1               "XPRESS in     2.61000 sec on JFK."
LARGE013          .P1               "CPLEX  in     2.35000 sec on JFK."
LARGE014          .P1               "CPLEX  in     2.36000 sec on JFK."
LARGE015          .P1               "XPRESS in     1.80000 sec on JFK."
LARGE016          .P1               "XPRESS in     1.65000 sec on JFK."
LARGE017          .P1               "XPRESS in     1.49000 sec on JFK."
LARGE018          .P1               "XPRESS in     1.56000 sec on JFK."
LARGE019          .P1               "XPRESS in     1.60000 sec on JFK."
LARGE020          .P1               "XPRESS in     2.00000 sec on JFK."
LARGE021          .P1               "CPLEX  in     2.35000 sec on JFK."
LARGE022          .P1               "CPLEX  in     2.17000 sec on JFK."
LARGE023          .P1               "CPLEX  in     2.53000 sec on JFK."
LARGE024          .P1               "CPLEX  in     4.91000 sec on JFK."
LARGE025          .P1               "CPLEX  in     3.38000 sec on JFK."
LARGE026          .P1               "CPLEX  in     3.19000 sec on JFK."
LARGE027          .P1               "CPLEX  in     4.07000 sec on JFK."
LARGE028          .P1               "XPRESS in     5.96000 sec on JFK."
LARGE029          .P1               "CPLEX  in     5.36000 sec on JFK."
LARGE030          .P1               "CPLEX  in     4.94000 sec on JFK."
LARGE031          .P1               "XPRESS in     3.88000 sec on JFK."
LARGE032          .P1               "CPLEX  in     4.23000 sec on JFK."
LARGE033          .P1               "CPLEX  in     3.72000 sec on JFK."
LARGE034          .P1               "CPLEX  in     5.89000 sec on JFK."
LARGE035          .P1               "CPLEX  in     3.93000 sec on JFK."
LARGE036          .P1               "XPRESS in     3.95000 sec on JFK."
LOTFI             .P1               "CPLEX  in     0.02000 sec on JFK."
LP22              .P1               "XPRESS in   247.68000 sec on JFK."
LPL2              .P1               "CPLEX  in     1.02000 sec on JFK."
LPL3              .P1               "XPRESS in    12.86000 sec on JFK."
LSEU              .P1               "CPLEX  in     0.21800 sec on JFK."
MAROS-R7          .P1               "XPRESS in    22.75000 sec on JFK."
MAROS             .P1               "XPRESS in     0.22000 sec on JFK."
MAS284            .P1               "CPLEX  in    26.46800 sec on JFK."
MAS76             .P1               "CPLEX  in   135.87500 sec on JFK."
MISC03            .P1               "CPLEX  in     1.29600 sec on JFK."
MISC06            .P1               "CPLEX  in     0.25000 sec on JFK."
MISC07            .P1               "CPLEX  in   198.95300 sec on JFK."
MITRE             .P1               "CPLEX  in    12.37500 sec on JFK."
MOD008            .P1               "CPLEX  in     0.29600 sec on JFK."
MOD010            .P1               "CPLEX  in     0.53100 sec on JFK."
MOD2              .P1               "XPRESS in    39.80000 sec on JFK."
MODEL1            .P1               "XPRESS in     0.02000 sec on JFK."
MODEL10           .P1               "XPRESS in   143.39000 sec on JFK."
MODEL11           .P1               "XPRESS in     4.94000 sec on JFK."
MODEL2            .P1               "XPRESS in     0.37000 sec on JFK."
MODEL3            .P1               "XPRESS in     3.42000 sec on JFK."
MODEL4            .P1               "CPLEX  in    17.83000 sec on JFK."
MODEL5            .P1               "XPRESS in    18.34000 sec on JFK."
MODEL6            .P1               "XPRESS in     8.28000 sec on JFK."
MODEL7            .P1               "XPRESS in    16.17000 sec on JFK."
MODEL8            .P1               "XPRESS in     1.96000 sec on JFK."
MODEL9            .P1               "XPRESS in     7.46000 sec on JFK."
MODGLOB           .P1               "CPLEX  in     0.62500 sec on JFK."
MODSZK1           .P1               "XPRESS in     0.07000 sec on JFK."
MULTI             .P1               "CPLEX  in     0.01000 sec on JFK."
NEMSAFM           .P1               "XPRESS in     0.05000 sec on JFK."
NEMSCEM           .P1               "XPRESS in     0.06000 sec on JFK."
NEMSEMM1          .P1               "XPRESS in    12.89000 sec on JFK."
NEMSEMM2          .P1               "XPRESS in     4.10000 sec on JFK."
NEMSPMM1          .P1               "XPRESS in    23.46000 sec on JFK."
NEMSPMM2          .P1               "XPRESS in    28.86000 sec on JFK."
NEMSWRLD          .P1               "XPRESS in   424.43000 sec on JFK."
NEOS1             .P1               "CPLEX  in     9.51500 sec on JFK."
NEOS2             .P1               "CPLEX  in   624.09300 sec on JFK."
NEOS4             .P1               "CPLEX  in    22.21800 sec on JFK."
NEOS5             .P1               "CPLEX  in   196.62500 sec on JFK."
NESM              .P1               "XPRESS in     0.52000 sec on JFK."
NL                .P1               "XPRESS in    20.88000 sec on JFK."
NSCT1             .P1               "CPLEX  in     4.79000 sec on JFK."
NSCT2             .P1               "CPLEX  in     8.64000 sec on JFK."
NSIC1             .P1               "XPRESS in     0.04000 sec on JFK."
NSIC2             .P1               "XPRESS in     0.03000 sec on JFK."
NSIR1             .P1               "CPLEX  in     1.17000 sec on JFK."
NSIR2             .P1               "CPLEX  in     2.14000 sec on JFK."
NUG05             .P1               "CPLEX  in     0.03000 sec on JFK."
NUG06             .P1               "CPLEX  in     0.14000 sec on JFK."
NUG07             .P1               "XPRESS in     1.40000 sec on JFK."
NW04              .P1               "CPLEX  in    28.71800 sec on JFK."
NW14              .P1               "CPLEX  in    11.14000 sec on JFK."
ORSWQ2            .P1               "CPLEX  in     0.01000 sec on JFK."
OSA-07            .P1               "XPRESS in     1.35000 sec on JFK."
OSA-14            .P1               "XPRESS in     3.39000 sec on JFK."
OSA-30            .P1               "XPRESS in     7.17000 sec on JFK."
OSA-60            .P1               "XPRESS in    19.74000 sec on JFK."
P0033             .P1               "CPLEX  in     0.03100 sec on JFK."
P0040             .P1               "XPRESS in     0.01000 sec on JFK."
P010              .P1               "CPLEX  in    16.96000 sec on JFK."
P0201             .P1               "CPLEX  in     0.75000 sec on JFK."
P0291             .P1               "CPLEX  in     0.01000 sec on JFK."
P05               .P1               "CPLEX  in     5.11000 sec on JFK."
P0548             .P1               "CPLEX  in     0.21800 sec on JFK."
P19               .P1               "CPLEX  in     0.04000 sec on JFK."
P2756             .P1               "CPLEX  in     1.17100 sec on JFK."
P6000             .P1               "XPRESS in     0.27000 sec on JFK."
PCB1000           .P1               "CPLEX  in     1.43000 sec on JFK."
PCB3000           .P1               "CPLEX  in     8.82000 sec on JFK."
PDS-02            .P1               "XPRESS in     0.30000 sec on JFK."
PDS-06            .P1               "XPRESS in     2.77000 sec on JFK."
PDS-10            .P1               "XPRESS in     9.04000 sec on JFK."
PDS-2             .P1               "XPRESS in     0.34000 sec on JFK."
PDS-20            .P1               "XPRESS in    42.71000 sec on JFK."
PDS-30            .P1               "XPRESS in    97.80000 sec on JFK."
PDS-40            .P1               "XPRESS in   176.68000 sec on JFK."
PDS-50            .P1               "XPRESS in   311.93000 sec on JFK."
PDS-60            .P1               "XPRESS in   437.84000 sec on JFK."
PDS-70            .P1               "XPRESS in   580.58000 sec on JFK."
PDS-80            .P1               "XPRESS in   793.95000 sec on JFK."
PEROLD            .P1               "XPRESS in     0.69000 sec on JFK."
PF2177            .P1               "XPRESS in    35.84000 sec on JFK."
PGP2              .P1               "XPRESS in     0.58000 sec on JFK."
PILOT-JA          .P1               "XPRESS in     2.15000 sec on JFK."
PILOT-WE          .P1               "XPRESS in     2.96000 sec on JFK."
PILOT             .P1               "CPLEX  in    24.64000 sec on JFK."
PILOT4            .P1               "CPLEX  in     0.42000 sec on JFK."
PILOT87           .P1               "XPRESS in   158.65000 sec on JFK."
PILOTNOV          .P1               "XPRESS in     1.39000 sec on JFK."
PK1               .P1               "CPLEX  in   123.23400 sec on JFK."
PLDD000B          .P1               "XPRESS in     0.53000 sec on JFK."
PLDD001B          .P1               "XPRESS in     0.57000 sec on JFK."
PLDD002B          .P1               "XPRESS in     0.59000 sec on JFK."
PLDD003B          .P1               "XPRESS in     0.61000 sec on JFK."
PLDD004B          .P1               "XPRESS in     0.63000 sec on JFK."
PLDD005B          .P1               "XPRESS in     0.58000 sec on JFK."
PLDD006B          .P1               "XPRESS in     0.59000 sec on JFK."
PLDD007B          .P1               "XPRESS in     0.61000 sec on JFK."
PLDD008B          .P1               "XPRESS in     0.63000 sec on JFK."
PLDD009B          .P1               "CPLEX  in     1.01000 sec on JFK."
PLDD010B          .P1               "XPRESS in     0.73000 sec on JFK."
PLDD011B          .P1               "XPRESS in     0.63000 sec on JFK."
PLDD012B          .P1               "CPLEX  in     1.06000 sec on JFK."
PP08A             .P1               "CPLEX  in     1.95300 sec on JFK."
PP08ACUTS         .P1               "CPLEX  in     2.73400 sec on JFK."
PRIMAGAZ          .P1               "XPRESS in     0.75000 sec on JFK."
PROBLEM           .P1               "XPRESS in     0.02000 sec on JFK."
PROD1             .P1               "CPLEX  in   338.98400 sec on JFK."
PROGAS            .P1               "XPRESS in     1.22000 sec on JFK."
QAP08             .P1               "XPRESS in    10.59000 sec on JFK."
QIU               .P1               "CPLEX  in   982.62500 sec on JFK."
QIULP             .P1               "CPLEX  in     0.39000 sec on JFK."
QNET1             .P1               "CPLEX  in     3.23400 sec on JFK."
QNET1_O           .P1               "CPLEX  in     4.28100 sec on JFK."
R05               .P1               "CPLEX  in     8.37000 sec on JFK."
RAIL507           .P1               "XPRESS in    86.38000 sec on JFK."
RAIL516           .P1               "XPRESS in    27.42000 sec on JFK."
RAIL582           .P1               "CPLEX  in    78.20000 sec on JFK."
RAN10X10A         .P1               "CPLEX  in     0.42100 sec on JFK."
RAN10X10B         .P1               "CPLEX  in     0.40600 sec on JFK."
RAN10X10C         .P1               "CPLEX  in     3.29600 sec on JFK."
RAN10X12          .P1               "CPLEX  in     0.37500 sec on JFK."
RAN10X26          .P1               "CPLEX  in   146.18700 sec on JFK."
RAN12X12          .P1               "CPLEX  in    35.46800 sec on JFK."
RAN12X21          .P1               "CPLEX  in   515.21800 sec on JFK."
RAN13X13          .P1               "CPLEX  in   123.68700 sec on JFK."
RAN17X17          .P1               "CPLEX  in    23.95300 sec on JFK."
RAN4X64           .P1               "CPLEX  in     0.98400 sec on JFK."
RAN6X43           .P1               "CPLEX  in     1.43700 sec on JFK."
RAN8X32           .P1               "CPLEX  in    39.96800 sec on JFK."
RAT1              .P1               "CPLEX  in     3.60000 sec on JFK."
RAT5              .P1               "CPLEX  in    14.40000 sec on JFK."
RAT7A             .P1               "CPLEX  in   155.07000 sec on JFK."
RECIPE            .P1               "CPLEX  in     0.02000 sec on JFK."
REFINE            .P1               "XPRESS in     0.01000 sec on JFK."
RENTACAR          .P1               "CPLEX  in     2.28100 sec on JFK."
RGN               .P1               "CPLEX  in     0.48400 sec on JFK."
RLFDDD            .P1               "CPLEX  in     3.85000 sec on JFK."
RLFDUAL           .P1               "XPRESS in   312.63000 sec on JFK."
RLFPRIM           .P1               "CPLEX  in    12.78000 sec on JFK."
RLP2              .P1               "CPLEX  in    35.73400 sec on JFK."
ROSEN1            .P1               "XPRESS in     0.33000 sec on JFK."
ROSEN10           .P1               "CPLEX  in     2.31000 sec on JFK."
ROSEN2            .P1               "XPRESS in     1.57000 sec on JFK."
ROSEN7            .P1               "XPRESS in     0.09000 sec on JFK."
ROSEN8            .P1               "CPLEX  in     0.17000 sec on JFK."
ROUTE             .P1               "XPRESS in     4.21000 sec on JFK."
SC105             .P1               "CPLEX  in     0.01000 sec on JFK."
SC205-2R-100      .P1               "XPRESS in     0.11000 sec on JFK."
SC205-2R-16       .P1               "XPRESS in     0.01000 sec on JFK."
SC205-2R-1600     .P1               "XPRESS in     7.17000 sec on JFK."
SC205-2R-200      .P1               "XPRESS in     0.26000 sec on JFK."
SC205-2R-27       .P1               "XPRESS in     0.01000 sec on JFK."
SC205-2R-32       .P1               "XPRESS in     0.03000 sec on JFK."
SC205-2R-4        .P1               "XPRESS in     0.01000 sec on JFK."
SC205-2R-400      .P1               "XPRESS in     0.65000 sec on JFK."
SC205-2R-50       .P1               "XPRESS in     0.05000 sec on JFK."
SC205-2R-64       .P1               "XPRESS in     0.04000 sec on JFK."
SC205-2R-8        .P1               "CPLEX  in     0.01000 sec on JFK."
SC205-2R-800      .P1               "XPRESS in     2.40000 sec on JFK."
SC205             .P1               "CPLEX  in     0.02000 sec on JFK."
SC50A             .P1               "XPRESS in     0.00000 sec on JFK."
SC50B             .P1               "CPLEX  in     0.01000 sec on JFK."
SCAGR25           .P1               "XPRESS in     0.06000 sec on JFK."
SCAGR7-2B-16      .P1               "XPRESS in     0.03000 sec on JFK."
SCAGR7-2B-4       .P1               "CPLEX  in     0.02000 sec on JFK."
SCAGR7-2B-64      .P1               "XPRESS in     1.05000 sec on JFK."
SCAGR7-2C-16      .P1               "XPRESS in     0.04000 sec on JFK."
SCAGR7-2C-4       .P1               "CPLEX  in     0.01000 sec on JFK."
SCAGR7-2C-64      .P1               "XPRESS in     0.15000 sec on JFK."
SCAGR7-2R-108     .P1               "XPRESS in     0.32000 sec on JFK."
SCAGR7-2R-16      .P1               "XPRESS in     0.02000 sec on JFK."
SCAGR7-2R-216     .P1               "XPRESS in     0.81000 sec on JFK."
SCAGR7-2R-27      .P1               "XPRESS in     0.05000 sec on JFK."
SCAGR7-2R-32      .P1               "XPRESS in     0.09000 sec on JFK."
SCAGR7-2R-4       .P1               "CPLEX  in     0.02000 sec on JFK."
SCAGR7-2R-432     .P1               "XPRESS in     1.96000 sec on JFK."
SCAGR7-2R-54      .P1               "XPRESS in     0.15000 sec on JFK."
SCAGR7-2R-64      .P1               "XPRESS in     0.15000 sec on JFK."
SCAGR7-2R-8       .P1               "XPRESS in     0.01000 sec on JFK."
SCAGR7-2R-864     .P1               "XPRESS in     5.30000 sec on JFK."
SCAGR7            .P1               "CPLEX  in     0.02000 sec on JFK."
SCFXM1-2B-16      .P1               "CPLEX  in     0.71000 sec on JFK."
SCFXM1-2B-4       .P1               "CPLEX  in     0.10000 sec on JFK."
SCFXM1-2B-64      .P1               "CPLEX  in    31.96000 sec on JFK."
SCFXM1-2C-4       .P1               "CPLEX  in     0.12000 sec on JFK."
SCFXM1-2R-128     .P1               "CPLEX  in    32.51000 sec on JFK."
SCFXM1-2R-16      .P1               "CPLEX  in     0.77000 sec on JFK."
SCFXM1-2R-256     .P1               "CPLEX  in   133.95000 sec on JFK."
SCFXM1-2R-27      .P1               "CPLEX  in     2.67000 sec on JFK."
SCFXM1-2R-32      .P1               "CPLEX  in     3.31000 sec on JFK."
SCFXM1-2R-4       .P1               "XPRESS in     0.11000 sec on JFK."
SCFXM1-2R-64      .P1               "CPLEX  in     9.58000 sec on JFK."
SCFXM1-2R-8       .P1               "CPLEX  in     0.26000 sec on JFK."
SCFXM1-2R-96      .P1               "CPLEX  in    17.68000 sec on JFK."
SCFXM1            .P1               "XPRESS in     0.04000 sec on JFK."
SCFXM2            .P1               "XPRESS in     0.11000 sec on JFK."
SCFXM3            .P1               "XPRESS in     0.26000 sec on JFK."
SCORPION          .P1               "CPLEX  in     0.02000 sec on JFK."
SCRS8-2B-16       .P1               "CPLEX  in     0.02000 sec on JFK."
SCRS8-2B-4        .P1               "CPLEX  in     0.01000 sec on JFK."
SCRS8-2B-64       .P1               "XPRESS in     0.06000 sec on JFK."
SCRS8-2C-16       .P1               "XPRESS in     0.02000 sec on JFK."
SCRS8-2C-4        .P1               "CPLEX  in     0.01000 sec on JFK."
SCRS8-2C-32       .P1               "XPRESS in     0.02000 sec on JFK."
SCRS8-2C-64       .P1               "XPRESS in     0.05000 sec on JFK."
SCRS8-2C-8        .P1               "CPLEX  in     0.01000 sec on JFK."
SCRS8-2R-128      .P1               "XPRESS in     0.13000 sec on JFK."
SCRS8-2R-16       .P1               "XPRESS in     0.01000 sec on JFK."
SCRS8-2R-256      .P1               "XPRESS in     0.36000 sec on JFK."
SCRS8-2R-27       .P1               "XPRESS in     0.02000 sec on JFK."
SCRS8-2R-32       .P1               "XPRESS in     0.01000 sec on JFK."
SCRS8-2R-4        .P1               "CPLEX  in     0.02000 sec on JFK."
SCRS8-2R-512      .P1               "XPRESS in     0.82000 sec on JFK."
SCRS8-2R-64       .P1               "XPRESS in     0.05000 sec on JFK."
SCRS8-2R-64B      .P1               "XPRESS in     0.07000 sec on JFK."
SCRS8-2R-8        .P1               "XPRESS in     0.01000 sec on JFK."
SCRS8             .P1               "XPRESS in     0.05000 sec on JFK."
SCSD1             .P1               "XPRESS in     0.03000 sec on JFK."
SCSD6             .P1               "XPRESS in     0.07000 sec on JFK."
SCSD8-2B-16       .P1               "XPRESS in     0.06000 sec on JFK."
SCSD8-2B-4        .P1               "XPRESS in     0.02000 sec on JFK."
SCSD8-2B-64       .P1               "CPLEX  in     2.37000 sec on JFK."
SCSD8-2C-16       .P1               "XPRESS in     0.07000 sec on JFK."
SCSD8-2C-4        .P1               "XPRESS in     0.01000 sec on JFK."
SCSD8-2C-64       .P1               "CPLEX  in     2.38000 sec on JFK."
SCSD8-2R-108      .P1               "XPRESS in     0.74000 sec on JFK."
SCSD8-2R-16       .P1               "XPRESS in     0.08000 sec on JFK."
SCSD8-2R-216      .P1               "XPRESS in     1.69000 sec on JFK."
SCSD8-2R-27       .P1               "XPRESS in     0.12000 sec on JFK."
SCSD8-2R-32       .P1               "XPRESS in     0.18000 sec on JFK."
SCSD8-2R-4        .P1               "CPLEX  in     0.02000 sec on JFK."
SCSD8-2R-432      .P1               "CPLEX  in     6.55000 sec on JFK."
SCSD8-2R-54       .P1               "XPRESS in     0.32000 sec on JFK."
SCSD8-2R-64       .P1               "XPRESS in     0.43000 sec on JFK."
SCSD8-2R-8        .P1               "XPRESS in     0.02000 sec on JFK."
SCSD8-2R-8B       .P1               "XPRESS in     0.03000 sec on JFK."
SCSD8             .P1               "XPRESS in     0.43000 sec on JFK."
SCTAP1-2B-16      .P1               "XPRESS in     0.08000 sec on JFK."
SCTAP1-2B-4       .P1               "XPRESS in     0.01000 sec on JFK."
SCTAP1-2B-64      .P1               "XPRESS in     2.36000 sec on JFK."
SCTAP1-2C-16      .P1               "XPRESS in     0.06000 sec on JFK."
SCTAP1-2C-4       .P1               "CPLEX  in     0.02000 sec on JFK."
SCTAP1-2C-64      .P1               "XPRESS in     0.29000 sec on JFK."
SCTAP1-2R-108     .P1               "XPRESS in     0.79000 sec on JFK."
SCTAP1-2R-16      .P1               "XPRESS in     0.05000 sec on JFK."
SCTAP1-2R-216     .P1               "XPRESS in     1.96000 sec on JFK."
SCTAP1-2R-27      .P1               "XPRESS in     0.12000 sec on JFK."
SCTAP1-2R-32      .P1               "XPRESS in     0.15000 sec on JFK."
SCTAP1-2R-4       .P1               "CPLEX  in     0.01000 sec on JFK."
SCTAP1-2R-480     .P1               "XPRESS in     5.14000 sec on JFK."
SCTAP1-2R-54      .P1               "XPRESS in     0.27000 sec on JFK."
SCTAP1-2R-64      .P1               "XPRESS in     0.34000 sec on JFK."
SCTAP1-2R-8       .P1               "XPRESS in     0.03000 sec on JFK."
SCTAP1-2R-8B      .P1               "XPRESS in     0.02000 sec on JFK."
SCTAP1            .P1               "CPLEX  in     0.05000 sec on JFK."
SCTAP2            .P1               "XPRESS in     0.10000 sec on JFK."
SCTAP3            .P1               "XPRESS in     0.14000 sec on JFK."
SEBA              .P1               "XPRESS in     0.01000 sec on JFK."
SET1CH            .P1               "CPLEX  in     1.03100 sec on JFK."
SEYMOURL          .P1               "XPRESS in    19.51000 sec on JFK."
SHARE1B           .P1               "XPRESS in     0.02000 sec on JFK."
SHARE2B           .P1               "CPLEX  in     0.02000 sec on JFK."
SHELL             .P1               "XPRESS in     0.05000 sec on JFK."
SHIP04L           .P1               "XPRESS in     0.09000 sec on JFK."
SHIP04S           .P1               "XPRESS in     0.04000 sec on JFK."
SHIP08L           .P1               "XPRESS in     0.21000 sec on JFK."
SHIP08S           .P1               "XPRESS in     0.10000 sec on JFK."
SHIP12L           .P1               "XPRESS in     0.25000 sec on JFK."
SHIP12S           .P1               "XPRESS in     0.10000 sec on JFK."
SIERRA            .P1               "XPRESS in     0.04000 sec on JFK."
SLPTSK            .P1               "CPLEX  in    10.68000 sec on JFK."
SMALL000          .P1               "XPRESS in     0.06000 sec on JFK."
SMALL001          .P1               "XPRESS in     0.05000 sec on JFK."
SMALL002          .P1               "XPRESS in     0.07000 sec on JFK."
SMALL003          .P1               "XPRESS in     0.06000 sec on JFK."
SMALL004          .P1               "XPRESS in     0.05000 sec on JFK."
SMALL005          .P1               "XPRESS in     0.07000 sec on JFK."
SMALL006          .P1               "XPRESS in     0.08000 sec on JFK."
SMALL007          .P1               "XPRESS in     0.05000 sec on JFK."
SMALL008          .P1               "XPRESS in     0.06000 sec on JFK."
SMALL009          .P1               "XPRESS in     0.06000 sec on JFK."
SMALL010          .P1               "XPRESS in     0.05000 sec on JFK."
SMALL011          .P1               "XPRESS in     0.03000 sec on JFK."
SMALL012          .P1               "XPRESS in     0.02000 sec on JFK."
SMALL013          .P1               "XPRESS in     0.04000 sec on JFK."
SMALL014          .P1               "XPRESS in     0.04000 sec on JFK."
SMALL015          .P1               "XPRESS in     0.05000 sec on JFK."
SMALL016          .P1               "XPRESS in     0.04000 sec on JFK."
SOUTH31           .P1               "XPRESS in   204.37000 sec on JFK."
STAIR             .P1               "CPLEX  in     0.11000 sec on JFK."
STANDATA          .P1               "XPRESS in     0.02000 sec on JFK."
STANDGUB          .P1               "XPRESS in     0.02000 sec on JFK."
STANDMPS          .P1               "XPRESS in     0.03000 sec on JFK."
STEIN27           .P1               "CPLEX  in     0.71800 sec on JFK."
STEIN45           .P1               "CPLEX  in    35.82800 sec on JFK."
STOCFOR1          .P1               "CPLEX  in     0.01000 sec on JFK."
STOCFOR2          .P1               "XPRESS in     0.29000 sec on JFK."
STOCFOR3          .P1               "CPLEX  in    17.07000 sec on JFK."
SWATH1            .P1               "CPLEX  in   290.64000 sec on JFK."
T0331-4L          .P1               "CPLEX  in   190.81000 sec on JFK."
TESTBIG           .P1               "XPRESS in     2.63000 sec on JFK."
TRUSS             .P1               "XPRESS in    89.59000 sec on JFK."
TUFF              .P1               "CPLEX  in     0.04000 sec on JFK."
ULEVIMIN          .P1               "XPRESS in   247.31000 sec on JFK."
US04              .P1               "CPLEX  in     3.19000 sec on JFK."
VPM1              .P1               "CPLEX  in     0.03100 sec on JFK."
VPM2              .P1               "CPLEX  in     9.45300 sec on JFK."
VTP-BASE          .P1               "XPRESS in     0.02000 sec on JFK."
WOOD1P            .P1               "CPLEX  in     0.48000 sec on JFK."
WOODW             .P1               "XPRESS in     0.64000 sec on JFK."
WORLD             .P1               "CPLEX  in    41.26000 sec on JFK."
ZED               .P1               "CPLEX  in     0.01000 sec on JFK."
/;
*  ex2_1_3        .p1    Solution of value       -15.00 (global optimum)


*=== Bounds for size classification
Set modsize(*) / tiny, small, medium, large, huge /;
Table size_bounds(*,*)
             lo           hi
tiny          0         2000
small      2000        50000
medium    50000       200000        
large    200000      1000000    
huge    1000000    100000000
;

*=== Define errors
*=== Errors 7 not applicable

Set error01(s)   sequence numbers with no model
    error02(m)   models with no sequence number
    error03(s)   models with no application
    error04(d)   applications with no models
    error05(m,p) best known without a point reference
    error06(m)   models without a reference
*    error07(r)   reference without an author
    error08(a)   authors without reference
    error09(m)   more than one best known solution
    error10(r)   references without a model
    error11(s)   more or less than one model type;

error01(s)   = sum(ms(m,s),1)=0;
error02(m)   = sum(ms(m,s),1)=0;
error03(s)   = sum(ds(d,s),1)=0;
error04(d)   = sum(ds(d,s),1)=0;
error05(m,p) = bk(m,p) and not mp(m,p);
error06(m)   = sum(mr(m,r),1)=0;
*error07(r)   = sum(ar(a,r),1)=0;
error08(a)   = sum(ar(a,r),1)=0;
error09(m)   = sum(bk(m,p),1)>1;
error10(r)   = sum(mr(m,r),1)=0;
*error11(s)   = sum(mtype$smt(s,mtype),1) <> 1;

abort$card(error01) error01;
abort$card(error02) error02;
abort$card(error03) error03;
abort$card(error04) error04;
abort$card(error05) error05;
abort$card(error06) error06;
*abort$card(error07) error07;
abort$card(error08) error08;
display error10;


parameter report;

report("#applications")      = card(d);
report("#models")            = card(s);
report("#points")            = sum(mp(m,p),1);
report("#models with IS")    = sum(bk(m,p),1);
report("#models with no IS") = sum(m$(sum(bk(m,p),1)=0),1);
report("#models with no RS") = sum(m$(sum(mp(m,p),1)=0),1);

set nointsol(m) model with no best known solution
    norelsol(m) model with no point at all;

nointsol(m) = sum(bk(m,p),1)=0;
norelsol(m) = sum(mp(m,p),1)=0;

option report:0:0:1, nointsol:0:0:1, norelsol:0:0:1;
display report, nointsol, norelsol;


display bk;
