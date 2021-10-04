*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*   The small Bank Balancing problem (Thai model).
*   The problem is also named "MB64" in some references.
*   This is a nonlinear network problem with  conditioning
*   of the order of 10**4.
*   Source:
*   R. Dembo,
*   private communication, 1986.
*   SIF input: Ph. Toint, June 1990.
*   classification ONR2-MN-117-64
*   Number of arcs
*   Number of nodes
*   Constants
*   Objective
*   Network constraints
*   Network arcs
*   Solution

Parameter narcs ; narcs = 117 ;
Parameter nodes ; nodes =  64 ;


Variable    x1  ,    x2  ,    x3  ,    x4  ,    x5  ,    x6  ,
            x7  ,    x8  ,    x9  ,   x10  ,   x11  ,   x12  ,
           x13  ,   x14  ,   x15  ,   x16  ,   x17  ,   x18  ,
           x19  ,   x20  ,   x21  ,   x22  ,   x23  ,   x24  ,
           x25  ,   x26  ,   x27  ,   x28  ,   x29  ,   x30  ,
           x31  ,   x32  ,   x33  ,   x34  ,   x35  ,   x36  ,
           x37  ,   x38  ,   x39  ,   x40  ,   x41  ,   x42  ,
           x43  ,   x44  ,   x45  ,   x46  ,   x47  ,   x48  ,
           x49  ,   x50  ,   x51  ,   x52  ,   x53  ,   x54  ,
           x55  ,   x56  ,   x57  ,   x58  ,   x59  ,   x60  ,
           x61  ,   x62  ,   x63  ,   x64  ,   x65  ,   x66  ,
           x67  ,   x68  ,   x69  ,   x70  ,   x71  ,   x72  ,
           x73  ,   x74  ,   x75  ,   x76  ,   x77  ,   x78  ,
           x79  ,   x80  ,   x81  ,   x82  ,   x83  ,   x84  ,
          x117  ,   x85  ,   x86  ,   x87  ,   x88  ,   x89  ,
           x90  ,   x91  ,   x92  ,   x93  ,   x94  ,   x95  ,
           x96  ,   x97  ,   x98  ,   x99  ,  x100  ,  x101  ,
          x102  ,  x103  ,  x104  ,  x105  ,  x106  ,  x107  ,
          x108  ,  x109  ,  x110  ,  x111  ,  x112  ,  x113  ,
          x114  ,  x115  ,  x116  ,    obj ;

Equation  n1 ,  n2 ,  n3 ,  n4 ,  n5 ,  n6 ,  n7 ,  n8 ,  n9 , n10 ,
         n11 , n12 , n13 , n14 , n15 , n16 , n17 , n18 , n19 , n20 ,
         n21 , n22 , n23 , n24 , n25 , n26 , n27 , n28 , n29 , n30 ,
         n31 , n32 , n33 , n34 , n35 , n36 , n37 , n38 , n39 , n40 ,
         n41 , n42 , n43 , n44 , n45 , n46 , n47 , n48 , n49 , n50 ,
         n51 , n52 , n53 , n54 , n55 , n56 , n57 , n58 , n59 , n60 ,
         n61 , n62 , n63 , n64 , Def_obj ;

 n1..    -x1 +  x85  =e=  0;
 n2..    -x2 +  x86  =e=  0;
 n3..    -x3 +  x87  =e=  0;
 n4..    -x4 +  x88  =e=  0;
 n5..    -x5 -   x6 - x7 - x8 + x89 + x117  =e=  0;
 n6..    -x9 -  x10 - x11 - x12 + x90  =e=  0;
 n7..   -x13 -  x14 - x15 + x91  =e=  0;
 n8..   -x16 -  x17 - x18 - x19 - x20 + x92  =e=  0;
 n9..   -x21 +  x93  =e=  0;
