$ontext
The models
==========

The original algebraic models have been translated into a scalar
format in which documentation and comments have been removed, sets and
set operators have been unrolled, and the original data and structure
of the model have disappeared.  Note that by structure, we mean
structure as seen by the human (e.g. a variable inflow(CITIES), an
equation flowbalance(NODES), or a parameter capacity(UNITS)).  The
structure of the model as seen by the solver is completely unchanged
by the translation into scalar form.  This property is crucial in
algorithm testing.

The controlling model mpeclib.gms
=================================

The library contains a special GAMS model mpeclib.gms that helps to
organize the models in MPECLib.  In it, all models are matched with
proper references to contributors, publications references, source,
etc.

The mpeclib.gms model also helps to create execution scripts useful in
manipulating the library.  For example, the following piece of GAMS
code creates a batch script that runs models that come from the book
"Handbook of Test Problems in Local and Global Optimization" by
Floudas e.a. with solver MPECDUMP:

file brs 'batch run script' / 'rs.bat' /;
loop {m$mr(m,"r21"),
  put brs "gams " m.tl:0 " mpec=mpecdump " /;
  put$xp(m) xp.te(m);
  put /;
};

$offtext

$eolcom #

Set s 'sequence number' / 1*28,132,133*168,169*195 /;

$set GAMSMODURL  http://www.gams.com/modlib/libhtml
$set MACMPECURL  http://www-unix.mcs.anl.gov/~leyffer/MacMPEC/problems
$set MINOPTURL   http://titan.princeton.edu/MINOPT/modlib/Tests
$set TESTURL     ftp://titan.princeton.edu/TestProblems

set m 'models' /
    aampec_1      "Activity Analysis"
    aampec_2      "Activity Analysis"
    aampec_3      "Activity Analysis"
    aampec_4      "Activity Analysis"
    aampec_5      "Activity Analysis"
    aampec_6      "Activity Analysis"
    bard1         "Bard1 model from MPECLIB"
    bard2         "Bard2 model from MPECLIB"
    bard3         "Bard3 model from MPECLIB"
    bartruss3_0
    bartruss3_1
    bartruss3_2
    bartruss3_3
    bartruss3_4
    bartruss3_5
*    bem-milanc30-s
*    bilevel1
*    bilevel2
*    bilevel3
*    bilin
    dempe         "AMPL model <a href=%MACMPECURL%/dempe.mod>dempe.mod</a> from MacMPEC (explicit slack)"
    dempe2        "AMPL model <a href=%MACMPECURL%/dempe.mod>dempe.mod</a> from MacMPEC (no explicit slack)"
    desilva       "DeSilva model from MPECLIB"
*    df1
    ex9_1_1m      "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.1.1.gms>ex9.1.1.gms</a> from Floudas e.a. Test Problems"
    ex9_1_2m      "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.1.2.gms>ex9.1.2.gms</a> from Floudas e.a. Test Problems"
    ex9_1_3m      "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.1.3.gms>ex9.1.3.gms</a> from Floudas e.a. Test Problems"
    ex9_1_4m      "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.1.4.gms>ex9.1.4.gms</a> from Floudas e.a. Test Problems"
$ONTEXT
    ex9_1_5       "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.1.5.gms>ex9.1.5.gms</a> from Floudas e.a. Test Problems"
    ex9_1_6       "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.1.6.gms>ex9.1.6.gms</a> from Floudas e.a. Test Problems"
    ex9_1_7       "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.1.7.gms>ex9.1.7.gms</a> from Floudas e.a. Test Problems"
    ex9_1_8       "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.1.8.gms>ex9.1.8.gms</a> from Floudas e.a. Test Problems"
    ex9_1_9       "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.1.9.gms>ex9.1.9.gms</a> from Floudas e.a. Test Problems"
    ex9_2_1       "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.2.1.gms>ex9.2.1.gms</a> from Floudas e.a. Test Problems"
    ex9_2_2       "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.2.2.gms>ex9.2.2.gms</a> from Floudas e.a. Test Problems"
    ex9_2_3       "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.2.3.gms>ex9.2.3.gms</a> from Floudas e.a. Test Problems"
    ex9_2_4       "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.2.4.gms>ex9.2.4.gms</a> from Floudas e.a. Test Problems"
    ex9_2_5       "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.2.5.gms>ex9.2.5.gms</a> from Floudas e.a. Test Problems"
    ex9_2_6       "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.2.6.gms>ex9.2.6.gms</a> from Floudas e.a. Test Problems"
    ex9_2_7       "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.2.7.gms>ex9.2.7.gms</a> from Floudas e.a. Test Problems"
    ex9_2_8       "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.2.8.gms>ex9.2.8.gms</a> from Floudas e.a. Test Problems"
    ex9_2_9       "Global Model of Chapter 9 <a href=%TESTURL%/chapter9/ex9.2.9.gms>ex9.2.9.gms</a> from Floudas e.a. Test Problems"
