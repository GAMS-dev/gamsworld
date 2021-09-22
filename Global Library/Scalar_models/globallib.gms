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
identified by their unique name (e.g. batch.gms).

The points
==========

For a model in the GLOBALLib we will collect points. A point represent
some solution to a problem. The header of the file containing a point
explains the details of the point. It might contain the contributor of
the point, the solution value, the algorithm which was used to produce
the point, and the CPU time for finding the point. The points are part
of the library. They are indentified by the model name plus the
extension .p1, .p2, .p3, ... (e.g. ex4_1_1.p1).

In order to start a model from a certain point you can run gams in the
following way:

	  gams ex4_1_1 u1=ex4_1_1.p1

The controlling model globallib.gms
===================================

The library also contains the GAMS model globallib.gms that helps
organizing the models and points in the GLOBALLib. All models are
matched with propper references to contributors, publications, and
application areas.

The model also help to create batch execution scripts. For example. the
following piece of GAMS code creates a batch script that runs models that
come from the book "Handbook of Test Problems in Local and Global
Optimization" by Floudas e.a. with solver OQGRG :

file frs batch run script / rs.bat /;
loop(m$mr(m,"r1"),
  put frs "gams " m.tl:0 " nlp=oqgrg dnlp=oqgrg cns=oqgrg " /;
  put$xp(m) xp.te(m);
  put /;
);
$offtext

$eolcom #

Set s sequence number / 1*414 /; 

$set GAMSMODURL  http://www.gams.com/modlib/libhtml
$set MACMINLPURL http://www.maths.dundee.ac.uk/~sleyffer/MacMINLP/problems
$set MINOPTURL   http://titan.princeton.edu/MINOPT/modlib/Tests
$set TESTURL     http://titan.princeton.edu/TestProblems

