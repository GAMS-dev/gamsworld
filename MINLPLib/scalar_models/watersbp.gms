$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:42:08
*  
*  Equation counts
*     Total       E       G       L       N       X
*       138      54      14      70       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*       196      70      28       0      98       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       645     599      46       0
*
*  Solve m using MINLP minimizing objvar;


Sets  s1 /99*105/,s2 /106*112/,s3 /113*119/,s4 /120*126/,s5 /127*133/
     ,s6 /134*140/,s7 /141*147/,s8 /148*154/,s9 /155*161/,s10 /162*168/
     ,s11 /169*175/,s12 /176*182/,s13 /183*189/,s14 /190*196/;

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69
          ,objvar,b71,b72,b73,b74,b75,b76,b77,b78,b79,b80,b81,b82,b83,b84,b85
          ,b86,b87,b88,b89,b90,b91,b92,b93,b94,b95,b96,b97,b98,s1s1(s1)
          ,s1s2(s2),s1s3(s3),s1s4(s4),s1s5(s5),s1s6(s6),s1s7(s7),s1s8(s8)
          ,s1s9(s9),s1s10(s10),s1s11(s11),s1s12(s12),s1s13(s13),s1s14(s14);

Positive Variables x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x65,x66;

Binary Variables b71,b72,b73,b74,b75,b76,b77,b78,b79,b80,b81,b82,b83,b84,b85
          ,b86,b87,b88,b89,b90,b91,b92,b93,b94,b95,b96,b97,b98;

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

e9..    x29 - 38721.1970117411*s1s1('99') - 2543.8701482414*s1s1('100')
      - 207.747320703761*s1s1('101') - 23.9314504121258*s1s1('102')
      - 1.5722267648148*s1s1('103') - 0.181112645550961*s1s1('104')
      - 0.0390863672545667*s1s1('105') =E= 0;

e10..    x30 - 32510.4890865135*s1s2('106') - 2135.84468132099*s1s2('107')
       - 174.425573683688*s1s2('108') - 20.0929521164322*s1s2('109')
       - 1.32004857865156*s1s2('110') - 0.152062982061963*s1s2('111')
       - 0.0328170876451919*s1s2('112') =E= 0;

e11..    x31 - 63468.4628982673*s1s3('113') - 4169.69361956223*s1s3('114')
       - 340.521578201805*s1s3('115') - 39.2263796008983*s1s3('116')
       - 2.57705917665854*s1s3('117') - 0.296864304610023*s1s3('118')
       - 0.0640670186196026*s1s3('119') =E= 0;

e12..    x32 - 50797.5773435889*s1s4('120') - 3337.25325093014*s1s4('121')
       - 272.539627020641*s1s4('122') - 31.3951994533022*s1s4('123')
       - 2.06257339263358*s1s4('124') - 0.237598120158509*s1s4('125')
       - 0.0512766370081929*s1s4('126') =E= 0;

e13..    x33 - 59165.7349698592*s1s5('127') - 3887.01689524085*s1s5('128')
       - 317.436542928413*s1s5('129') - 36.5670992066393*s1s5('130')
       - 2.40235218067626*s1s5('131') - 0.27673893405488*s1s5('132')
       - 0.0597237127048799*s1s5('133') =E= 0;

e14..    x34 - 32977.2294678044*s1s6('134') - 2166.50816836621*s1s6('135')
       - 176.929733450444*s1s6('136') - 20.3814187742893*s1s6('137')
       - 1.339*s1s6('138') - 0.154246090843839*s1s6('139')
       - 0.0332882297421199*s1s6('140') =E= 0;

e15..    x35 - 33843.9321019273*s1s7('141') - 2223.4480134252*s1s7('142')
       - 181.579774357788*s1s7('143') - 20.9170801874496*s1s7('144')
       - 1.37419139860501*s1s7('145') - 0.158299963634093*s1s7('146')
       - 0.0341631060391402*s1s7('147') =E= 0;

e16..    x36 - 31810.181054648*s1s8('148') - 2089.8364782095*s1s8('149')
       - 170.668274619734*s1s8('150') - 19.660130090483*s1s8('151')
       - 1.2916134290104*s1s8('152') - 0.148787395299671*s1s8('153')
       - 0.0321101751776739*s1s8('154') =E= 0;

