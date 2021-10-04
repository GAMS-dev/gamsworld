*******************************************************
*   Mosel User Guide Example Problems
*   =================================
*
* origin file setcomp.mos
*   ````````````````
*   Comparison operators for sets.
*
*   (c) 2001 Dash Associates
*       author: S. Heipcke
********************************************************

* model "Set comparisons"

SET ALL_together / red    ,
                   orange ,
                   yellow ,
                   green  ,
                   blue   ,
                   purple ,
                   brown  ,
                   black  / ;

SET RAINBOW(ALL_together) /   red ,  orange ,  yellow ,
                            green ,  blue   ,  purple  / ;
SET BRIGHT(ALL_together)  /   yellow ,  orange   / ;
SET DARK(ALL_together)    /   blue ,  brown , black  / ;

Parameter A ;  A = card(RAINBOW) ;
Parameter B ;  B = card(BRIGHT) ;
Parameter C ;  C = card(DARK)    ;

Set RAINBOW1(ALL_together);  RAINBOW1(ALL_together) = RAINBOW(ALL_together);
Set BRIGHT1(ALL_together);  BRIGHT1(ALL_together) = BRIGHT(ALL_together);

RAINBOW1(ALL_together) = RAINBOW(ALL_together) - BRIGHT(ALL_together) ;
If ( card(RAINBOW1) eq
    {A -  card(BRIGHT)},
   display "BRIGHT is included in RAINBOW" );
************************************************************************

RAINBOW1(ALL_together) = RAINBOW(ALL_together) - DARK(ALL_together) ;
If ( card(RAINBOW1) le A ,
   display "RAINBOW is a superset of DARK" );
************************************************************************


BRIGHT1(ALL_together) = BRIGHT(ALL_together) - DARK(ALL_together) ;
If ( card(BRIGHT1) eq B ,
   display "BRIGHT is different from DARK" );
************************************************************************


RAINBOW1(ALL_together) = RAINBOW(ALL_together) - BRIGHT(ALL_together) ;
If ( card(RAINBOW1) eq (A - B) ,
   display "BRIGHT is subset in the RAINBOW" );

* WAS received in origin model:
* writeln("BRIGHT is included in RAINBOW: ", BRIGHT <= RAINBOW)
* writeln("RAINBOW is a superset of DARK: ", RAINBOW >= DARK)
* writeln("BRIGHT is different from DARK: ", BRIGHT <> DARK)
* writeln("BRIGHT is the same as RAINBOW: ", BRIGHT = RAINBOW)

