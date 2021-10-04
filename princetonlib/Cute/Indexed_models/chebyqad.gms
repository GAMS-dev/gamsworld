*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*   The Chebyquad problem using the exact formula for the
*   shifted chebyshev polynomials.
*   The Hessian is full.
*   Source: problem 35 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.
*   See also Buckley#133 (p. 44).
*   SIF input: Nick Gould, March 1990.
*   classification SBR2-AN-V-0
*   Number of variables
*IE N                   2
*IE N                   4
*IE N                   5
*IE N                   6
*IE N                   7
*IE N                   8
*IE N                   9
*IE N                   10
*IE N                   20
*   Other parameters
*  The constants are the (0,1) average values of the Chebyshev
*  polynomials. Analytic expressions are known for these values.
*  Odd averages are zero.
*  Even averages are -1/(i**2 -1}
*   defaults = variables in (0, 1)
*  The elements are the i-th (shifted) chebyshev polynomial
*  evaluated at the j-th variable.
*   Solution
*LO SOLTN(2)            0.0
*LO SOLTN(4)            0.0
*LO SOLTN(5)            0.0
*LO SOLTN(6)            0.0
*LO SOLTN(7)            0.0
*LO SOLTN(8)            3.516874D-3
*LO SOLTN(9)            0.0
*LO SOLTN(10)           4.772713D-3
*LO SOLTN(20)           4.572955D-3
        parameter n    ; n     = 50                   ;
        parameter m    ; m     = 50                   ;
        parameter np1  ; np1   = 1 + (50)             ;
        parameter rn   ; rn    = 50.0                 ;
        parameter rnp1 ; rnp1  = 51.0                 ;
        parameter rlast; rlast = 2499.0               ;
        parameter rj   ; rj    = 50                   ;
        parameter start; start = (50) * (1.0 / (51.0));
        parameter ri   ; ri    = 50                   ;
        parameter pi2  ; pi2   = 2*arctan(1)          ;

$offdigit;
Positive Variable   x1, x2, x3, x4, x5, x6, x7, x8, x9,x10,
                   x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,
                   x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,
                   x31,x32,x33,x34,x35,x36,x37,x38,x39,x40,
                   x41,x42,x43,x44,x45,x46,x47,x48,x49,x50;


Variable obj;

Equation Def_obj;

