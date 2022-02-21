$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:42:05
*  
*  Equation counts
*     Total       E       G       L       N       X
*       138      54      14      70       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*       196      70      14       0     112       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       645     599      46       0
*
*  Solve m using MINLP minimizing objvar;


Sets  s1 /85*92/,s2 /93*100/,s3 /101*108/,s4 /109*116/,s5 /117*124/
     ,s6 /125*132/,s7 /133*140/,s8 /141*148/,s9 /149*156/,s10 /157*164/
     ,s11 /165*172/,s12 /173*180/,s13 /181*188/,s14 /189*196/;

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69
          ,objvar,b71,b72,b73,b74,b75,b76,b77,b78,b79,b80,b81,b82,b83,b84
          ,s1s1(s1),s1s2(s2),s1s3(s3),s1s4(s4),s1s5(s5),s1s6(s6),s1s7(s7)
          ,s1s8(s8),s1s9(s9),s1s10(s10),s1s11(s11),s1s12(s12),s1s13(s13)
          ,s1s14(s14);

Positive Variables x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x65,x66;

Binary Variables b71,b72,b73,b74,b75,b76,b77,b78,b79,b80,b81,b82,b83,b84;

SOS1 Variables s1s1(s1),s1s2(s2),s1s3(s3),s1s4(s4),s1s5(s5),s1s6(s6),s1s7(s7)
          ,s1s8(s8),s1s9(s9),s1s10(s10),s1s11(s11),s1s12(s12),s1s13(s13)
          ,s1s14(s14);

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76,e77,e78,e79,e80,e81,e82,e83,e84,e85,e86,e87
          ,e88,e89,e90,e91,e92,e93,e94,e95,e96,e97,e98,e99,e100,e101,e102,e103
          ,e104,e105,e106,e107,e108,e109,e110,e111,e112,e113,e114,e115,e116
          ,e117,e118,e119,e120,e121,e122,e123,e124,e125,e126,e127,e128,e129
          ,e130,e131,e132,e133,e134,e135,e136,e137,e138;


e1..  - x1 - x2 - x3 + x15 + x16 + x17 + x65 =E= 0;

e2..  - x4 - x5 - x6 - x7 + x18 + x19 + x20 + x21 + x66 =E= 0;

e3..    x1 + x4 - x8 - x9 - x10 - x11 - x15 - x18 + x22 + x23 + x24 + x25
      =E= 1.212;

e4..    x2 + x8 + x12 - x16 - x22 - x26 =E= 0.452;

e5..    x9 - x12 + x13 - x23 + x26 - x27 =E= 0.245;

e6..    x5 + x10 - x13 - x14 - x19 - x24 + x27 + x28 =E= 0.652;

e7..    x6 + x14 - x20 - x28 =E= 0.252;

e8..    x3 + x7 + x11 - x17 - x21 - x25 =E= 0.456;

e9..    x29 - 38721.1970117411*s1s1('86') - 2543.8701482414*s1s1('87')
      - 207.747320703761*s1s1('88') - 23.9314504121258*s1s1('89')
      - 1.5722267648148*s1s1('90') - 0.181112645550961*s1s1('91')
      - 0.0390863672545667*s1s1('92') =E= 0;

e10..    x30 - 32510.4890865135*s1s2('94') - 2135.84468132099*s1s2('95')
       - 174.425573683688*s1s2('96') - 20.0929521164322*s1s2('97')
       - 1.32004857865156*s1s2('98') - 0.152062982061963*s1s2('99')
       - 0.0328170876451919*s1s2('100') =E= 0;

e11..    x31 - 63468.4628982673*s1s3('102') - 4169.69361956223*s1s3('103')
       - 340.521578201805*s1s3('104') - 39.2263796008983*s1s3('105')
       - 2.57705917665854*s1s3('106') - 0.296864304610023*s1s3('107')
       - 0.0640670186196026*s1s3('108') =E= 0;