e17..    x37 - 39461.9459070343*s1s9('155') - 2592.53519858857*s1s9('156')
       - 211.721593458417*s1s9('157') - 24.3892667200816*s1s9('158')
       - 1.60230396616872*s1s9('159') - 0.184577388442944*s1s9('160')
       - 0.0398341019735132*s1s9('161') =E= 0;

e18..    x38 - 32977.2294678044*s1s10('162') - 2166.50816836621*s1s10('163')
       - 176.929733450444*s1s10('164') - 20.3814187742893*s1s10('165')
       - 1.339*s1s10('166') - 0.154246090843839*s1s10('167')
       - 0.0332882297421199*s1s10('168') =E= 0;

e19..    x39 - 52785.5148814787*s1s11('169') - 3467.85497167945*s1s11('170')
       - 283.205327698691*s1s11('171') - 32.6238347301504*s1s11('172')
       - 2.14329116080854*s1s11('173') - 0.246896402610059*s1s11('174')
       - 0.0532833223041444*s1s11('175') =E= 0;

e20..    x40 - 30677.4142839491*s1s12('176') - 2015.41699236491*s1s12('177')
       - 164.590743970989*s1s12('178') - 18.9600290116536*s1s12('179')
       - 1.24561882211213*s1s12('180') - 0.143489047044288*s1s12('181')
       - 0.0309667255575633*s1s12('182') =E= 0;

e21..    x41 - 28361.2795383154*s1s13('183') - 1863.25366856746*s1s13('184')
       - 152.164196629274*s1s13('185') - 17.5285530220005*s1s13('186')
       - 1.15157500841239*s1s13('187') - 0.132655670919396*s1s13('188')
       - 0.0286287479053886*s1s13('189') =E= 0;

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

e37..    x51 + 12*b85 =L= 12;

e38..    x52 + 12*b86 =L= 12;

e39..    x53 + 12*b87 =L= 12;

e40..    x54 + 12*b88 =L= 12;

e41..    x55 + 12*b89 =L= 12;

e42..    x56 + 12*b90 =L= 12;

e43..    x57 + 12*b91 =L= 12;

e44..    x58 + 12*b92 =L= 12;

e45..    x59 + 12*b93 =L= 12;

e46..    x60 + 12*b94 =L= 12;

e47..    x61 + 12*b95 =L= 12;

e48..    x62 + 12*b96 =L= 12;

e49..    x63 + 12*b97 =L= 12;

e50..    x64 + 12*b98 =L= 12;

e51..    x51 - 12*b85 =G= -12;

e52..    x52 - 12*b86 =G= -12;

e53..    x53 - 12*b87 =G= -12;

e54..    x54 - 12*b88 =G= -12;

e55..    x55 - 12*b89 =G= -12;

e56..    x56 - 12*b90 =G= -12;

e57..    x57 - 12*b91 =G= -12;

e58..    x58 - 12*b92 =G= -12;

e59..    x59 - 12*b93 =G= -12;

e60..    x60 - 12*b94 =G= -12;

e61..    x61 - 12*b95 =G= -12;

e62..    x62 - 12*b96 =G= -12;

e63..    x63 - 12*b97 =G= -12;

e64..    x64 - 12*b98 =G= -12;

e65..  - (1.02*x65*(x43 - 6.5) + 1.02*x66*(x44 - 3.25)) + x67 =E= 0;

