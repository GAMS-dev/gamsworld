*  MPEC written by GAMS Convert at 01/07/02 10:59:39
*  
*  Equation counts
*     Total       E       G       L       N       X
*        70      39      31       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        72      72       0       0       0       0       0       0
*  FX     1       1       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       430     183     247       0
*
*  Solve m using MPEC minimizing objvar;


Variables  objvar,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18
          ,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35
          ,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52
          ,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69
          ,x70,x71,x72;

Positive Variables x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70;


e1..    objvar - x32 =E= 0;

e2..  - 4.030482792*x35 + 1.53433524245457*x44 + 2.49614754954543*x45 =G= 0;

e3..  - 4.030482792*x35 + 1.24681607053836*x44 + 2.83572441939247*x45 =G= 0;

e4..  - 4.030482792*x35 + 1.71376693706547*x44 + 2.3320947346723*x45 =G= 0;

e5..  - 4.030482792*x35 + 1.27212778177126*x44 + 2.80090818077152*x45 =G= 0;

e6..  - 4.030482792*x35 + 1.33527736924655*x44 + 2.71872646945045*x45 =G= 0;

e7..  - 4.030482792*x35 + 1.55006685104741*x44 + 2.48054500949435*x45 =G= 0;

e8..  - 8.059600248*x36 + 3.02498775998508*x44 + 5.03461248801492*x46 =G= 0;

e9..  - 8.059600248*x36 + 2.6355190298333*x44 + 5.46928687342375*x46 =G= 0;

e10..  - 8.059600248*x36 + 2.4613006338936*x44 + 5.69870920762198*x46 =G= 0;

e11..  - 8.059600248*x36 + 3.12799606251235*x44 + 4.93433138334768*x46 =G= 0;

e12..  - 8.059600248*x36 + 3.17167544708236*x44 + 4.89338897203778*x46 =G= 0;

e13..  - 8.059600248*x36 + 2.89111620066988*x44 + 5.17341564063088*x46 =G= 0;

e14..  - 6.302252136*x37 + 2.1076730229766*x44 + 4.1945791130234*x47 =G= 0;

e15..  - 6.302252136*x37 + 1.89103342074142*x44 + 4.42952349731294*x47 =G= 0;

e16..  - 6.302252136*x37 + 1.89388883039355*x44 + 4.42616651714945*x47 =G= 0;

e17..  - 6.302252136*x37 + 1.79616131330366*x44 + 4.54557972013786*x47 =G= 0;

e18..  - 6.302252136*x37 + 2.47310113564091*x44 + 3.87076832152186*x47 =G= 0;

e19..  - 6.302252136*x37 + 2.00645236833425*x44 + 4.29960433782492*x47 =G= 0;

e20.. 0.287795109201548*x38*(1 + x2) - 0.431692663802322*x44 =G= 0;

e21.. 0.427234233178298*x39*(1 + x2) - 0.640851349767447*x44 =G= 0;

e22.. 0.679776384178546*x40*(1 + x2) - 1.01966457626782*x44 =G= 0;

e23.. 1.3304882040338*x41*(1 + x2) - 1.99573230605071*x44 =G= 0;

e24.. 1.23176409941376*x42*(1 + x2) - 1.84764614912064*x44 =G= 0;

e25.. 0.487605986938215*x43*(1 + x2) - 0.731408980407322*x44 =G= 0;

e26..    0.610611551622973*x35 + 1.49457682852725*x36 + 0.117143628321858*x37
       - 2.22233200847209*x54 =E= 0;

e27.. (0.14051711886296*x55**0.5 + 0.85948288113704*x67**0.5)**2 - x48 =E= 0;

e28.. (0.113100312475534*x56**0.5 + 0.886899687524466*x68**0.5)**2 - x49 =E= 0;

e29.. (0.0744041330309018*x57**0.5 + 0.925595866969098*x69**0.5)**2 - x50
       =E= 0;

e30.. (0.0592158777170755*x58**0.5 + 0.940784122282925*x70**0.5)**2 - x51
       =E= 0;

e31.. (0.0646735252733785*x59**0.5 + 0.935326474726622*x71**0.5)**2 - x52
       =E= 0;