e12..    x32 - 50797.5773435889*s1s4('110') - 3337.25325093014*s1s4('111')
       - 272.539627020641*s1s4('112') - 31.3951994533022*s1s4('113')
       - 2.06257339263358*s1s4('114') - 0.237598120158509*s1s4('115')
       - 0.0512766370081929*s1s4('116') =E= 0;

e13..    x33 - 59165.7349698592*s1s5('118') - 3887.01689524085*s1s5('119')
       - 317.436542928413*s1s5('120') - 36.5670992066393*s1s5('121')
       - 2.40235218067626*s1s5('122') - 0.27673893405488*s1s5('123')
       - 0.0597237127048799*s1s5('124') =E= 0;

e14..    x34 - 32977.2294678044*s1s6('126') - 2166.50816836621*s1s6('127')
       - 176.929733450444*s1s6('128') - 20.3814187742893*s1s6('129')
       - 1.339*s1s6('130') - 0.154246090843839*s1s6('131')
       - 0.0332882297421199*s1s6('132') =E= 0;

e15..    x35 - 33843.9321019273*s1s7('134') - 2223.4480134252*s1s7('135')
       - 181.579774357788*s1s7('136') - 20.9170801874496*s1s7('137')
       - 1.37419139860501*s1s7('138') - 0.158299963634093*s1s7('139')
       - 0.0341631060391402*s1s7('140') =E= 0;

e16..    x36 - 31810.181054648*s1s8('142') - 2089.8364782095*s1s8('143')
       - 170.668274619734*s1s8('144') - 19.660130090483*s1s8('145')
       - 1.2916134290104*s1s8('146') - 0.148787395299671*s1s8('147')
       - 0.0321101751776739*s1s8('148') =E= 0;

e17..    x37 - 39461.9459070343*s1s9('150') - 2592.53519858857*s1s9('151')
       - 211.721593458417*s1s9('152') - 24.3892667200816*s1s9('153')
       - 1.60230396616872*s1s9('154') - 0.184577388442944*s1s9('155')
       - 0.0398341019735132*s1s9('156') =E= 0;

e18..    x38 - 32977.2294678044*s1s10('158') - 2166.50816836621*s1s10('159')
       - 176.929733450444*s1s10('160') - 20.3814187742893*s1s10('161')
       - 1.339*s1s10('162') - 0.154246090843839*s1s10('163')
       - 0.0332882297421199*s1s10('164') =E= 0;

e19..    x39 - 52785.5148814787*s1s11('166') - 3467.85497167945*s1s11('167')
       - 283.205327698691*s1s11('168') - 32.6238347301504*s1s11('169')
       - 2.14329116080854*s1s11('170') - 0.246896402610059*s1s11('171')
       - 0.0532833223041444*s1s11('172') =E= 0;

e20..    x40 - 30677.4142839491*s1s12('174') - 2015.41699236491*s1s12('175')
       - 164.590743970989*s1s12('176') - 18.9600290116536*s1s12('177')
       - 1.24561882211213*s1s12('178') - 0.143489047044288*s1s12('179')
       - 0.0309667255575633*s1s12('180') =E= 0;

e21..    x41 - 28361.2795383154*s1s13('182') - 1863.25366856746*s1s13('183')
       - 152.164196629274*s1s13('184') - 17.5285530220005*s1s13('185')
       - 1.15157500841239*s1s13('186') - 0.132655670919396*s1s13('187')
       - 0.0286287479053886*s1s13('188') =E= 0;

e22..    x42 - 50797.5773435889*s1s14('190') - 3337.25325093014*s1s14('191')
       - 272.539627020641*s1s14('192') - 31.3951994533022*s1s14('193')
       - 2.06257339263358*s1s14('194') - 0.237598120158509*s1s14('195')
       - 0.0512766370081929*s1s14('196') =E= 0;

