*  NLP written by GAMS Convert at 09/04/06 18:41:11
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        3        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        239      239        0        0        0        0        0        0
*  FX     55       55        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        583        3      580        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87
          ,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,x101,x102,x103
          ,x104,x105,x106,x107,x108,x109,x110,x111,x112,x113,x114,x115,x116
          ,x117,x118,x119,x120,x121,x122,x123,x124,x125,x126,x127,x128,x129
          ,x130,x131,x132,x133,x134,x135,x136,x137,x138,x139,x140,x141,x142
          ,x143,x144,x145,x146,x147,x148,x149,x150,x151,x152,x153,x154,x155
          ,x156,x157,x158,x159,x160,x161,x162,x163,x164,x165,x166,x167,x168
          ,x169,x170,x171,x172,x173,x174,x175,x176,x177,x178,x179,x180,x181
          ,x182,x183,x184,x185,x186,x187,x188,x189,x190,x191,x192,x193,x194
          ,x195,x196,x197,x198,x199,x200,x201,x202,x203,x204,x205,x206,x207
          ,x208,x209,x210,x211,x212,x213,x214,x215,x216,x217,x218,x219,x220
          ,x221,x222,x223,x224,x225,x226,x227,x228,x229,x230,x231,x232,x233
          ,x234,x235,x236,x237,objvar,x239;

Positive Variables  x187;

Equations  e1,e2,e3;