e32.. (0.112173309530345*x60**0.5 + 0.887826690469655*x72**0.5)**2 - x53 =E= 0;

e33.. 2.22233200847209*x34*x54 - (0.287795109201548*x2*x38*x22 + 
      0.427234233178298*x2*x39*x23 + 0.679776384178546*x2*x40*x24 + 
      1.3304882040338*x2*x41*x25 + 1.23176409941376*x2*x42*x26 + 
      0.487605986938215*x2*x43*x27 + 0.43185979043891*x3*x35*x28*x61/(x35*(1 + 
      x3))*(x67/x61)**2*(x48/x67)**0.5 + 0.861730658586976*x3*x35*x29*x62/(x35*
      (1 + x3))*(x68/x62)**2*(x49/x68)**0.5 + 0.499652827962936*x3*x35*x30*x63/
      (x35*(1 + x3))*(x69/x63)**2*(x50/x69)**0.5 + 0.855700473912962*x3*x35*x31
      *x64/(x35*(1 + x3))*(x70/x64)**2*(x51/x70)**0.5 + 0.658093374135091*x3*
      x35*x32*x65/(x35*(1 + x3))*(x71/x65)**2*(x52/x71)**0.5 + 
      0.112834115340152*x3*x35*x33*x66/(x35*(1 + x3))*(x72/x66)**2*(x53/x72)**
      0.5 + 1.67101603637463*x3*x36*x28*x61/(x36*(1 + x3))*(x67/x61)**2*(x48/
      x67)**0.5 + 0.416678274760781*x3*x36*x29*x62/(x36*(1 + x3))*(x68/x62)**2*
      (x49/x68)**0.5 + 0.653237966135858*x3*x36*x30*x63/(x36*(1 + x3))*(x69/x63
      )**2*(x50/x69)**0.5 + 1.74731538993181*x3*x36*x31*x64/(x36*(1 + x3))*(x70
      /x64)**2*(x51/x70)**0.5 + 1.13719893930611*x3*x36*x32*x65/(x36*(1 + x3))*
      (x71/x65)**2*(x52/x71)**0.5 + 0.939576812963555*x3*x36*x33*x66/(x36*(1 + 
      x3))*(x72/x66)**2*(x53/x72)**0.5 + 0.951768454225611*x3*x37*x28*x61/(x37*
      (1 + x3))*(x67/x61)**2*(x48/x67)**0.5 + 0.356103631368655*x3*x37*x29*x62/
      (x37*(1 + x3))*(x68/x62)**2*(x49/x68)**0.5 + 0.406503501719981*x3*x37*x30
      *x63/(x37*(1 + x3))*(x69/x63)**2*(x50/x69)**0.5 + 1.59542910732042*x3*x37
      *x31*x64/(x37*(1 + x3))*(x70/x64)**2*(x51/x70)**0.5 + 2.25021195371744*x3
      *x37*x32*x65/(x37*(1 + x3))*(x71/x65)**2*(x52/x71)**0.5 + 
      0.62509185932603*x3*x37*x33*x66/(x37*(1 + x3))*(x72/x66)**2*(x53/x72)**
      0.5) =E= 0;

e34.. 3.7519601524818*x28*x48 - 0.527214630715374*x55*x34
       - 0.457896349928818*x38 - 0.607753501250318*x45 - 1.1661060700122*x46
       - 0.992989600575085*x47 =E= 0;

e35.. 2.23933785998082*x29*x49 - 0.253269811702126*x56*x34
       - 0.778789716740582*x39 - 0.355924318396589*x45 - 0.34784975931287*x46
       - 0.503504253828655*x47 =E= 0;

e36.. 2.25786798826508*x30*x50 - 0.167994710165089*x57*x34
       - 1.21025536645976*x40 - 0.213892059847378*x45 - 0.340841813074519*x46
       - 0.324884038718332*x47 =E= 0;

e37.. 5.71427752537492*x31*x51 - 0.338375959184034*x58*x34
       - 2.5079447990595*x41 - 0.437457474262105*x45 - 1.27751284231126*x46
       - 1.15298645055802*x47 =E= 0;