e23..  - (x1 + x15)*(x1 - x15)*x29 + x43 - x45 - x51 =E= 0;

e24..  - (x2 + x16)*(x2 - x16)*x30 + x43 - x46 - x52 =E= 0;

e25..  - (x3 + x17)*(x3 - x17)*x31 + x43 - x50 - x53 =E= 0;

e26..  - (x4 + x18)*(x4 - x18)*x32 + x44 - x45 - x54 =E= 0;

e27..  - (x5 + x19)*(x5 - x19)*x33 + x44 - x48 - x55 =E= 0;

e28..  - (x6 + x20)*(x6 - x20)*x34 + x44 - x49 - x56 =E= 0;

e29..  - (x7 + x21)*(x7 - x21)*x35 + x44 - x50 - x57 =E= 0;

e30..  - (x8 + x22)*(x8 - x22)*x36 + x45 - x46 - x58 =E= 0;

e31..  - (x9 + x23)*(x9 - x23)*x37 + x45 - x47 - x59 =E= 0;

e32..  - (x10 + x24)*(x10 - x24)*x38 + x45 - x48 - x60 =E= 0;

e33..  - (x11 + x25)*(x11 - x25)*x39 + x45 - x50 - x61 =E= 0;

e34..  - (x12 + x26)*(x12 - x26)*x40 - x46 + x47 - x62 =E= 0;

e35..  - (x13 + x27)*(x13 - x27)*x41 - x47 + x48 - x63 =E= 0;

e36..  - (x14 + x28)*(x14 - x28)*x42 + x48 - x49 - x64 =E= 0;

e37..    x51 - 12*s1s1('85') =L= 0;

e38..    x52 - 12*s1s2('93') =L= 0;

e39..    x53 - 12*s1s3('101') =L= 0;

e40..    x54 - 12*s1s4('109') =L= 0;

e41..    x55 - 12*s1s5('117') =L= 0;

e42..    x56 - 12*s1s6('125') =L= 0;

e43..    x57 - 12*s1s7('133') =L= 0;

e44..    x58 - 12*s1s8('141') =L= 0;

e45..    x59 - 12*s1s9('149') =L= 0;

e46..    x60 - 12*s1s10('157') =L= 0;

e47..    x61 - 12*s1s11('165') =L= 0;

e48..    x62 - 12*s1s12('173') =L= 0;

e49..    x63 - 12*s1s13('181') =L= 0;

e50..    x64 - 12*s1s14('189') =L= 0;

e51..    x51 + 12*s1s1('85') =G= 0;

e52..    x52 + 12*s1s2('93') =G= 0;

e53..    x53 + 12*s1s3('101') =G= 0;

e54..    x54 + 12*s1s4('109') =G= 0;

e55..    x55 + 12*s1s5('117') =G= 0;

e56..    x56 + 12*s1s6('125') =G= 0;

e57..    x57 + 12*s1s7('133') =G= 0;

e58..    x58 + 12*s1s8('141') =G= 0;

e59..    x59 + 12*s1s9('149') =G= 0;

e60..    x60 + 12*s1s10('157') =G= 0;

e61..    x61 + 12*s1s11('165') =G= 0;

e62..    x62 + 12*s1s12('173') =G= 0;

e63..    x63 + 12*s1s13('181') =G= 0;

e64..    x64 + 12*s1s14('189') =G= 0;

e65..  - (1.02*x65*(x43 - 6.5) + 1.02*x66*(x44 - 3.25)) + x67 =E= 0;

