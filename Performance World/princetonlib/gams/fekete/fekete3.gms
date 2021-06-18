*  NLP written by GAMS Convert at 11/29/04 16:20:29
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         31       31        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         31        1       30        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30;

Equations  e1;


e1.. log(1e-5 + sqr(cos(x1)*sin(x16) - cos(x2)*sin(x17)) + sqr(sin(x1)*sin(x16)
      - sin(x2)*sin(x17)) + sqr(cos(x16) - cos(x17))) + log(1e-5 + sqr(cos(x1)*
     sin(x16) - cos(x3)*sin(x18)) + sqr(sin(x1)*sin(x16) - sin(x3)*sin(x18)) + 
     sqr(cos(x16) - cos(x18))) + log(1e-5 + sqr(cos(x1)*sin(x16) - cos(x4)*sin(
     x19)) + sqr(sin(x1)*sin(x16) - sin(x4)*sin(x19)) + sqr(cos(x16) - cos(x19)
     )) + log(1e-5 + sqr(cos(x1)*sin(x16) - cos(x5)*sin(x20)) + sqr(sin(x1)*
     sin(x16) - sin(x5)*sin(x20)) + sqr(cos(x16) - cos(x20))) + log(1e-5 + sqr(
     cos(x1)*sin(x16) - cos(x6)*sin(x21)) + sqr(sin(x1)*sin(x16) - sin(x6)*sin(
     x21)) + sqr(cos(x16) - cos(x21))) + log(1e-5 + sqr(cos(x1)*sin(x16) - cos(
     x7)*sin(x22)) + sqr(sin(x1)*sin(x16) - sin(x7)*sin(x22)) + sqr(cos(x16) - 
     cos(x22))) + log(1e-5 + sqr(cos(x1)*sin(x16) - cos(x8)*sin(x23)) + sqr(
     sin(x1)*sin(x16) - sin(x8)*sin(x23)) + sqr(cos(x16) - cos(x23))) + log(
     1e-5 + sqr(cos(x1)*sin(x16) - cos(x9)*sin(x24)) + sqr(sin(x1)*sin(x16) - 
     sin(x9)*sin(x24)) + sqr(cos(x16) - cos(x24))) + log(1e-5 + sqr(cos(x1)*
     sin(x16) - cos(x10)*sin(x25)) + sqr(sin(x1)*sin(x16) - sin(x10)*sin(x25))
      + sqr(cos(x16) - cos(x25))) + log(1e-5 + sqr(cos(x1)*sin(x16) - cos(x11)*
     sin(x26)) + sqr(sin(x1)*sin(x16) - sin(x11)*sin(x26)) + sqr(cos(x16) - 
     cos(x26))) + log(1e-5 + sqr(cos(x1)*sin(x16) - cos(x12)*sin(x27)) + sqr(
     sin(x1)*sin(x16) - sin(x12)*sin(x27)) + sqr(cos(x16) - cos(x27))) + log(
     1e-5 + sqr(cos(x1)*sin(x16) - cos(x13)*sin(x28)) + sqr(sin(x1)*sin(x16) - 
     sin(x13)*sin(x28)) + sqr(cos(x16) - cos(x28))) + log(1e-5 + sqr(cos(x1)*
     sin(x16) - cos(x14)*sin(x29)) + sqr(sin(x1)*sin(x16) - sin(x14)*sin(x29))
      + sqr(cos(x16) - cos(x29))) + log(1e-5 + sqr(cos(x1)*sin(x16) - cos(x15)*
     sin(x30)) + sqr(sin(x1)*sin(x16) - sin(x15)*sin(x30)) + sqr(cos(x16) - 
     cos(x30))) + log(1e-5 + sqr(cos(x2)*sin(x17) - cos(x3)*sin(x18)) + sqr(
     sin(x2)*sin(x17) - sin(x3)*sin(x18)) + sqr(cos(x17) - cos(x18))) + log(
     1e-5 + sqr(cos(x2)*sin(x17) - cos(x4)*sin(x19)) + sqr(sin(x2)*sin(x17) - 
     sin(x4)*sin(x19)) + sqr(cos(x17) - cos(x19))) + log(1e-5 + sqr(cos(x2)*
     sin(x17) - cos(x5)*sin(x20)) + sqr(sin(x2)*sin(x17) - sin(x5)*sin(x20)) + 
     sqr(cos(x17) - cos(x20))) + log(1e-5 + sqr(cos(x2)*sin(x17) - cos(x6)*sin(
     x21)) + sqr(sin(x2)*sin(x17) - sin(x6)*sin(x21)) + sqr(cos(x17) - cos(x21)
     )) + log(1e-5 + sqr(cos(x2)*sin(x17) - cos(x7)*sin(x22)) + sqr(sin(x2)*
     sin(x17) - sin(x7)*sin(x22)) + sqr(cos(x17) - cos(x22))) + log(1e-5 + sqr(
     cos(x2)*sin(x17) - cos(x8)*sin(x23)) + sqr(sin(x2)*sin(x17) - sin(x8)*sin(
     x23)) + sqr(cos(x17) - cos(x23))) + log(1e-5 + sqr(cos(x2)*sin(x17) - cos(
     x9)*sin(x24)) + sqr(sin(x2)*sin(x17) - sin(x9)*sin(x24)) + sqr(cos(x17) - 
     cos(x24))) + log(1e-5 + sqr(cos(x2)*sin(x17) - cos(x10)*sin(x25)) + sqr(
     sin(x2)*sin(x17) - sin(x10)*sin(x25)) + sqr(cos(x17) - cos(x25))) + log(
     1e-5 + sqr(cos(x2)*sin(x17) - cos(x11)*sin(x26)) + sqr(sin(x2)*sin(x17) - 
     sin(x11)*sin(x26)) + sqr(cos(x17) - cos(x26))) + log(1e-5 + sqr(cos(x2)*
     sin(x17) - cos(x12)*sin(x27)) + sqr(sin(x2)*sin(x17) - sin(x12)*sin(x27))
      + sqr(cos(x17) - cos(x27))) + log(1e-5 + sqr(cos(x2)*sin(x17) - cos(x13)*
     sin(x28)) + sqr(sin(x2)*sin(x17) - sin(x13)*sin(x28)) + sqr(cos(x17) - 
     cos(x28))) + log(1e-5 + sqr(cos(x2)*sin(x17) - cos(x14)*sin(x29)) + sqr(
     sin(x2)*sin(x17) - sin(x14)*sin(x29)) + sqr(cos(x17) - cos(x29))) + log(
     1e-5 + sqr(cos(x2)*sin(x17) - cos(x15)*sin(x30)) + sqr(sin(x2)*sin(x17) - 
     sin(x15)*sin(x30)) + sqr(cos(x17) - cos(x30))) + log(1e-5 + sqr(cos(x3)*
     sin(x18) - cos(x4)*sin(x19)) + sqr(sin(x3)*sin(x18) - sin(x4)*sin(x19)) + 
     sqr(cos(x18) - cos(x19))) + log(1e-5 + sqr(cos(x3)*sin(x18) - cos(x5)*sin(
     x20)) + sqr(sin(x3)*sin(x18) - sin(x5)*sin(x20)) + sqr(cos(x18) - cos(x20)
     )) + log(1e-5 + sqr(cos(x3)*sin(x18) - cos(x6)*sin(x21)) + sqr(sin(x3)*
     sin(x18) - sin(x6)*sin(x21)) + sqr(cos(x18) - cos(x21))) + log(1e-5 + sqr(
     cos(x3)*sin(x18) - cos(x7)*sin(x22)) + sqr(sin(x3)*sin(x18) - sin(x7)*sin(
     x22)) + sqr(cos(x18) - cos(x22))) + log(1e-5 + sqr(cos(x3)*sin(x18) - cos(
     x8)*sin(x23)) + sqr(sin(x3)*sin(x18) - sin(x8)*sin(x23)) + sqr(cos(x18) - 
     cos(x23))) + log(1e-5 + sqr(cos(x3)*sin(x18) - cos(x9)*sin(x24)) + sqr(
     sin(x3)*sin(x18) - sin(x9)*sin(x24)) + sqr(cos(x18) - cos(x24))) + log(
     1e-5 + sqr(cos(x3)*sin(x18) - cos(x10)*sin(x25)) + sqr(sin(x3)*sin(x18) - 
     sin(x10)*sin(x25)) + sqr(cos(x18) - cos(x25))) + log(1e-5 + sqr(cos(x3)*
     sin(x18) - cos(x11)*sin(x26)) + sqr(sin(x3)*sin(x18) - sin(x11)*sin(x26))
      + sqr(cos(x18) - cos(x26))) + log(1e-5 + sqr(cos(x3)*sin(x18) - cos(x12)*
     sin(x27)) + sqr(sin(x3)*sin(x18) - sin(x12)*sin(x27)) + sqr(cos(x18) - 
     cos(x27))) + log(1e-5 + sqr(cos(x3)*sin(x18) - cos(x13)*sin(x28)) + sqr(
     sin(x3)*sin(x18) - sin(x13)*sin(x28)) + sqr(cos(x18) - cos(x28))) + log(
     1e-5 + sqr(cos(x3)*sin(x18) - cos(x14)*sin(x29)) + sqr(sin(x3)*sin(x18) - 
     sin(x14)*sin(x29)) + sqr(cos(x18) - cos(x29))) + log(1e-5 + sqr(cos(x3)*
     sin(x18) - cos(x15)*sin(x30)) + sqr(sin(x3)*sin(x18) - sin(x15)*sin(x30))
      + sqr(cos(x18) - cos(x30))) + log(1e-5 + sqr(cos(x4)*sin(x19) - cos(x5)*
     sin(x20)) + sqr(sin(x4)*sin(x19) - sin(x5)*sin(x20)) + sqr(cos(x19) - cos(
     x20))) + log(1e-5 + sqr(cos(x4)*sin(x19) - cos(x6)*sin(x21)) + sqr(sin(x4)
     *sin(x19) - sin(x6)*sin(x21)) + sqr(cos(x19) - cos(x21))) + log(1e-5 + 
     sqr(cos(x4)*sin(x19) - cos(x7)*sin(x22)) + sqr(sin(x4)*sin(x19) - sin(x7)*
     sin(x22)) + sqr(cos(x19) - cos(x22))) + log(1e-5 + sqr(cos(x4)*sin(x19) - 
     cos(x8)*sin(x23)) + sqr(sin(x4)*sin(x19) - sin(x8)*sin(x23)) + sqr(cos(x19
     ) - cos(x23))) + log(1e-5 + sqr(cos(x4)*sin(x19) - cos(x9)*sin(x24)) + 
     sqr(sin(x4)*sin(x19) - sin(x9)*sin(x24)) + sqr(cos(x19) - cos(x24))) + 
     log(1e-5 + sqr(cos(x4)*sin(x19) - cos(x10)*sin(x25)) + sqr(sin(x4)*sin(x19
     ) - sin(x10)*sin(x25)) + sqr(cos(x19) - cos(x25))) + log(1e-5 + sqr(cos(x4
     )*sin(x19) - cos(x11)*sin(x26)) + sqr(sin(x4)*sin(x19) - sin(x11)*sin(x26)
     ) + sqr(cos(x19) - cos(x26))) + log(1e-5 + sqr(cos(x4)*sin(x19) - cos(x12)
     *sin(x27)) + sqr(sin(x4)*sin(x19) - sin(x12)*sin(x27)) + sqr(cos(x19) - 
     cos(x27))) + log(1e-5 + sqr(cos(x4)*sin(x19) - cos(x13)*sin(x28)) + sqr(
     sin(x4)*sin(x19) - sin(x13)*sin(x28)) + sqr(cos(x19) - cos(x28))) + log(
     1e-5 + sqr(cos(x4)*sin(x19) - cos(x14)*sin(x29)) + sqr(sin(x4)*sin(x19) - 
     sin(x14)*sin(x29)) + sqr(cos(x19) - cos(x29))) + log(1e-5 + sqr(cos(x4)*
     sin(x19) - cos(x15)*sin(x30)) + sqr(sin(x4)*sin(x19) - sin(x15)*sin(x30))
      + sqr(cos(x19) - cos(x30))) + log(1e-5 + sqr(cos(x5)*sin(x20) - cos(x6)*
     sin(x21)) + sqr(sin(x5)*sin(x20) - sin(x6)*sin(x21)) + sqr(cos(x20) - cos(
     x21))) + log(1e-5 + sqr(cos(x5)*sin(x20) - cos(x7)*sin(x22)) + sqr(sin(x5)
     *sin(x20) - sin(x7)*sin(x22)) + sqr(cos(x20) - cos(x22))) + log(1e-5 + 
     sqr(cos(x5)*sin(x20) - cos(x8)*sin(x23)) + sqr(sin(x5)*sin(x20) - sin(x8)*
     sin(x23)) + sqr(cos(x20) - cos(x23))) + log(1e-5 + sqr(cos(x5)*sin(x20) - 
     cos(x9)*sin(x24)) + sqr(sin(x5)*sin(x20) - sin(x9)*sin(x24)) + sqr(cos(x20
     ) - cos(x24))) + log(1e-5 + sqr(cos(x5)*sin(x20) - cos(x10)*sin(x25)) + 
     sqr(sin(x5)*sin(x20) - sin(x10)*sin(x25)) + sqr(cos(x20) - cos(x25))) + 
     log(1e-5 + sqr(cos(x5)*sin(x20) - cos(x11)*sin(x26)) + sqr(sin(x5)*sin(x20
     ) - sin(x11)*sin(x26)) + sqr(cos(x20) - cos(x26))) + log(1e-5 + sqr(cos(x5
     )*sin(x20) - cos(x12)*sin(x27)) + sqr(sin(x5)*sin(x20) - sin(x12)*sin(x27)
     ) + sqr(cos(x20) - cos(x27))) + log(1e-5 + sqr(cos(x5)*sin(x20) - cos(x13)
     *sin(x28)) + sqr(sin(x5)*sin(x20) - sin(x13)*sin(x28)) + sqr(cos(x20) - 
     cos(x28))) + log(1e-5 + sqr(cos(x5)*sin(x20) - cos(x14)*sin(x29)) + sqr(
     sin(x5)*sin(x20) - sin(x14)*sin(x29)) + sqr(cos(x20) - cos(x29))) + log(
     1e-5 + sqr(cos(x5)*sin(x20) - cos(x15)*sin(x30)) + sqr(sin(x5)*sin(x20) - 
     sin(x15)*sin(x30)) + sqr(cos(x20) - cos(x30))) + log(1e-5 + sqr(cos(x6)*
     sin(x21) - cos(x7)*sin(x22)) + sqr(sin(x6)*sin(x21) - sin(x7)*sin(x22)) + 
     sqr(cos(x21) - cos(x22))) + log(1e-5 + sqr(cos(x6)*sin(x21) - cos(x8)*sin(
     x23)) + sqr(sin(x6)*sin(x21) - sin(x8)*sin(x23)) + sqr(cos(x21) - cos(x23)
     )) + log(1e-5 + sqr(cos(x6)*sin(x21) - cos(x9)*sin(x24)) + sqr(sin(x6)*
     sin(x21) - sin(x9)*sin(x24)) + sqr(cos(x21) - cos(x24))) + log(1e-5 + sqr(
     cos(x6)*sin(x21) - cos(x10)*sin(x25)) + sqr(sin(x6)*sin(x21) - sin(x10)*
     sin(x25)) + sqr(cos(x21) - cos(x25))) + log(1e-5 + sqr(cos(x6)*sin(x21) - 
     cos(x11)*sin(x26)) + sqr(sin(x6)*sin(x21) - sin(x11)*sin(x26)) + sqr(cos(
     x21) - cos(x26))) + log(1e-5 + sqr(cos(x6)*sin(x21) - cos(x12)*sin(x27))
      + sqr(sin(x6)*sin(x21) - sin(x12)*sin(x27)) + sqr(cos(x21) - cos(x27)))
      + log(1e-5 + sqr(cos(x6)*sin(x21) - cos(x13)*sin(x28)) + sqr(sin(x6)*sin(
     x21) - sin(x13)*sin(x28)) + sqr(cos(x21) - cos(x28))) + log(1e-5 + sqr(
     cos(x6)*sin(x21) - cos(x14)*sin(x29)) + sqr(sin(x6)*sin(x21) - sin(x14)*
     sin(x29)) + sqr(cos(x21) - cos(x29))) + log(1e-5 + sqr(cos(x6)*sin(x21) - 
     cos(x15)*sin(x30)) + sqr(sin(x6)*sin(x21) - sin(x15)*sin(x30)) + sqr(cos(
     x21) - cos(x30))) + log(1e-5 + sqr(cos(x7)*sin(x22) - cos(x8)*sin(x23)) + 
     sqr(sin(x7)*sin(x22) - sin(x8)*sin(x23)) + sqr(cos(x22) - cos(x23))) + 
     log(1e-5 + sqr(cos(x7)*sin(x22) - cos(x9)*sin(x24)) + sqr(sin(x7)*sin(x22)
      - sin(x9)*sin(x24)) + sqr(cos(x22) - cos(x24))) + log(1e-5 + sqr(cos(x7)*
     sin(x22) - cos(x10)*sin(x25)) + sqr(sin(x7)*sin(x22) - sin(x10)*sin(x25))
      + sqr(cos(x22) - cos(x25))) + log(1e-5 + sqr(cos(x7)*sin(x22) - cos(x11)*
     sin(x26)) + sqr(sin(x7)*sin(x22) - sin(x11)*sin(x26)) + sqr(cos(x22) - 
     cos(x26))) + log(1e-5 + sqr(cos(x7)*sin(x22) - cos(x12)*sin(x27)) + sqr(
     sin(x7)*sin(x22) - sin(x12)*sin(x27)) + sqr(cos(x22) - cos(x27))) + log(
     1e-5 + sqr(cos(x7)*sin(x22) - cos(x13)*sin(x28)) + sqr(sin(x7)*sin(x22) - 
     sin(x13)*sin(x28)) + sqr(cos(x22) - cos(x28))) + log(1e-5 + sqr(cos(x7)*
     sin(x22) - cos(x14)*sin(x29)) + sqr(sin(x7)*sin(x22) - sin(x14)*sin(x29))
      + sqr(cos(x22) - cos(x29))) + log(1e-5 + sqr(cos(x7)*sin(x22) - cos(x15)*
     sin(x30)) + sqr(sin(x7)*sin(x22) - sin(x15)*sin(x30)) + sqr(cos(x22) - 
     cos(x30))) + log(1e-5 + sqr(cos(x8)*sin(x23) - cos(x9)*sin(x24)) + sqr(
     sin(x8)*sin(x23) - sin(x9)*sin(x24)) + sqr(cos(x23) - cos(x24))) + log(
     1e-5 + sqr(cos(x8)*sin(x23) - cos(x10)*sin(x25)) + sqr(sin(x8)*sin(x23) - 
     sin(x10)*sin(x25)) + sqr(cos(x23) - cos(x25))) + log(1e-5 + sqr(cos(x8)*
     sin(x23) - cos(x11)*sin(x26)) + sqr(sin(x8)*sin(x23) - sin(x11)*sin(x26))
      + sqr(cos(x23) - cos(x26))) + log(1e-5 + sqr(cos(x8)*sin(x23) - cos(x12)*
     sin(x27)) + sqr(sin(x8)*sin(x23) - sin(x12)*sin(x27)) + sqr(cos(x23) - 
     cos(x27))) + log(1e-5 + sqr(cos(x8)*sin(x23) - cos(x13)*sin(x28)) + sqr(
     sin(x8)*sin(x23) - sin(x13)*sin(x28)) + sqr(cos(x23) - cos(x28))) + log(
     1e-5 + sqr(cos(x8)*sin(x23) - cos(x14)*sin(x29)) + sqr(sin(x8)*sin(x23) - 
     sin(x14)*sin(x29)) + sqr(cos(x23) - cos(x29))) + log(1e-5 + sqr(cos(x8)*
     sin(x23) - cos(x15)*sin(x30)) + sqr(sin(x8)*sin(x23) - sin(x15)*sin(x30))
      + sqr(cos(x23) - cos(x30))) + log(1e-5 + sqr(cos(x9)*sin(x24) - cos(x10)*
     sin(x25)) + sqr(sin(x9)*sin(x24) - sin(x10)*sin(x25)) + sqr(cos(x24) - 
     cos(x25))) + log(1e-5 + sqr(cos(x9)*sin(x24) - cos(x11)*sin(x26)) + sqr(
     sin(x9)*sin(x24) - sin(x11)*sin(x26)) + sqr(cos(x24) - cos(x26))) + log(
     1e-5 + sqr(cos(x9)*sin(x24) - cos(x12)*sin(x27)) + sqr(sin(x9)*sin(x24) - 
     sin(x12)*sin(x27)) + sqr(cos(x24) - cos(x27))) + log(1e-5 + sqr(cos(x9)*
     sin(x24) - cos(x13)*sin(x28)) + sqr(sin(x9)*sin(x24) - sin(x13)*sin(x28))
      + sqr(cos(x24) - cos(x28))) + log(1e-5 + sqr(cos(x9)*sin(x24) - cos(x14)*
     sin(x29)) + sqr(sin(x9)*sin(x24) - sin(x14)*sin(x29)) + sqr(cos(x24) - 
     cos(x29))) + log(1e-5 + sqr(cos(x9)*sin(x24) - cos(x15)*sin(x30)) + sqr(
     sin(x9)*sin(x24) - sin(x15)*sin(x30)) + sqr(cos(x24) - cos(x30))) + log(
     1e-5 + sqr(cos(x10)*sin(x25) - cos(x11)*sin(x26)) + sqr(sin(x10)*sin(x25)
      - sin(x11)*sin(x26)) + sqr(cos(x25) - cos(x26))) + log(1e-5 + sqr(cos(x10
     )*sin(x25) - cos(x12)*sin(x27)) + sqr(sin(x10)*sin(x25) - sin(x12)*sin(x27
     )) + sqr(cos(x25) - cos(x27))) + log(1e-5 + sqr(cos(x10)*sin(x25) - cos(
     x13)*sin(x28)) + sqr(sin(x10)*sin(x25) - sin(x13)*sin(x28)) + sqr(cos(x25)
      - cos(x28))) + log(1e-5 + sqr(cos(x10)*sin(x25) - cos(x14)*sin(x29)) + 
     sqr(sin(x10)*sin(x25) - sin(x14)*sin(x29)) + sqr(cos(x25) - cos(x29))) + 
     log(1e-5 + sqr(cos(x10)*sin(x25) - cos(x15)*sin(x30)) + sqr(sin(x10)*sin(
     x25) - sin(x15)*sin(x30)) + sqr(cos(x25) - cos(x30))) + log(1e-5 + sqr(
     cos(x11)*sin(x26) - cos(x12)*sin(x27)) + sqr(sin(x11)*sin(x26) - sin(x12)*
     sin(x27)) + sqr(cos(x26) - cos(x27))) + log(1e-5 + sqr(cos(x11)*sin(x26)
      - cos(x13)*sin(x28)) + sqr(sin(x11)*sin(x26) - sin(x13)*sin(x28)) + sqr(
     cos(x26) - cos(x28))) + log(1e-5 + sqr(cos(x11)*sin(x26) - cos(x14)*sin(
     x29)) + sqr(sin(x11)*sin(x26) - sin(x14)*sin(x29)) + sqr(cos(x26) - cos(
     x29))) + log(1e-5 + sqr(cos(x11)*sin(x26) - cos(x15)*sin(x30)) + sqr(sin(
     x11)*sin(x26) - sin(x15)*sin(x30)) + sqr(cos(x26) - cos(x30))) + log(1e-5
      + sqr(cos(x12)*sin(x27) - cos(x13)*sin(x28)) + sqr(sin(x12)*sin(x27) - 
     sin(x13)*sin(x28)) + sqr(cos(x27) - cos(x28))) + log(1e-5 + sqr(cos(x12)*
     sin(x27) - cos(x14)*sin(x29)) + sqr(sin(x12)*sin(x27) - sin(x14)*sin(x29))
      + sqr(cos(x27) - cos(x29))) + log(1e-5 + sqr(cos(x12)*sin(x27) - cos(x15)
     *sin(x30)) + sqr(sin(x12)*sin(x27) - sin(x15)*sin(x30)) + sqr(cos(x27) - 
     cos(x30))) + log(1e-5 + sqr(cos(x13)*sin(x28) - cos(x14)*sin(x29)) + sqr(
     sin(x13)*sin(x28) - sin(x14)*sin(x29)) + sqr(cos(x28) - cos(x29))) + log(
     1e-5 + sqr(cos(x13)*sin(x28) - cos(x15)*sin(x30)) + sqr(sin(x13)*sin(x28)
      - sin(x15)*sin(x30)) + sqr(cos(x28) - cos(x30))) + log(1e-5 + sqr(cos(x14
     )*sin(x29) - cos(x15)*sin(x30)) + sqr(sin(x14)*sin(x29) - sin(x15)*sin(x30
     )) + sqr(cos(x29) - cos(x30))) + objvar =E= 0;

