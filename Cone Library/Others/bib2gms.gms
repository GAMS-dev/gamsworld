Sets a(a)     Authors
     cr(a)    Credit Authors
     r(r)     References
     ro(r)    Overflow References
     ar(a,r)  Author Cross Referenec
     far(a,r) First Author Cross Reference
     crr(r,r) Cross Referenced References;

$offlisting offinclude onempty
sets a     /
$include "cone.a"
           /
     cr    /
$include "cone.ca"
           /
     r     /
$include "cone.r"
           /
     ro    /
$include "cone.ro"
           /
     ar    /
$include "cone.ar"
           /
     far   /
$include "cone.far"
           /
     crr   /
$include "cone.crr"
           /;
$offempty