e66..    x68 - 9.11349113439539*s1s1('86') - 17.6144733325531*s1s1('87')
       - 32.2986551864818*s1s1('88') - 54.4931814987685*s1s1('89')
       - 105.323928905069*s1s1('90') - 177.698914733437*s1s1('91')
       - 257.546555368226*s1s1('92') - 7.65172765642961*s1s2('94')
       - 14.7891900880288*s1s2('95') - 27.118094428506*s1s2('96')
       - 45.7527173518919*s1s2('97') - 88.4304387640365*s1s2('98')
       - 149.196798497086*s1s2('99') - 216.237232413786*s1s2('100')
       - 14.9380525029139*s1s3('102') - 28.8721329260735*s1s3('103')
       - 52.941183552398*s1s3('104') - 89.3205462402005*s1s3('105')
       - 172.637944844116*s1s3('106') - 291.268810037089*s1s3('107')
       - 422.148209648796*s1s3('108') - 11.9558099050809*s1s4('110')
       - 23.1080813747994*s1s4('111') - 42.3719709499612*s1s4('112')
       - 71.4885338137291*s1s4('113') - 138.172392322055*s1s4('114')
       - 233.119713791557*s1s4('115') - 337.870264236031*s1s4('116')
       - 13.9253546563734*s1s5('118') - 26.9147996770731*s1s5('119')
       - 49.3521332015331*s1s5('120') - 83.2652237802191*s1s5('121')
       - 160.93427229773*s1s5('122') - 271.522775764452*s1s5('123')
       - 393.529446744536*s1s5('124') - 7.76158051882097*s1s6('126')
       - 15.0015127080393*s1s6('127') - 27.5074183079396*s1s6('128')
       - 46.4095712271164*s1s6('129') - 89.7*s1s6('130')
       - 151.338758602103*s1s6('131') - 219.341665817957*s1s6('132')
       - 7.96556922221359*s1s7('134') - 15.3957802311063*s1s7('135')
       - 28.2303641796868*s1s7('136') - 47.6293006671023*s1s7('137')
       - 92.0574820424717*s1s7('138') - 155.316221319321*s1s7('139')
       - 225.10637081608*s1s7('140') - 7.48690188831565*s1s8('142')
       - 14.4706163324673*s1s8('143') - 26.5339439013751*s1s8('144')
       - 44.7671586494086*s1s8('145') - 86.5255598074927*s1s8('146')
       - 145.982952158506*s1s8('147') - 211.579268940989*s1s8('148')
       - 9.28783513744935*s1s9('150') - 17.9514438466182*s1s9('151')
       - 32.916538800503*s1s9('152') - 55.5356535066454*s1s9('153')
       - 107.338809384118*s1s9('154') - 181.098351861986*s1s9('155')
       - 262.473503425068*s1s9('156') - 7.76158051882097*s1s10('158')
       - 15.0015127080393*s1s10('159') - 27.5074183079396*s1s10('160')
       - 46.4095712271164*s1s10('161') - 89.7*s1s10('162')
       - 151.338758602103*s1s10('163') - 219.341665817957*s1s10('164')
       - 12.4236944883441*s1s11('166') - 24.0124044704238*s1s11('167')
       - 44.0301766363479*s1s11('168') - 74.2862014846846*s1s11('169')
       - 143.579699122125*s1s11('170') - 242.242736071415*s1s11('171')
       - 351.092646411238*s1s11('172') - 7.22029184733547*s1s12('174')
       - 13.9553148538372*s1s12('175') - 25.5890649679471*s1s12('176')
       - 43.1729913716576*s1s12('177') - 83.44436769489*s1s12('178')
       - 140.784470672041*s1s12('179') - 204.044889780639*s1s12('180')
       - 6.67516217420068*s1s13('182') - 12.9016931463472*s1s13('183')
       - 23.6570989315674*s1s13('184') - 39.913444642481*s1s13('185')
       - 77.1443452237428*s1s13('186') - 130.155289178744*s1s13('187')
       - 188.639567333459*s1s13('188') - 11.9558099050809*s1s14('190')
       - 23.1080813747994*s1s14('191') - 42.3719709499612*s1s14('192')
       - 71.4885338137291*s1s14('193') - 138.172392322055*s1s14('194')
       - 233.119713791557*s1s14('195') - 337.870264236031*s1s14('196') =E= 0;