set m models /
    abel          "GAMS Model of <a href=%GAMSMODURL%/abel.htm>abel.gms</a> from GAMS Model Library"
    alkyl         "GAMS Model of <a href=%GAMSMODURL%/alkyl.htm>alkyl.gms</a> from GAMS Model Library"
    alkylation
    arki0001      
    arki0002      
    arki0003      
    arki0004      
    arki0005      
    arki0006      
    arki0007      
    arki0008      
    arki0009      
    arki0010      
    arki0011      
    arki0012      
    arki0013      
    arki0014      
    arki0015      
    arki0016      
    arki0017      
    arki0018      
    arki0019      
    arki0020      
    arki0021      
    arki0022      
    arki0023      
    arki0024      
    bayes2_10
    bayes2_20
    bayes2_30
    bayes2_50      
    bearing       "GAMS Model of <a href=%GAMSMODURL%/bearing.htm>bearing.gms</a> from GAMS Model Library"
    btest14
    camcge        "GAMS Model of <a href=%GAMSMODURL%/camcge.htm>camcge.gms</a> from GAMS Model Library"
    camcns        "GAMS Model of <a href=%GAMSMODURL%/camcns.htm>camcns.gms</a> from GAMS Model Library"
    camshape100   "GAMS Model of <a href=%GAMSMODURL%/camshape.htm>camshape.gms</a> from GAMS Model Library"
    camshape200   "GAMS Model of <a href=%GAMSMODURL%/camshape.htm>camshape.gms</a> from GAMS Model Library"
    camshape400   "GAMS Model of <a href=%GAMSMODURL%/camshape.htm>camshape.gms</a> from GAMS Model Library"
    camshape800   "GAMS Model of <a href=%GAMSMODURL%/camshape.htm>camshape.gms</a> from GAMS Model Library"
    catmix100     "GAMS Model of <a href=%GAMSMODURL%/catmix.htm>catmix.gms</a> from GAMS Model Library"
    catmix200     "GAMS Model of <a href=%GAMSMODURL%/catmix.htm>catmix.gms</a> from GAMS Model Library"
    catmix400     "GAMS Model of <a href=%GAMSMODURL%/catmix.htm>catmix.gms</a> from GAMS Model Library"
    catmix800     "GAMS Model of <a href=%GAMSMODURL%/catmix.htm>catmix.gms</a> from GAMS Model Library"
    chain100      "GAMS Model of <a href=%GAMSMODURL%/chain.htm>chain.gms</a> from GAMS Model Library"
    chain200      "GAMS Model of <a href=%GAMSMODURL%/chain.htm>chain.gms</a> from GAMS Model Library"
    chain400      "GAMS Model of <a href=%GAMSMODURL%/chain.htm>chain.gms</a> from GAMS Model Library"
    chain50       "GAMS Model of <a href=%GAMSMODURL%/chain.htm>chain.gms</a> from GAMS Model Library"
    chakra        "GAMS Model of <a href=%GAMSMODURL%/chakra.htm>chakra.gms</a> from GAMS Model Library"
    chance        "GAMS Model of <a href=%GAMSMODURL%/chance.htm>chance.gms</a> from GAMS Model Library"
    chem          "GAMS Model of <a href=%GAMSMODURL%/chem.htm>chem.gms</a> from GAMS Model Library"
    chenery       "GAMS Model of <a href=%GAMSMODURL%/chenery.htm>chenery.gms</a> from GAMS Model Library"
    circle        "GAMS Model of <a href=%GAMSMODURL%/circle.htm>circle.gms</a> from GAMS Model Library"
    demo7         "GAMS Model of <a href=%GAMSMODURL%/demo7.htm>demo7.gms</a> from GAMS Model Library"
    dispatch      "GAMS Model of <a href=%GAMSMODURL%/dispatch.htm>dispatch.gms</a> from GAMS Model Library"
    elec100       "GAMS Model of <a href=%GAMSMODURL%/elec.htm>elec.gms</a> from GAMS Model Library"
    elec200       "GAMS Model of <a href=%GAMSMODURL%/elec.htm>elec.gms</a> from GAMS Model Library"
    elec25        "GAMS Model of <a href=%GAMSMODURL%/elec.htm>elec.gms</a> from GAMS Model Library"
    elec50        "GAMS Model of <a href=%GAMSMODURL%/elec.htm>elec.gms</a> from GAMS Model Library"
    etamac        "GAMS Model of <a href=%GAMSMODURL%/etamac.htm>etamac.gms</a> from GAMS Model Library"
    ex14_1_1      "Global Model of Chapter 14 <a href=%TESTURL%/chapter14/ex14.1.1.gms>ex14.1.1.gms</a> from Floudas e.a. Test Problems"
    ex14_1_2      "Global Model of Chapter 14 <a href=%TESTURL%/chapter14/ex14.1.2.gms>ex14.1.2.gms</a> from Floudas e.a. Test Problems"
    ex14_1_3      "Global Model of Chapter 14 <a href=%TESTURL%/chapter14/ex14.1.3.gms>ex14.1.3.gms</a> from Floudas e.a. Test Problems"
    ex14_1_4      "Global Model of Chapter 14 <a href=%TESTURL%/chapter14/ex14.1.4.gms>ex14.1.4.gms</a> from Floudas e.a. Test Problems"
    ex14_1_5      "Global Model of Chapter 14 <a href=%TESTURL%/chapter14/ex14.1.5.gms>ex14.1.5.gms</a> from Floudas e.a. Test Problems"
    ex14_1_6      "Global Model of Chapter 14 <a href=%TESTURL%/chapter14/ex14.1.6.gms>ex14.1.6.gms</a> from Floudas e.a. Test Problems"
    ex14_1_7      "Global Model of Chapter 14 <a href=%TESTURL%/chapter14/ex14.1.7.gms>ex14.1.7.gms</a> from Floudas e.a. Test Problems"
    ex14_1_8      "Global Model of Chapter 14 <a href=%TESTURL%/chapter14/ex14.1.8.gms>ex14.1.8.gms</a> from Floudas e.a. Test Problems"
    ex14_1_9      "Global Model of Chapter 14 <a href=%TESTURL%/chapter14/ex14.1.9.gms>ex14.1.9.gms</a> from Floudas e.a. Test Problems"
    ex14_2_1      "Global Model of Chapter 14 <a href=%TESTURL%/chapter14/ex14.2.1.gms>ex14.2.1.gms</a> from Floudas e.a. Test Problems"
    ex14_2_2      "Global Model of Chapter 14 <a href=%TESTURL%/chapter14/ex14.2.2.gms>ex14.2.2.gms</a> from Floudas e.a. Test Problems"
    ex14_2_3      "Global Model of Chapter 14 <a href=%TESTURL%/chapter14/ex14.2.3.gms>ex14.2.3.gms</a> from Floudas e.a. Test Problems"
    ex14_2_4      "Global Model of Chapter 14 <a href=%TESTURL%/chapter14/ex14.2.4.gms>ex14.2.4.gms</a> from Floudas e.a. Test Problems"
    ex14_2_5      "Global Model of Chapter 14 <a href=%TESTURL%/chapter14/ex14.2.5.gms>ex14.2.5.gms</a> from Floudas e.a. Test Problems"
    ex14_2_6      "Global Model of Chapter 14 <a href=%TESTURL%/chapter14/ex14.2.6.gms>ex14.2.6.gms</a> from Floudas e.a. Test Problems"
    ex14_2_7      "Global Model of Chapter 14 <a href=%TESTURL%/chapter14/ex14.2.7.gms>ex14.2.7.gms</a> from Floudas e.a. Test Problems"
    ex14_2_8      "Global Model of Chapter 14 <a href=%TESTURL%/chapter14/ex14.2.8.gms>ex14.2.8.gms</a> from Floudas e.a. Test Problems"
    ex14_2_9      "Global Model of Chapter 14 <a href=%TESTURL%/chapter14/ex14.2.9.gms>ex14.2.9.gms</a> from Floudas e.a. Test Problems"
    ex2_1_1       "Global Model of Chapter 2 <a href=%TESTURL%/chapter2/ex2.1.1.gms>ex2.1.1.gms</a> from Floudas e.a. Test Problems"
    ex2_1_10      "Global Model of Chapter 2 <a href=%TESTURL%/chapter2/ex2.1.10.gms>ex2.1.10.gms</a> from Floudas e.a. Test Problems"    
    ex2_1_2       "Global Model of Chapter 2 <a href=%TESTURL%/chapter2/ex2.1.2.gms>ex2.1.2.gms</a> from Floudas e.a. Test Problems"
    ex2_1_3       "Global Model of Chapter 2 <a href=%TESTURL%/chapter2/ex2.1.3.gms>ex2.1.3.gms</a> from Floudas e.a. Test Problems"
    ex2_1_4       "Global Model of Chapter 2 <a href=%TESTURL%/chapter2/ex2.1.4.gms>ex2.1.4.gms</a> from Floudas e.a. Test Problems"
    ex2_1_5       "Global Model of Chapter 2 <a href=%TESTURL%/chapter2/ex2.1.5.gms>ex2.1.5.gms</a> from Floudas e.a. Test Problems"
    ex2_1_6       "Global Model of Chapter 2 <a href=%TESTURL%/chapter2/ex2.1.6.gms>ex2.1.6.gms</a> from Floudas e.a. Test Problems"
    ex2_1_7       "Global Model of Chapter 2 <a href=%TESTURL%/chapter2/ex2.1.7.gms>ex2.1.7.gms</a> from Floudas e.a. Test Problems"
    ex2_1_8       "Global Model of Chapter 2 <a href=%TESTURL%/chapter2/ex2.1.8.gms>ex2.1.8.gms</a> from Floudas e.a. Test Problems"
    ex2_1_9       "Global Model of Chapter 2 <a href=%TESTURL%/chapter2/ex2.1.9.gms>ex2.1.9.gms</a> from Floudas e.a. Test Problems"
    ex3_1_1       "Global Model of Chapter 3 <a href=%TESTURL%/chapter3/ex3.1.1.gms>ex3.1.1.gms</a> from Floudas e.a. Test Problems"
    ex3_1_2       "Global Model of Chapter 3 <a href=%TESTURL%/chapter3/ex3.1.2.gms>ex3.1.2.gms</a> from Floudas e.a. Test Problems"
    ex3_1_3       "Global Model of Chapter 3 <a href=%TESTURL%/chapter3/ex3.1.3.gms>ex3.1.3.gms</a> from Floudas e.a. Test Problems"
    ex3_1_4       "Global Model of Chapter 3 <a href=%TESTURL%/chapter3/ex3.1.4.gms>ex3.1.4.gms</a> from Floudas e.a. Test Problems"
    ex4_1_1       "Global Model of Chapter 4 <a href=%TESTURL%/chapter4/ex4.1.1.gms>ex4.1.1.gms</a> from Floudas e.a. Test Problems"
    ex4_1_2       "Global Model of Chapter 4 <a href=%TESTURL%/chapter4/ex4.1.2.gms>ex4.1.2.gms</a> from Floudas e.a. Test Problems"
    ex4_1_3       "Global Model of Chapter 4 <a href=%TESTURL%/chapter4/ex4.1.3.gms>ex4.1.3.gms</a> from Floudas e.a. Test Problems"
    ex4_1_4       "Global Model of Chapter 4 <a href=%TESTURL%/chapter4/ex4.1.4.gms>ex4.1.4.gms</a> from Floudas e.a. Test Problems"
    ex4_1_5       "Global Model of Chapter 4 <a href=%TESTURL%/chapter4/ex4.1.5.gms>ex4.1.5.gms</a> from Floudas e.a. Test Problems"
    ex4_1_6       "Global Model of Chapter 4 <a href=%TESTURL%/chapter4/ex4.1.6.gms>ex4.1.6.gms</a> from Floudas e.a. Test Problems"
    ex4_1_7       "Global Model of Chapter 4 <a href=%TESTURL%/chapter4/ex4.1.7.gms>ex4.1.7.gms</a> from Floudas e.a. Test Problems"
    ex4_1_8       "Global Model of Chapter 4 <a href=%TESTURL%/chapter4/ex4.1.8.gms>ex4.1.8.gms</a> from Floudas e.a. Test Problems"
    ex4_1_9       "Global Model of Chapter 4 <a href=%TESTURL%/chapter4/ex4.1.9.gms>ex4.1.9.gms</a> from Floudas e.a. Test Problems"
    ex5_2_2_case1 "Global Model of Chapter 5 <a href=%TESTURL%/chapter5/ex5.2.2_case1.gms>ex5.2.2_case1.gms</a> from Floudas e.a. Test Problems"
    ex5_2_2_case2 "Global Model of Chapter 5 <a href=%TESTURL%/chapter5/ex5.2.2_case2.gms>ex5.2.2_case2.gms</a> from Floudas e.a. Test Problems"
    ex5_2_2_case3 "Global Model of Chapter 5 <a href=%TESTURL%/chapter5/ex5.2.2_case3.gms>ex5.2.2_case3.gms</a> from Floudas e.a. Test Problems"
    ex5_2_4       "Global Model of Chapter 5 <a href=%TESTURL%/chapter5/ex5.2.4.gms>ex5.2.4.gms</a> from Floudas e.a. Test Problems"
    ex5_2_5       "Global Model of Chapter 5 <a href=%TESTURL%/chapter5/ex5.2.5.gms>ex5.2.5.gms</a> from Floudas e.a. Test Problems"
    ex5_3_2       "Global Model of Chapter 5 <a href=%TESTURL%/chapter5/ex5.3.2.gms>ex5.3.2.gms</a> from Floudas e.a. Test Problems"
    ex5_3_3       "Global Model of Chapter 5 <a href=%TESTURL%/chapter5/ex5.3.3.gms>ex5.3.3.gms</a> from Floudas e.a. Test Problems"
    ex5_4_2       "Global Model of Chapter 5 <a href=%TESTURL%/chapter5/ex5.2.4.gms>ex5.2.4.gms</a> from Floudas e.a. Test Problems"
    ex5_4_3       "Global Model of Chapter 5 <a href=%TESTURL%/chapter5/ex5.4.3.gms>ex5.4.3.gms</a> from Floudas e.a. Test Problems"
    ex5_4_4       "Global Model of Chapter 5 <a href=%TESTURL%/chapter5/ex5.4.4.gms>ex5.4.4.gms</a> from Floudas e.a. Test Problems"
    ex6_1_1       "Global Model of Chapter 6 <a href=%TESTURL%/chapter6/ex6.1.1.gms>ex6.1.1.gms</a> from Floudas e.a. Test Problems"
    ex6_1_2       "Global Model of Chapter 6 <a href=%TESTURL%/chapter6/ex6.1.2.gms>ex6.1.2.gms</a> from Floudas e.a. Test Problems"
    ex6_1_3       "Global Model of Chapter 6 <a href=%TESTURL%/chapter6/ex6.1.3.gms>ex6.1.3.gms</a> from Floudas e.a. Test Problems"
    ex6_1_4       "Global Model of Chapter 6 <a href=%TESTURL%/chapter6/ex6.1.4.gms>ex6.1.4.gms</a> from Floudas e.a. Test Problems"
    ex6_2_10      "Global Model of Chapter 6 <a href=%TESTURL%/chapter6/ex6.2.10.gms>ex6.2.10.gms</a> from Floudas e.a. Test Problems"
    ex6_2_11      "Global Model of Chapter 6 <a href=%TESTURL%/chapter6/ex6.2.11.gms>ex6.2.11.gms</a> from Floudas e.a. Test Problems"
    ex6_2_12      "Global Model of Chapter 6 <a href=%TESTURL%/chapter6/ex6.2.12.gms>ex6.2.12.gms</a> from Floudas e.a. Test Problems"
    ex6_2_13      "Global Model of Chapter 6 <a href=%TESTURL%/chapter6/ex6.2.13.gms>ex6.2.13.gms</a> from Floudas e.a. Test Problems"
    ex6_2_14      "Global Model of Chapter 6 <a href=%TESTURL%/chapter6/ex6.2.14.gms>ex6.2.14.gms</a> from Floudas e.a. Test Problems"
    ex6_2_5       "Global Model of Chapter 6 <a href=%TESTURL%/chapter6/ex6.2.5.gms>ex6.2.5.gms</a> from Floudas e.a. Test Problems"
    ex6_2_6       "Global Model of Chapter 6 <a href=%TESTURL%/chapter6/ex6.2.6.gms>ex6.2.6.gms</a> from Floudas e.a. Test Problems"
    ex6_2_7       "Global Model of Chapter 6 <a href=%TESTURL%/chapter6/ex6.2.7.gms>ex6.2.7.gms</a> from Floudas e.a. Test Problems"
    ex6_2_8       "Global Model of Chapter 6 <a href=%TESTURL%/chapter6/ex6.2.8.gms>ex6.2.8.gms</a> from Floudas e.a. Test Problems"
    ex6_2_9       "Global Model of Chapter 6 <a href=%TESTURL%/chapter6/ex6.2.9.gms>ex6.2.9.gms</a> from Floudas e.a. Test Problems"
    ex7_2_1       "Global Model of Chapter 7 <a href=%TESTURL%/chapter7/ex7.2.1.gms>ex7.2.1.gms</a> from Floudas e.a. Test Problems"
    ex7_2_2       "Global Model of Chapter 7 <a href=%TESTURL%/chapter7/ex7.2.2.gms>ex7.2.2.gms</a> from Floudas e.a. Test Problems"
    ex7_2_3       "Global Model of Chapter 7 <a href=%TESTURL%/chapter7/ex7.2.3.gms>ex7.2.3.gms</a> from Floudas e.a. Test Problems"
    ex7_2_4       "Global Model of Chapter 7 <a href=%TESTURL%/chapter7/ex7.2.4.gms>ex7.2.4.gms</a> from Floudas e.a. Test Problems"
    ex7_3_1       "Global Model of Chapter 7 <a href=%TESTURL%/chapter7/ex7.3.1.gms>ex7.3.1.gms</a> from Floudas e.a. Test Problems"
    ex7_3_2       "Global Model of Chapter 7 <a href=%TESTURL%/chapter7/ex7.3.2.gms>ex7.3.2.gms</a> from Floudas e.a. Test Problems"
    ex7_3_3       "Global Model of Chapter 7 <a href=%TESTURL%/chapter7/ex7.3.3.gms>ex7.3.3.gms</a> from Floudas e.a. Test Problems"
    ex7_3_4       "Global Model of Chapter 7 <a href=%TESTURL%/chapter7/ex7.3.4.gms>ex7.3.4.gms</a> from Floudas e.a. Test Problems"
    ex7_3_5       "Global Model of Chapter 7 <a href=%TESTURL%/chapter7/ex7.3.5.gms>ex7.3.5.gms</a> from Floudas e.a. Test Problems"
    ex7_3_6       "Global Model of Chapter 7 <a href=%TESTURL%/chapter7/ex7.3.6.gms>ex7.3.6.gms</a> from Floudas e.a. Test Problems"
    ex8_1_1       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.1.1.gms>ex8.1.1.gms</a> from Floudas e.a. Test Problems"
    ex8_1_2       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.1.2.gms>ex8.1.2.gms</a> from Floudas e.a. Test Problems"
    ex8_1_3       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.1.3.gms>ex8.1.3.gms</a> from Floudas e.a. Test Problems"
    ex8_1_4       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.1.4.gms>ex8.1.4.gms</a> from Floudas e.a. Test Problems"
    ex8_1_5       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.1.5.gms>ex8.1.5.gms</a> from Floudas e.a. Test Problems"
    ex8_1_6       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.1.6.gms>ex8.1.6.gms</a> from Floudas e.a. Test Problems"
    ex8_1_7       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.1.7.gms>ex8.1.7.gms</a> from Floudas e.a. Test Problems"
    ex8_2_1       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.2.1.gms>ex8.2.1.gms</a> from Floudas e.a. Test Problems"
    ex8_2_1a      "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.2.1.gms>ex8.2.1.gms</a> from Floudas e.a. Test Problems"
    ex8_2_1b      "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.2.1.gms>ex8.2.1.gms</a> from Floudas e.a. Test Problems"
    ex8_2_2       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.2.2.gms>ex8.2.2.gms</a> from Floudas e.a. Test Problems"
    ex8_2_2a      "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.2.2.gms>ex8.2.2.gms</a> from Floudas e.a. Test Problems"
    ex8_2_2b      "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.2.2.gms>ex8.2.2.gms</a> from Floudas e.a. Test Problems"
    ex8_2_3       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.2.3.gms>ex8.2.3.gms</a> from Floudas e.a. Test Problems"
    ex8_2_3a      "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.2.3.gms>ex8.2.3.gms</a> from Floudas e.a. Test Problems"
    ex8_2_3b      "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.2.3.gms>ex8.2.3.gms</a> from Floudas e.a. Test Problems"
    ex8_2_4       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.2.4.gms>ex8.2.4.gms</a> from Floudas e.a. Test Problems"
    ex8_2_4a      "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.2.4.gms>ex8.2.4.gms</a> from Floudas e.a. Test Problems"
    ex8_2_4b      "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.2.4.gms>ex8.2.4.gms</a> from Floudas e.a. Test Problems"
    ex8_2_5       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.2.4.gms>ex8.2.4.gms</a> from Floudas e.a. Test Problems"
    ex8_2_5a      "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.2.4.gms>ex8.2.4.gms</a> from Floudas e.a. Test Problems"
    ex8_2_5b      "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.2.4.gms>ex8.2.4.gms</a> from Floudas e.a. Test Problems"
    ex8_3_1       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.3.1.gms>ex8.3.1.gms</a> from Floudas e.a. Test Problems"
    ex8_3_10      "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.3.10.gms>ex8.3.10.gms</a> from Floudas e.a. Test Problems"
    ex8_3_11      "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.3.11.gms>ex8.3.11.gms</a> from Floudas e.a. Test Problems"
    ex8_3_12      "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.3.12.gms>ex8.3.12.gms</a> from Floudas e.a. Test Problems"
    ex8_3_13      "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.3.13.gms>ex8.3.13.gms</a> from Floudas e.a. Test Problems"
    ex8_3_14      "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.3.14.gms>ex8.3.14.gms</a> from Floudas e.a. Test Problems"
    ex8_3_2       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.3.2.gms>ex8.3.2.gms</a> from Floudas e.a. Test Problems"
    ex8_3_3       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.3.3.gms>ex8.3.3.gms</a> from Floudas e.a. Test Problems"
    ex8_3_4       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.3.4.gms>ex8.3.4.gms</a> from Floudas e.a. Test Problems"
    ex8_3_5       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.3.5.gms>ex8.3.5.gms</a> from Floudas e.a. Test Problems"
    ex8_3_6       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.3.6.gms>ex8.3.6.gms</a> from Floudas e.a. Test Problems"
    ex8_3_7       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.3.7.gms>ex8.3.7.gms</a> from Floudas e.a. Test Problems"
    ex8_3_8       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.3.8.gms>ex8.3.8.gms</a> from Floudas e.a. Test Problems"
    ex8_3_9       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.3.9.gms>ex8.3.9.gms</a> from Floudas e.a. Test Problems"
    ex8_4_1       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.4.1.gms>ex8.4.1.gms</a> from Floudas e.a. Test Problems"
    ex8_4_2       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.4.2.gms>ex8.4.2.gms</a> from Floudas e.a. Test Problems"
    ex8_4_3       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.4.3.gms>ex8.4.3.gms</a> from Floudas e.a. Test Problems"
    ex8_4_4       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.4.4.gms>ex8.4.4.gms</a> from Floudas e.a. Test Problems"
    ex8_4_5       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.4.5.gms>ex8.4.5.gms</a> from Floudas e.a. Test Problems"
    ex8_4_6       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.4.6.gms>ex8.4.6.gms</a> from Floudas e.a. Test Problems"
    ex8_4_7       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.4.7.gms>ex8.4.7.gms</a> from Floudas e.a. Test Problems"
    ex8_4_8       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.4.8.gms>ex8.4.8.gms</a> from Floudas e.a. Test Problems"
    ex8_4_8_bnd   "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.4.8.gms>ex8.4.8.gms</a> from Floudas e.a. Test Problems with added bounds"
    ex8_5_1       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.5.1.gms>ex8.5.1.gms</a> from Floudas e.a. Test Problems"
    ex8_5_2       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.5.2.gms>ex8.5.2.gms</a> from Floudas e.a. Test Problems"
    ex8_5_3       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.5.3.gms>ex8.5.3.gms</a> from Floudas e.a. Test Problems"
    ex8_5_4       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.5.4.gms>ex8.5.4.gms</a> from Floudas e.a. Test Problems"
    ex8_5_5       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.5.5.gms>ex8.5.5.gms</a> from Floudas e.a. Test Problems"
    ex8_5_6       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.5.6.gms>ex8.5.6.gms</a> from Floudas e.a. Test Problems"
    ex8_6_1       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.6.1.gms>ex8.6.1.gms</a> from Floudas e.a. Test Problems"
    ex8_6_2       "Global Model of Chapter 8 <a href=%TESTURL%/chapter8/ex8.6.2.gms>ex8.6.2.gms</a> from Floudas e.a. Test Problems"
    ex9_1_1       "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.1.1.gms>ex9.1.1.gms</a> from Floudas e.a. Test Problems"
    ex9_1_2       "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.1.2.gms>ex9.1.2.gms</a> from Floudas e.a. Test Problems"
    ex9_1_4       "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.1.4.gms>ex9.1.4.gms</a> from Floudas e.a. Test Problems"
    ex9_1_5       "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.1.5.gms>ex9.1.5.gms</a> from Floudas e.a. Test Problems"
    ex9_1_8       "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.1.8.gms>ex9.1.8.gms</a> from Floudas e.a. Test Problems"
    ex9_2_2       "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.2.2.gms>ex9.2.2.gms</a> from Floudas e.a. Test Problems"
    ex9_2_3       "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.2.3.gms>ex9.2.3.gms</a> from Floudas e.a. Test Problems"
    ex9_2_4       "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.2.4.gms>ex9.2.4.gms</a> from Floudas e.a. Test Problems"
    ex9_2_5       "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.2.5.gms>ex9.2.5.gms</a> from Floudas e.a. Test Problems"
    ex9_2_6       "Global Model of Chapter 8 <a href=%TESTURL%/chapter9/ex9.2.6.gms>ex9.2.6.gms</a> from Floudas e.a. Test Problems"
    ex9_2_7       "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.2.7.gms>ex9.2.7.gms</a> from Floudas e.a. Test Problems"
    ex9_2_8       "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.2.8.gms>ex9.2.8.gms</a> from Floudas e.a. Test Problems"
    fct           "GAMS Model of <a href=%GAMSMODURL%/fct.htm>fct.gms</a> from GAMS Model Library"
    filter
    flowchan100   "GAMS Model of <a href=%GAMSMODURL%/flowchan.htm>flowchan.gms</a> from GAMS Model Library"
    flowchan200   "GAMS Model of <a href=%GAMSMODURL%/flowchan.htm>flowchan.gms</a> from GAMS Model Library"
    flowchan400   "GAMS Model of <a href=%GAMSMODURL%/flowchan.htm>flowchan.gms</a> from GAMS Model Library"
    flowchan50    "GAMS Model of <a href=%GAMSMODURL%/flowchan.htm>flowchan.gms</a> from GAMS Model Library"
    gancns        "GAMS Model of <a href=%GAMSMODURL%/gancns.htm>gancns.gms</a> from GAMS Model Library"
    ganges        "GAMS Model of <a href=%GAMSMODURL%/ganges.htm>ganges.gms</a> from GAMS Model Library"
    gasoil100     "GAMS Model of <a href=%GAMSMODURL%/gasoil.htm>gasoil.gms</a> from GAMS Model Library"
    gasoil200     "GAMS Model of <a href=%GAMSMODURL%/gasoil.htm>gasoil.gms</a> from GAMS Model Library"
    gasoil400     "GAMS Model of <a href=%GAMSMODURL%/gasoil.htm>gasoil.gms</a> from GAMS Model Library"
    gasoil50      "GAMS Model of <a href=%GAMSMODURL%/gasoil.htm>gasoil.gms</a> from GAMS Model Library"
    glider100     "GAMS Model of <a href=%GAMSMODURL%/glider.htm>glider.gms</a> from GAMS Model Library"
    glider200     "GAMS Model of <a href=%GAMSMODURL%/glider.htm>glider.gms</a> from GAMS Model Library"
    glider400     "GAMS Model of <a href=%GAMSMODURL%/glider.htm>glider.gms</a> from GAMS Model Library"
    glider50      "GAMS Model of <a href=%GAMSMODURL%/glider.htm>glider.gms</a> from GAMS Model Library"
    gsg_0001     
    gtm           "GAMS Model of <a href=%GAMSMODURL%/gtm.htm>gtm.gms</a> from GAMS Model Library"
    harker        "GAMS Model of <a href=%GAMSMODURL%/harker.htm>harker.gms</a> from GAMS Model Library"
    haverly       "GAMS Model of <a href=%GAMSMODURL%/haverly.htm>haverly.gms</a> from GAMS Model Library"
    hhfair        "GAMS Model of <a href=%GAMSMODURL%/hhfair.htm>hhfair.gms</a> from GAMS Model Library"
    himmel16      "GAMS Model of <a href=%GAMSMODURL%/himmel16.htm>himmel16.gms</a> from GAMS Model Library"
    house         "GAMS Model of <a href=%GAMSMODURL%/house.htm>house.gms</a> from GAMS Model Library"
    hs62          "GAMS Model of <a href=%GAMSMODURL%/hs62.htm>hs62.gms</a> from GAMS Model Library"
    hydro         "GAMS Model of <a href=%GAMSMODURL%/hydro.htm>hydro.gms</a> from GAMS Model Library"
    immun         "GAMS Model of <a href=%GAMSMODURL%/immun.htm>immun.gms</a> from GAMS Model Library"
    infeas1       
    jbearing100   "GAMS Model of <a href=%GAMSMODURL%/jbearing.htm>jbearing.gms</a> from GAMS Model Library"
    jbearing25    "GAMS Model of <a href=%GAMSMODURL%/jbearing.htm>jbearing.gms</a> from GAMS Model Library"
    jbearing50    "GAMS Model of <a href=%GAMSMODURL%/jbearing.htm>jbearing.gms</a> from GAMS Model Library"
    jbearing75    "GAMS Model of <a href=%GAMSMODURL%/jbearing.htm>jbearing.gms</a> from GAMS Model Library"
    korcge        "GAMS Model of <a href=%GAMSMODURL%/korcge.htm>korcge.gms</a> from GAMS Model Library"
    korcns        "GAMS Model of <a href=%GAMSMODURL%/korcns.htm>korcns.gms</a> from GAMS Model Library"
    launch        "GAMS Model of <a href=%GAMSMODURL%/launch.htm>launch.gms</a> from GAMS Model Library"
    least         "GAMS Model of <a href=%GAMSMODURL%/least.htm>least.gms</a> from GAMS Model Library"
    like          "GAMS Model of <a href=%GAMSMODURL%/like.htm>like.gms</a> from GAMS Model Library"
    linear        "GAMS Model of <a href=%GAMSMODURL%/linear.htm>linear.gms</a> from GAMS Model Library"
    lnts100       "GAMS Model of <a href=%GAMSMODURL%/lnts.htm>lnts.gms</a> from GAMS Model Library"
    lnts200       "GAMS Model of <a href=%GAMSMODURL%/lnts.htm>lnts.gms</a> from GAMS Model Library"
    lnts400       "GAMS Model of <a href=%GAMSMODURL%/lnts.htm>lnts.gms</a> from GAMS Model Library"
    lnts50        "GAMS Model of <a href=%GAMSMODURL%/lnts.htm>lnts.gms</a> from GAMS Model Library"
    mathopt1      "GAMS Model of <a href=%GAMSMODURL%/mathopt1.htm>mathopt1.gms</a> from GAMS Model Library"
    mathopt2      "GAMS Model of <a href=%GAMSMODURL%/mathopt2.htm>mathopt2.gms</a> from GAMS Model Library"
    mathopt3      "GAMS Model of <a href=%GAMSMODURL%/mathopt3.htm>mathopt3.gms</a> from GAMS Model Library"
    mathopt4      "GAMS Model of <a href=%GAMSMODURL%/mathopt4.htm>mathopt4.gms</a> from GAMS Model Library"
    maxmin        "GAMS Model of <a href=%GAMSMODURL%/maxmin.htm>maxmin.gms</a> from GAMS Model Library"
    meanvar       "GAMS Model of <a href=%GAMSMODURL%/meanvar.htm>meanvar.gms</a> from GAMS Model Library"
    methanol100   "GAMS Model of <a href=%GAMSMODURL%/methanol.htm>methanol.gms</a> from GAMS Model Library"
    methanol200   "GAMS Model of <a href=%GAMSMODURL%/methanol.htm>methanol.gms</a> from GAMS Model Library"
    methanol400   "GAMS Model of <a href=%GAMSMODURL%/methanol.htm>methanol.gms</a> from GAMS Model Library"
    methanol50    "GAMS Model of <a href=%GAMSMODURL%/methanol.htm>methanol.gms</a> from GAMS Model Library"
    mhw4d         "GAMS Model of <a href=%GAMSMODURL%/mhw4d.htm>mhw4d.gms</a> from GAMS Model Library"
    minlphi       "GAMS Model of <a href=%GAMSMODURL%/minlphi.htm>minlphi.gms</a> from GAMS Model Library"
    minsurf100    "GAMS Model of <a href=%GAMSMODURL%/minsurf.htm>minsurf.gms</a> from GAMS Model Library"
    minsurf25     "GAMS Model of <a href=%GAMSMODURL%/minsurf.htm>minsurf.gms</a> from GAMS Model Library"
    minsurf50     "GAMS Model of <a href=%GAMSMODURL%/minsurf.htm>minsurf.gms</a> from GAMS Model Library"
    minsurf75     "GAMS Model of <a href=%GAMSMODURL%/minsurf.htm>minsurf.gms</a> from GAMS Model Library"
    nemhaus       "GAMS Model of <a href=%GAMSMODURL%/nemhaus.htm>nemhaus.gms</a> from GAMS Model Library"
    otpop         "GAMS Model of <a href=%GAMSMODURL%/otpop.htm>otpop.gms</a> from GAMS Model Library"
    pindyck       "GAMS Model of <a href=%GAMSMODURL%/pindyck.htm>pindyck.gms</a> from GAMS Model Library"
    pinene100     "GAMS Model of <a href=%GAMSMODURL%/pinene.htm>pinene.gms</a> from GAMS Model Library"
    pinene200     "GAMS Model of <a href=%GAMSMODURL%/pinene.htm>pinene.gms</a> from GAMS Model Library"
    pinene50      "GAMS Model of <a href=%GAMSMODURL%/pinene.htm>pinene.gms</a> from GAMS Model Library"
    pollut        "GAMS Model of <a href=%GAMSMODURL%/pollut.htm>pollut.gms</a> from GAMS Model Library"
    polygon100    "GAMS Model of <a href=%GAMSMODURL%/polygon.htm>polygon.gms</a> from GAMS Model Library"
    polygon25     "GAMS Model of <a href=%GAMSMODURL%/polygon.htm>polygon.gms</a> from GAMS Model Library"
    polygon50     "GAMS Model of <a href=%GAMSMODURL%/polygon.htm>polygon.gms</a> from GAMS Model Library"
    polygon75     "GAMS Model of <a href=%GAMSMODURL%/polygon.htm>polygon.gms</a> from GAMS Model Library"
    popdynm100    "GAMS Model of <a href=%GAMSMODURL%/popdynm.htm>popdynm.gms</a> from GAMS Model Library"
    popdynm200    "GAMS Model of <a href=%GAMSMODURL%/popdynm.htm>popdynm.gms</a> from GAMS Model Library"
    popdynm25     "GAMS Model of <a href=%GAMSMODURL%/popdynm.htm>popdynm.gms</a> from GAMS Model Library"
    popdynm50     "GAMS Model of <a href=%GAMSMODURL%/popdynm.htm>popdynm.gms</a> from GAMS Model Library"
    prob06
    prob07
    prob09 
    process       "GAMS Model of <a href=%GAMSMODURL%/process.htm>process.gms</a> from GAMS Model Library"
    prolog        "GAMS Model of <a href=%GAMSMODURL%/prolog.htm>prolog.gms</a> from GAMS Model Library"
    qp1           "GAMS Model of <a href=%GAMSMODURL%/qp1.htm>qp1.gms</a> from GAMS Model Library"
    qp2           "GAMS Model of <a href=%GAMSMODURL%/qp2.htm>qp2.gms</a> from GAMS Model Library"
    qp3           "GAMS Model of <a href=%GAMSMODURL%/qp3.htm>qp3.gms</a> from GAMS Model Library"
    qp4           "GAMS Model of <a href=%GAMSMODURL%/qp4.htm>qp4.gms</a> from GAMS Model Library"
    qp5           "GAMS Model of <a href=%GAMSMODURL%/qp5.htm>qp5.gms</a> from GAMS Model Library"
    ramsey        "GAMS Model of <a href=%GAMSMODURL%/ramsey.htm>ramsey.gms</a> from GAMS Model Library"
    rbrock        "GAMS Model of <a href=%GAMSMODURL%/rbrock.htm>rbrock.gms</a> from GAMS Model Library"
    robot100      "GAMS Model of <a href=%GAMSMODURL%/robot.htm>robot.gms</a> from GAMS Model Library"
    robot200      "GAMS Model of <a href=%GAMSMODURL%/robot.htm>robot.gms</a> from GAMS Model Library"
    robot400      "GAMS Model of <a href=%GAMSMODURL%/robot.htm>robot.gms</a> from GAMS Model Library"
    robot50       "GAMS Model of <a href=%GAMSMODURL%/robot.htm>robot.gms</a> from GAMS Model Library"
    rocket100     "GAMS Model of <a href=%GAMSMODURL%/rocket.htm>rocket.gms</a> from GAMS Model Library"
    rocket200     "GAMS Model of <a href=%GAMSMODURL%/rocket.htm>rocket.gms</a> from GAMS Model Library"
    rocket400     "GAMS Model of <a href=%GAMSMODURL%/rocket.htm>rocket.gms</a> from GAMS Model Library"
    rocket50      "GAMS Model of <a href=%GAMSMODURL%/rocket.htm>rocket.gms</a> from GAMS Model Library"
    sambal        "GAMS Model of <a href=%GAMSMODURL%/sambal.htm>sambal.gms</a> from GAMS Model Library"
    sample        "GAMS Model of <a href=%GAMSMODURL%/sample.htm>sample.gms</a> from GAMS Model Library"
    ship          "GAMS Model of <a href=%GAMSMODURL%/ship.htm>ship.gms</a> from GAMS Model Library"
    srcpm         "GAMS Model of <a href=%GAMSMODURL%/srcpm.htm>srcpm.gms</a> from GAMS Model Library"
    st_bpaf1a         
    st_bpaf1b	  
    st_bpk1		  
    st_bpv1		  
    st_bpv2		  
    st_bsj2		  
    st_bsj3		  
    st_bsj4		  
    st_cqpf		  
    st_cqpjk1	  
    st_cqpjk2	  
    st_e01		  
    st_e02		  
    st_e03		  
    st_e04		  
    st_e05		  
    st_e06		  
    st_e07		  
    st_e08		  
    st_e09		  
    st_e11		  
    st_e12		  
    st_e16		  
    st_e17		  
    st_e18		  
    st_e19		  
    st_e21		  
    st_e22		  
    st_e23		  
    st_e24		  
    st_e25		  
    st_e26		  
    st_e28		  
    st_e30		  
    st_e33		  
    st_e34		  
    st_e37		  
    st_e41		  
    st_e42		  
    st_fp7a		  
    st_fp7b		  
    st_fp7c		  
    st_fp7d		  
    st_fp7e		  
    st_fp8		  
    st_glmp_fp1	  
    st_glmp_fp2	  
    st_glmp_fp3	  
    st_glmp_kk90	  
    st_glmp_kk92	  
    st_glmp_kky	  
    st_glmp_ss1	  
    st_glmp_ss2	  
    st_ht		  
    st_iqpbk1	  
    st_iqpbk2	  
    st_jcbpaf2	  
    st_m1		  
    st_m2		  
    st_pan1		  
    st_ph1		  
    st_ph10		  
    st_ph11		  
    st_ph12		  
    st_ph13		  
    st_ph14		  
    st_ph15		  
    st_ph2		  
    st_ph20		  
    st_ph3		  
    st_phex		  
    st_qpc-m0	  
    st_qpc-m1	  
    st_qpc-m3a	  
    st_qpc-m3b	  
    st_qpc-m3c	  
    st_qpc-m4	  
    st_qpk1		  
    st_qpk2		  
    st_qpk3		  
    st_robot
    st_rv1		  
    st_rv2		  
    st_rv3		  
    st_rv7		  
    st_rv8		  
    st_rv9		  
    st_z              
    torsion100    "GAMS Model of <a href=%GAMSMODURL%/torsion.htm>torsion.gms</a> from GAMS Model Library"    
    torsion25     "GAMS Model of <a href=%GAMSMODURL%/torsion.htm>torsion.gms</a> from GAMS Model Library"    
    torsion50     "GAMS Model of <a href=%GAMSMODURL%/torsion.htm>torsion.gms</a> from GAMS Model Library"    
    torsion75     "GAMS Model of <a href=%GAMSMODURL%/torsion.htm>torsion.gms</a> from GAMS Model Library"    
    trig          "GAMS Model of <a href=%GAMSMODURL%/trig.htm>trig.gms</a> from GAMS Model Library"
    turkey        "GAMS Model of <a href=%GAMSMODURL%/turkey.htm>turkey.gms</a> from GAMS Model Library"
    wall          "GAMS Model of <a href=%GAMSMODURL%/wall.htm>wall.gms</a> from GAMS Model Library"
    water         "GAMS Model of <a href=%GAMSMODURL%/water.htm>water.gms</a> from GAMS Model Library"
    weapons       "GAMS Model of <a href=%GAMSMODURL%/weapons.htm>weapons.gms</a> from GAMS Model Library"
    worst         "GAMS Model of <a href=%GAMSMODURL%/worst.htm>worst.gms</a> from GAMS Model Library"