e1..  - (2.78030115341206*(sqr(x1) + sqr(x2) - 2*x1*x2*cos(x119 - x120)) + 
     6.56765962213047*(sqr(x1) + sqr(x3) - 2*x1*x3*cos(x119 - x121)) + 
     4.51227604512276*(sqr(x2) + sqr(x12) - 2*x2*x12*cos(x120 - x130)) + 
     1.96818080476545*(sqr(x3) + sqr(x5) - 2*x3*x5*cos(x121 - x123)) + 
     1.73212475879089*(sqr(x3) + sqr(x12) - 2*x3*x12*cos(x121 - x130)) + 
     25.5368752478579*(sqr(x4) + sqr(x5) - 2*x4*x5*cos(x122 - x123)) + 
     4.04235771964605*(sqr(x4) + sqr(x11) - 2*x4*x11*cos(x122 - x129)) + 
     3.89192866323697*(sqr(x5) + sqr(x6) - 2*x5*x6*cos(x123 - x124)) + 
     4.00921922924242*(sqr(x5) + sqr(x11) - 2*x5*x11*cos(x123 - x129)) + 
     10.1166366657329*(sqr(x6) + sqr(x7) - 2*x6*x7*cos(x124 - x125)) + 
     7.00639614066242*(sqr(x7) + sqr(x12) - 2*x7*x12*cos(x125 - x130)) + 
     2.60627068727358*(sqr(x8) + sqr(x9) - 2*x8*x9*cos(x126 - x127)) + 
     1.68442536922819*(sqr(x8) + sqr(x30) - 2*x8*x30*cos(x126 - x148)) + 
     2.47245702045546*(sqr(x9) + sqr(x10) - 2*x9*x10*cos(x127 - x128)) + 
     14.1814389989572*(sqr(x11) + sqr(x12) - 2*x11*x12*cos(x129 - x130)) + 
     3.81079774554918*(sqr(x11) + sqr(x13) - 2*x11*x13*cos(x129 - x131)) + 
     3.93719532517571*(sqr(x12) + sqr(x14) - 2*x12*x14*cos(x130 - x132)) + 
     2.86293045239703*(sqr(x12) + sqr(x16) - 2*x12*x16*cos(x130 - x134)) + 
     1.59072371159841*(sqr(x12) + sqr(x117) - 2*x12*x117*cos(x130 - x235)) + 
     1.13993778146044*(sqr(x13) + sqr(x15) - 2*x13*x15*cos(x131 - x133)) + 
     1.4314842326222*(sqr(x14) + sqr(x15) - 2*x14*x15*cos(x132 - x133)) + 
     6.33418588916134*(sqr(x15) + sqr(x17) - 2*x15*x17*cos(x133 - x135)) + 
     7.07397014784598*(sqr(x15) + sqr(x19) - 2*x15*x19*cos(x133 - x137)) + 
     2.24594783727044*(sqr(x15) + sqr(x33) - 2*x15*x33*cos(x133 - x151)) + 
     1.31604998323051*(sqr(x16) + sqr(x17) - 2*x16*x17*cos(x134 - x135)) + 
     4.55295868282535*(sqr(x17) + sqr(x18) - 2*x17*x18*cos(x135 - x136)) + 
     1.7768481188464*(sqr(x17) + sqr(x31) - 2*x17*x31*cos(x135 - x149)) + 
     9.22812356063256*(sqr(x17) + sqr(x113) - 2*x17*x113*cos(x135 - x231)) + 
     4.37843772411859*(sqr(x18) + sqr(x19) - 2*x18*x19*cos(x136 - x137)) + 
     1.7592802030712*(sqr(x19) + sqr(x20) - 2*x19*x20*cos(x137 - x138)) + 
     1.12804444495113*(sqr(x19) + sqr(x34) - 2*x19*x34*cos(x137 - x152)) + 
     2.42612257884898*(sqr(x20) + sqr(x21) - 2*x20*x21*cos(x138 - x139)) + 
     2.12273037972498*(sqr(x21) + sqr(x22) - 2*x21*x22*cos(x139 - x140)) + 
     1.29297438549691*(sqr(x22) + sqr(x23) - 2*x22*x23*cos(x140 - x141)) + 
     9.22971440626566*(sqr(x23) + sqr(x24) - 2*x23*x24*cos(x141 - x142)) + 
     2.34820933985212*(sqr(x23) + sqr(x25) - 2*x23*x25*cos(x141 - x143)) + 
     2.216941348264*(sqr(x23) + sqr(x32) - 2*x23*x32*cos(x141 - x150)) + 
     0.568530939431196*(sqr(x24) + sqr(x70) - 2*x24*x70*cos(x142 - x188)) + 
     1.19615348414018*(sqr(x24) + sqr(x72) - 2*x24*x72*cos(x142 - x190)) + 
     1.15299939376887*(sqr(x25) + sqr(x27) - 2*x25*x27*cos(x143 - x145)) + 
     1.0710685340293*(sqr(x26) + sqr(x30) - 2*x26*x30*cos(x144 - x148)) + 
     2.49211625601181*(sqr(x27) + sqr(x28) - 2*x27*x28*cos(x145 - x146)) + 
     3.67891579620413*(sqr(x27) + sqr(x32) - 2*x27*x32*cos(x145 - x150)) + 
     2.84733591792728*(sqr(x27) + sqr(x115) - 2*x27*x115*cos(x145 - x233)) + 
     2.50682766776177*(sqr(x28) + sqr(x29) - 2*x28*x29*cos(x146 - x147)) + 
     8.90905341307486*(sqr(x29) + sqr(x31) - 2*x29*x31*cos(x147 - x149)) + 
     1.57955855151213*(sqr(x30) + sqr(x38) - 2*x30*x38*cos(x148 - x156)) + 
     2.81389839182874*(sqr(x31) + sqr(x32) - 2*x31*x32*cos(x149 - x150)) + 
     1.36693245908927*(sqr(x32) + sqr(x113) - 2*x32*x113*cos(x150 - x231)) + 
     3.43713480442703*(sqr(x32) + sqr(x114) - 2*x32*x114*cos(x150 - x232)) + 
     1.89616768519047*(sqr(x33) + sqr(x37) - 2*x33*x37*cos(x151 - x155)) + 
     10.968335259823*(sqr(x34) + sqr(x36) - 2*x34*x36*cos(x152 - x154)) + 
     26.9718986530908*(sqr(x34) + sqr(x37) - 2*x34*x37*cos(x152 - x155)) + 
     1.37835285165519*(sqr(x34) + sqr(x43) - 2*x34*x43*cos(x152 - x161)) + 
     20.5396047593198*(sqr(x35) + sqr(x36) - 2*x35*x36*cos(x153 - x154)) + 
     4.24531760764775*(sqr(x35) + sqr(x37) - 2*x35*x37*cos(x153 - x155)) + 
     2.61690258192902*(sqr(x37) + sqr(x39) - 2*x37*x39*cos(x155 - x157)) + 
     1.86827613562361*(sqr(x37) + sqr(x40) - 2*x37*x40*cos(x155 - x158)) + 
     0.919093260739995*(sqr(x38) + sqr(x65) - 2*x38*x65*cos(x156 - x183)) + 
     4.60136890724991*(sqr(x39) + sqr(x40) - 2*x39*x40*cos(x157 - x158)) + 
     5.61593220601563*(sqr(x40) + sqr(x41) - 2*x40*x41*cos(x158 - x159)) + 
     1.51766853298878*(sqr(x40) + sqr(x42) - 2*x40*x42*cos(x158 - x160)) + 
     2.05968049834221*(sqr(x41) + sqr(x42) - 2*x41*x42*cos(x159 - x160)) + 
     0.653318561328567*(sqr(x42) + sqr(x49) - 2*x42*x49*cos(x160 - x167)) + 
     0.951221725403565*(sqr(x43) + sqr(x44) - 2*x43*x44*cos(x161 - x162)) + 
     2.59867722688656*(sqr(x44) + sqr(x45) - 2*x44*x45*cos(x162 - x163)) + 
     2.00126479935319*(sqr(x45) + sqr(x46) - 2*x45*x46*cos(x163 - x164)) + 
     1.74158539268167*(sqr(x45) + sqr(x49) - 2*x45*x49*cos(x163 - x167)) + 
     2.1624082399135*(sqr(x46) + sqr(x47) - 2*x46*x47*cos(x164 - x165)) + 
     1.52797866219748*(sqr(x46) + sqr(x48) - 2*x46*x48*cos(x164 - x166)) + 
     4.4719577809724*(sqr(x47) + sqr(x49) - 2*x47*x49*cos(x165 - x167)) + 
     1.00123137223267*(sqr(x47) + sqr(x69) - 2*x47*x69*cos(x165 - x187)) + 
     6.23549985020866*(sqr(x48) + sqr(x49) - 2*x48*x49*cos(x166 - x167)) + 
     4.19288528611338*(sqr(x49) + sqr(x50) - 2*x49*x50*cos(x167 - x168)) + 
     2.29994283269667*(sqr(x49) + sqr(x51) - 2*x49*x51*cos(x167 - x169)) + 
     0.821609454136185*(sqr(x49) + sqr(x54) - 2*x49*x54*cos(x167 - x172)) + 
     2.05254281547298*(sqr(x49) + sqr(x66) - 2*x49*x66*cos(x167 - x184)) + 
     0.858924861514716*(sqr(x49) + sqr(x69) - 2*x49*x69*cos(x167 - x187)) + 
     2.34621408164033*(sqr(x50) + sqr(x57) - 2*x50*x57*cos(x168 - x175)) + 
     5.24611516127282*(sqr(x51) + sqr(x52) - 2*x51*x52*cos(x169 - x170)) + 
     4.38154869704769*(sqr(x51) + sqr(x58) - 2*x51*x58*cos(x169 - x176)) + 
     1.4274385408406*(sqr(x52) + sqr(x53) - 2*x52*x53*cos(x170 - x171)) + 
     1.68852872649623*(sqr(x53) + sqr(x54) - 2*x53*x54*cos(x171 - x172)) + 
     3.19827406748548*(sqr(x54) + sqr(x55) - 2*x54*x55*cos(x172 - x173)) + 
     27.8438718169392*(sqr(x54) + sqr(x56) - 2*x54*x56*cos(x172 - x174)) + 
     0.912743532858223*(sqr(x54) + sqr(x59) - 2*x54*x59*cos(x172 - x177)) + 
     19.3785828537664*(sqr(x55) + sqr(x56) - 2*x55*x56*cos(x173 - x174)) + 
     0.970799162177584*(sqr(x55) + sqr(x59) - 2*x55*x59*cos(x173 - x177)) + 
     3.26416414082537*(sqr(x56) + sqr(x57) - 2*x56*x57*cos(x174 - x175)) + 
     3.26416414082537*(sqr(x56) + sqr(x58) - 2*x56*x58*cos(x174 - x176)) + 
     1.18182566996981*(sqr(x56) + sqr(x59) - 2*x56*x59*cos(x174 - x177)) + 
     1.43895407557641*(sqr(x59) + sqr(x60) - 2*x59*x60*cos(x177 - x178)) + 
     1.39125477607585*(sqr(x59) + sqr(x61) - 2*x59*x61*cos(x177 - x179)) + 
     13.9520430230272*(sqr(x60) + sqr(x61) - 2*x60*x61*cos(x178 - x179)) + 
     3.72896771259663*(sqr(x60) + sqr(x62) - 2*x60*x62*cos(x178 - x180)) + 
     5.56133886803537*(sqr(x61) + sqr(x62) - 2*x61*x62*cos(x179 - x180)) + 
     0.96695423858974*(sqr(x62) + sqr(x66) - 2*x62*x66*cos(x180 - x184)) + 
     1.79732825065623*(sqr(x62) + sqr(x67) - 2*x62*x67*cos(x180 - x185)) + 
     4.2684306866416*(sqr(x63) + sqr(x64) - 2*x63*x64*cos(x181 - x182)) + 
     2.92621552980655*(sqr(x64) + sqr(x65) - 2*x64*x65*cos(x182 - x183)) + 
     5.35081991621702*(sqr(x65) + sqr(x68) - 2*x65*x68*cos(x183 - x186)) + 
     2.0733042638798*(sqr(x66) + sqr(x67) - 2*x66*x67*cos(x184 - x185)) + 
     4.25684592042131*(sqr(x68) + sqr(x81) - 2*x68*x81*cos(x186 - x199)) + 
     20.5834811509798*(sqr(x68) + sqr(x116) - 2*x68*x116*cos(x186 - x234)) + 
     1.76170062833989*(sqr(x69) + sqr(x70) - 2*x69*x70*cos(x187 - x188)) + 
     2.45094331058898*(sqr(x69) + sqr(x75) - 2*x69*x75*cos(x187 - x193)) + 
     2.76985714170464*(sqr(x69) + sqr(x77) - 2*x69*x77*cos(x187 - x195)) + 
     6.59171936554477*(sqr(x70) + sqr(x71) - 2*x70*x71*cos(x188 - x189)) + 
     2.09823507558355*(sqr(x70) + sqr(x74) - 2*x70*x74*cos(x188 - x192)) + 
     1.97118387092614*(sqr(x70) + sqr(x75) - 2*x70*x75*cos(x188 - x193)) + 
     4.05401179576993*(sqr(x71) + sqr(x73) - 2*x71*x73*cos(x189 - x191)) + 
     1.29692030860888*(sqr(x71) + sqr(x75) - 2*x71*x75*cos(x189 - x193)) + 
     6.83466229544634*(sqr(x74) + sqr(x75) - 2*x74*x75*cos(x192 - x193)) + 
     1.37932553964677*(sqr(x75) + sqr(x77) - 2*x75*x77*cos(x193 - x195)) + 
     5.74516811550562*(sqr(x75) + sqr(x118) - 2*x75*x118*cos(x193 - x236)) + 
     1.85965782296058*(sqr(x76) + sqr(x77) - 2*x76*x77*cos(x194 - x195)) + 
     5.08004163156069*(sqr(x76) + sqr(x118) - 2*x76*x118*cos(x194 - x236)) + 
     22.3946024243348*(sqr(x77) + sqr(x78) - 2*x77*x78*cos(x195 - x196)) + 
     6.43634642688121*(sqr(x77) + sqr(x80) - 2*x77*x80*cos(x195 - x198)) + 
     3.65011336174216*(sqr(x77) + sqr(x82) - 2*x77*x82*cos(x195 - x200)) + 
     8.73360210220682*(sqr(x78) + sqr(x79) - 2*x78*x79*cos(x196 - x197)) + 
     3.00027694864141*(sqr(x79) + sqr(x80) - 2*x79*x80*cos(x197 - x198)) + 
     1.03514371051334*(sqr(x80) + sqr(x96) - 2*x80*x96*cos(x198 - x214)) + 
     2.02021317112751*(sqr(x80) + sqr(x97) - 2*x80*x97*cos(x198 - x215)) + 
     1.94596433161849*(sqr(x80) + sqr(x98) - 2*x80*x98*cos(x198 - x216)) + 
     1.02028983422762*(sqr(x80) + sqr(x99) - 2*x80*x99*cos(x198 - x217)) + 
     7.62598622896683*(sqr(x82) + sqr(x83) - 2*x82*x83*cos(x200 - x201)) + 
     5.27439897898054*(sqr(x82) + sqr(x96) - 2*x82*x96*cos(x200 - x214)) + 
     2.9301109926044*(sqr(x83) + sqr(x84) - 2*x83*x84*cos(x201 - x202)) + 
     1.81029764661306*(sqr(x83) + sqr(x85) - 2*x83*x85*cos(x201 - x203)) + 
     6.01491779280401*(sqr(x84) + sqr(x85) - 2*x84*x85*cos(x202 - x203)) + 
     2.14014919897273*(sqr(x85) + sqr(x86) - 2*x85*x86*cos(x203 - x204)) + 
     1.85116623472788*(sqr(x85) + sqr(x88) - 2*x85*x88*cos(x203 - x206)) + 
     0.783601162090359*(sqr(x85) + sqr(x89) - 2*x85*x89*cos(x203 - x207)) + 
     0.645448153550856*(sqr(x86) + sqr(x87) - 2*x86*x87*cos(x204 - x205)) + 
     2.64125488109603*(sqr(x88) + sqr(x89) - 2*x88*x89*cos(x206 - x207)) + 
     1.36218142573587*(sqr(x89) + sqr(x90) - 2*x89*x90*cos(x207 - x208)) + 
     3.73830364088118*(sqr(x89) + sqr(x92) - 2*x89*x92*cos(x207 - x210)) + 
     3.32716802984496*(sqr(x90) + sqr(x91) - 2*x90*x91*cos(x208 - x209)) + 
     2.18921987404349*(sqr(x91) + sqr(x92) - 2*x91*x92*cos(x209 - x210)) + 
     3.28382981106523*(sqr(x92) + sqr(x93) - 2*x92*x93*cos(x210 - x211)) + 
     1.76335096806502*(sqr(x92) + sqr(x94) - 2*x92*x94*cos(x210 - x212)) + 
     0.710339072902274*(sqr(x92) + sqr(x100) - 2*x92*x100*cos(x210 - x218)) + 
     3.75446414944599*(sqr(x92) + sqr(x102) - 2*x92*x102*cos(x210 - x220)) + 
     3.80836576706122*(sqr(x93) + sqr(x94) - 2*x93*x94*cos(x211 - x212)) + 
     6.41461755272621*(sqr(x94) + sqr(x95) - 2*x94*x95*cos(x212 - x213)) + 
     3.25066886439273*(sqr(x94) + sqr(x96) - 2*x94*x96*cos(x212 - x214)) + 
     4.83585268579998*(sqr(x94) + sqr(x100) - 2*x94*x100*cos(x212 - x218)) + 
     5.20627188308723*(sqr(x95) + sqr(x96) - 2*x95*x96*cos(x213 - x214)) + 
     2.12751828067008*(sqr(x96) + sqr(x97) - 2*x96*x97*cos(x214 - x215)) + 
     1.18094695287427*(sqr(x98) + sqr(x100) - 2*x98*x100*cos(x216 - x218)) + 
     2.59602030087875*(sqr(x99) + sqr(x100) - 2*x99*x100*cos(x217 - x218)) + 
     1.659305619535*(sqr(x100) + sqr(x101) - 2*x100*x101*cos(x218 - x219)) + 
     5.31164411984397*(sqr(x100) + sqr(x103) - 2*x100*x103*cos(x218 - x221)) + 
     1.03321854909083*(sqr(x100) + sqr(x104) - 2*x100*x104*cos(x218 - x222)) + 
     1.07840734386489*(sqr(x100) + sqr(x106) - 2*x100*x106*cos(x218 - x224)) + 
     1.87084193971326*(sqr(x101) + sqr(x102) - 2*x101*x102*cos(x219 - x220)) + 
     1.70933148265799*(sqr(x103) + sqr(x104) - 2*x103*x104*cos(x221 - x222)) + 
     1.82790371901532*(sqr(x103) + sqr(x105) - 2*x103*x105*cos(x221 - x223)) + 
     1.13561784367419*(sqr(x103) + sqr(x110) - 2*x103*x110*cos(x221 - x228)) + 
     6.50675327674596*(sqr(x104) + sqr(x105) - 2*x104*x105*cos(x222 - x223)) + 
     4.39134403357496*(sqr(x105) + sqr(x106) - 2*x105*x106*cos(x223 - x224)) + 
     1.46013554465811*(sqr(x105) + sqr(x107) - 2*x105*x107*cos(x223 - x225)) + 
     4.64140273504881*(sqr(x105) + sqr(x108) - 2*x105*x108*cos(x223 - x226)) + 
     1.46013554465811*(sqr(x106) + sqr(x107) - 2*x106*x107*cos(x224 - x225)) + 
     11.1738977747981*(sqr(x108) + sqr(x109) - 2*x108*x109*cos(x226 - x227)) + 
     4.22538636446541*(sqr(x109) + sqr(x110) - 2*x109*x110*cos(x227 - x228)) + 
     3.55742410154829*(sqr(x110) + sqr(x111) - 2*x110*x111*cos(x228 - x229)) + 
     5.2485184091252*(sqr(x110) + sqr(x112) - 2*x110*x112*cos(x228 - x230)) + 
     20.2732481269282*(sqr(x114) + sqr(x115) - 2*x114*x115*cos(x232 - x233)))
      + objvar =E= 0;