e67..  - 0.2*x65 - 0.17*x66 + x69 =E= 0;

e68..  - 10*x67 - x68 - 10*x69 + objvar =E= 0;

e69..    x1 - 2*b71 =L= 0;

e70..    x2 - 2*b72 =L= 0;

e71..    x3 - 2*b73 =L= 0;

e72..    x4 - 2*b74 =L= 0;

e73..    x5 - 2*b75 =L= 0;

e74..    x6 - 2*b76 =L= 0;

e75..    x7 - 2*b77 =L= 0;

e76..    x8 - 2*b78 =L= 0;

e77..    x9 - 2*b79 =L= 0;

e78..    x10 - 2*b80 =L= 0;

e79..    x11 - 2*b81 =L= 0;

e80..    x12 - 2*b82 =L= 0;

e81..    x13 - 2*b83 =L= 0;

e82..    x14 - 2*b84 =L= 0;

e83..    x15 + 2*b71 =L= 2;

e84..    x16 + 2*b72 =L= 2;

e85..    x17 + 2*b73 =L= 2;

e86..    x18 + 2*b74 =L= 2;

e87..    x19 + 2*b75 =L= 2;

e88..    x20 + 2*b76 =L= 2;

e89..    x21 + 2*b77 =L= 2;

e90..    x22 + 2*b78 =L= 2;

e91..    x23 + 2*b79 =L= 2;

e92..    x24 + 2*b80 =L= 2;

e93..    x25 + 2*b81 =L= 2;

e94..    x26 + 2*b82 =L= 2;

e95..    x27 + 2*b83 =L= 2;

e96..    x28 + 2*b84 =L= 2;

e97..    x1 + 2*s1s1('85') =L= 2;

e98..    x2 + 2*s1s2('93') =L= 2;

e99..    x3 + 2*s1s3('101') =L= 2;

e100..    x4 + 2*s1s4('109') =L= 2;

e101..    x5 + 2*s1s5('117') =L= 2;

e102..    x6 + 2*s1s6('125') =L= 2;

e103..    x7 + 2*s1s7('133') =L= 2;

e104..    x8 + 2*s1s8('141') =L= 2;

e105..    x9 + 2*s1s9('149') =L= 2;

e106..    x10 + 2*s1s10('157') =L= 2;

e107..    x11 + 2*s1s11('165') =L= 2;

e108..    x12 + 2*s1s12('173') =L= 2;

e109..    x13 + 2*s1s13('181') =L= 2;

e110..    x14 + 2*s1s14('189') =L= 2;

e111..    x15 + 2*s1s1('85') =L= 2;

e112..    x16 + 2*s1s2('93') =L= 2;

e113..    x17 + 2*s1s3('101') =L= 2;

e114..    x18 + 2*s1s4('109') =L= 2;

e115..    x19 + 2*s1s5('117') =L= 2;

e116..    x20 + 2*s1s6('125') =L= 2;

e117..    x21 + 2*s1s7('133') =L= 2;

e118..    x22 + 2*s1s8('141') =L= 2;

e119..    x23 + 2*s1s9('149') =L= 2;

e120..    x24 + 2*s1s10('157') =L= 2;

e121..    x25 + 2*s1s11('165') =L= 2;

e122..    x26 + 2*s1s12('173') =L= 2;

e123..    x27 + 2*s1s13('181') =L= 2;

e124..    x28 + 2*s1s14('189') =L= 2;

e125..    s1s1('85') + s1s1('86') + s1s1('87') + s1s1('88') + s1s1('89')
        + s1s1('90') + s1s1('91') + s1s1('92') =E= 1;

e126..    s1s2('93') + s1s2('94') + s1s2('95') + s1s2('96') + s1s2('97')
        + s1s2('98') + s1s2('99') + s1s2('100') =E= 1;