/

Set d application structure /
  cfloudas   "Literature Problems From Floudas"
  gamsmod    "GAMS Model Library"
  client     "GAMS Development Client Models"
  binous     "Models from Housam Binous"
  sahinidis  "Models from Nick Sahinidis"
  arki       "ARKI Consulting Client Models"
  lasdon     "Models from Leon Lasdon"
  alphaECP   "AlphaECP Models"
  gmbh       "GAMS Software Client Models"
/

set ms(m,s) model sequence mapping /
  ex4_1_1   .    1, ex4_1_2   .    2, ex4_1_3   .    3
  ex4_1_4   .    4, ex4_1_6   .    5, ex4_1_7   .    6
  ex8_1_2   .    7, ex14_1_9  .    8, ex4_1_5   .    9
  ex4_1_8   .   10, ex4_1_9   .   11, ex8_1_1   .   12
  ex8_1_3   .   13, ex8_1_4   .   14, ex8_1_5   .   15
  ex8_1_6   .   16, ex14_1_1  .   17, ex14_1_3  .   18
  ex14_1_4  .   19, ex3_1_4   .   20, ex6_2_11  .   21
  ex6_2_6   .   22, ex6_2_8   .   23, ex14_1_8  .   24
  ex6_1_2   .   25, ex6_2_12  .   26, ex6_2_14  .   27
  ex6_2_9   .   28, ex7_3_1   .   29, ex7_3_2   .   30
  ex9_2_8   .   31, ex14_2_2  .   32, ex14_2_5  .   33
  ex14_2_8  .   34, ex14_2_9  .   35, ex2_1_1   .   36
  ex3_1_2   .   37, ex7_3_3   .   38, ex8_1_7   .   39
  ex14_1_2  .   40, ex14_1_5  .   41, ex14_2_1  .   42
  ex14_2_4  .   43, ex14_2_6  .   44, ex2_1_4   .   45
  ex3_1_3   .   46, ex6_1_4   .   47, ex6_2_10  .   48
  ex6_2_13  .   49, ex7_2_2   .   50,
  ex14_2_3  .   52, ex14_2_7  .   53, ex2_1_2   .   54
  ex5_2_4   .   55, ex7_2_1   .   56, ex3_1_1   .   57
  ex5_4_2   .   58, ex6_1_1   .   59, ex7_2_3   .   60
  ex7_2_4   .   61, ex9_2_4   .   62, ex9_2_5   .   63
  ex14_1_6  .   64, ex8_5_1   .   65, ex8_5_2   .   66
  ex8_5_6   .   67, ex6_2_5   .   68, ex6_2_7   .   69
  ex7_3_5   .   70, ex2_1_5   .   71, ex9_1_2   .   72
  ex9_1_4   .   73, ex9_2_2   .   75
  ex14_1_7  .   76, ex2_1_6   .   77, ex2_1_3   .   78
  ex6_1_3   .   79, ex7_3_4   .   80, ex9_1_1   .   81
  ex9_1_5   .   82, ex9_1_8   .   84
  ex8_4_5   .   85, ex5_4_3   .   86, ex9_2_3   .   87
  ex9_2_7   .   88, ex7_3_6   .   89, ex8_4_4   .   90
  ex8_4_1   .   91, ex5_3_2   .   92, ex2_1_8   .   93
  ex8_4_2   .   94, ex5_2_5   .   95, ex5_4_4   .   96
  ex8_4_3   .   97, ex8_2_1   .   98, ex8_2_4   .   99
  ex8_4_7   .  100, ex8_3_9   .  101, ex8_3_2   .  102
  ex8_3_3   .  103, ex8_3_4   .  104, ex8_3_5   .  105
  ex8_3_6   .  106, ex8_3_7   .  107, ex8_3_8   .  108
  ex8_3_10  .  109, ex2_1_7   .  110, ex2_1_9   .  111
  ex2_1_10  .  112, ex5_2_2_case1 . 113, ex5_2_2_case2 . 114
  ex5_2_2_case3 . 115, ex5_3_3 . 116, ex8_2_2   .  117
  ex8_2_3   .  118, ex8_3_1   .  119, ex8_3_11  .  120
  ex8_3_12  .  121, ex8_3_13  .  122, ex8_3_14  .  123
  ex8_4_6   .  124, ex8_4_8   .  125, ex8_5_3   .  126
  ex8_5_4   .  127, ex8_5_5   .  128, ex8_6_1   .  129
  ex8_6_2   .  130, ex9_2_6   .  131, minsurf25 .  132
  jbearing25.  133, torsion25 .  134, catmix100 .  135
  methanol50.  136, gasoil50  .  137, glider50  .  138
  rocket50  .  139, lnts50    .  140, robot50   .  141
  flowchan50.  142, popdynm25 .  143,
  camshape100. 145, chain50   .  146, elec25    .  147
  polygon25 .  148, haverly   .  149, alkyl     .  150
  korcns    .  151, gancns    .  153
  camcns    .  154, bearing   .  155, circle    .  156
  nemhaus   .  157, qp5       .  158, qp4       .  159
  qp3       .  160, qp2       .  161, qp1       .  162
  minlphi   .  163, korcge    .  165
  house     .  166, ganges    .  167, pollut    .  168
  demo7     .  169, turkey    .  170, harker    .  171
  mhw4d     .  172, rbrock    .  173, camcge    .  174
  etamac    .  175, sambal    .  176, wall      .  177
  hhfair    .  178, abel      .  179, ramsey    .  180
  gtm       .  181, srcpm     .  182, otpop     .  183
  prolog    .  184, chakra    .  185, pindyck   .  186
  hydro     .  187, dispatch  .  188, launch    .  189
  meanvar   .  190, worst     .  191, immun     .  192
  water     .  194, himmel16  .  195
  chenery   .  196, sample    .  197, chance    .  198
  like      .  199, least     .  200, linear    .  201
  ship      .  202, chem      .  203, process   .  204
  weapons   .  205, polygon50 .  206, polygon75 .  207
  polygon100.  208, elec50    .  209, elec100   .  210
  elec200   .  211, chain100  .  212, chain200  .  213
  chain400  .  214, minsurf50 .  215, minsurf75 .  216
  minsurf100.  217, rocket400 .  218, jbearing50.  219
  jbearing75.  220, jbearing100. 221, torsion50 .  222
  torsion75 .  223, torsion100.  224, catmix200 .  225
  catmix400 .  226, catmix800 .  227, methanol100. 228
  methanol200. 229, methanol400. 230, gasoil100 .  231
  gasoil200 .  232, gasoil400 .  233, lnts100   .  234
  lnts200   .  235, lnts400   .  236, robot100  .  237
  robot200  .  238, robot400  .  239, flowchan100. 240
  flowchan200. 241, flowchan400. 242, popdynm50 .  243
  popdynm100.  244, popdynm200.  245, pinene50  .  246
  pinene100 .  247, pinene200 .  248, camshape200. 249
  camshape400. 250, camshape800. 251, glider100 .  252
  glider200 .  253, glider400 .  254, rocket100 .  255
  rocket200 .  256, infeas1 .    257, st_e01    .  258
  st_e02    .  259, st_e03    .  260, st_e04    .  261
  st_e05    .  262, st_e06  .    263, st_e07    .  264
  st_e08    .  265, st_e09  .    266,
  st_e11    .  268, st_e12  .    269, st_e16    .  270
  st_e17    .  271, st_e18  .    272, st_e19    .  273
  st_e21  .    275, st_e22    .  276
  st_e23    .  277, st_e24  .    278, st_e25    .  279
  st_e26    .  280, st_e28  .    281, st_e30    .  282
  st_e33    .  283, st_e34  .    284, st_e37    .  285
  st_e41  .    287, st_e42    .  288
  st_bsj2   .  289, st_bsj3 .    290, st_bsj4   .  291
  st_fp7a   .  298, st_fp7b .    299, st_fp7c   .  300
  st_fp7d   .  301, st_fp7e .    302, st_fp8    .  303
  st_ht     .  304, st_m1     .  306
  st_m2     .  307, st_pan1 .    308
  st_ph1    .  310, st_ph10 .    311, st_ph11   .  312
  st_ph12   .  313, st_ph13 .    314, st_ph14   .  315
  st_ph15   .  316, st_ph2  .    317, st_ph20   .  318
  st_ph3    .  319, st_phex .    320, st_rv1    .  321
  st_rv2    .  322, st_rv3  .    323, st_rv7    .  324
  st_rv8    .  325, st_rv9  .    326, st_z      .  327
  st_bpaf1a .  328, st_bpaf1b .  329, st_bpk1   .  330
  st_bpv1 .    332, st_bpv2   .  333
  st_cqpf   .  334, st_cqpjk1.   335, st_cqpjk2 .  336
  st_iqpbk1 .  337, st_iqpbk2.   338, st_jcbpaf2.  339
  st_qpc-m0 .  341, st_qpc-m1 .  342
  st_qpc-m3a . 343, st_qpc-m3b.  344, st_qpc-m3c.  345 
  st_qpc-m4 .  346, st_qpk1 .    347, st_qpk2   .  348
  st_qpk3   .  349, st_glmp_fp1. 350, st_glmp_fp2. 351
  st_glmp_fp3. 352, st_glmp_kk90.353, st_glmp_kk92.354
  st_glmp_kky. 355, st_glmp_ss1. 356, st_glmp_ss2. 357
  st_robot  .  358, arki0001   . 359, arki0002  .  360 
  arki0003  .  361, arki0004   . 362, arki0005  .  363  
  arki0006  .  364, arki0007   . 365, arki0008  .  366  
  arki0009  .  367, arki0010   . 368, arki0011  .  369  
  arki0012  .  370, arki0013   . 371, arki0014  .  372  
  arki0015  .  373, arki0016   . 374, arki0017  .  375  
  arki0018  .  376, arki0019   . 377, arki0020  .  378  
  arki0021  .  379, arki0022   . 380, arki0023  .  381   
  arki0024  .  382, hs62       . 383, maxmin    .  384
  trig      .  385, mathopt1   . 386, mathopt2  .  387, 
  mathopt3  .  388, mathopt4   . 389, bayes2_10 .  390,
  bayes2_20 .  391, bayes2_30  . 392, bayes2_50 .  393,
  prob06     . 395, prob07    .  396,
  prob09    .  397, gsg_0001   . 398, btest14   .  399,
  ex8_4_8_bnd. 400, ex8_2_1a   . 401, ex8_2_1b  .  402,
  ex8_2_2a  .  403, ex8_2_2b   . 404, ex8_2_3a  .  405,
  ex8_2_3b  .  406, ex8_2_4a   . 407, ex8_2_4b  .  408,
  ex8_2_5   .  409, ex8_2_5a   . 410, ex8_2_5b  .  411,
  alkylation.  412, filter     . 413, fct       .  414