e38.. 5.17979521986334*x32*x52 - 0.334995617062756*x59*x34
       - 2.03105943505569*x42 - 0.692108776167754*x45 - 1.37586662320608*x46
       - 0.74576476837105*x47 =E= 0;

e39.. 2.34559907793512*x33*x53 - 0.263113611403309*x60*x34
       - 0.892588665840291*x43 - 0.189011419621288*x45 - 0.526435380097985*x46
       - 0.47445000097225*x47 =E= 0;

e40..  - (x35*(1 + x3))**0.141378095354526*(x36*(1 + x3))**0.547041122512037*(
      x37*(1 + x3))**0.311580782133437 + x61 =E= 0;

e41..  - (x35*(1 + x3))**0.527209565217681*(x36*(1 + x3))**0.254925097399343*(
      x37*(1 + x3))**0.217865337382976 + x62 =E= 0;

e42..  - (x35*(1 + x3))**0.32041468235626*(x36*(1 + x3))**0.418904935004183*(
      x37*(1 + x3))**0.260680382639557 + x63 =E= 0;

e43..  - (x35*(1 + x3))**0.203813669058399*(x36*(1 + x3))**0.416181562919682*(
      x37*(1 + x3))**0.380004768021919 + x64 =E= 0;

e44..  - (x35*(1 + x3))**0.162672767268467*(x36*(1 + x3))**0.281101900828008*(
      x37*(1 + x3))**0.556225331903524 + x65 =E= 0;

e45..  - (x35*(1 + x3))**0.0672631462506144*(x36*(1 + x3))**0.560104471892503*(
      x37*(1 + x3))**0.372632381856883 + x66 =E= 0;

e46..  - (0.052748733064088*x38**(-1) + 0.947251266935912*x61**(-1))**(-1)
       + x67 =E= 0;

e47..  - (0.177010794704126*x39**(-1) + 0.822989205295874*x62**(-1))**(-1)
       + x68 =E= 0;

e48..  - (0.25383308540291*x40**(-1) + 0.74616691459709*x63**(-1))**(-1) + x69
       =E= 0;

e49..  - (0.219024954331518*x41**(-1) + 0.780975045668482*x64**(-1))**(-1)
       + x70 =E= 0;

e50..  - (0.164980061338324*x42**(-1) + 0.835019938661676*x65**(-1))**(-1)
       + x71 =E= 0;

e51..  - (0.194470830846439*x43**(-1) + 0.805529169153561*x66**(-1))**(-1)
       + x72 =E= 0;

e52..  - (0.43185979043891*x28*x61/(x35*(1 + x3))*(x67/x61)**2*(x48/x67)**0.5
       + 0.861730658586976*x29*x62/(x35*(1 + x3))*(x68/x62)**2*(x49/x68)**0.5
       + 0.499652827962936*x30*x63/(x35*(1 + x3))*(x69/x63)**2*(x50/x69)**0.5
       + 0.855700473912962*x31*x64/(x35*(1 + x3))*(x70/x64)**2*(x51/x70)**0.5
       + 0.658093374135091*x32*x65/(x35*(1 + x3))*(x71/x65)**2*(x52/x71)**0.5
       + 0.112834115340152*x33*x66/(x35*(1 + x3))*(x72/x66)**2*(x53/x72)**0.5)
       + 4.030482792*x4 + 4.030482792*x5 + 4.030482792*x6 + 4.030482792*x7
       + 4.030482792*x8 + 4.030482792*x9 - 0.610611551622973*x34 =G= 0;

e53..  - (1.67101603637463*x28*x61/(x36*(1 + x3))*(x67/x61)**2*(x48/x67)**0.5
       + 0.416678274760781*x29*x62/(x36*(1 + x3))*(x68/x62)**2*(x49/x68)**0.5
       + 0.653237966135858*x30*x63/(x36*(1 + x3))*(x69/x63)**2*(x50/x69)**0.5
       + 1.74731538993181*x31*x64/(x36*(1 + x3))*(x70/x64)**2*(x51/x70)**0.5 + 
      1.13719893930611*x32*x65/(x36*(1 + x3))*(x71/x65)**2*(x52/x71)**0.5 + 
      0.939576812963555*x33*x66/(x36*(1 + x3))*(x72/x66)**2*(x53/x72)**0.5)
       + 8.059600248*x10 + 8.059600248*x11 + 8.059600248*x12 + 8.059600248*x13
       + 8.059600248*x14 + 8.059600248*x15 - 1.49457682852725*x34 =G= 0;