e127..    s1s3('101') + s1s3('102') + s1s3('103') + s1s3('104') + s1s3('105')
        + s1s3('106') + s1s3('107') + s1s3('108') =E= 1;

e128..    s1s4('109') + s1s4('110') + s1s4('111') + s1s4('112') + s1s4('113')
        + s1s4('114') + s1s4('115') + s1s4('116') =E= 1;

e129..    s1s5('117') + s1s5('118') + s1s5('119') + s1s5('120') + s1s5('121')
        + s1s5('122') + s1s5('123') + s1s5('124') =E= 1;

e130..    s1s6('125') + s1s6('126') + s1s6('127') + s1s6('128') + s1s6('129')
        + s1s6('130') + s1s6('131') + s1s6('132') =E= 1;

e131..    s1s7('133') + s1s7('134') + s1s7('135') + s1s7('136') + s1s7('137')
        + s1s7('138') + s1s7('139') + s1s7('140') =E= 1;

e132..    s1s8('141') + s1s8('142') + s1s8('143') + s1s8('144') + s1s8('145')
        + s1s8('146') + s1s8('147') + s1s8('148') =E= 1;

e133..    s1s9('149') + s1s9('150') + s1s9('151') + s1s9('152') + s1s9('153')
        + s1s9('154') + s1s9('155') + s1s9('156') =E= 1;

e134..    s1s10('157') + s1s10('158') + s1s10('159') + s1s10('160')
        + s1s10('161') + s1s10('162') + s1s10('163') + s1s10('164') =E= 1;

e135..    s1s11('165') + s1s11('166') + s1s11('167') + s1s11('168')
        + s1s11('169') + s1s11('170') + s1s11('171') + s1s11('172') =E= 1;

e136..    s1s12('173') + s1s12('174') + s1s12('175') + s1s12('176')
        + s1s12('177') + s1s12('178') + s1s12('179') + s1s12('180') =E= 1;

e137..    s1s13('181') + s1s13('182') + s1s13('183') + s1s13('184')
        + s1s13('185') + s1s13('186') + s1s13('187') + s1s13('188') =E= 1;

e138..    s1s14('189') + s1s14('190') + s1s14('191') + s1s14('192')
        + s1s14('193') + s1s14('194') + s1s14('195') + s1s14('196') =E= 1;

* set non default bounds

x43.lo = 6.5; 
x44.lo = 3.25; 
x45.lo = 16.58; 
x46.lo = 14.92; 
x47.lo = 12.925; 
x48.lo = 12.26; 
x49.lo = 8.76; 
x50.lo = 16.08; 
x65.up = 2.5; 
x66.up = 6; 

$if set nostart $goto modeldef
* set non default levels