n10..   -x22 +  x94  =e=  0;
n11..   -x23 -  x24 - x25 - x26 + x95  =e=  0;
n12..   -x27 -  x28 + x96  =e=  0;
n13..   -x29 -  x30 + x97  =e=  0;
n14..   -x31 +  x98  =e=  0;
n15..   -x32 -  x33 + x99  =e=  0;
n16..   -x34 + x100  =e=  0;
n17..   -x35 + x101  =e=  0;
n18..   -x36 + x102  =e=  0;
n19..   -x37 + x103  =e=  0;
n20..   -x38 -  x39 - x40 - x41 - x42 + x104  =e=  0;
n21..   -x43 -  x44 - x45 - x46 - x47 - x48 - x49 + x105  =e=  0;
n22..   -x50 -  x51 - x52 - x53 - x54 - x55 - x56 + x106  =e=  0;
n23..   -x57 -  x58 - x59 - x60 - x61 - x62 + x107  =e=  0;
n24..   -x63 + x108  =e=  0;
n25..   -x64 + x109  =e=  0;
n26..   -x65 + x110  =e=  0;
n27..   -x66 + x111  =e=  0;
n28..   -x67 + x112  =e=  0;
n29..   -x68 + x113  =e=  0;
n30..   -x69 + x114  =e=  0;
n31..   -x70 -  x71 - x72 - x73 - x74 - x75 - x76 - x77 - x78 + x115  =e=  0;
n32..   -x79 -  x80 - x81 - x82 - x83 - x84 + x116  =e=  0;
n33..     x8 -  x85  =e=  0;
n34..     x7 -  x86  =e=  0;
n35..     x6 -  x87  =e=  0;
n36..     x5 -  x88  =e=  0;
n37..    x12 +  x15 + x20 - x89  =e=  0;
n38..    x14 +  x19 + x21 + x26 + x84 - x90  =e=  0;
n39..    x11 +  x18 + x25 - x91  =e=  0;
n40..    x10 +  x13 + x22 + x24 + x83 - x92  =e=  0;
n41..    x42 +  x49 + x56 + x62 - x93  =e=  0;
n42..    x48 +  x55 + x61 - x94  =e=  0;
n43..    x41 +  x47 + x54 - x95  =e=  0;
n44..     x1 +  x40 + x46 + x53 + x60 - x96  =e=  0;
n45..     x2 +  x39 + x45 + x52 + x59 - x97  =e=  0;
n46..     x3 +  x44 + x51 + x58 - x98  =e=  0;
n47..     x4 +  x38 + x43 + x50 + x57 - x99  =e=  0;
n48..    x28 +  x78 - x100  =e=  0;
n49..    x30 +  x77 - x101  =e=  0;
n50..    x31 +  x76 - x102  =e=  0;
n51..    x33 +  x75 - x103  =e=  0;
n52..    x34 +  x63 - x104  =e=  0;
n53..    x35 +  x64 - x105  =e=  0;
n54..    x36 +  x65 - x106  =e=  0;
n55..    x37 +  x66 - x107  =e=  0;
n56..    x74 +  x82 - x108  =e=  0;
n57..    x73 +  x81 - x109  =e=  0;
n58..    x72 +  x80 - x110  =e=  0;
n59..    x79 - x111  =e=  0;
n60..    x27 +  x71 - x112  =e=  0;
n61..    x29 +  x70 - x113  =e=  0;
n62..    x32 - x114  =e=  0;
n63..    x17 - x115  =e=  0;
n64..     x9 +  x16 + x23 + x67 + x68 + x69 - x116 - x117  =e=  0;