$OFFTEXT
    finda10t
    finda10s
    finda10l
    finda15t
    finda15s
    finda15l
    finda30t
    finda30s
    finda30l
    finda35t
    finda35s
    finda35l
    findb10t
    findb10s
    findb10l
    findb15t
    findb15s
    findb15l
    findb30t
    findb30s
    findb30l
    findb35t
    findb35s
    findb35l
    findc10t
    findc10s
    findc10l
    findc15t
    findc15s
    findc15l
    findc30t
    findc30s
    findc30l
    findc35t
    findc35s
    findc35l
    frictionalblock_1
    frictionalblock_2
    frictionalblock_3
    frictionalblock_4
    frictionalblock_5
    frictionalblock_6
    fjq1          "Facchinaei, etc, model from MPECLIB"
    gauvin        "Gauvin model from MPECLIB"
*    gnash10
*    gnash11
*    gnash12
*    gnash13
*    gnash14
*    gnash15
*    gnash16
*    gnash17
*    gnash18
*    gnash19
*    hakonsen
    hq1           "HQ1 model from MPECLIB"
*    hs044-i
*    incid-set1-16
*    incid-set1-32
*    incid-set1-8
*    incid-set1c-16
*    incid-set1c-32
*    incid-set1c-8
*    incid-set2-16
*    incid-set2-32
*    incid-set2-8
*    incid-set2c-16
*    incid-set2c-32
*    incid-set2c-8
    kehoe1
    kehoe2
    kehoe3
    kojshin3
    kojshin4
    nappi_a
    nappi_b
    nappi_c
    nappi_d
    mss           "MSS model from MPECLIB"
*    nash1
    outrata31     "Original AMPL coding by Sven Leyffer, University of Dundee"
    outrata32     "Original AMPL coding by Sven Leyffer, University of Dundee"
    outrata33     "Original AMPL coding by Sven Leyffer, University of Dundee"
    outrata34     "Original AMPL coding by Sven Leyffer, University of Dundee"
    oz3           "Outrata & Zowe model #3 from MPECLIB"
$ontext
    pack-comp1-16
    pack-comp1-32
    pack-comp1-8
    pack-comp1c-16
    pack-comp1c-32
    pack-comp1c-8
    pack-comp2-16
    pack-comp2-32
    pack-comp2-8
    pack-comp2c-16
    pack-comp2c-32
    pack-comp2c-8
    pack-rig1-16
    pack-rig1-32
    pack-rig1-8
    pack-rig1c-16
    pack-rig1c-32
    pack-rig1c-8
    pack-rig1p-16
    pack-rig1p-32
    pack-rig1p-8
    pack-rig2-16
    pack-rig2-32
    pack-rig2-8
    pack-rig2c-16
    pack-rig2c-32
    pack-rig2c-8
    pack-rig2p-16
    pack-rig2p-32
    pack-rig2p-8
    portfl-i-1
    portfl-i-2
    portfl-i-3
    portfl-i-4
    portfl-i-6
    qpec-100-1
    qpec-100-2
    qpec-100-3
    qpec-100-4
    qpec-200-1
    qpec-200-2
    qpec-200-3
    qpec-200-4
    qpec1
    qpec2
$offtext
    qvi		  "Quadratic Variational Inequality model from MPECLIB"