/
  
Set big(s) model that do not fit into the GAMS demo system
/
  132, 133, 134, 135, 136, 137, 138, 139, 141
  142, 143, 144, 148, 152, 153, 160, 164, 167, 170
  206*256,  358, 403*406
/;

set mtype / NLP, DNLP, CNS /;
set smt(s,mtype); smt(s,'NLP') = yes;

* Specify DNLP and CNS models
set dnlp(m) / linear, maxmin, water, fct /;
set cns(m)  / camcns, gancns, korcns/;

smt(s,'DNLP')$sum(dnlp,ms(dnlp,s)) = yes; 
smt(s,'CNS')$sum(cns,ms(cns,s))   = yes;
smt(s,'NLP')$smt(s,'DNLP') = no;
smt(s,'NLP')$smt(s,'CNS') = no;

display smt;

Set ds(d,s) model application mapping /
  cfloudas  . (1*131,400*411)
  gamsmod   . (132*256,383*389,414)
  client    . (257)
  sahinidis . (258*358)
  arki      . (359*382)
  lasdon    . (390*393)
  alphaECP  . (394*397)
  gmbh      . (398*399)
  binous    . (412*413)
/;


$if not exist gams.bib $goto nobib
$echo r1   41  > g2g.txt
$echo r2  218 >> g2g.txt
$echo r3  219 >> g2g.txt
$echo r4  220 >> g2g.txt
$echo r5  221 >> g2g.txt
$echo r6  222 >> g2g.txt
$echo r7  223 >> g2g.txt
$echo r8  224 >> g2g.txt
$echo r9  225 >> g2g.txt
$echo r10 226 >> g2g.txt
$echo r11 227 >> g2g.txt
$echo r12 228 >> g2g.txt
$echo r13 229 >> g2g.txt
$echo r14 230 >> g2g.txt
$echo r15 231 >> g2g.txt
$echo r16 232 >> g2g.txt
$echo r17 233 >> g2g.txt
$echo r18 234 >> g2g.txt
$echo r19 235 >> g2g.txt
$echo r20 236 >> g2g.txt
$echo r21 237 >> g2g.txt
$echo r22 238 >> g2g.txt
$echo r23 239 >> g2g.txt
$echo r24 240 >> g2g.txt
$echo r25 241 >> g2g.txt
$echo r26 242 >> g2g.txt
$echo r27 243 >> g2g.txt
$echo r28 244 >> g2g.txt
$echo r29 245 >> g2g.txt
$echo r30 246 >> g2g.txt
$echo r31 247 >> g2g.txt
$echo r32 248 >> g2g.txt
$echo r33 249 >> g2g.txt
$echo r34 250 >> g2g.txt
$echo r35 251 >> g2g.txt
$echo r36 252 >> g2g.txt
$echo r37 253 >> g2g.txt
$echo r38 254 >> g2g.txt
$echo r39 255 >> g2g.txt
$echo r40 256 >> g2g.txt
$echo r41 257 >> g2g.txt
$echo r42 258 >> g2g.txt
$echo r43 259 >> g2g.txt
$echo r44  23 >> g2g.txt
$echo r45  30 >> g2g.txt
$echo r46   4 >> g2g.txt
$echo r47 260 >> g2g.txt
$echo r48 261 >> g2g.txt
$echo r49   2 >> g2g.txt
$echo r50 262 >> g2g.txt
$echo r51 263 >> g2g.txt
$echo r52 264 >> g2g.txt
$echo r53 265 >> g2g.txt
$echo r54 266 >> g2g.txt
$echo r55 267 >> g2g.txt
$echo r56 268 >> g2g.txt
$echo r57 269 >> g2g.txt
$echo r58 270 >> g2g.txt
$echo r59 271 >> g2g.txt
$echo r60 272 >> g2g.txt
$echo r61 273 >> g2g.txt
$echo r62 274 >> g2g.txt
$echo r63 275 >> g2g.txt
$echo r64 276 >> g2g.txt
$echo r65 277 >> g2g.txt
$echo r66 278 >> g2g.txt
$echo r67 279 >> g2g.txt
$echo r68 280 >> g2g.txt
$echo r69 281 >> g2g.txt
$echo r70 282 >> g2g.txt
$echo r71 283 >> g2g.txt
$echo r72 284 >> g2g.txt
$echo r73 285 >> g2g.txt
$echo r74 286 >> g2g.txt
$echo r75 287 >> g2g.txt
$echo r76 288 >> g2g.txt
$echo r77 289 >> g2g.txt
$echo r78 290 >> g2g.txt
$echo r79 291 >> g2g.txt
$echo r80 292 >> g2g.txt
$echo r81 293 >> g2g.txt
$echo r82 294 >> g2g.txt
$echo r83  49 >> g2g.txt
$echo r84  26 >> g2g.txt
$echo r85 295 >> g2g.txt
$echo r86 296 >> g2g.txt
$echo r87 297 >> g2g.txt
$echo r88 298 >> g2g.txt
$echo r89 299 >> g2g.txt
$echo r90 300 >> g2g.txt
$echo r91 301 >> g2g.txt
$echo r92 302 >> g2g.txt
$echo r93 303 >> g2g.txt
$echo r94 304 >> g2g.txt
$echo r95 305 >> g2g.txt
$echo r96 306 >> g2g.txt
$echo r97 307 >> g2g.txt
$echo r98 308 >> g2g.txt
$echo r99 309 >> g2g.txt
$echo r100 310 >> g2g.txt
$echo r101 311 >> g2g.txt
$echo r102 312 >> g2g.txt
$echo r103 313 >> g2g.txt
$echo r104 314 >> g2g.txt
$echo r105 315 >> g2g.txt
$echo r106 316 >> g2g.txt
$echo r107 317 >> g2g.txt
$echo r108 318 >> g2g.txt
$echo r109 319 >> g2g.txt
$echo r110 320 >> g2g.txt
$echo r111  50 >> g2g.txt
$echo r112 195 >> g2g.txt
$echo r113  53 >> g2g.txt
$echo r114  54 >> g2g.txt
$echo r115 186 >> g2g.txt
$echo r116 187 >> g2g.txt
$echo r117  59 >> g2g.txt
$echo r118  11 >> g2g.txt
$echo r119  60 >> g2g.txt
$echo r120 188 >> g2g.txt
$echo r121  77 >> g2g.txt
$echo r122 121 >> g2g.txt
$echo r123  88 >> g2g.txt
$echo r124   1 >> g2g.txt
$echo r125 158 >> g2g.txt
$echo r126 122 >> g2g.txt
$echo r127 126 >> g2g.txt
$echo r128 175 >> g2g.txt
$echo r129 193 >> g2g.txt
$echo r130 128 >> g2g.txt
$echo r131 129 >> g2g.txt
$echo r132 192 >> g2g.txt
$echo r133 131 >> g2g.txt
$echo r134 116 >> g2g.txt
$echo r135 135 >> g2g.txt
$echo r136 137 >> g2g.txt
$echo r137 138 >> g2g.txt
$echo r138 196 >> g2g.txt
$echo r139 143 >> g2g.txt
$echo r140 200 >> g2g.txt
$echo r141 145 >> g2g.txt
$echo r142 151 >> g2g.txt
$echo r143 204 >> g2g.txt
$echo r144 163 >> g2g.txt
$echo r145  87 >> g2g.txt
$echo r146  16 >> g2g.txt
$echo r147  91 >> g2g.txt
$echo r148  25 >> g2g.txt
$echo r149 124 >> g2g.txt
$echo r150   8 >> g2g.txt
$echo r151   6 >> g2g.txt
$echo r152 155 >> g2g.txt
$echo r153 206 >> g2g.txt
$echo r154  92 >> g2g.txt
$echo r155  93 >> g2g.txt
$echo r156  94 >> g2g.txt
$echo r157  95 >> g2g.txt
$echo r158  96 >> g2g.txt
$echo r159 185 >> g2g.txt
$echo r160  97 >> g2g.txt
$echo r161  98 >> g2g.txt
$echo r162 100 >> g2g.txt
$echo r163  89 >> g2g.txt
$echo r164 123 >> g2g.txt
$echo r165  15 >> g2g.txt
*$echo r166  37 >> g2g.txt
$echo r167 407 >> g2g.txt
$echo r168 410 >> g2g.txt
$echo r169 411 >> g2g.txt
$echo r170 412 >> g2g.txt
$echo r171 413 >> g2g.txt
$echo r172 414 >> g2g.txt
$echo r173 415 >> g2g.txt
$echo r174 416 >> g2g.txt
$echo r175 417 >> g2g.txt
$echo r176 418 >> g2g.txt
$echo r177 419 >> g2g.txt
$echo r178 420 >> g2g.txt
$echo r179 421 >> g2g.txt
$echo r180 406 >> g2g.txt
$echo r181 408 >> g2g.txt
$echo r182 423 >> g2g.txt
$echo r183 426 >> g2g.txt
$echo r184 429 >> g2g.txt
$echo r185 431 >> g2g.txt
$echo r186 432 >> g2g.txt
$echo r187 422 >> g2g.txt
$echo r188 424 >> g2g.txt
$echo r189 425 >> g2g.txt
$echo r190 427 >> g2g.txt
$echo r191 428 >> g2g.txt
$echo r192  27 >> g2g.txt
$echo r193 430 >> g2g.txt
$echo r194 433 >> g2g.txt
$echo r195 434 >> g2g.txt
$echo r196 435 >> g2g.txt
$echo r198 436 >> g2g.txt
$echo r199 437 >> g2g.txt
$echo r200 438 >> g2g.txt
$echo r201 443 >> g2g.txt
$echo r202 445 >> g2g.txt
$echo r203 452 >> g2g.txt
$echo r204 447 >> g2g.txt
$echo r205 448 >> g2g.txt
$echo r206 449 >> g2g.txt
$echo r207 450 >> g2g.txt
$echo r208 455 >> g2g.txt
$echo r209 462 >> g2g.txt
$echo r210 475 >> g2g.txt 
$echo r211 474 >> g2g.txt
$echo r212 501 >> g2g.txt
$echo r213 502 >> g2g.txt
$echo r214  13 >> g2g.txt
$echo r215 514 >> g2g.txt