Def_obj..       obj =e= x1 * ((log(x1/175726.0))  - 1.0 ) +   x2 *
                             ((log(x2/140841.0))  - 1.0 ) +   x3 *
                             ((log(x3/12891.0))   - 1.0 ) +   x4 *
                             ((log(x4/273191.0))  - 1.0 ) +   x5 *
                             ((log(x5/273191.0))  - 1.0 ) +   x6 *
                             ((log(x6/12891.0))   - 1.0 ) +   x7 *
                             ((log(x7/140841.0))  - 1.0 ) +   x8 *
                             ((log(x8/175726.0))  - 1.0 ) +   x9 *
                             ((log(x9/4759.0))    - 1.0 ) +  x10 *
                             ((log(x10/380.0))    - 1.0 ) +  x11 *
                             ((log(x11/3859.0))   - 1.0 ) +  x12 *
                             ((log(x12/520758.0)) - 1.0 ) +  x13 *
                             ((log(x13/9940.0))   - 1.0 ) +  x14 *
                             ((log(x14/6164.0))   - 1.0 ) +  x15 *
                             ((log(x15/63118.0))  - 1.0 ) +  x16 *
                             ((log(x16/2738.0))   - 1.0 ) +  x17 *
                             ((log(x17/71083.0))  - 1.0 ) +  x18 *
                             ((log(x18/10153))    - 1.0 ) +  x19 *
                             ((log(x19/9294.0))   - 1.0 ) +  x20 *
                             ((log(x20/4367.0))   - 1.0 ) +  x21 *
                             ((log(x21/442511.0)) - 1.0 ) +  x22 *
                             ((log(x22/84668))    - 1.0 ) +  x23 *
                             ((log(x23/48524.0))  - 1.0 ) +  x24 *
                             ((log(x24/2645.0))   - 1.0 ) +  x25 *
                             ((log(x25/65210.0))  - 1.0 ) +  x26 *
                             ((log(x26/71528.0))  - 1.0 ) +  x27 *
                             ((log(x27/74346.0))  - 1.0 ) +  x28 *
                             ((log(x28/226846.0)) - 1.0 ) +  x29 *
                             ((log(x29/58725))    - 1.0 ) +  x30 *
                             ((log(x30/410017))   - 1.0 ) +  x31 *
                             ((log(x31/52774.0))  - 1.0 ) +  x32 *
                             ((log(x32/31847.0))  - 1.0 ) +  x33 *
                             ((log(x33/416672.0)) - 1.0 ) +  x34 *
                             ((log(x34/228906.0)) - 1.0 ) +  x35 *
                             ((log(x35/437902))   - 1.0 ) +  x36 *
                             ((log(x36/53520.0))  - 1.0 ) +  x37 *
                             ((log(x37/434014.0)) - 1.0 ) +  x38 *
                             ((log(x38/11928.0))  - 1.0 ) +  x39 *
                             ((log(x39/46747))    - 1.0 ) +  x40 *
                             ((log(x40/22284.0))  - 1.0 ) +  x41 *
                             ((log(x41/19093.0))  - 1.0 ) +  x42 *
                             ((log(x42/131949.0)) - 1.0 ) +  x43 *
                             ((log(x43/29947.0))  - 1.0 ) +  x44 *
                             ((log(x44/982.0))    - 1.0 ) +  x45 *
                             ((log(x45/175800.0)) - 1.0 ) +  x46 *
                             ((log(x46/30274.0))  - 1.0 ) +  x47 *
                             ((log(x47/161094.0)) - 1.0 ) +  x48 *
                             ((log(x48/7203.0))   - 1.0 ) +  x49 *
                             ((log(x49/173359.0)) - 1.0 ) +  x50 *
                             ((log(x50/18971.0))  - 1.0 ) +  x51 *
                             ((log(x51/32905.0))  - 1.0 ) +  x52 *
                             ((log(x52/21978.0))  - 1.0 ) +  x53 *
                             ((log(x53/9613.0))   - 1.0 ) +  x54 *
                             ((log(x54/7720.0))   - 1.0 ) +  x55 *
                             ((log(x55/2846.0))   - 1.0 ) +  x56 *
                             ((log(x56/19522.0))  - 1.0 ) +  x57 *
                             ((log(x57/114482.0)) - 1.0 ) +  x58 *
                             ((log(x58/5996.0))   - 1.0 ) +  x59 *
                             ((log(x59/83376.0))  - 1.0 ) +  x60 *
                             ((log(x60/63295.0))  - 1.0 ) +  x61 *
                             ((log(x61/74619.0))  - 1.0 ) +  x62 *
                             ((log(x62/117681))   - 1.0 ) +  x63 *
                             ((log(x63/3095.0))   - 1.0 ) +  x64 *
                             ((log(x64/140757.0)) - 1.0 ) +  x65 *
                             ((log(x65/60035.0))  - 1.0 ) +  x66 *
                             ((log(x66/25435.0))  - 1.0 ) +  x67 *
                             ((log(x67/77587.0))  - 1.0 ) +  x68 *
                             ((log(x68/58884.0))  - 1.0 ) +  x69 *
                             ((log(x69/31847.0))  - 1.0 ) +  x70 *
                             ((log(x70/159.0))    - 1.0 ) +  x71 *
                             ((log(x71/3241.0))   - 1.0 ) +  x72 *
                             ((log(x72/2138.0))   - 1.0 ) +  x73 *
                             ((log(x73/16583.0))  - 1.0 ) +  x74 *
                             ((log(x74/929))      - 1.0 ) +  x75 *
                             ((log(x75/17342.0))  - 1.0 ) +  x76 *
                             ((log(x76/746.0))    - 1.0 ) +  x77 *
                             ((log(x77/27885.0))  - 1.0 ) +  x78 *
                             ((log(x78/2060.0))   - 1.0 ) +  x79 *
                             ((log(x79/25435.0))  - 1.0 ) +  x80 *
                             ((log(x80/57897.0))  - 1.0 ) +  x81 *
                             ((log(x81/124174.0)) - 1.0 ) +  x82 *
                             ((log(x82/2166.0))   - 1.0 ) +  x83 *
                             ((log(x83/2.0))      - 1.0 ) +  x84 *
                             ((log(x84/259.0))    - 1.0 ) + x117 *
                             ((log(x117/14406))   - 1.0 ) ;

      x1.lo =  0.1  ;  x2.lo =  0.1  ;  x3.lo =  0.1  ;  x4.lo =  0.1  ;
      x5.lo =  0.1  ;  x6.lo =  0.1  ;  x7.lo =  0.1  ;  x8.lo =  0.1  ;
      x9.lo =  0.1  ; x10.lo =  0.1  ; x11.lo =  0.1  ; x12.lo =  0.1  ;
     x13.lo =  0.1  ; x14.lo =  0.1  ; x15.lo =  0.1  ; x16.lo =  0.1  ;
     x17.lo =  0.1  ; x18.lo =  0.1  ; x19.lo =  0.1  ; x20.lo =  0.1  ;
     x21.lo =  0.1  ; x22.lo =  0.1  ; x23.lo =  0.1  ; x24.lo =  0.1  ;
     x25.lo =  0.1  ; x26.lo =  0.1  ; x27.lo =  0.1  ; x28.lo =  0.1  ;
     x29.lo =  0.1  ; x30.lo =  0.1  ; x31.lo =  0.1  ; x32.lo =  0.1  ;
     x33.lo =  0.1  ; x34.lo =  0.1  ; x35.lo =  0.1  ; x36.lo =  0.1  ;
     x37.lo =  0.1  ; x38.lo =  0.1  ; x39.lo =  0.1  ; x40.lo =  0.1  ;
     x41.lo =  0.1  ; x42.lo =  0.1  ; x43.lo =  0.1  ; x44.lo =  0.1  ;
     x45.lo =  0.1  ; x46.lo =  0.1  ; x47.lo =  0.1  ; x48.lo =  0.1  ;
     x49.lo =  0.1  ; x50.lo =  0.1  ; x51.lo =  0.1  ; x52.lo =  0.1  ;
     x53.lo =  0.1  ; x54.lo =  0.1  ; x55.lo =  0.1  ; x56.lo =  0.1  ;
     x57.lo =  0.1  ; x58.lo =  0.1  ; x59.lo =  0.1  ; x60.lo =  0.1  ;
     x61.lo =  0.1  ; x62.lo =  0.1  ; x63.lo =  0.1  ; x64.lo =  0.1  ;
     x65.lo =  0.1  ; x66.lo =  0.1  ; x67.lo =  0.1  ; x68.lo =  0.1  ;
     x69.lo =  0.1  ; x70.lo =  0.1  ; x71.lo =  0.1  ; x72.lo =  0.1  ;
     x73.lo =  0.1  ; x74.lo =  0.1  ; x75.lo =  0.1  ; x76.lo =  0.1  ;
     x77.lo =  0.1  ; x78.lo =  0.1  ; x79.lo =  0.1  ; x80.lo =  0.1  ;
     x81.lo =  0.1  ; x82.lo =  0.1  ; x83.lo =  0.1  ; x84.lo =  0.1  ;
    x117.lo =  0.1  ;

      x1.l = 0.1  ;    x2.l = 0.1  ;    x3.l = 0.1  ;    x4.l = 0.7  ;
      x5.l = 0.7  ;    x6.l = 0.1  ;    x7.l = 0.1  ;    x8.l = 0.1  ;
      x9.l = 0.1  ;   x10.l = 0.1  ;   x11.l = 0.1  ;   x12.l = 0.7  ;
     x13.l = 0.1  ;   x14.l = 0.1  ;   x15.l = 0.1  ;   x16.l = 0.1  ;
     x17.l = 0.9  ;   x18.l = 0.1  ;   x19.l = 0.1  ;   x20.l = 0.1  ;
     x21.l = 0.6  ;   x22.l = 0.9  ;   x23.l = 0.1  ;   x24.l = 0.1  ;
     x25.l = 0.1  ;   x26.l = 0.1  ;   x27.l = 0.1  ;   x28.l = 0.4  ;
     x29.l = 0.1  ;   x30.l = 0.4  ;   x31.l = 0.4  ;   x32.l = 0.1  ;
     x33.l = 1.0  ;   x34.l = 0.5  ;   x35.l = 0.5  ;   x36.l = 0.5  ;
     x37.l = 1.1  ;   x38.l = 0.1  ;   x39.l = 0.1  ;   x40.l = 0.1  ;
     x41.l = 0.1  ;   x42.l = 0.3  ;   x43.l = 0.1  ;   x44.l = 0.1  ;
     x45.l = 0.1  ;   x46.l = 0.1  ;   x47.l = 0.2  ;   x48.l = 0.1  ;
     x49.l = 0.1  ;   x50.l = 0.1  ;   x51.l = 0.1  ;   x52.l = 0.1  ;
     x53.l = 0.1  ;   x54.l = 0.1  ;   x55.l = 0.1  ;   x56.l = 0.1  ;
     x57.l = 0.1  ;   x58.l = 0.1  ;   x59.l = 0.1  ;   x60.l = 0.1  ;
     x61.l = 0.7  ;   x62.l = 0.1  ;   x63.l = 0.2  ;   x64.l = 0.3  ;
     x65.l = 0.2  ;   x66.l = 0.1  ;   x67.l = 0.2  ;   x68.l = 0.2  ;
     x69.l = 0.1  ;   x70.l = 0.1  ;   x71.l = 0.1  ;   x72.l = 0.1  ;
     x73.l = 0.1  ;   x74.l = 0.1  ;   x75.l = 0.1  ;   x76.l = 0.1  ;
     x77.l = 0.1  ;   x78.l = 0.1  ;   x79.l = 0.1  ;   x80.l = 0.1  ;
     x81.l = 0.2  ;   x82.l = 0.1  ;   x83.l = 0.1  ;   x84.l = 0.1  ;
    x117.l = 0.1  ;   x85.l = 0.1  ;   x86.l = 0.1  ;   x87.l = 0.1  ;
     x88.l = 0.7  ;   x89.l = 0.9  ;   x90.l = 1.0  ;   x91.l = 0.3  ;
     x92.l = 1.3  ;   x93.l = 0.6  ;   x94.l = 0.9  ;   x95.l = 0.4  ;
     x96.l = 0.5  ;   x97.l = 0.5  ;   x98.l = 0.4  ;   x99.l = 1.1  ;
    x100.l = 0.5  ;  x101.l = 0.5  ;  x102.l = 0.5  ;  x103.l = 1.1  ;
    x104.l = 0.7  ;  x105.l = 0.8  ;  x106.l = 0.7  ;  x107.l = 1.2  ;
    x108.l = 0.2  ;  x109.l = 0.3  ;  x110.l = 0.2  ;  x111.l = 0.1  ;
    x112.l = 0.2  ;  x113.l = 0.2  ;  x114.l = 0.1  ;  x115.l = 0.9  ;
    x116.l = 0.7  ;