* set non default bounds

x1.up = 6.28318530717959; 
x2.up = 6.28318530717959; 
x3.up = 6.28318530717959; 
x4.up = 6.28318530717959; 
x5.up = 6.28318530717959; 
x6.up = 6.28318530717959; 
x7.up = 6.28318530717959; 
x8.up = 6.28318530717959; 
x9.up = 6.28318530717959; 
x10.up = 6.28318530717959; 
x11.up = 6.28318530717959; 
x12.up = 6.28318530717959; 
x13.up = 6.28318530717959; 
x14.up = 6.28318530717959; 
x15.up = 6.28318530717959; 
x16.up = 3.14159265358979; 
x17.up = 3.14159265358979; 
x18.up = 3.14159265358979; 
x19.up = 3.14159265358979; 
x20.up = 3.14159265358979; 
x21.up = 3.14159265358979; 
x22.up = 3.14159265358979; 
x23.up = 3.14159265358979; 
x24.up = 3.14159265358979; 
x25.up = 3.14159265358979; 
x26.up = 3.14159265358979; 
x27.up = 3.14159265358979; 
x28.up = 3.14159265358979; 
x29.up = 3.14159265358979; 
x30.up = 3.14159265358979; 

* set non default levels

x1.l = 1.07911905633263; 
x2.l = 5.2984009897393; 
x3.l = 3.45811035025293; 
x4.l = 1.89210525384766; 
x5.l = 1.83602288011424; 
x6.l = 1.40776568196586; 
x7.l = 2.19804988273603; 
x8.l = 5.38010526324397; 
x9.l = 0.421687958263721; 
x10.l = 3.14291632595527; 
x11.l = 6.27135800880335; 
x12.l = 3.63628905742401; 
x13.l = 6.22747254810505; 
x14.l = 4.78936093464518; 
x15.l = 0.821165088944418; 
x16.l = 2.00973575363798; 
x17.l = 0.501140149658736; 
x18.l = 0.78565116527862; 
x19.l = 2.10150120381044; 
x20.l = 1.36771240824304; 
x21.l = 1.13003171315989; 
x22.l = 1.10408561987635; 
x23.l = 0.413093013152841; 
x24.l = 0.471558674471493; 
x25.l = 1.85075511496947; 
x26.l = 2.61032675409977; 
x27.l = 0.725129026833707; 
x28.l = 2.09146648877757; 
x29.l = 2.43742855524136; 
x30.l = 0.953971240543465; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