e54..  - (0.951768454225611*x28*x61/(x37*(1 + x3))*(x67/x61)**2*(x48/x67)**0.5
       + 0.356103631368655*x29*x62/(x37*(1 + x3))*(x68/x62)**2*(x49/x68)**0.5
       + 0.406503501719981*x30*x63/(x37*(1 + x3))*(x69/x63)**2*(x50/x69)**0.5
       + 1.59542910732042*x31*x64/(x37*(1 + x3))*(x70/x64)**2*(x51/x70)**0.5 + 
      2.25021195371744*x32*x65/(x37*(1 + x3))*(x71/x65)**2*(x52/x71)**0.5 + 
      0.62509185932603*x33*x66/(x37*(1 + x3))*(x72/x66)**2*(x53/x72)**0.5)
       + 6.302252136*x16 + 6.302252136*x17 + 6.302252136*x18 + 6.302252136*x19
       + 6.302252136*x20 + 6.302252136*x21 - 0.117143628321858*x34 =G= 0;

e55..  - x28*(x48/x55)**0.5 + x34 =E= 0;

e56..  - x29*(x49/x56)**0.5 + x34 =E= 0;

e57..  - x30*(x50/x57)**0.5 + x34 =E= 0;

e58..  - x31*(x51/x58)**0.5 + x34 =E= 0;

e59..  - x32*(x52/x59)**0.5 + x34 =E= 0;

e60..  - x33*(x53/x60)**0.5 + x34 =E= 0;

e61..  - 2.49614754954543*x4 - 2.83572441939247*x5 - 2.3320947346723*x6
       - 2.80090818077152*x7 - 2.71872646945045*x8 - 2.48054500949435*x9
       =G= -2.49614754954543;

e62..  - 5.03461248801492*x10 - 5.46928687342375*x11 - 5.69870920762198*x12
       - 4.93433138334768*x13 - 4.89338897203778*x14 - 5.17341564063088*x15
       =G= -5.03461248801492;

e63..  - 4.1945791130234*x16 - 4.42952349731294*x17 - 4.42616651714945*x18
       - 4.54557972013786*x19 - 3.87076832152186*x20 - 4.29960433782492*x21
       =G= -4.1945791130234;

e64..  - 1.53433524245457*x4 - 1.24681607053836*x5 - 1.71376693706547*x6
       - 1.27212778177126*x7 - 1.33527736924655*x8 - 1.55006685104741*x9
       - 3.02498775998508*x10 - 2.6355190298333*x11 - 2.4613006338936*x12
       - 3.12799606251235*x13 - 3.17167544708236*x14 - 2.89111620066988*x15
       - 2.1076730229766*x16 - 1.89103342074142*x17 - 1.89388883039355*x18
       - 1.79616131330366*x19 - 2.47310113564091*x20 - 2.00645236833425*x21
       + 0.431692663802322*x22 + 0.640851349767447*x23 + 1.01966457626782*x24
       + 1.99573230605071*x25 + 1.84764614912064*x26 + 0.731408980407322*x27
       =G= 0;

e65..  - 0.17010124072727*x28*(x67/x38)**2*(x48/x67)**0.5
       - 0.287795109201548*x22 =E= -0.457896349928818;

e66..  - 0.351555483562284*x29*(x68/x39)**2*(x49/x68)**0.5
       - 0.427234233178298*x23 =E= -0.778789716740582;

e67..  - 0.530478982281213*x30*(x69/x40)**2*(x50/x69)**0.5
       - 0.679776384178546*x24 =E= -1.21025536645976;

e68..  - 1.17745659502569*x31*(x70/x41)**2*(x51/x70)**0.5 - 1.3304882040338*x25
       =E= -2.5079447990595;

e69..  - 0.799295335641929*x32*(x71/x42)**2*(x52/x71)**0.5
       - 1.23176409941376*x26 =E= -2.03105943505569;