*    ralphmod
*    scholtes1
*    scholtes2
*    scholtes3
*    scholtes4
*    siouxfls
*    siouxfls1
*    sl1
*    stackelberg1
*    tap-09
*    tap-15
    three         "Three model from MPECLIB"
    tinloi        "Tinloi from MPECLIB"
    tinque_dhs2   "Tinloi/Que: Quasibrittle"
    tinque_dns2   "Tinloi/Que: Quasibrittle"
    tinque_mis2   "Tinloi/Que: Quasibrittle"
    tinque_pss2   "Tinloi/Que: Quasibrittle"
    tinque_sws2   "Tinloi/Que: Quasibrittle"
    tinque_sws3   "Tinloi/Que: Quasibrittle"
    tollmpec      "Sioux Falls toll model from MPECLIB"
*    water-FL
*    water-net
/;

Set d application structure /
  mpeclib   "MPEC model collection of Dirkse & Ferris"
  macmpec   "MacMPEC model collection of Leyffer"
  cfloudas  "Literature problems from Floudas"
  find	    "Material properties identification problem"
/;

set ms(m,s) model sequence mapping /
    bard1          .   1
    bard2          .   2
    bard3          .   3
    desilva        .   4
    fjq1           .   5
    gauvin         .   6
    hq1            .   7
    mss            .   8
    oz3            .   9
    qvi            .  10
    three          .  11
    tinloi         .  12
    tollmpec       .  13
    dempe          .  14
    bartruss3_0    .  15
    bartruss3_1    .  16
    bartruss3_2    .  17
    bartruss3_3    .  18
    bartruss3_4    .  19
    bartruss3_5    .  20
    outrata31      .  21
    outrata32      .  22
    outrata33      .  23
    outrata34      .  24
    ex9_1_1m       .  25
    ex9_1_2m       .  26
    ex9_1_3m       .  27
    ex9_1_4m       .  28
$ONTEXT
    ex9_1_5        .  29
    ex9_1_6        .  30
    ex9_2_3        .  31
    ex9_2_9        .  32
    ex9_2_8        .  33
    ex9_2_2        .  34
    ex9_2_7        .  35
    ex9_2_1        .  36
    ex9_1_9        .  37
    ex9_1_8        .  38
    ex9_1_7        .  39
    ex9_2_5        .  40
    ex9_2_6        .  41
    ex9_2_4        .  42
    bem-milanc30-s .  43
    bilevel1       .  44
    bilevel2       .  45
    bilevel3       .  46
    bilin          .  47
    df1            .  48
    gnash10        .  49
    gnash11        .  50
    gnash12        .  51
    gnash13        .  52
    gnash14        .  53
    gnash15        .  54
    gnash16        .  55
    gnash17        .  56
    gnash18        .  57
    gnash19        .  58
    hakonsen       .  59
    hs044-i        .  60
    incid-set1-8   .  61
    incid-set1-16  .  62
    incid-set1-32  .  63
    incid-set1c-8  .  64
    incid-set1c-16 .  65
    incid-set1c-32 .  66
    incid-set2-8   .  67
    incid-set2-16  .  68
    incid-set2-32  .  69
    incid-set2c-8  .  70
    incid-set2c-16 .  71
    incid-set2c-32 .  72
    nash1          .  73
    pack-comp1-8   .  74
    pack-comp1-16  .  75
    pack-comp1-32  .  76
    pack-comp1c-8  .  77
    pack-comp1c-16 .  78
    pack-comp1c-32 .  79
    pack-comp2-8   .  80
    pack-comp2-16  .  81
    pack-comp2-32  .  82
    pack-comp2c-8  .  83
    pack-comp2c-16 .  84
    pack-comp2c-32 .  85
    pack-rig1-8    .  86
    pack-rig1-16   .  87
    pack-rig1-32   .  88
    pack-rig1c-8   .  89
    pack-rig1c-16  .  90
    pack-rig1c-32  .  91
    pack-rig1p-8   .  92
    pack-rig1p-16  .  93
    pack-rig1p-32  .  94
    pack-rig2-8    .  95
    pack-rig2-16   .  96
    pack-rig2-32   .  97
    pack-rig2c-8   .  98
    pack-rig2c-16  .  99
    pack-rig2c-32  . 100
    pack-rig2p-8   . 101
    pack-rig2p-16  . 102
    pack-rig2p-32  . 103
    portfl-i-1     . 104
    portfl-i-2     . 105
    portfl-i-3     . 106
    portfl-i-4     . 107
    portfl-i-6     . 108
    qpec1          . 109
    qpec2          . 110
    qpec-100-1     . 111
    qpec-100-2     . 112
    qpec-100-3     . 113
    qpec-100-4     . 114
    qpec-200-1     . 115
    qpec-200-2     . 116
    qpec-200-3     . 117
    qpec-200-4     . 118
    ralphmod       . 119
    scholtes1      . 120
    scholtes2      . 121
    scholtes3      . 122
    scholtes4      . 123
    siouxfls       . 124
    siouxfls1      . 125
    sl1            . 126
    stackelberg1   . 127
    tap-09         . 128
    tap-15         . 129
    water-net      . 130
    water-FL       . 131