e2..  - (sqr(30.7353516858728*x1*x1) + sqr(x1*x2*(-2.78030115341206*sin(x119 - 
     x120) - 9.16673548600215*cos(x119 - x120))) + sqr(x1*x3*(-6.56765962213047
     *sin(x119 - x121) - 21.5867261998707*cos(x119 - x121))) + sqr(
     133.170206804898*x4*x4) + sqr(x4*x5*(-25.5368752478579*sin(x122 - x123) - 
     119.873096751709*cos(x122 - x123))) + sqr(x4*x11*(-4.04235771964605*sin(
     x122 - x129) - 13.3069000531889*cos(x122 - x129))) + sqr(-3.89192866323697
     *x6*x5*sin(x124 - x123)) + sqr(63.4954264933289*x6*x6) + sqr(x6*x7*(-
     10.1166366657329*sin(x124 - x125) - 45.844453735783*cos(x124 - x125))) + 
     sqr(88.8907918468092*x8*x8) + sqr(x8*x9*(-2.60627068727358*sin(x126 - x127
     ) - 32.5783835909197*cos(x126 - x127))) + sqr(x8*x30*(-1.68442536922819*
     sin(x126 - x148) - 19.6972247352902*cos(x126 - x148))) + sqr(-
     2.47245702045546*x10*x9*sin(x128 - x127)) + sqr(30.2427969219635*x10*x10)
      + sqr(-4.51227604512276*x12*x2*sin(x130 - x120)) + sqr(-1.73212475879089*
     x12*x3*sin(x130 - x121)) + sqr(-7.00639614066242*x12*x7*sin(x130 - x125))
      + sqr(-14.1814389989572*x12*x11*sin(x130 - x129)) + sqr(125.846706757348*
     x12*x12) + sqr(x12*x14*(-3.93719532517571*sin(x130 - x132) - 
     12.9469632320894*cos(x130 - x132))) + sqr(x12*x16*(-2.86293045239703*sin(
     x130 - x134) - 11.2626603646185*cos(x130 - x134))) + sqr(x12*x117*(-
     1.59072371159841*sin(x130 - x235) - 6.76903707063152*cos(x130 - x235))) + 
     sqr(-1.13993778146044*x15*x13*sin(x133 - x131)) + sqr(-1.4314842326222*x15
     *x14*sin(x133 - x132)) + sqr(59.8851133903844*x15*x15) + sqr(x15*x17*(-
     6.33418588916134*sin(x133 - x135) - 20.9699941936629*cos(x133 - x135))) + 
     sqr(x15*x19*(-7.07397014784598*sin(x133 - x137) - 23.2262019854276*cos(
     x133 - x137))) + sqr(x15*x33*(-2.24594783727044*sin(x133 - x151) - 
     7.35252397253797*cos(x133 - x151))) + sqr(-4.55295868282535*x18*x17*sin(
     x136 - x135)) + sqr(37.9710097357503*x18*x18) + sqr(x18*x19*(-
     4.37843772411859*sin(x136 - x137) - 19.2901679891909*cos(x136 - x137))) + 
     sqr(-7.07397014784598*x19*x15*sin(x137 - x133)) + sqr(-4.37843772411859*
     x19*x18*sin(x137 - x136)) + sqr(54.3323426144866*x19*x19) + sqr(x19*x20*(-
     1.7592802030712*sin(x137 - x138) - 8.16808665711629*cos(x137 - x138))) + 
     sqr(x19*x34*(-1.12804444495113*sin(x137 - x152) - 3.70514598275172*cos(
     x137 - x152))) + sqr(-9.22971440626566*x24*x23*sin(x142 - x141)) + sqr(
     21.4087875828357*x24*x24) + sqr(x24*x70*(-0.568530939431196*sin(x142 - 
     x188) - 2.28891969059717*cos(x142 - x188))) + sqr(x24*x72*(-
     1.19615348414018*sin(x142 - x190) - 4.80422301007122*cos(x142 - x190))) + 
     sqr(-2.34820933985212*x25*x23*sin(x143 - x141)) + sqr(46.2275047429895*x25
     *x25) + sqr(-27.2696335078534*x25*x26*cos(x143 - x144)) + sqr(x25*x27*(-
     1.15299939376887*sin(x143 - x145) - 5.91002833912975*cos(x143 - x145))) + 
     sqr(37.2524077085659*x26*x26) + sqr(x26*x30*(-1.0710685340293*sin(x144 - 
     x148) - 11.5283972373617*cos(x144 - x148))) + sqr(-1.15299939376887*x27*
     x25*sin(x145 - x143)) + sqr(41.9241255539621*x27*x27) + sqr(x27*x28*(-
     2.49211625601181*sin(x145 - x146) - 11.13831363769*cos(x145 - x146))) + 
     sqr(x27*x32*(-3.67891579620413*sin(x145 - x150) - 12.1291765333368*cos(
     x145 - x150))) + sqr(x27*x115*(-2.84733591792728*sin(x145 - x233) - 
     12.8650970438056*cos(x145 - x233))) + sqr(-1.7768481188464*x31*x17*sin(
     x149 - x135)) + sqr(-8.90905341307486*x31*x29*sin(x149 - x147)) + sqr(
     42.4280222012133*x31*x31) + sqr(x31*x32*(-2.81389839182874*sin(x149 - x150
     ) - 9.30097287231983*cos(x149 - x150))) + sqr(-2.216941348264*x32*x23*sin(
     x150 - x141)) + sqr(-3.67891579620413*x32*x27*sin(x150 - x145)) + sqr(-
     2.81389839182874*x32*x31*sin(x150 - x149)) + sqr(49.472457850473*x32*x32)
      + sqr(x32*x113*(-1.36693245908927*sin(x150 - x231) - 4.51198844219709*
     cos(x150 - x231))) + sqr(x32*x114*(-3.43713480442703*sin(x150 - x232) - 
     15.5816777800692*cos(x150 - x232))) + sqr(-1.12804444495113*x34*x19*sin(
     x152 - x137)) + sqr(141.901016699634*x34*x34) + sqr(x34*x36*(-
     10.968335259823*sin(x152 - x154) - 33.7487238763784*cos(x152 - x154))) + 
     sqr(x34*x37*(-26.9718986530908*sin(x152 - x155) - 99.0374403668178*cos(
     x152 - x155))) + sqr(x34*x43*(-1.37835285165519*sin(x152 - x161) - 
     5.61019647368614*cos(x152 - x161))) + sqr(-10.968335259823*x36*x34*sin(
     x154 - x152)) + sqr(-20.5396047593198*x36*x35*sin(x154 - x153)) + sqr(
     127.273101262567*x36*x36) + sqr(-1.86827613562361*x40*x37*sin(x158 - x155)
     ) + sqr(-4.60136890724991*x40*x39*sin(x158 - x157)) + sqr(44.2302454366683
     *x40*x40) + sqr(x40*x41*(-5.61593220601563*sin(x158 - x159) - 
     18.8617860988249*cos(x158 - x159))) + sqr(x40*x42*(-1.51766853298878*sin(
     x158 - x160) - 5.00420435201706*cos(x158 - x160))) + sqr(-1.51766853298878
     *x42*x40*sin(x160 - x158)) + sqr(-2.05968049834221*x42*x41*sin(x160 - x159
     )) + sqr(14.6539343427803*x42*x42) + sqr(x42*x49*(-0.653318561328567*sin(
     x160 - x167) - 2.95135517914863*cos(x160 - x167))) + sqr(-2.00126479935319
     *x46*x45*sin(x164 - x163)) + sqr(18.6604078750311*x46*x46) + sqr(x46*x47*(
     -2.1624082399135*sin(x164 - x165) - 7.22699595971092*cos(x164 - x165))) + 
     sqr(x46*x48*(-1.52797866219748*sin(x164 - x166) - 4.80512424551287*cos(
     x164 - x166))) + sqr(-0.653318561328567*x49*x42*sin(x167 - x160)) + sqr(-
     1.74158539268167*x49*x45*sin(x167 - x163)) + sqr(-4.4719577809724*x49*x47*
     sin(x167 - x165)) + sqr(-6.23549985020866*x49*x48*sin(x167 - x166)) + sqr(
     74.5656016968605*x49*x49) + sqr(x49*x50*(-4.19288528611338*sin(x167 - x168
     ) - 11.8091750380422*cos(x167 - x168))) + sqr(x49*x51*(-2.29994283269667*
     sin(x167 - x169) - 6.48337794402147*cos(x167 - x169))) + sqr(x49*x54*(-
     0.821609454136185*sin(x167 - x172) - 3.25267304445695*cos(x167 - x172)))
      + sqr(x49*x66*(-2.05254281547298*sin(x167 - x184) - 10.4793713745537*cos(
     x167 - x184))) + sqr(x49*x69*(-0.858924861514716*sin(x167 - x187) - 
     2.82529599117531*cos(x167 - x187))) + sqr(-0.821609454136185*x54*x49*sin(
     x172 - x167)) + sqr(-1.68852872649623*x54*x53*sin(x172 - x171)) + sqr(
     125.224143398271*x54*x54) + sqr(x54*x55*(-3.19827406748548*sin(x172 - x173
     ) - 13.3797619272913*cos(x172 - x173))) + sqr(x54*x56*(-27.8438718169392*
     sin(x172 - x174) - 96.694173037007*cos(x172 - x174))) + sqr(x54*x59*(-
     0.912743532858223*sin(x172 - x177) - 4.16087658219464*cos(x172 - x177)))
      + sqr(-3.19827406748548*x55*x54*sin(x173 - x172)) + sqr(77.7227115448252*
     x55*x55) + sqr(x55*x56*(-19.3785828537664*sin(x173 - x174) - 
     59.9624182565311*cos(x173 - x174))) + sqr(x55*x59*(-0.970799162177584*sin(
     x173 - x177) - 4.4207313610028*cos(x173 - x177))) + sqr(-27.8438718169392*
     x56*x54*sin(x174 - x172)) + sqr(-19.3785828537664*x56*x55*sin(x174 - x173)
     ) + sqr(178.579930502333*x56*x56) + sqr(x56*x57*(-3.26416414082537*sin(
     x174 - x175) - 9.1929520700796*cos(x174 - x175))) + sqr(x56*x58*(-
     3.26416414082537*sin(x174 - x176) - 9.1929520700796*cos(x174 - x176))) + 
     sqr(x56*x59*(-1.18182566996981*sin(x174 - x177) - 3.59561506863542*cos(
     x174 - x177))) + sqr(-0.912743532858223*x59*x54*sin(x177 - x172)) + sqr(-
     0.970799162177584*x59*x55*sin(x177 - x173)) + sqr(-1.18182566996981*x59*
     x56*sin(x177 - x174)) + sqr(53.1092617025682*x59*x59) + sqr(x59*x60*(-
     1.43895407557641*sin(x177 - x178) - 6.58196659175329*cos(x177 - x178))) + 
     sqr(x59*x61*(-1.39125477607585*sin(x177 - x179) - 6.36244562229808*cos(
     x177 - x179))) + sqr(-26.9870466321244*x59*x63*cos(x177 - x181)) + sqr(-
     1.39125477607585*x61*x59*sin(x179 - x177)) + sqr(-13.9520430230272*x61*x60
     *sin(x179 - x178)) + sqr(141.50990544566*x61*x61) + sqr(x61*x62*(-
     5.56133886803537*sin(x179 - x180) - 25.3769831842391*cos(x179 - x180))) + 
     sqr(-37.8805970149254*x61*x64*cos(x179 - x182)) + sqr(-3.72896771259663*
     x62*x60*sin(x180 - x178)) + sqr(-5.56133886803537*x62*x61*sin(x180 - x179)
     ) + sqr(54.8521100900658*x62*x62) + sqr(x62*x66*(-0.96695423858974*sin(
     x180 - x184) - 4.37336149403658*cos(x180 - x184))) + sqr(x62*x67*(-
     1.79732825065623*sin(x180 - x185) - 8.15067462506897*cos(x180 - x185))) + 
     sqr(-0.919093260739995*x65*x38*sin(x183 - x156)) + sqr(-2.92621552980655*
     x65*x64*sin(x183 - x182)) + sqr(127.54413263752*x65*x65) + sqr(-
     25.2702702702703*x65*x66*cos(x183 - x184)) + sqr(x65*x68*(-
     5.35081991621702*sin(x183 - x186) - 62.0384917822263*cos(x183 - x186))) + 
     sqr(-2.05254281547298*x66*x49*sin(x184 - x167)) + sqr(-0.96695423858974*
     x66*x62*sin(x184 - x180)) + sqr(51.2197098413227*x66*x66) + sqr(x66*x67*(-
     2.0733042638798*sin(x184 - x185) - 9.39465994570534*cos(x184 - x185))) + 
     sqr(-1.00123137223267*x69*x47*sin(x187 - x165)) + sqr(-0.858924861514716*
     x69*x49*sin(x187 - x167)) + sqr(56.7856180803653*x69*x69) + sqr(x69*x70*(-
     1.76170062833989*sin(x187 - x188) - 7.45786599330554*cos(x187 - x188))) + 
     sqr(x69*x75*(-2.45094331058898*sin(x187 - x193) - 7.38308849115694*cos(
     x187 - x193))) + sqr(x69*x77*(-2.76985714170464*sin(x187 - x195) - 
     9.0535783596171*cos(x187 - x195))) + sqr(-0.568530939431196*x70*x24*sin(
     x188 - x142)) + sqr(-1.76170062833989*x70*x69*sin(x188 - x187)) + sqr(
     49.5383218540389*x70*x70) + sqr(x70*x71*(-6.59171936554477*sin(x188 - x189
     ) - 26.5312967660816*cos(x188 - x189))) + sqr(x70*x74*(-2.09823507558355*
     sin(x188 - x192) - 6.92260599749886*cos(x188 - x192))) + sqr(x70*x75*(-
     1.97118387092614*sin(x188 - x193) - 6.49385340655575*cos(x188 - x193))) + 
     sqr(-1.19615348414018*x72*x24*sin(x190 - x142)) + sqr(4.77982301007122*x72
     *x72) + sqr(-4.05401179576993*x73*x71*sin(x191 - x189)) + sqr(
     21.2472434327893*x73*x73) + sqr(-2.09823507558355*x74*x70*sin(x192 - x188)
     ) + sqr(29.3405382084843*x74*x74) + sqr(x74*x75*(-6.83466229544634*sin(
     x192 - x193) - 22.5599422109855*cos(x192 - x193))) + sqr(23.0245492121187*
     x76*x76) + sqr(x76*x77*(-1.85965782296058*sin(x194 - x195) - 
     6.19885940986858*cos(x194 - x195))) + sqr(x76*x118*(-5.08004163156069*sin(
     x194 - x236) - 16.8508698022501*cos(x194 - x236))) + sqr(-2.76985714170464
     *x77*x69*sin(x195 - x187)) + sqr(-1.37932553964677*x77*x75*sin(x195 - x193
     )) + sqr(-1.85965782296058*x77*x76*sin(x195 - x194)) + sqr(
     122.339465285853*x77*x77) + sqr(x77*x78*(-22.3946024243348*sin(x195 - x196
     ) - 73.8545399100404*cos(x195 - x196))) + sqr(x77*x80*(-6.43634642688121*
     sin(x195 - x198) - 18.3625177472787*cos(x195 - x198))) + sqr(x77*x82*(-
     3.65011336174216*sin(x195 - x200) - 10.448143280423*cos(x195 - x200))) + 
     sqr(-6.43634642688121*x80*x77*sin(x198 - x195)) + sqr(-3.00027694864141*
     x80*x79*sin(x198 - x197)) + sqr(91.7673871033134*x80*x80) + sqr(-
     28.9054054054054*x80*x81*cos(x198 - x199)) + sqr(x80*x96*(-
     1.03514371051334*sin(x198 - x214) - 5.29202683464684*cos(x198 - x214))) + 
     sqr(x80*x97*(-2.02021317112751*sin(x198 - x215) - 10.3108147641153*cos(
     x198 - x215))) + sqr(x80*x98*(-1.94596433161849*sin(x198 - x216) - 
     8.83042637877296*cos(x198 - x216))) + sqr(x80*x99*(-1.02028983422762*sin(
     x198 - x217) - 4.62950893944692*cos(x198 - x217))) + sqr(-1.81029764661306
     *x85*x83*sin(x203 - x201)) + sqr(-6.01491779280401*x85*x84*sin(x203 - x202
     )) + sqr(41.5570201472229*x85*x85) + sqr(x85*x86*(-2.14014919897273*sin(
     x203 - x204) - 7.52109575638987*cos(x203 - x204))) + sqr(x85*x88*(-
     1.85116623472788*sin(x203 - x206) - 9.44094779711218*cos(x203 - x206))) + 
     sqr(x85*x89*(-0.783601162090359*sin(x203 - x207) - 5.67209209379214*cos(
     x203 - x207))) + sqr(-0.645448153550856*x87*x86*sin(x205 - x204)) + sqr(
     4.71134077250522*x87*x87) + sqr(-0.783601162090359*x89*x85*sin(x207 - x203
     )) + sqr(-2.64125488109603*x89*x88*sin(x207 - x206)) + sqr(
     43.1273767840629*x89*x89) + sqr(x89*x90*(-1.36218142573587*sin(x207 - x208
     ) - 4.94382447950469*cos(x207 - x208))) + sqr(x89*x92*(-3.73830364088118*
     sin(x207 - x210) - 19.0691246327777*cos(x207 - x210))) + sqr(-
     1.36218142573587*x90*x89*sin(x208 - x207)) + sqr(15.8575609871834*x90*x90)
      + sqr(x90*x91*(-3.32716802984496*sin(x208 - x209) - 10.9508365076787*cos(
     x208 - x209))) + sqr(-3.32716802984496*x91*x90*sin(x209 - x208)) + sqr(
     18.1193719076356*x91*x91) + sqr(x91*x92*(-2.18921987404349*sin(x209 - x210
     ) - 7.19557539995689*cos(x209 - x210))) + sqr(-3.73830364088118*x92*x89*
     sin(x210 - x207)) + sqr(-2.18921987404349*x92*x91*sin(x210 - x209)) + sqr(
     63.0262673730026*x92*x92) + sqr(x92*x93*(-3.28382981106523*sin(x210 - x211
     ) - 10.7933630999353*cos(x210 - x211))) + sqr(x92*x94*(-1.76335096806502*
     sin(x210 - x212) - 5.79229631921565*cos(x210 - x212))) + sqr(x92*x100*(-
     0.710339072902274*sin(x210 - x218) - 3.23379670534214*cos(x210 - x218)))
      + sqr(x92*x102*(-3.75446414944599*sin(x210 - x220) - 17.0629712157749*
     cos(x210 - x220))) + sqr(-1.02028983422762*x99*x80*sin(x217 - x198)) + 
     sqr(16.316767298416*x99*x99) + sqr(x99*x100*(-2.59602030087875*sin(x217 - 
     x218) - 11.725358358969*cos(x217 - x218))) + sqr(-0.710339072902274*x100*
     x92*sin(x218 - x210)) + sqr(-4.83585268579998*x100*x94*sin(x218 - x212))
      + sqr(-1.18094695287427*x100*x98*sin(x218 - x216)) + sqr(-
     2.59602030087875*x100*x99*sin(x218 - x217)) + sqr(69.580451238962*x100*
     x100) + sqr(x100*x101*(-1.659305619535*sin(x218 - x219) - 7.55972451932552
     *cos(x218 - x219))) + sqr(x100*x103*(-5.31164411984397*sin(x218 - x221) - 
     17.428832268238*cos(x218 - x221))) + sqr(x100*x104*(-1.03321854909083*sin(
     x218 - x222) - 4.67353844821571*cos(x218 - x222))) + sqr(x100*x106*(-
     1.07840734386489*sin(x218 - x224) - 4.08190548338941*cos(x218 - x224))) + 
     sqr(-5.31164411984397*x103*x100*sin(x221 - x218)) + sqr(33.971593811489*
     x103*x103) + sqr(x103*x104*(-1.70933148265799*sin(x221 - x222) - 
     5.81025980371299*cos(x221 - x222))) + sqr(x103*x105*(-1.82790371901532*
     sin(x221 - x223) - 5.55204400635495*cos(x221 - x223))) + sqr(x103*x110*(-
     1.13561784367419*sin(x221 - x228) - 5.27105773318305*cos(x221 - x228))) + 
     sqr(-1.03321854909083*x104*x100*sin(x222 - x218)) + sqr(-1.70933148265799*
     x104*x103*sin(x222 - x221)) + sqr(35.1754595860331*x104*x104) + sqr(x104*
     x105*(-6.50675327674596*sin(x222 - x223) - 24.7439913341044*cos(x222 - 
     x223))) + sqr(-1.82790371901532*x105*x103*sin(x223 - x221)) + sqr(-
     6.50675327674596*x105*x104*sin(x223 - x222)) + sqr(64.7314799284789*x105*
     x105) + sqr(x105*x106*(-4.39134403357496*sin(x223 - x224) - 
     17.1576084740393*cos(x223 - x224))) + sqr(x105*x107*(-1.46013554465811*
     sin(x223 - x225) - 5.04160008815913*cos(x223 - x225))) + sqr(x105*x108*(-
     4.64140273504881*sin(x223 - x226) - 12.5015560258211*cos(x223 - x226))) + 
     sqr(-1.46013554465811*x107*x105*sin(x225 - x223)) + sqr(-1.46013554465811*
     x107*x106*sin(x225 - x224)) + sqr(9.97600017631826*x107*x107) + sqr(-
     1.13561784367419*x110*x103*sin(x228 - x221)) + sqr(-4.22538636446541*x110*
     x109*sin(x228 - x227)) + sqr(42.5265547952557*x110*x110) + sqr(x110*x111*(
     -3.55742410154829*sin(x228 - x229) - 12.2084327121316*cos(x228 - x229)))
      + sqr(x110*x112*(-5.2485184091252*sin(x228 - x230) - 13.5993999264782*
     cos(x228 - x230))) + sqr(-3.55742410154829*x111*x110*sin(x229 - x228)) + 
     sqr(12.1984327121316*x111*x111) + sqr(-5.2485184091252*x112*x110*sin(x230
      - x228)) + sqr(13.5683999264782*x112*x112) + sqr(-9.22812356063256*x113*
     x17*sin(x231 - x135)) + sqr(-1.36693245908927*x113*x32*sin(x231 - x150))
      + sqr(34.9057445183242*x113*x113) + sqr(-20.5834811509798*x116*x68*sin(
     x234 - x186)) + sqr(245.103584298436*x116*x116)) + x237 =E= 913;