$set cat type
$if %system.filesys% == UNIX $set cat cat

$call "bib2gms gams.bib r=g2g.txt i=global"
$echo set a authors /                             > globalref.inc
$call %cat% global.a                             >> globalref.inc
$echo               /                            >> globalref.inc
$echo set r references /                         >> globalref.inc
$call %cat% global.r                             >> globalref.inc
$echo                  /                         >> globalref.inc
$echo $onempty                                   >> globalref.inc
$echo set cr(r,r) cross references /             >> globalref.inc
$call %cat% global.crr                           >> globalref.inc
$echo                              /             >> globalref.inc
$echo $offempty                                  >> globalref.inc
$echo set ca(a) credit authors /                 >> globalref.inc
$call %cat% global.ca                            >> globalref.inc
$echo                          /                 >> globalref.inc
$echo set af(a,r) first author     /             >> globalref.inc
$call %cat% global.far                           >> globalref.inc
$echo                              /             >> globalref.inc
$echo set ar(a,r) author reference mapping /     >> globalref.inc
$call %cat% global.ar                            >> globalref.inc
$echo                                      /     >> globalref.inc

$label nobib

$include globalref.inc

set nopubs(r) not real publications; nopubs(r) = no;

set pubs(r) real publications;
pubs(r) = not nopubs(r);