$offtext
    dempe2         . 132
    finda10T       . 133
    finda10S       . 134
    finda10L       . 135
    finda15T       . 136
    finda15S       . 137
    finda15L       . 138
    finda30T       . 139
    finda30S       . 140
    finda30L       . 141
    finda35T       . 142
    finda35S       . 143
    finda35L       . 144
    findb10T       . 145
    findb10S       . 146
    findb10L       . 147
    findb15T       . 148
    findb15S       . 149
    findb15L       . 150
    findb30T       . 151
    findb30S       . 152
    findb30L       . 153
    findb35T       . 154
    findb35S       . 155
    findb35L       . 156
    findc10T       . 157
    findc10S       . 158
    findc10L       . 159
    findc15T       . 160
    findc15S       . 161
    findc15L       . 162
    findc30T       . 163
    findc30S       . 164
    findc30L       . 165
    findc35T       . 166
    findc35S       . 167
    findc35L       . 168
    nappi_a	   . 169
    nappi_b	   . 170
    nappi_c	   . 171
    nappi_d	   . 172
    frictionalblock_1 . 173
    frictionalblock_2 . 174
    frictionalblock_3 . 175
    frictionalblock_4 . 176
    frictionalblock_5 . 177
    frictionalblock_6 . 178
    aampec_1	   . 179
    aampec_2	   . 180
    aampec_3	   . 181
    aampec_4	   . 182
    aampec_5	   . 183
    aampec_6	   . 184
    kehoe1	   . 185
    kehoe2	   . 186
    kehoe3	   . 187
    kojshin3	   . 188
    kojshin4	   . 189
    tinque_dhs2	   . 190
    tinque_dns2	   . 191
    tinque_mis2	   . 192
    tinque_pss2	   . 193
    tinque_sws2	   . 194
    tinque_sws3	   . 195

/;

Set big(s) model that do not fit into the GAMS demo system
/
	12,13
/;

set mtype / MCP, MPEC /;
set smt(s,mtype);
smt(s,'MPEC') = yes;

Set ds(d,s) model application mapping /
  mpeclib     .  (1*13)
  macmpec     .  (14*24)
  cfloudas    .  (25*28)
*  macmpecTMP  .  (43*131)
  macmpec     .  (132)
  find        .  (133*168)
/;


$if not exist gams.bib $goto nobib
$echo r1   322  > g2g.txt
$echo r2   323 >> g2g.txt
$echo r3   324 >> g2g.txt
$echo r4   325 >> g2g.txt
$echo r5   326 >> g2g.txt
$echo r6   327 >> g2g.txt
$echo r7   328 >> g2g.txt
$echo r8   329 >> g2g.txt
$echo r9   330 >> g2g.txt
$echo r10  331 >> g2g.txt
$echo r11  332 >> g2g.txt
$echo r12  333 >> g2g.txt
$echo r13  342 >> g2g.txt
$echo r14  341 >> g2g.txt
$echo r15  343 >> g2g.txt
$echo r16  334 >> g2g.txt
$echo r17  345 >> g2g.txt
$echo r18  346 >> g2g.txt
$echo r19  344 >> g2g.txt
$echo r20  336 >> g2g.txt
$echo r21   41 >> g2g.txt
$echo r22  234 >> g2g.txt
$echo r23  245 >> g2g.txt
$echo r24  247 >> g2g.txt
$echo r25  248 >> g2g.txt
$echo r26  249 >> g2g.txt
$echo r27  251 >> g2g.txt
$echo r28  253 >> g2g.txt
$echo r29  255 >> g2g.txt
$echo r30  278 >> g2g.txt
$echo r31  280 >> g2g.txt
$echo r32  250 >> g2g.txt
$echo r33  261 >> g2g.txt
$echo r34  260 >> g2g.txt
$echo r35  335 >> g2g.txt
$echo r36  338 >> g2g.txt
$echo r37  340 >> g2g.txt
$echo r38  347 >> g2g.txt
$echo r39  348 >> g2g.txt
$echo r40  349 >> g2g.txt
$echo r41  350 >> g2g.txt
$echo r42  351 >> g2g.txt
$echo r43  352 >> g2g.txt
$echo r44  353 >> g2g.txt
$echo r45  106 >> g2g.txt
$echo r46  483 >> g2g.txt
*$echo r999   1 >> g2g.txt