Model smbank /all/ ;

Solve smbank using nlp minimazing obj ;

        display   x1.l ; display   x2.l ; display   x3.l ; display  x4.l ;
        display   x5.l ; display   x6.l ; display   x7.l ; display  x8.l ;
        display   x9.l ; display  x10.l ; display  x11.l ; display x12.l ;
        display  x13.l ; display  x14.l ; display  x15.l ; display x16.l ;
        display  x17.l ; display  x18.l ; display  x19.l ; display x20.l ;
        display  x21.l ; display  x22.l ; display  x23.l ; display x24.l ;
        display  x25.l ; display  x26.l ; display  x27.l ; display x28.l ;
        display  x29.l ; display  x30.l ; display  x31.l ; display x32.l ;
        display  x33.l ; display  x34.l ; display  x35.l ; display x36.l ;
        display  x37.l ; display  x38.l ; display  x39.l ; display x40.l ;
        display  x41.l ; display  x42.l ; display  x43.l ; display x44.l ;
        display  x45.l ; display  x46.l ; display  x47.l ; display x48.l ;
        display  x49.l ; display  x50.l ; display  x51.l ; display x52.l ;
        display  x53.l ; display  x54.l ; display  x55.l ; display x56.l ;
        display  x57.l ; display  x58.l ; display  x59.l ; display x60.l ;
        display  x61.l ; display  x62.l ; display  x63.l ; display x64.l ;
        display  x65.l ; display  x66.l ; display  x67.l ; display x68.l ;
        display  x69.l ; display  x70.l ; display  x71.l ; display x72.l ;
        display  x73.l ; display  x74.l ; display  x75.l ; display x76.l ;
        display  x77.l ; display  x78.l ; display  x79.l ; display x80.l ;
        display  x81.l ; display  x82.l ; display  x83.l ; display x84.l ;
        display  x85.l ; display  x86.l ; display  x87.l ; display x88.l ;
        display  x89.l ; display  x90.l ; display  x91.l ; display x92.l ;
        display  x93.l ; display  x94.l ; display  x95.l ; display x96.l ;
        display  x97.l ; display  x98.l ; display  x99.l ; display x100.l ;
        display x101.l ; display x102.l ; display x103.l ; display x104.l ;
        display x105.l ; display x106.l ; display x107.l ; display x108.l ;
        display x109.l ; display x110.l ; display x111.l ; display x112.l ;
        display x113.l ; display x114.l ; display x115.l ; display x116.l ;
        display x117.l ; display obj.l ;