Def_obj..
  obj =e=

 (0.02*(cos(( 1.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))*

 (0.02*(cos(( 1.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos(( 1.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))+

 (0.02*(cos(( 2.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) +0.3333333333333333)*

 (0.02*(cos(( 2.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos(( 2.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) + 0.3333333333333333) +

 (0.02*(cos(( 3.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))*

 (0.02*(cos(( 3.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos(( 3.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))+

 (0.02*(cos(( 4.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) +0.06666666666666667)*

 (0.02*(cos(( 4.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos(( 4.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) + 0.06666666666666667) +

 (0.02*(cos(( 5.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))*

 (0.02*(cos(( 5.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos(( 5.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))+

 (0.02*(cos(( 6.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) +0.02857142857142857)*

 (0.02*(cos(( 6.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos(( 6.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) + 0.02857142857142857) +

 (0.02*(cos(( 7.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))*

 (0.02*(cos(( 7.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos(( 7.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))+

 (0.02*(cos(( 8.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) +0.015873015873015872)*

 (0.02*(cos(( 8.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos(( 8.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) + 0.015873015873015872) +

 (0.02*(cos(( 9.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))*

 (0.02*(cos(( 9.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos(( 9.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))+

 (0.02*(cos((10.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1- 1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2- 1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3- 1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4- 1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5- 1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6- 1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7- 1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8- 1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9- 1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) +0.010101010101010102)*

 (0.02*(cos((10.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((10.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) + 0.010101010101010102) +

 (0.02*(cos((11.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))*

 (0.02*(cos((11.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((11.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))+

 (0.02*(cos((12.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) +0.006993006993006993)*

 (0.02*(cos((12.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((12.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) + 0.006993006993006993) +

 (0.02*(cos((13.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))*

 (0.02*(cos((13.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((13.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))+

 (0.02*(cos((14.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) +0.005128205128205128)*

 (0.02*(cos((14.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((14.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) + 0.005128205128205128) +

 (0.02*(cos((15.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))*

 (0.02*(cos((15.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((15.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))+

 (0.02*(cos((16.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) +0.00392156862745098)*

 (0.02*(cos((16.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((16.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) + 0.00392156862745098) +

 (0.02*(cos((17.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))*

 (0.02*(cos((17.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((17.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))+

 (0.02*(cos((18.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) +0.0030959752321981426)*

 (0.02*(cos((18.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((18.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) + 0.0030959752321981426) +

 (0.02*(cos((19.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))*

 (0.02*(cos((19.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((19.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))+

 (0.02*(cos((20.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) +0.002506265664160401)*

 (0.02*(cos((20.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((20.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) + 0.002506265664160401) +

 (0.02*(cos((21.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))*

 (0.02*(cos((21.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((21.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))+

 (0.02*(cos((22.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) +0.002070393374741201)*

 (0.02*(cos((22.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((22.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) + 0.002070393374741201) +

 (0.02*(cos((23.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))*

 (0.02*(cos((23.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((23.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))+

 (0.02*(cos((24.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) +0.0017391304347826088)*

 (0.02*(cos((24.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((24.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) + 0.0017391304347826088) +

 (0.02*(cos((25.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))*

 (0.02*(cos((25.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((25.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))+

 (0.02*(cos((26.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) +0.0014814814814814814)*

 (0.02*(cos((26.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((26.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) + 0.0014814814814814814) +

 (0.02*(cos((27.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))*

 (0.02*(cos((27.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((27.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))+

 (0.02*(cos((28.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) +0.001277139208173691)*

 (0.02*(cos((28.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((28.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) + 0.001277139208173691) +

 (0.02*(cos((29.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))*

 (0.02*(cos((29.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((29.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))+

 (0.02*(cos((30.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) +0.0011123470522803114)*

 (0.02*(cos((30.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((30.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) + 0.0011123470522803114) +

 (0.02*(cos((31.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))*

 (0.02*(cos((31.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((31.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))+

 (0.02*(cos((32.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) +9.775171065493646e-4)*

 (0.02*(cos((32.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((32.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) + 9.775171065493646e-4) +

 (0.02*(cos((33.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))*

 (0.02*(cos((33.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((33.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))+

 (0.02*(cos((34.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) +8.658008658008658e-4)*

 (0.02*(cos((34.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((34.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) + 8.658008658008658e-4) +

 (0.02*(cos((35.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))*

 (0.02*(cos((35.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((35.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))+

 (0.02*(cos((36.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) +7.722007722007722e-4)*

 (0.02*(cos((36.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((36.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) + 7.722007722007722e-4) +

 (0.02*(cos((37.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))*

 (0.02*(cos((37.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((37.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))+

 (0.02*(cos((38.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) +6.93000693000693e-4)*

 (0.02*(cos((38.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((38.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) + 6.93000693000693e-4) +

 (0.02*(cos((39.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))*

 (0.02*(cos((39.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((39.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))+

 (0.02*(cos((40.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) +6.253908692933083e-4)*

 (0.02*(cos((40.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((40.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) + 6.253908692933083e-4) +

 (0.02*(cos((41.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))*

 (0.02*(cos((41.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((41.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))+

 (0.02*(cos((42.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) +5.672149744753262e-4)*

 (0.02*(cos((42.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((42.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) + 5.672149744753262e-4) +

 (0.02*(cos((43.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))*

 (0.02*(cos((43.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((43.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))+

 (0.02*(cos((44.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) +5.16795865633075e-4)*

 (0.02*(cos((44.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((44.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) + 5.16795865633075e-4) +

 (0.02*(cos((45.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))*

 (0.02*(cos((45.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((45.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))+

 (0.02*(cos((46.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) +4.7281323877068556e-4)*

 (0.02*(cos((46.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((46.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) + 4.7281323877068556e-4) +

 (0.02*(cos((47.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))*

 (0.02*(cos((47.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((47.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))+

 (0.02*(cos((48.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) +4.342162396873644e-4)*

 (0.02*(cos((48.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((48.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) + 4.342162396873644e-4) +

 (0.02*(cos((49.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))))*

 (0.02*(cos((49.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((49.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  ))))) +

 (0.02*(cos((50.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) +4.001600640256103e-4)*

 (0.02*(cos((50.0*(pi2-arctan((2*x1 -1)/sqrt( 1-sqr(2*x1 -1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x2 -1)/sqrt( 1-sqr(2*x2 -1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x3 -1)/sqrt( 1-sqr(2*x3 -1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x4 -1)/sqrt( 1-sqr(2*x4 -1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x5 -1)/sqrt( 1-sqr(2*x5 -1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x6 -1)/sqrt( 1-sqr(2*x6 -1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x7 -1)/sqrt( 1-sqr(2*x7 -1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x8 -1)/sqrt( 1-sqr(2*x8 -1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x9 -1)/sqrt( 1-sqr(2*x9 -1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x10-1)/sqrt( 1-sqr(2*x10-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x11-1)/sqrt( 1-sqr(2*x11-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x12-1)/sqrt( 1-sqr(2*x12-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x13-1)/sqrt( 1-sqr(2*x13-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x14-1)/sqrt( 1-sqr(2*x14-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x15-1)/sqrt( 1-sqr(2*x15-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x16-1)/sqrt( 1-sqr(2*x16-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x17-1)/sqrt( 1-sqr(2*x17-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x18-1)/sqrt( 1-sqr(2*x18-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x19-1)/sqrt( 1-sqr(2*x19-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x20-1)/sqrt( 1-sqr(2*x20-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x21-1)/sqrt( 1-sqr(2*x21-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x22-1)/sqrt( 1-sqr(2*x22-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x23-1)/sqrt( 1-sqr(2*x23-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x24-1)/sqrt( 1-sqr(2*x24-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x25-1)/sqrt( 1-sqr(2*x25-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x26-1)/sqrt( 1-sqr(2*x26-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x27-1)/sqrt( 1-sqr(2*x27-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x28-1)/sqrt( 1-sqr(2*x28-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x29-1)/sqrt( 1-sqr(2*x29-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x30-1)/sqrt( 1-sqr(2*x30-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x31-1)/sqrt( 1-sqr(2*x31-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x32-1)/sqrt( 1-sqr(2*x32-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x33-1)/sqrt( 1-sqr(2*x33-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x34-1)/sqrt( 1-sqr(2*x34-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x35-1)/sqrt( 1-sqr(2*x35-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x36-1)/sqrt( 1-sqr(2*x36-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x37-1)/sqrt( 1-sqr(2*x37-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x38-1)/sqrt( 1-sqr(2*x38-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x39-1)/sqrt( 1-sqr(2*x39-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x40-1)/sqrt( 1-sqr(2*x40-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x41-1)/sqrt( 1-sqr(2*x41-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x42-1)/sqrt( 1-sqr(2*x42-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x43-1)/sqrt( 1-sqr(2*x43-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x44-1)/sqrt( 1-sqr(2*x44-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x45-1)/sqrt( 1-sqr(2*x45-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x46-1)/sqrt( 1-sqr(2*x46-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x47-1)/sqrt( 1-sqr(2*x47-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x48-1)/sqrt( 1-sqr(2*x48-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x49-1)/sqrt( 1-sqr(2*x49-1)))  )))) +
  0.02*(cos((50.0*(pi2-arctan((2*x50-1)/sqrt( 1-sqr(2*x50-1)))  )))) + 4.001600640256103e-4);


 x1.up = 1.0 ; x2.up = 1.0 ; x3.up = 1.0 ; x4.up = 1.0 ; x5.up = 1.0 ;
 x6.up = 1.0 ; x7.up = 1.0 ; x8.up = 1.0 ; x9.up = 1.0 ;x10.up = 1.0 ;
x11.up = 1.0 ;x12.up = 1.0 ;x13.up = 1.0 ;x14.up = 1.0 ;x15.up = 1.0 ;
x16.up = 1.0 ;x17.up = 1.0 ;x18.up = 1.0 ;x19.up = 1.0 ;x20.up = 1.0 ;
x21.up = 1.0 ;x22.up = 1.0 ;x23.up = 1.0 ;x24.up = 1.0 ;x25.up = 1.0 ;
x26.up = 1.0 ;x27.up = 1.0 ;x28.up = 1.0 ;x29.up = 1.0 ;x30.up = 1.0 ;
x31.up = 1.0 ;x32.up = 1.0 ;x33.up = 1.0 ;x34.up = 1.0 ;x35.up = 1.0 ;
x36.up = 1.0 ;x37.up = 1.0 ;x38.up = 1.0 ;x39.up = 1.0 ;x40.up = 1.0 ;
x41.up = 1.0 ;x42.up = 1.0 ;x43.up = 1.0 ;x44.up = 1.0 ;x45.up = 1.0 ;
x46.up = 1.0 ;x47.up = 1.0 ;x48.up = 1.0 ;x49.up = 1.0 ;x50.up = 1.0 ;

  x1.l = 0.019607843137254900 ;  x2.l = 0.039215686274509800 ;
  x3.l = 0.058823529411764705 ;  x4.l = 0.078431372549019600 ;
  x5.l = 0.098039215686274510 ;  x6.l = 0.117647058823529410 ;
  x7.l = 0.137254901960784330 ;  x8.l = 0.156862745098039200 ;
  x9.l = 0.176470588235294100 ; x10.l = 0.196078431372549020 ;
 x11.l = 0.215686274509803930 ; x12.l = 0.235294117647058820 ;
 x13.l = 0.254901960784313700 ; x14.l = 0.274509803921568650 ;
 x15.l = 0.294117647058823540 ; x16.l = 0.313725490196078400 ;
 x17.l = 0.333333333333333300 ; x18.l = 0.352941176470588200 ;
 x19.l = 0.372549019607843150 ; x20.l = 0.392156862745098030 ;
 x21.l = 0.411764705882352900 ; x22.l = 0.431372549019607860 ;
 x23.l = 0.450980392156862750 ; x24.l = 0.470588235294117640 ;
 x25.l = 0.490196078431372530 ; x26.l = 0.509803921568627400 ;
 x27.l = 0.529411764705882400 ; x28.l = 0.549019607843137300 ;
 x29.l = 0.568627450980392100 ; x30.l = 0.588235294117647100 ;
 x31.l = 0.607843137254901900 ; x32.l = 0.627450980392156900 ;
 x33.l = 0.647058823529411800 ; x34.l = 0.666666666666666600 ;
 x35.l = 0.686274509803921600 ; x36.l = 0.705882352941176400 ;
 x37.l = 0.725490196078431300 ; x38.l = 0.745098039215686300 ;
 x39.l = 0.764705882352941100 ; x40.l = 0.784313725490196100 ;
 x41.l = 0.803921568627451000 ; x42.l = 0.823529411764705800 ;
 x43.l = 0.843137254901960800 ; x44.l = 0.862745098039215700 ;
 x45.l = 0.882352941176470600 ; x46.l = 0.901960784313725500 ;
 x47.l = 0.921568627450980300 ; x48.l = 0.941176470588235300 ;
 x49.l = 0.960784313725490200 ; x50.l = 0.980392156862745100 ;










Model chebyqad /all/;
Solve chebyqad using nlp minimize obj;

display  x1.l;display  x2.l;display  x3.l;display  x4.l;display  x5.l;
display  x6.l;display  x7.l;display  x8.l;display  x9.l;display x10.l;
display x11.l;display x12.l;display x13.l;display x14.l;display x15.l;
display x16.l;display x17.l;display x18.l;display x19.l;display x20.l;
display x21.l;display x22.l;display x23.l;display x24.l;display x25.l;
display x26.l;display x27.l;display x28.l;display x29.l;display x30.l;
display x31.l;display x32.l;display x33.l;display x34.l;display x35.l;
display x36.l;display x37.l;display x38.l;display x39.l;display x40.l;
display x41.l;display x42.l;display x43.l;display x44.l;display x45.l;
display x46.l;display x47.l;display x48.l;display x49.l;display x50.l;
                                                        display obj.l;