set mr(m,r) model reference mapping /
  ex2_1_1       . (r1)
  ex2_1_10      . (r1)
  ex2_1_2       . (r1)
  ex2_1_3       . (r1)
  ex2_1_4       . (r1)
  ex2_1_5       . (r1)
  ex2_1_6       . (r1)
  ex2_1_7       . (r1)
  ex2_1_8       . (r1)
  ex2_1_9       . (r1)
  ex3_1_1       . (r1,r27)
  ex3_1_2       . (r1,r20)
  ex3_1_3       . (r1,r23)
  ex3_1_4       . (r1,r15)
  ex4_1_1       . (r1,r2)
  ex4_1_2       . (r1,r3)
  ex4_1_3       . (r1,r4)
  ex4_1_4       . (r1,r6)
  ex4_1_5       . (r1,r6)
  ex4_1_6       . (r1,r7)
  ex4_1_7       . (r1,r9)
  ex4_1_8       . (r1,r11)
  ex4_1_9       . (r1)
  ex5_2_2_case1 . (r1,r83)
  ex5_2_2_case2 . (r1,r83)
  ex5_2_2_case3 . (r1,r83)
  ex5_2_4       . (r1,r25)
  ex5_2_5       . (r1,r25)
  ex5_3_2       . (r1,r41)
  ex5_3_3       . (r1,r84)
  ex5_4_2       . (r1,r28)
  ex5_4_3       . (r1,r41)
  ex5_4_4       . (r1,r43)
  ex6_1_1       . (r1,r55,r57)
  ex6_1_2       . (r1,r53)
  ex6_1_3       . (r1,r70,r61)
  ex6_1_4       . (r1,r61)
  ex6_2_10      . (r1,r62,r55)
  ex6_2_11      . (r1,r52)
  ex6_2_12      . (r1,r55)
  ex6_2_13      . (r1,r55,r57)
  ex6_2_14      . (r1,r56)
  ex6_2_5       . (r1,r55)
  ex6_2_6       . (r1,r53)
  ex6_2_7       . (r1,r55)
  ex6_2_8       . (r1,r53)
  ex6_2_9       . (r1,r55,r57)
  ex7_2_1       . (r1,r65)
  ex7_2_2       . (r1,r24,r12,r63,r64)
  ex7_2_3       . (r1,r28)
  ex7_2_4       . (r1,r65)
  ex7_3_1       . (r1,r58)
  ex7_3_2       . (r1,r17)
  ex7_3_3       . (r1,r21)
  ex7_3_4       . (r1,r36)
  ex7_3_5       . (r1,r21)
  ex7_3_6       . (r1,r75,r76)
  ex8_1_1       . (r1,r12)
  ex8_1_2       . (r1,r10)
  ex8_1_3       . (r1,r7)
  ex8_1_4       . (r1,r6)
  ex8_1_5       . (r1,r6)
  ex8_1_6       . (r1,r6)
  ex8_1_7       . (r1,r22,r12)
  ex8_2_1       . (r1,r80,r81)
  ex8_2_1a      . (r1,r80,r81,r212)
  ex8_2_1b      . (r1,r80,r81,r213)
  ex8_2_2       . (r1,r81)
  ex8_2_2a      . (r1,r81,r212)
  ex8_2_2b      . (r1,r81,r213)
  ex8_2_3       . (r1,r81)
  ex8_2_3a      . (r1,r81,r212)
  ex8_2_3b      . (r1,r81,r213)
  ex8_2_4       . (r1,r81)
  ex8_2_4a      . (r1,r81,r212)
  ex8_2_4b      . (r1,r81,r213)
  ex8_2_5       . (r1,r81)
  ex8_2_5a      . (r1,r81,r212)
  ex8_2_5b      . (r1,r81,r213)
  ex8_3_1       . (r1,r85)
  ex8_3_10      . (r1)
  ex8_3_11      . (r1,r85)
  ex8_3_12      . (r1,r85)
  ex8_3_13      . (r1,r85)
  ex8_3_14      . (r1,r85)
  ex8_3_2       . (r1)
  ex8_3_3       . (r1)
  ex8_3_4       . (r1)
  ex8_3_5       . (r1)
  ex8_3_6       . (r1)
  ex8_3_7       . (r1)
  ex8_3_8       . (r1)
  ex8_3_9       . (r1)
  ex8_4_1       . (r1,r78,r74)
  ex8_4_2       . (r1,r74,r78)
  ex8_4_3       . (r1,r74,r78,r79)
  ex8_4_4       . (r1,r77,r74)
  ex8_4_5       . (r1,r73,r74)
  ex8_4_6       . (r1,r86)
  ex8_4_7       . (r1,r82,r74)
  ex8_4_8       . (r1,r82,r74)	
  ex8_4_8_bnd   . (r1,r82,r74)	
  ex8_5_1       . (r1,r30)
  ex8_5_2       . (r1)
  ex8_5_3       . (r1,r71)
  ex8_5_4       . (r1,r67)
  ex8_5_5       . (r1,r67)
  ex8_5_6       . (r1,r67)
  ex8_6_1       . (r1)
  ex8_6_2       . (r1)
  ex9_1_1       . (r1,r29)
  ex9_1_2       . (r1,r31)
  ex9_1_4       . (r1,r32)
  ex9_1_5       . (r1,r37)
  ex9_1_8       . (r1,r39)
  ex9_2_2       . (r1,r33)
  ex9_2_3       . (r1,r35)
  ex9_2_4       . (r1,r18)
  ex9_2_5       . (r1,r29)
  ex9_2_6       . (r1,r66)
  ex9_2_7       . (r1,r35)
  ex9_2_8       . (r1,r18)
  ex14_1_1      . (r1,r51)
  ex14_1_2      . (r1,r59)
  ex14_1_3      . (r1,r13)
  ex14_1_4      . (r1,r14)
  ex14_1_5      . (r1,r60)
  ex14_1_6      . (r1,r60)
  ex14_1_7      . (r1,r69)
  ex14_1_8      . (r1,r54)	
  ex14_1_9      . (r1,r50)
  ex14_2_1      . (r1)
  ex14_2_2      . (r1)
  ex14_2_3      . (r1)
  ex14_2_4      . (r1)
  ex14_2_5      . (r1)	
  ex14_2_6      . (r1)
  ex14_2_7      . (r1)
  ex14_2_8      . (r1)
  ex14_2_9      . (r1)
  minsurf25     . (r110,r91)
  minsurf50     . (r110,r91)
  minsurf75     . (r110,r91)
  minsurf100    . (r110,r91)
  jbearing25    . (r110,r88,r107)
  jbearing50    . (r110,r88,r107)
  jbearing75    . (r110,r88,r107)
  jbearing100   . (r110,r88,r107)
  torsion25     . (r110,r88,r90) 
  torsion50     . (r110,r88,r90) 
  torsion75     . (r110,r88,r90) 
  torsion100    . (r110,r88,r90) 
  catmix100     . (r110,r108)
  catmix200     . (r110,r108)
  catmix400     . (r110,r108)
  catmix800     . (r110,r108)
  methanol50    . (r1,r110,r87,r88,r94,r89)
  methanol100   . (r1,r110,r87,r88,r94,r89)
  methanol200   . (r1,r110,r87,r88,r94,r89)
  methanol400   . (r1,r110,r87,r88,r94,r89)
  gasoil50      . (r110,r87,r88,r94)
  gasoil100     . (r110,r87,r88,r94)
  gasoil200     . (r110,r87,r88,r94)
  gasoil400     . (r110,r87,r88,r94)
  glider50      . (r110,r97)
  glider100     . (r110,r97)
  glider200     . (r110,r97)
  glider400     . (r110,r97)
  rocket50      . (r110,r95)
  rocket100     . (r110,r95)
  rocket200     . (r110,r95)
  rocket400     . (r110,r95)
  lnts50        . (r110,r101,r109)
  lnts100       . (r110,r101,r109)
  lnts200       . (r110,r101,r109)
  lnts400       . (r110,r101,r109)
  robot50       . (r110,r103)
  robot100      . (r110,r103)
  robot200      . (r110,r103)
  robot400      . (r110,r103)
  flowchan50    . (r110,r94)
  flowchan100   . (r110,r94)
  flowchan200   . (r110,r94)
  flowchan400   . (r110,r94)
  popdynm25     . (r110,r102)
  popdynm50     . (r110,r102)
  popdynm100    . (r110,r102)
  popdynm200    . (r110,r102)
  pinene50      . (r110,r87,r88,r94)
  pinene100     . (r110,r87,r88,r94)
  pinene200     . (r110,r87,r88,r94)
  camshape100   . (r110,r104)
  camshape200   . (r110,r104)
  camshape400   . (r110,r104)
  camshape800   . (r110,r104)
  chain50       . (r110,r98)
  chain100      . (r110,r98)
  chain200      . (r110,r98)
  chain400      . (r110,r98)
  elec25        . (r110,r92,r93)
  elec50        . (r110,r92,r93)
  elec100       . (r110,r92,r93)
  elec200       . (r110,r92,r93)
  polygon25     . (r110,r100,r105)
  polygon50     . (r110,r100,r105)
  polygon75     . (r110,r100,r105)
  polygon100    . (r110,r100,r105)
  haverly       . (r83,r111)
  alkyl         . (r123)
  korcns        . (r113)
  gancns        . (r115)
  camcns        . (r116)
  bearing       . (r117,r118,r119)
  circle        . (r120)
  nemhaus       . (r121)
  qp5           . (r122)
  qp4           . (r122)
  qp3           . (r122)
  qp2           . (r122)
  qp1           . (r122)
  minlphi       . (r112,r124)
  korcge        . (r113)
  house         . (r125)
  ganges        . (r115)
  pollut        . (r126)
  demo7         . (r127)
  turkey        . (r128)
  harker        . (r129)
  mhw4d         . (r130)
  rbrock        . (r131)
  camcge        . (r116)
  etamac        . (r132)
  sambal        . (r133)
  wall          . (r134)
  hhfair        . (r135)
  abel          . (r136)
  ramsey        . (r137,r138)
  gtm           . (r139)
  srcpm         . (r140)
  otpop         . (r141)
  prolog        . (r142)
  chakra        . (r143)
  pindyck       . (r144)
  hydro         . (r145)
  dispatch      . (r146)
  launch        . (r147)
  meanvar       . (r148)
  worst         . (r148)
  immun         . (r148)
  water         . (r150,r151)
  himmel16      . (r152)
  chenery       . (r153)
  sample        . (r154)
  chance        . (r155)
  like          . (r156)
  least         . (r157)
  linear        . (r158)
  ship          . (r159)
  chem          . (r160)
  process       . (r161)
  weapons       . (r162)
  infeas1       . (r211)
  st_e01        . (r167,r168)
  st_e02	. (r167,r169)
  st_e03	. (r167,r163)
  st_e04	. (r167,r169)
  st_e05	. (r167,r170) 
  st_e06	. (r167,r170) 
  st_e07	. (r167,r83)
  st_e08	. (r167,r171)
  st_e09	. (r167,r171)
  st_e11	. (r167,r172)
  st_e12	. (r167,r173)
  st_e16	. (r167,r175)
  st_e17	. (r167,r170)
  st_e18	. (r167,r176)
  st_e19	. (r167,r63)
  st_e21	. (r167,r173)
  st_e22        . (r167,r178)
  st_e23	. (r167,r179)
  st_e24	. (r167,r180)
  st_e25	. (r167,r181)
  st_e26	. (r167,r187)
  st_e28	. (r167,r20)
  st_e30	. (r167,r189)
  st_e33	. (r167,r190)
  st_e34	. (r167,r27)
  st_e37        . (r167,r193)
  st_e41	. (r167,r186)
  st_e42    	. (r167,r194)
  st_bsj2       . (r167,r195,r196)
  st_bsj3	. (r167,r195,r196)
  st_bsj4	. (r167,r195,r196)
  st_fp7a	. (r167,r195,r196)
  st_fp7b       . (r167,r195,r196)
  st_fp7c	. (r167,r195,r196)
  st_fp7d	. (r167,r195,r196)
  st_fp7e	. (r167,r195,r196)
  st_fp8	. (r167,r195,r196)
  st_ht		. (r167,r195,r196)
  st_m1		. (r167,r195,r196)
  st_m2		. (r167,r195,r196)
  st_pan1	. (r167,r195,r196)
  st_ph1	. (r167,r195,r196)
  st_ph10	. (r167,r195,r196)
  st_ph11	. (r167,r195,r196)
  st_ph12	. (r167,r195,r196)
  st_ph13	. (r167,r195,r196)
  st_ph14	. (r167,r195,r196)
  st_ph15	. (r167,r195,r196)
  st_ph2	. (r167,r195,r196)
  st_ph20	. (r167,r195,r196)
  st_ph3        . (r167,r195,r196)
  st_phEx	. (r167,r195,r196)
  st_rv1	. (r167,r195,r196)
  st_rv2	. (r167,r195,r196)
  st_rv3	. (r167,r195,r196)
  st_rv7	. (r167,r195,r196)
  st_rv8	. (r167,r195,r196)
  st_rv9	. (r167,r195,r196)
  st_z		. (r167,r195,r196)
  st_bpaf1a     . (r167,r196)
  st_bpaf1b     . (r167,r196)
  st_bpk1       . (r167,r196)
  st_bpv1	. (r167,r196)
  st_bpv2	. (r167,r196)
  st_cqpf       . (r167,r196) 
  st_cqpjk1	. (r167,r196)
  st_cqpjk2	. (r167,r196)
  st_iqpbk1     . (r167,r196) 
  st_iqpbk2	. (r167,r196)
  st_jcbpaf2	. (r167,r196)
  st_qpc-m0	. (r167,r196)
  st_qpc-m1	. (r167,r196)
  st_qpc-m3a    . (r167,r196) 
  st_qpc-m3b	. (r167,r196)
  st_qpc-m3c	. (r167,r196)
  st_qpc-m4     . (r167,r196)
  st_qpk1	. (r167,r196)
  st_qpk2	. (r167,r196)
  st_qpk3       . (r167,r196)
  st_glmp_fp1   . (r167,r198)
  st_glmp_fp2	. (r167,r198)
  st_glmp_fp3	. (r167,r198)
  st_glmp_kk90	. (r167,r180)
  st_glmp_kk92	. (r167,r180)
  st_glmp_kky	. (r167,r199)
  st_glmp_ss1   . (r167,r200)
  st_glmp_ss2   . (r167,r200)
  st_robot      . (r167,r201)
  arki0001      . (r202)
  arki0002    	. (r202)
  arki0003    	. (r202) 
  arki0004    	. (r202)
  arki0005      . (r202) 
  arki0006    	. (r202)
  arki0007    	. (r202)
  arki0008    	. (r202)
  arki0009      . (r202) 
  arki0010    	. (r202)
  arki0011    	. (r202)
  arki0012    	. (r202)
  arki0013      . (r202) 
  arki0014    	. (r202)
  arki0015    	. (r202)
  arki0016    	. (r202)
  arki0017      . (r202)
  arki0018    	. (r202)
  arki0019    	. (r202)
  arki0020    	. (r202)
  arki0021      . (r202)
  arki0022    	. (r202)
  arki0023    	. (r202)
  arki0024    	. (r202)
  hs62          . (r26)
  maxmin        . (r203,r204)
  trig          . (r204)
  mathopt1      . (r205,r206,r207)
  mathopt2      . (r205,r206,r207)
  mathopt3      . (r205,r206,r207)
  mathopt4      . (r205,r206,r207)
  bayes2_10     . (r208)
  bayes2_20     . (r208)
  bayes2_30     . (r208)
  bayes2_50     . (r208)
  prob06        . (r64,r209)
  prob07        . (r51,r209)
  prob09        . (r209)
  gsg_0001      . (r210)
  btest14       . (r210)
  alkylation    . (r214*r215)
  filter        . (r214*r215)
  fct           . (r204)