$set cat type
$if %system.filesys% == UNIX $set cat cat

$call "bib2gms gams.bib r=g2g.txt i=mpec"
$echo set a authors /                             > mpecref.inc
$call %cat% mpec.a                               >> mpecref.inc
$echo               /                            >> mpecref.inc
$echo set r references /                         >> mpecref.inc
$call %cat% mpec.r                               >> mpecref.inc
$echo                  /                         >> mpecref.inc
$echo $onempty                                   >> mpecref.inc
$echo set cr(r,r) cross references /             >> mpecref.inc
$call %cat% mpec.crr                             >> mpecref.inc
$echo                              /             >> mpecref.inc
$echo $offempty                                  >> mpecref.inc
$echo $onempty                                   >> mpecref.inc
$echo set ca(a) credit authors /                 >> mpecref.inc
$call %cat% mpec.ca                              >> mpecref.inc
$echo                          /                 >> mpecref.inc
$echo $offempty                                  >> mpecref.inc
$echo set af(a,r) first author     /             >> mpecref.inc
$call %cat% mpec.far                             >> mpecref.inc
$echo                              /             >> mpecref.inc
$echo set ar(a,r) author reference mapping /     >> mpecref.inc
$call %cat% mpec.ar                              >> mpecref.inc
$echo                                      /     >> mpecref.inc

$label nobib

$include mpecref.inc

set nopubs(r) not real publications; nopubs(r) = no;

set pubs(r) real publications;
pubs(r) = not nopubs(r);

set mr(m,r) model reference mapping /
    bard1          . (r1)
    bard2          . (r1)
    bard3          . (r1)
    desilva        . (r2)
    fjq1           . (r3)
    gauvin         . (r10)
    hq1            . (r4)
    mss            . (r5)
    oz3            . (r6)
    qvi            . (r6)
    three          . (r12)
    tinloi         . (r14,r15,r19,r46)
    tollmpec       . (r7,r9)
    dempe          . (r20)
    bartruss3_0    . (r16)
    bartruss3_1    . (r16)
    bartruss3_2    . (r16)
    bartruss3_3    . (r16)
    bartruss3_4    . (r16)
    bartruss3_5    . (r16)
    outrata31      . (r17,r18)
    outrata32      . (r17,r18)
    outrata33      . (r17,r18)
    outrata34      . (r17,r18)
    ex9_1_1m       . (r21,r23)
    ex9_1_2m       . (r21,r24)
    ex9_1_3m       . (r21,r33)
    ex9_1_4m       . (r21,r25)