e70..  - 0.404982678902076*x33*(x72/x43)**2*(x53/x72)**0.5
       - 0.487605986938215*x27 =E= -0.892588665840291;

* set non default bounds

x2.lo = 0.3; x2.up = 0.7; 
x3.lo = -0.05; x3.up = 0.2; 
x35.lo = 0.0001; 
x36.lo = 0.0001; 
x37.lo = 0.0001; 
x38.lo = 0.0001; 
x39.lo = 0.0001; 
x40.lo = 0.0001; 
x41.lo = 0.0001; 
x42.lo = 0.0001; 
x43.lo = 0.0001; 
x44.fx = 1; 
x45.lo = 0.0001; 
x46.lo = 0.0001; 
x47.lo = 0.0001; 
x48.lo = 0.0001; 
x49.lo = 0.0001; 
x50.lo = 0.0001; 
x51.lo = 0.0001; 
x52.lo = 0.0001; 
x53.lo = 0.0001; 
x54.lo = 0.0001; 
x55.lo = 0.0001; 
x56.lo = 0.0001; 
x57.lo = 0.0001; 
x58.lo = 0.0001; 
x59.lo = 0.0001; 
x60.lo = 0.0001; 
x61.lo = 0.0001; 
x62.lo = 0.0001; 
x63.lo = 0.0001; 
x64.lo = 0.0001; 
x65.lo = 0.0001; 
x66.lo = 0.0001; 
x67.lo = 0.0001; 
x68.lo = 0.0001; 
x69.lo = 0.0001; 
x70.lo = 0.0001; 
x71.lo = 0.0001; 
x72.lo = 0.0001; 

* set non default levels

x2.l = 0.5; 
x4.l = 1; 
x10.l = 1; 
x16.l = 1; 
x22.l = 1; 
x23.l = 1; 
x24.l = 1; 
x25.l = 1; 
x26.l = 1; 
x27.l = 1; 
x28.l = 1; 
x29.l = 1; 
x30.l = 1; 
x31.l = 1; 
x32.l = 1; 
x33.l = 1; 
x34.l = 1; 
x35.l = 1; 
x36.l = 1; 
x37.l = 1; 
x38.l = 1; 
x39.l = 1; 
x40.l = 1; 
x41.l = 1; 
x42.l = 1; 
x43.l = 1; 
x45.l = 1; 
x46.l = 1; 
x47.l = 1; 
x48.l = 1; 
x49.l = 1; 
x50.l = 1; 
x51.l = 1; 
x52.l = 1; 
x53.l = 1; 
x54.l = 1; 
x55.l = 1; 
x56.l = 1; 
x57.l = 1; 
x58.l = 1; 
x59.l = 1; 
x60.l = 1; 
x61.l = 1; 
x62.l = 1; 
x63.l = 1; 
x64.l = 1; 
x65.l = 1; 
x66.l = 1; 
x67.l = 1; 
x68.l = 1; 
x69.l = 1; 
x70.l = 1; 
x71.l = 1; 
x72.l = 1; 

* set non default marginals


Model m / e1,e2.x4,e3.x5,e4.x6,e5.x7,e6.x8,e7.x9,e8.x10,e9.x11,e10.x12
         ,e11.x13,e12.x14,e13.x15,e14.x16,e15.x17,e16.x18,e17.x19,e18.x20
         ,e19.x21,e20.x22,e21.x23,e22.x24,e23.x25,e24.x26,e25.x27,e26.x34
         ,e27.x28,e28.x29,e29.x30,e30.x31,e31.x32,e32.x33,e33.x54,e34.x48
         ,e35.x49,e36.x50,e37.x51,e38.x52,e39.x53,e40.x61,e41.x62,e42.x63
         ,e43.x64,e44.x65,e45.x66,e46.x67,e47.x68,e48.x69,e49.x70,e50.x71
         ,e51.x72,e52.x35,e53.x36,e54.x37,e55.x55,e56.x56,e57.x57,e58.x58
         ,e59.x59,e60.x60,e61.x45,e62.x46,e63.x47,e64.x44,e65.x38,e66.x39
         ,e67.x40,e68.x41,e69.x42,e70.x43 /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MPEC minimizing objvar;