e3..  - (sqr((-1) + x1) + sqr((-1) + x2) + sqr((-1) + x3) + sqr((-1) + x4) + 
     sqr((-1) + x5) + sqr((-1) + x6) + sqr((-1) + x7) + sqr((-1) + x8) + sqr((-
     1) + x9) + sqr((-1) + x10) + sqr((-1) + x11) + sqr((-1) + x12) + sqr((-1)
      + x13) + sqr((-1) + x14) + sqr((-1) + x15) + sqr((-1) + x16) + sqr((-1)
      + x17) + sqr((-1) + x18) + sqr((-1) + x19) + sqr((-1) + x20) + sqr((-1)
      + x21) + sqr((-1) + x22) + sqr((-1) + x23) + sqr((-1) + x24) + sqr((-1)
      + x25) + sqr((-1) + x26) + sqr((-1) + x27) + sqr((-1) + x28) + sqr((-1)
      + x29) + sqr((-1) + x30) + sqr((-1) + x31) + sqr((-1) + x32) + sqr((-1)
      + x33) + sqr((-1) + x34) + sqr((-1) + x35) + sqr((-1) + x36) + sqr((-1)
      + x37) + sqr((-1) + x38) + sqr((-1) + x39) + sqr((-1) + x40) + sqr((-1)
      + x41) + sqr((-1) + x42) + sqr((-1) + x43) + sqr((-1) + x44) + sqr((-1)
      + x45) + sqr((-1) + x46) + sqr((-1) + x47) + sqr((-1) + x48) + sqr((-1)
      + x49) + sqr((-1) + x50) + sqr((-1) + x51) + sqr((-1) + x52) + sqr((-1)
      + x53) + sqr((-1) + x54) + sqr((-1) + x55) + sqr((-1) + x56) + sqr((-1)
      + x57) + sqr((-1) + x58) + sqr((-1) + x59) + sqr((-1) + x60) + sqr((-1)
      + x61) + sqr((-1) + x62) + sqr((-1) + x63) + sqr((-1) + x64) + sqr((-1)
      + x65) + sqr((-1) + x66) + sqr((-1) + x67) + sqr((-1) + x68) + sqr((-1)
      + x69) + sqr((-1) + x70) + sqr((-1) + x71) + sqr((-1) + x72) + sqr((-1)
      + x73) + sqr((-1) + x74) + sqr((-1) + x75) + sqr((-1) + x76) + sqr((-1)
      + x77) + sqr((-1) + x78) + sqr((-1) + x79) + sqr((-1) + x80) + sqr((-1)
      + x81) + sqr((-1) + x82) + sqr((-1) + x83) + sqr((-1) + x84) + sqr((-1)
      + x85) + sqr((-1) + x86) + sqr((-1) + x87) + sqr((-1) + x88) + sqr((-1)
      + x89) + sqr((-1) + x90) + sqr((-1) + x91) + sqr((-1) + x92) + sqr((-1)
      + x93) + sqr((-1) + x94) + sqr((-1) + x95) + sqr((-1) + x96) + sqr((-1)
      + x97) + sqr((-1) + x98) + sqr((-1) + x99) + sqr((-1) + x100) + sqr((-1)
      + x101) + sqr((-1) + x102) + sqr((-1) + x103) + sqr((-1) + x104) + sqr((-
     1) + x105) + sqr((-1) + x106) + sqr((-1) + x107) + sqr((-1) + x108) + sqr(
     (-1) + x109) + sqr((-1) + x110) + sqr((-1) + x111) + sqr((-1) + x112) + 
     sqr((-1) + x113) + sqr((-1) + x114) + sqr((-1) + x115) + sqr((-1) + x116)
      + sqr((-1) + x117) + sqr((-1) + x118)) + x239 =E= 0;