$ONTEXT
    ex9_1_5        . (r21,r28)
    ex9_1_6        . (r21,r34)
    ex9_2_3        . (r21,r29)
    ex9_2_9        . (r21,r28)
    ex9_2_8        . (r21,r31)
    ex9_2_2        . (r21,r26)
    ex9_2_7        . (r21,r27)
    ex9_2_1        . (r21,r22)
    ex9_1_9        . (r21,r27)
    ex9_1_8        . (r21,r23)
    ex9_1_7        . (r21,r29)
    ex9_2_5        . (r21,r30)
    ex9_2_6        . (r21,r27)
    ex9_2_4        . (r21,r22)
    bem-milanc30-s . (r999)
    bilevel1       . (r3)
    bilevel2       . (r3)
    bilevel3       . (r3)
    bilin          . (r35)
    df1            . (r12)
    gnash10        . (r3)
    gnash11        . (r3)
    gnash12        . (r3)
    gnash13        . (r3)
    gnash14        . (r3)
    gnash15        . (r3)
    gnash16        . (r3)
    gnash17        . (r3)
    gnash18        . (r3)
    gnash19        . (r3)
    hakonsen       . (r36)
    hs044-i        . (r999)
    incid-set1-8   . (r37)
    incid-set1-16  . (r37)
    incid-set1-32  . (r37)
    incid-set1c-8  . (r37)
    incid-set1c-16 . (r37)
    incid-set1c-32 . (r37)
    incid-set2-8   . (r37)
    incid-set2-16  . (r37)
    incid-set2-32  . (r37)
    incid-set2c-8  . (r37)
    incid-set2c-16 . (r37)
    incid-set2c-32 . (r37)
    nash1          . (r3)
    pack-comp1-8   . (r37)
    pack-comp1-16  . (r37)
    pack-comp1-32  . (r37)
    pack-comp1c-8  . (r37)
    pack-comp1c-16 . (r37)
    pack-comp1c-32 . (r37)
    pack-comp2-8   . (r37)
    pack-comp2-16  . (r37)
    pack-comp2-32  . (r37)
    pack-comp2c-8  . (r37)
    pack-comp2c-16 . (r37)
    pack-comp2c-32 . (r37)
    pack-rig1-8    . (r37)
    pack-rig1-16   . (r37)
    pack-rig1-32   . (r37)
    pack-rig1c-8   . (r37)
    pack-rig1c-16  . (r37)
    pack-rig1c-32  . (r37)
    pack-rig1p-8   . (r37)
    pack-rig1p-16  . (r37)
    pack-rig1p-32  . (r37)
    pack-rig2-8    . (r37)
    pack-rig2-16   . (r37)
    pack-rig2-32   . (r37)
    pack-rig2c-8   . (r37)
    pack-rig2c-16  . (r37)
    pack-rig2c-32  . (r37)
    pack-rig2p-8   . (r37)
    pack-rig2p-16  . (r37)
    pack-rig2p-32  . (r37)
    portfl-i-1     . (r999)
    portfl-i-2     . (r999)
    portfl-i-3     . (r999)
    portfl-i-4     . (r999)
    portfl-i-6     . (r999)
    qpec1          . (r38)
    qpec2          . (r38)
    qpec-100-1     . (r39)
    qpec-100-2     . (r39)
    qpec-100-3     . (r39)
    qpec-100-4     . (r39)
    qpec-200-1     . (r39)
    qpec-200-2     . (r39)
    qpec-200-3     . (r39)
    qpec-200-4     . (r39)
    ralphmod       . (r14)
    scholtes1      . (r40)
    scholtes2      . (r40)
    scholtes3      . (r40)
    scholtes4      . (r40)
    siouxfls       . (r9)
    siouxfls1      . (r9)
    sl1            . (r999)
    stackelberg1   . (r3)
    tap-09         . (r41)
    tap-15         . (r41)
    water-net      . (r999)
    water-FL       . (r999)
$OFFTEXT
    dempe2         . (r20)
    ( finda10T, finda10S, finda10L,
      finda15T, finda15S, finda15L,
      finda30T, finda30S, finda30L,
      finda35T, finda35S, finda35L,
      findb10T, findb10S, findb10L,
      findb15T, findb15S, findb15L,
      findb30T, findb30S, findb30L,
      findb35T, findb35S, findb35L,
      findc10T, findc10S, findc10L,
      findc15T, findc15S, findc15L,
      findc30T, findc30S, findc30L,
      findc35T, findc35S, findc35L ) . (r14,r19)
    ( nappi_a, nappi_b, nappi_c, nappi_d ) . (r42)
    ( frictionalblock_1, frictionalblock_2, frictionalblock_3,
      frictionalblock_4, frictionalblock_5, frictionalblock_6 ) . (r43)
    ( aampec_1 * aampec_6) . r44
    ( kehoe1 * kehoe3) . r45
    ( kojshin3, kojshin4) . r45
    (tinque_dhs2, tinque_dns2, tinque_mis2,
     tinque_pss2, tinque_sws2, tinque_sws3 ) . r45
/;

set p	'restart or solution points' /p1*p10/;

$onempty
set mp(m,p) available restart or solution points /
* ex8_1_1        .p1
/;

set bk(m,p) point with best known solution /
* ex2_1_3        .p1    Solution of value       -15.00 (global optimum)
/;
$offempty

set xp(m) extra run parameter for scalar version /
  tinloi         'codex = 2'
/;

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

abort$card(error01) error01;
abort$card(error02) error02;
* abort$card(error03) error03;
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