e66..    x68 - 9.11349113439539*s1s1('99') - 17.6144733325531*s1s1('100')
       - 32.2986551864818*s1s1('101') - 54.4931814987685*s1s1('102')
       - 105.323928905069*s1s1('103') - 177.698914733437*s1s1('104')
       - 257.546555368226*s1s1('105') - 7.65172765642961*s1s2('106')
       - 14.7891900880288*s1s2('107') - 27.118094428506*s1s2('108')
       - 45.7527173518919*s1s2('109') - 88.4304387640365*s1s2('110')
       - 149.196798497086*s1s2('111') - 216.237232413786*s1s2('112')
       - 14.9380525029139*s1s3('113') - 28.8721329260735*s1s3('114')
       - 52.941183552398*s1s3('115') - 89.3205462402005*s1s3('116')
       - 172.637944844116*s1s3('117') - 291.268810037089*s1s3('118')
       - 422.148209648796*s1s3('119') - 11.9558099050809*s1s4('120')
       - 23.1080813747994*s1s4('121') - 42.3719709499612*s1s4('122')
       - 71.4885338137291*s1s4('123') - 138.172392322055*s1s4('124')
       - 233.119713791557*s1s4('125') - 337.870264236031*s1s4('126')
       - 13.9253546563734*s1s5('127') - 26.9147996770731*s1s5('128')
       - 49.3521332015331*s1s5('129') - 83.2652237802191*s1s5('130')
       - 160.93427229773*s1s5('131') - 271.522775764452*s1s5('132')
       - 393.529446744536*s1s5('133') - 7.76158051882097*s1s6('134')
       - 15.0015127080393*s1s6('135') - 27.5074183079396*s1s6('136')
       - 46.4095712271164*s1s6('137') - 89.7*s1s6('138')
       - 151.338758602103*s1s6('139') - 219.341665817957*s1s6('140')
       - 7.96556922221359*s1s7('141') - 15.3957802311063*s1s7('142')
       - 28.2303641796868*s1s7('143') - 47.6293006671023*s1s7('144')
       - 92.0574820424717*s1s7('145') - 155.316221319321*s1s7('146')
       - 225.10637081608*s1s7('147') - 7.48690188831565*s1s8('148')
       - 14.4706163324673*s1s8('149') - 26.5339439013751*s1s8('150')
       - 44.7671586494086*s1s8('151') - 86.5255598074927*s1s8('152')
       - 145.982952158506*s1s8('153') - 211.579268940989*s1s8('154')
       - 9.28783513744935*s1s9('155') - 17.9514438466182*s1s9('156')
       - 32.916538800503*s1s9('157') - 55.5356535066454*s1s9('158')
       - 107.338809384118*s1s9('159') - 181.098351861986*s1s9('160')
       - 262.473503425068*s1s9('161') - 7.76158051882097*s1s10('162')
       - 15.0015127080393*s1s10('163') - 27.5074183079396*s1s10('164')
       - 46.4095712271164*s1s10('165') - 89.7*s1s10('166')
       - 151.338758602103*s1s10('167') - 219.341665817957*s1s10('168')
       - 12.4236944883441*s1s11('169') - 24.0124044704238*s1s11('170')
       - 44.0301766363479*s1s11('171') - 74.2862014846846*s1s11('172')
       - 143.579699122125*s1s11('173') - 242.242736071415*s1s11('174')
       - 351.092646411238*s1s11('175') - 7.22029184733547*s1s12('176')
       - 13.9553148538372*s1s12('177') - 25.5890649679471*s1s12('178')
       - 43.1729913716576*s1s12('179') - 83.44436769489*s1s12('180')
       - 140.784470672041*s1s12('181') - 204.044889780639*s1s12('182')
       - 6.67516217420068*s1s13('183') - 12.9016931463472*s1s13('184')
       - 23.6570989315674*s1s13('185') - 39.913444642481*s1s13('186')
       - 77.1443452237428*s1s13('187') - 130.155289178744*s1s13('188')
       - 188.639567333459*s1s13('189') - 11.9558099050809*s1s14('190')
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

e97..    x1 - 2*b85 =L= 0;

e98..    x2 - 2*b86 =L= 0;

e99..    x3 - 2*b87 =L= 0;

e100..    x4 - 2*b88 =L= 0;

e101..    x5 - 2*b89 =L= 0;

e102..    x6 - 2*b90 =L= 0;

e103..    x7 - 2*b91 =L= 0;

e104..    x8 - 2*b92 =L= 0;

e105..    x9 - 2*b93 =L= 0;

e106..    x10 - 2*b94 =L= 0;

e107..    x11 - 2*b95 =L= 0;

e108..    x12 - 2*b96 =L= 0;

e109..    x13 - 2*b97 =L= 0;

e110..    x14 - 2*b98 =L= 0;

e111..    x15 - 2*b85 =L= 0;

e112..    x16 - 2*b86 =L= 0;

e113..    x17 - 2*b87 =L= 0;

e114..    x18 - 2*b88 =L= 0;