* set non default bounds

x1.fx = 0.955; 
x4.fx = 0.998; 
x6.fx = 0.99; 
x8.fx = 1.015; 
x10.fx = 1.05; 
x12.fx = 0.99; 
x15.fx = 0.97; 
x18.fx = 0.973; 
x19.fx = 0.962; 
x24.fx = 0.992; 
x25.fx = 1.05; 
x26.fx = 1.015; 
x27.fx = 0.968; 
x31.fx = 0.967; 
x32.fx = 0.963; 
x34.fx = 0.984; 
x36.fx = 0.98; 
x40.fx = 0.97; 
x42.fx = 0.985; 
x46.fx = 1.005; 
x49.fx = 1.025; 
x54.fx = 0.955; 
x55.fx = 0.952; 
x56.fx = 0.954; 
x59.fx = 0.985; 
x61.fx = 0.995; 
x62.fx = 0.998; 
x65.fx = 1.005; 
x66.fx = 1.05; 
x69.fx = 1.035; 
x70.fx = 0.984; 
x72.fx = 0.98; 
x73.fx = 0.991; 
x74.fx = 0.958; 
x76.fx = 0.943; 
x77.fx = 1.006; 
x80.fx = 1.04; 
x85.fx = 0.985; 
x87.fx = 1.015; 
x89.fx = 1.005; 
x90.fx = 0.985; 
x91.fx = 0.98; 
x92.fx = 0.99; 
x99.fx = 1.01; 
x100.fx = 1.017; 
x103.fx = 1.01; 
x104.fx = 0.971; 
x105.fx = 0.965; 
x107.fx = 0.952; 
x110.fx = 0.973; 
x111.fx = 0.98; 
x112.fx = 0.975; 
x113.fx = 0.993; 
x116.fx = 1.005; 
x187.fx = 0; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
