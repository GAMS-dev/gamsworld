*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file datainout.mos
*   ``````````````````
*   Data input and output through a static module.
*
*   (c) 2006 Dash Associates
*       author: S. Heipcke, Mar. 2006
********************************************************

* model "Data input/output (static module)"
* uses "datainout"                  ! Defines 'readdata' and 'writedata'

$Set input  input.txt
$Set output input.txt

Set I / i1*i3 /;
Set J / j1*j3 /;


Table A_output[I,J]
         j1  j2  j3
    i1    2   4   6
    i2   12  14  16
    i3   22  24  26  ;


file result / %input% /
put result;

put "            ";
Loop{J, Put J.TL:11 } ; Put /;

Loop{I, Put I.TL:6 ;
Loop{J,  Put "  " ; Put A_output[I,J]:8:2 ;  } ; Put /;
    };
put ";";


Table B_input[I,J]
$INCLUDE '%output%';

Display A_output , B_input ;