e115..    x19 - 2*b89 =L= 0;

e116..    x20 - 2*b90 =L= 0;

e117..    x21 - 2*b91 =L= 0;

e118..    x22 - 2*b92 =L= 0;

e119..    x23 - 2*b93 =L= 0;

e120..    x24 - 2*b94 =L= 0;

e121..    x25 - 2*b95 =L= 0;

e122..    x26 - 2*b96 =L= 0;

e123..    x27 - 2*b97 =L= 0;

e124..    x28 - 2*b98 =L= 0;

e125..  - b85 + s1s1('99') + s1s1('100') + s1s1('101') + s1s1('102')
        + s1s1('103') + s1s1('104') + s1s1('105') =E= 0;

e126..  - b86 + s1s2('106') + s1s2('107') + s1s2('108') + s1s2('109')
        + s1s2('110') + s1s2('111') + s1s2('112') =E= 0;

e127..  - b87 + s1s3('113') + s1s3('114') + s1s3('115') + s1s3('116')
        + s1s3('117') + s1s3('118') + s1s3('119') =E= 0;

e128..  - b88 + s1s4('120') + s1s4('121') + s1s4('122') + s1s4('123')
        + s1s4('124') + s1s4('125') + s1s4('126') =E= 0;

e129..  - b89 + s1s5('127') + s1s5('128') + s1s5('129') + s1s5('130')
        + s1s5('131') + s1s5('132') + s1s5('133') =E= 0;

e130..  - b90 + s1s6('134') + s1s6('135') + s1s6('136') + s1s6('137')
        + s1s6('138') + s1s6('139') + s1s6('140') =E= 0;

e131..  - b91 + s1s7('141') + s1s7('142') + s1s7('143') + s1s7('144')
        + s1s7('145') + s1s7('146') + s1s7('147') =E= 0;

e132..  - b92 + s1s8('148') + s1s8('149') + s1s8('150') + s1s8('151')
        + s1s8('152') + s1s8('153') + s1s8('154') =E= 0;

e133..  - b93 + s1s9('155') + s1s9('156') + s1s9('157') + s1s9('158')
        + s1s9('159') + s1s9('160') + s1s9('161') =E= 0;

e134..  - b94 + s1s10('162') + s1s10('163') + s1s10('164') + s1s10('165')
        + s1s10('166') + s1s10('167') + s1s10('168') =E= 0;

e135..  - b95 + s1s11('169') + s1s11('170') + s1s11('171') + s1s11('172')
        + s1s11('173') + s1s11('174') + s1s11('175') =E= 0;

e136..  - b96 + s1s12('176') + s1s12('177') + s1s12('178') + s1s12('179')
        + s1s12('180') + s1s12('181') + s1s12('182') =E= 0;

e137..  - b97 + s1s13('183') + s1s13('184') + s1s13('185') + s1s13('186')
        + s1s13('187') + s1s13('188') + s1s13('189') =E= 0;