/	
    	
set p restart or solution points /p1*p10/;
  		
set mp(m,p) available restart or solution points /
  ex2_1_3        .p1
  ex2_1_4        .p1
  ex2_1_5        .p1
  ex2_1_1        .p1
  ex2_1_10       .p1
  ex2_1_2        .p1
  ex2_1_6        .p1
  ex2_1_7        .p1
  ex2_1_9        .p1
  ex3_1_1        .p1
  ex3_1_2        .p1
  ex3_1_3        .p1
  ex3_1_4        .p1
  ex4_1_1        .p1
  ex4_1_3        .p1
  ex4_1_4        .p1
  ex4_1_6        .p1
  ex4_1_7        .p1
  ex4_1_8        .p1
  ex4_1_9        .p1
  ex5_2_2_case1  .p1
  ex5_2_2_case2  .p1
  ex5_2_2_case3  .p1
  ex5_2_4        .p1
  ex5_3_2        .p1
  ex5_4_2        .p1
  ex5_4_3        .p1
  ex6_1_1        .p1
  ex6_1_2        .p1
  ex6_1_4        .p1
  ex6_2_14       .p1
  ex7_2_2        .p1
  ex7_3_1        .p1
  ex7_3_2        .p1
  ex7_3_3        .p1
  ex7_3_5        .p1
  ex7_3_6        .p1