x43.l = 11.5; 
x44.l = 8.25; 
x45.l = 21.58; 
x46.l = 19.92; 
x47.l = 17.925; 
x48.l = 17.26; 
x49.l = 13.76; 
x50.l = 21.08; 
x65.l = 0.961470588235294; 
x66.l = 2.30752941176471; 
s1s1.l('85') = 0.125; 
s1s1.l('86') = 0.125; 
s1s1.l('87') = 0.125; 
s1s1.l('88') = 0.125; 
s1s1.l('89') = 0.125; 
s1s1.l('90') = 0.125; 
s1s1.l('91') = 0.125; 
s1s1.l('92') = 0.125; 
s1s2.l('93') = 0.125; 
s1s2.l('94') = 0.125; 
s1s2.l('95') = 0.125; 
s1s2.l('96') = 0.125; 
s1s2.l('97') = 0.125; 
s1s2.l('98') = 0.125; 
s1s2.l('99') = 0.125; 
s1s2.l('100') = 0.125; 
s1s3.l('101') = 0.125; 
s1s3.l('102') = 0.125; 
s1s3.l('103') = 0.125; 
s1s3.l('104') = 0.125; 
s1s3.l('105') = 0.125; 
s1s3.l('106') = 0.125; 
s1s3.l('107') = 0.125; 
s1s3.l('108') = 0.125; 
s1s4.l('109') = 0.125; 
s1s4.l('110') = 0.125; 
s1s4.l('111') = 0.125; 
s1s4.l('112') = 0.125; 
s1s4.l('113') = 0.125; 
s1s4.l('114') = 0.125; 
s1s4.l('115') = 0.125; 
s1s4.l('116') = 0.125; 
s1s5.l('117') = 0.125; 
s1s5.l('118') = 0.125; 
s1s5.l('119') = 0.125; 
s1s5.l('120') = 0.125; 
s1s5.l('121') = 0.125; 
s1s5.l('122') = 0.125; 
s1s5.l('123') = 0.125; 
s1s5.l('124') = 0.125; 
s1s6.l('125') = 0.125; 
s1s6.l('126') = 0.125; 
s1s6.l('127') = 0.125; 
s1s6.l('128') = 0.125; 
s1s6.l('129') = 0.125; 
s1s6.l('130') = 0.125; 
s1s6.l('131') = 0.125; 
s1s6.l('132') = 0.125; 
s1s7.l('133') = 0.125; 
s1s7.l('134') = 0.125; 
s1s7.l('135') = 0.125; 
s1s7.l('136') = 0.125; 
s1s7.l('137') = 0.125; 
s1s7.l('138') = 0.125; 
s1s7.l('139') = 0.125; 
s1s7.l('140') = 0.125; 
s1s8.l('141') = 0.125; 
s1s8.l('142') = 0.125; 
s1s8.l('143') = 0.125; 
s1s8.l('144') = 0.125; 
s1s8.l('145') = 0.125; 
s1s8.l('146') = 0.125; 
s1s8.l('147') = 0.125; 
s1s8.l('148') = 0.125; 
s1s9.l('149') = 0.125; 
s1s9.l('150') = 0.125; 
s1s9.l('151') = 0.125; 
s1s9.l('152') = 0.125; 
s1s9.l('153') = 0.125; 
s1s9.l('154') = 0.125; 
s1s9.l('155') = 0.125; 
s1s9.l('156') = 0.125; 
s1s10.l('157') = 0.125; 
s1s10.l('158') = 0.125; 
s1s10.l('159') = 0.125; 
s1s10.l('160') = 0.125; 
s1s10.l('161') = 0.125; 
s1s10.l('162') = 0.125; 
s1s10.l('163') = 0.125; 
s1s10.l('164') = 0.125; 
s1s11.l('165') = 0.125; 
s1s11.l('166') = 0.125; 
s1s11.l('167') = 0.125; 
s1s11.l('168') = 0.125; 
s1s11.l('169') = 0.125; 
s1s11.l('170') = 0.125; 
s1s11.l('171') = 0.125; 
s1s11.l('172') = 0.125; 
s1s12.l('173') = 0.125; 
s1s12.l('174') = 0.125; 
s1s12.l('175') = 0.125; 
s1s12.l('176') = 0.125; 
s1s12.l('177') = 0.125; 
s1s12.l('178') = 0.125; 
s1s12.l('179') = 0.125; 
s1s12.l('180') = 0.125; 
s1s13.l('181') = 0.125; 
s1s13.l('182') = 0.125; 
s1s13.l('183') = 0.125; 
s1s13.l('184') = 0.125; 
s1s13.l('185') = 0.125; 
s1s13.l('186') = 0.125; 
s1s13.l('187') = 0.125; 
s1s13.l('188') = 0.125; 
s1s14.l('189') = 0.125; 
s1s14.l('190') = 0.125; 
s1s14.l('191') = 0.125; 
s1s14.l('192') = 0.125; 
s1s14.l('193') = 0.125; 
s1s14.l('194') = 0.125; 
s1s14.l('195') = 0.125; 
s1s14.l('196') = 0.125; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