e138..  - b98 + s1s14('190') + s1s14('191') + s1s14('192') + s1s14('193')
        + s1s14('194') + s1s14('195') + s1s14('196') =E= 0;

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
s1s1.l('99') = 0.142857142857143; 
s1s1.l('100') = 0.142857142857143; 
s1s1.l('101') = 0.142857142857143; 
s1s1.l('102') = 0.142857142857143; 
s1s1.l('103') = 0.142857142857143; 
s1s1.l('104') = 0.142857142857143; 
s1s1.l('105') = 0.142857142857143; 
s1s2.l('106') = 0.142857142857143; 
s1s2.l('107') = 0.142857142857143; 
s1s2.l('108') = 0.142857142857143; 
s1s2.l('109') = 0.142857142857143; 
s1s2.l('110') = 0.142857142857143; 
s1s2.l('111') = 0.142857142857143; 
s1s2.l('112') = 0.142857142857143; 
s1s3.l('113') = 0.142857142857143; 
s1s3.l('114') = 0.142857142857143; 
s1s3.l('115') = 0.142857142857143; 
s1s3.l('116') = 0.142857142857143; 
s1s3.l('117') = 0.142857142857143; 
s1s3.l('118') = 0.142857142857143; 
s1s3.l('119') = 0.142857142857143; 
s1s4.l('120') = 0.142857142857143; 
s1s4.l('121') = 0.142857142857143; 
s1s4.l('122') = 0.142857142857143; 
s1s4.l('123') = 0.142857142857143; 
s1s4.l('124') = 0.142857142857143; 
s1s4.l('125') = 0.142857142857143; 
s1s4.l('126') = 0.142857142857143; 
s1s5.l('127') = 0.142857142857143; 
s1s5.l('128') = 0.142857142857143; 
s1s5.l('129') = 0.142857142857143; 
s1s5.l('130') = 0.142857142857143; 
s1s5.l('131') = 0.142857142857143; 
s1s5.l('132') = 0.142857142857143; 
s1s5.l('133') = 0.142857142857143; 
s1s6.l('134') = 0.142857142857143; 
s1s6.l('135') = 0.142857142857143; 
s1s6.l('136') = 0.142857142857143; 
s1s6.l('137') = 0.142857142857143; 
s1s6.l('138') = 0.142857142857143; 
s1s6.l('139') = 0.142857142857143; 
s1s6.l('140') = 0.142857142857143; 
s1s7.l('141') = 0.142857142857143; 
s1s7.l('142') = 0.142857142857143; 
s1s7.l('143') = 0.142857142857143; 
s1s7.l('144') = 0.142857142857143; 
s1s7.l('145') = 0.142857142857143; 
s1s7.l('146') = 0.142857142857143; 
s1s7.l('147') = 0.142857142857143; 
s1s8.l('148') = 0.142857142857143; 
s1s8.l('149') = 0.142857142857143; 
s1s8.l('150') = 0.142857142857143; 
s1s8.l('151') = 0.142857142857143; 
s1s8.l('152') = 0.142857142857143; 
s1s8.l('153') = 0.142857142857143; 
s1s8.l('154') = 0.142857142857143; 
s1s9.l('155') = 0.142857142857143; 
s1s9.l('156') = 0.142857142857143; 
s1s9.l('157') = 0.142857142857143; 
s1s9.l('158') = 0.142857142857143; 
s1s9.l('159') = 0.142857142857143; 
s1s9.l('160') = 0.142857142857143; 
s1s9.l('161') = 0.142857142857143; 
s1s10.l('162') = 0.142857142857143; 
s1s10.l('163') = 0.142857142857143; 
s1s10.l('164') = 0.142857142857143; 
s1s10.l('165') = 0.142857142857143; 
s1s10.l('166') = 0.142857142857143; 
s1s10.l('167') = 0.142857142857143; 
s1s10.l('168') = 0.142857142857143; 
s1s11.l('169') = 0.142857142857143; 
s1s11.l('170') = 0.142857142857143; 
s1s11.l('171') = 0.142857142857143; 
s1s11.l('172') = 0.142857142857143; 
s1s11.l('173') = 0.142857142857143; 
s1s11.l('174') = 0.142857142857143; 
s1s11.l('175') = 0.142857142857143; 
s1s12.l('176') = 0.142857142857143; 
s1s12.l('177') = 0.142857142857143; 
s1s12.l('178') = 0.142857142857143; 
s1s12.l('179') = 0.142857142857143; 
s1s12.l('180') = 0.142857142857143; 
s1s12.l('181') = 0.142857142857143; 
s1s12.l('182') = 0.142857142857143; 
s1s13.l('183') = 0.142857142857143; 
s1s13.l('184') = 0.142857142857143; 
s1s13.l('185') = 0.142857142857143; 
s1s13.l('186') = 0.142857142857143; 
s1s13.l('187') = 0.142857142857143; 
s1s13.l('188') = 0.142857142857143; 
s1s13.l('189') = 0.142857142857143; 
s1s14.l('190') = 0.142857142857143; 
s1s14.l('191') = 0.142857142857143; 
s1s14.l('192') = 0.142857142857143; 
s1s14.l('193') = 0.142857142857143; 
s1s14.l('194') = 0.142857142857143; 
s1s14.l('195') = 0.142857142857143; 
s1s14.l('196') = 0.142857142857143; 

* set non default marginals


* set non default priorities