*  ex8_1_1        .p1
*  ex8_1_2        .p1
  ex8_1_6        .p1
  ex8_1_7        .p1
  ex8_4_4        .p1
  ex8_5_2        .p1
  ex8_5_3        .p1
  ex8_5_4        .p1
  ex8_5_5        .p1
  ex8_5_6        .p1
  ex9_1_1        .p1
  ex9_1_2        .p1
  ex9_1_4        .p1
  ex9_1_5        .p1
  ex9_1_8        .p1
  ex9_2_2        .p1
  ex9_2_3        .p1
  ex9_2_4        .p1
  ex9_2_5        .p1
  ex9_2_6        .p1
  ex9_2_7        .p1
  ex9_2_8        .p1
  ex14_1_1       .p1
  ex14_1_2       .p1
  ex14_1_3       .p1
  ex14_1_5       .p1
  ex14_1_6       .p1
  ex14_1_8       .p1
  ex14_1_9       .p1
  ex14_2_1       .p1
  ex14_2_2       .p1
  ex14_2_3       .p1
  ex14_2_4       .p1
  ex14_2_5       .p1
  ex14_2_6       .p1
  ex14_2_7       .p1
  ex14_2_8       .p1
  ex14_2_9       .p1
  otpop          .p1
  ramsey         .p1
  wall           .p1
  sambal         .p1
  rbrock         .p1
  house          .p1
  qp5            .p1
  nemhaus        .p1
  circle         .p1
  bearing        .p1
  alkyl          .p1
  haverly        .p1
  hydro          .p1
  dispatch       .p1
  meanvar   	 .p1
  immun     	 .p1
  st_e28  	 .p1
  himmel16  	 .p1
  sample    	 .p1
  chance    	 .p1
  least     	 .p1
  process 	 .p1
/

set bk(m,p) point with best known solution /
  ex2_1_3        .p1    Solution of value       -15.00 (global optimum)
  ex2_1_4        .p1    Solution of value       -11.00 (global optimum)
  ex2_1_5        .p1    Solution of value      -268.01 (global optimum)
  ex2_1_1        .p1    Solution of value       -17.00 (global optimum)
  ex2_1_10       .p1    Solution of value     49318.02 (global optimum)
  ex2_1_2        .p1    Solution of value      -213.00 (global optimum)
  ex2_1_6        .p1    Solution of value       -39.00 (global optimum)
  ex2_1_7        .p1    Solution of value     -4150.41 (global optimum)
  ex2_1_9        .p1    Solution of value        -0.38 (global optimum)
  ex3_1_1        .p1    Solution of value      7049.25 (global optimum)
  ex3_1_2        .p1    Solution of value    -30665.54 (global optimum)
  ex3_1_3        .p1    Solution of value      -310.00 (global optimum)
  ex3_1_4        .p1    Solution of value        -4.00 (global optimum)
  ex4_1_1        .p1    Solution of value        -7.48 (global optimum)
  ex4_1_3        .p1    Solution of value      -443.67 (global optimum)
  ex4_1_4        .p1    Solution of value         0.00 (global optimum)
  ex4_1_6        .p1    Solution of value         7.00 (global optimum)
  ex4_1_7        .p1    Solution of value        -7.50 (global optimum)
  ex4_1_8        .p1    Solution of value       -16.74 (global optimum)
  ex4_1_9        .p1    Solution of value        -5.51 (global optimum)
  ex5_2_2_case1  .p1    Solution of value      -400.00 (global optimum)
  ex5_2_2_case2  .p1    Solution of value      -600.00 (global optimum)
  ex5_2_2_case3  .p1    Solution of value      -750.00 (global optimum)
  ex5_2_4        .p1    Solution of value      -450.00 (global optimum)
  ex5_3_2        .p1    Solution of value         1.86 (global optimum)
  ex5_4_2        .p1    Solution of value      7512.23 (global optimum)
  ex5_4_3        .p1    Solution of value      4845.46 (global optimum)
  ex6_1_1        .p1    Solution of value    -0.20E-01 (global optimum)
  ex6_1_2        .p1    Solution of value    -0.32E-01 (global optimum)
  ex6_1_4        .p1    Solution of value        -0.29 (global optimum)
  ex6_2_14       .p1    Solution of value        -0.70 (global optimum)
  ex7_2_2        .p1    Solution of value        -0.39 (global optimum)
  ex7_3_1        .p1    Solution of value         0.34 (global optimum)
  ex7_3_2        .p1    Solution of value         1.09 (global optimum)
  ex7_3_3        .p1    Solution of value         0.82 (global optimum)
  ex7_3_5        .p1    Solution of value         1.21 (global optimum)
  ex7_3_6        .p1    Solution of value         0.00 (global optimum)
*  ex8_1_1        .p1    Solution of value        -2.02 (global optimum)
*  ex8_1_2        .p1    Solution of value         2.80 (global optimum)
  ex8_1_6        .p1    Solution of value       -10.09 (global optimum)
  ex8_1_7        .p1    Solution of value     0.29E-01 (global optimum)
  ex8_4_4        .p1    Solution of value         0.21 (global optimum)
  ex8_5_2        .p1    Solution of value    -0.12E-07 (global optimum)
  ex8_5_3        .p1    Solution of value    -0.41E-02 (global optimum)
  ex8_5_4        .p1    Solution of value    -0.43E-03 (global optimum)
  ex8_5_5        .p1    Solution of value    -0.11E-01 (global optimum)
  ex8_5_6        .p1    Solution of value    -0.12E-02 (global optimum)
  ex9_1_1        .p1    Solution of value       -13.00 (global optimum)
  ex9_1_2        .p1    Solution of value       -16.00 (global optimum)
  ex9_1_4        .p1    Solution of value       -37.00 (global optimum)
  ex9_1_5        .p1    Solution of value        -1.00 (global optimum)
  ex9_1_8        .p1    Solution of value        -3.25 (global optimum)
  ex9_2_2        .p1    Solution of value       100.00 (global optimum)
  ex9_2_3        .p1    Solution of value         0.00 (global optimum)
  ex9_2_4        .p1    Solution of value         0.50 (global optimum)
  ex9_2_5        .p1    Solution of value         5.00 (global optimum)
  ex9_2_6        .p1    Solution of value        -1.00 (global optimum)
  ex9_2_7        .p1    Solution of value        17.00 (global optimum)
  ex9_2_8        .p1    Solution of value         1.50 (global optimum)
  ex14_1_1       .p1    Solution of value         0.00 (global optimum)
  ex14_1_2       .p1    Solution of value         0.00 (global optimum)
  ex14_1_3       .p1    Solution of value         0.00 (global optimum)
  ex14_1_5       .p1    Solution of value         0.00 (global optimum)
  ex14_1_6       .p1    Solution of value         0.00 (global optimum)
  ex14_1_8       .p1    Solution of value         0.00 (global optimum)
  ex14_1_9       .p1    Solution of value         0.00 (global optimum)
  ex14_2_1       .p1    Solution of value         0.00 (global optimum)
  ex14_2_2       .p1    Solution of value         0.00 (global optimum)
  ex14_2_3       .p1    Solution of value         0.00 (global optimum)
  ex14_2_4       .p1    Solution of value         0.00 (global optimum)
  ex14_2_5       .p1    Solution of value         0.00 (global optimum)
  ex14_2_6       .p1    Solution of value         0.00 (global optimum)
  ex14_2_7       .p1    Solution of value         0.00 (global optimum)
  ex14_2_8       .p1    Solution of value         0.00 (global optimum)
  ex14_2_9       .p1    Solution of value         0.00 (global optimum)
  otpop          .p1    Solution of value    -0.36E-09 (global optimum)
  ramsey         .p1    Solution of value         1.49 (global optimum)
  wall           .p1    Solution of value         1.00 (global optimum)
  sambal         .p1    Solution of value         3.97 (global optimum)
  rbrock         .p1    Solution of value         0.00 (global optimum)
  house          .p1    Solution of value      2625.00 (global optimum)
  qp5            .p1    Solution of value         0.43 (global optimum)
  nemhaus        .p1    Solution of value        31.00 (global optimum)
  circle         .p1    Solution of value         4.57 (global optimum)
  bearing        .p1    Solution of value         1.95 (global optimum)
  alkyl          .p1    Solution of value        -1.76 (global optimum)
  haverly        .p1    Solution of value      -900.00 (global optimum)
  hydro          .p1    Solution of value   4366944.16 (global optimum)
  dispatch       .p1    Solution of value      3155.28 (global optimum)
  meanvar        .p1    Solution of value         5.24 (global optimum)
  immun          .p1    Solution of value         0.00 (global optimum) 
  st_e28         .p1    Solution of value    -30665.53 (global optimum)
  himmel16       .p1    Solution of value        -0.87 (global optimum)
  sample         .p1    Solution of value       726.68 (global optimum)
  chance         .p1    Solution of value        29.89 (global optimum)
  least          .p1    Solution of value     14085.14 (global optimum)
  process        .p1    Solution of value         5.67 (global optimum)
/

set xp(m) extra run parameter for scalar version /
        minsurf25     codex=3
        minsurf50     codex=3
        minsurf75     codex=3
        minsurf100    codex=3
        jbearing25    codex=3
        jbearing50    codex=3
        jbearing75    codex=3
        jbearing100   codex=3
        torsion25     codex=3
        torsion50     codex=3
        torsion75     codex=3
        torsion100    codex=3
        elec100       codex=3
        elec200       codex=3
/


Set error01(s)   sequence numbers with no model
    error02(m)   models with no sequence number
    error03(s)   models with no application
    error04(d)   applications with no models
    error05(m,p) best known without a point reference
    error06(m)   models without a reference
    error07(r)   reference without an author
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
error07(r)   = sum(ar(a,r),1)=0;
error08(a)   = sum(ar(a,r),1)=0;
error09(m)   = sum(bk(m,p),1)>1;
error10(r)   = sum(mr(m,r),1)=0;
error11(s)   = sum(mtype$smt(s,mtype),1) <> 1;

error01('144') = no;
error01('152') = no;
error01('164') = no;
error01('193') = no;
error01('74') = no;
error01('83') = no;
error01('51') = no;
error01('331') = no;
error01('267') = no;
error01('286') = no;
error01('340') = no;
error01('292') = no;
error01('309') = no;
error01('305') = no;
error01('293') = no;
error01('274') = no;
error01('295') = no;
error01('297') = no;
error01('296') = no;
error01('294') = no;
error01('394') = no;

abort$card(error01) error01;
abort$card(error02) error02;
abort$card(error03) error03;
abort$card(error04) error04;
abort$card(error05) error05;
abort$card(error06) error06;
abort$card(error07) error07;
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