b71.prior = 2; 
b72.prior = 2; 
b73.prior = 2; 
b74.prior = 2; 
b75.prior = 2; 
b76.prior = 2; 
b77.prior = 2; 
b78.prior = 2; 
b79.prior = 2; 
b80.prior = 2; 
b81.prior = 2; 
b82.prior = 2; 
b83.prior = 2; 
b84.prior = 2; 
s1s1.prior('99') = 3; 
s1s1.prior('100') = 3; 
s1s1.prior('101') = 3; 
s1s1.prior('102') = 3; 
s1s1.prior('103') = 3; 
s1s1.prior('104') = 3; 
s1s1.prior('105') = 3; 
s1s2.prior('106') = 3; 
s1s2.prior('107') = 3; 
s1s2.prior('108') = 3; 
s1s2.prior('109') = 3; 
s1s2.prior('110') = 3; 
s1s2.prior('111') = 3; 
s1s2.prior('112') = 3; 
s1s3.prior('113') = 3; 
s1s3.prior('114') = 3; 
s1s3.prior('115') = 3; 
s1s3.prior('116') = 3; 
s1s3.prior('117') = 3; 
s1s3.prior('118') = 3; 
s1s3.prior('119') = 3; 
s1s4.prior('120') = 3; 
s1s4.prior('121') = 3; 
s1s4.prior('122') = 3; 
s1s4.prior('123') = 3; 
s1s4.prior('124') = 3; 
s1s4.prior('125') = 3; 
s1s4.prior('126') = 3; 
s1s5.prior('127') = 3; 
s1s5.prior('128') = 3; 
s1s5.prior('129') = 3; 
s1s5.prior('130') = 3; 
s1s5.prior('131') = 3; 
s1s5.prior('132') = 3; 
s1s5.prior('133') = 3; 
s1s6.prior('134') = 3; 
s1s6.prior('135') = 3; 
s1s6.prior('136') = 3; 
s1s6.prior('137') = 3; 
s1s6.prior('138') = 3; 
s1s6.prior('139') = 3; 
s1s6.prior('140') = 3; 
s1s7.prior('141') = 3; 
s1s7.prior('142') = 3; 
s1s7.prior('143') = 3; 
s1s7.prior('144') = 3; 
s1s7.prior('145') = 3; 
s1s7.prior('146') = 3; 
s1s7.prior('147') = 3; 
s1s8.prior('148') = 3; 
s1s8.prior('149') = 3; 
s1s8.prior('150') = 3; 
s1s8.prior('151') = 3; 
s1s8.prior('152') = 3; 
s1s8.prior('153') = 3; 
s1s8.prior('154') = 3; 
s1s9.prior('155') = 3; 
s1s9.prior('156') = 3; 
s1s9.prior('157') = 3; 
s1s9.prior('158') = 3; 
s1s9.prior('159') = 3; 
s1s9.prior('160') = 3; 
s1s9.prior('161') = 3; 
s1s10.prior('162') = 3; 
s1s10.prior('163') = 3; 
s1s10.prior('164') = 3; 
s1s10.prior('165') = 3; 
s1s10.prior('166') = 3; 
s1s10.prior('167') = 3; 
s1s10.prior('168') = 3; 
s1s11.prior('169') = 3; 
s1s11.prior('170') = 3; 
s1s11.prior('171') = 3; 
s1s11.prior('172') = 3; 
s1s11.prior('173') = 3; 
s1s11.prior('174') = 3; 
s1s11.prior('175') = 3; 
s1s12.prior('176') = 3; 
s1s12.prior('177') = 3; 
s1s12.prior('178') = 3; 
s1s12.prior('179') = 3; 
s1s12.prior('180') = 3; 
s1s12.prior('181') = 3; 
s1s12.prior('182') = 3; 
s1s13.prior('183') = 3; 
s1s13.prior('184') = 3; 
s1s13.prior('185') = 3; 
s1s13.prior('186') = 3; 
s1s13.prior('187') = 3; 
s1s13.prior('188') = 3; 
s1s13.prior('189') = 3; 
s1s14.prior('190') = 3; 
s1s14.prior('191') = 3; 
s1s14.prior('192') = 3; 
s1s14.prior('193') = 3; 
s1s14.prior('194') = 3; 
s1s14.prior('195') = 3; 
s1s14.prior('196') = 3; 

$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;
m.prioropt = 1;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;