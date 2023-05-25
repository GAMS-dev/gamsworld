$offlisting
* If new elements are generated, just update element,
* eltype and elct

set element(datain) /e1*e6/,
    eltype          /one,two,three/;

parameter elct(eltype,dof,element,resolve) /
one.f1.e1.n -1
one.f2.e1.t 1
one.f1.e2.t -1
one.f2.e2.n -1
one.f1.e3.n 1
one.f2.e3.t -1
one.f1.e4.t 1
one.f2.e4.n 1
one.f1.e5.t 1
one.f2.e5.n 1
two.f1.e1.n -1
two.f2.e1.t 1
two.f1.e2.t -1
two.f2.e2.n -1
two.f1.e3.t -1
two.f2.e3.n -1
two.f1.e4.n 1
two.f2.e4.t -1
two.f1.e5.t 1
two.f2.e5.n 1
two.f1.e6.t 1
two.f2.e6.n 1
three.f1.e1.n -1
three.f2.e1.t 1
three.f1.e2.t -1
three.f2.e2.n -1
three.f1.e3.n 1
three.f2.e3.t -1
three.f1.e4.t 1
three.f2.e4.n 1
/;

elct('one','f3','e1','t')  = %lx%/2;
elct('one','f3','e1','mw') = %ly%/2;
elct('one','f3','e2','t')  = -%ly%/2;
elct('one','f3','e2','mw') = -%lx%/2;
elct('one','f3','e3','t')  = -%lx%/2;
elct('one','f3','e3','mw') = -%ly%/2;
elct('one','f3','e4','t')  = -%ly%/2;
elct('one','f3','e4','n')  = %lx%/2;
elct('one','f3','e4','mw') = %lx%/4;
elct('one','f3','e5','t')  = -%ly%/2;
elct('one','f3','e5','n')  = -%lx%/4;
elct('one','f3','e5','mw') = %lx%/4;

elct('two','f3','e1','t')  = -%lx%/2;
elct('two','f3','e1','mw') = %ly%/2;
elct('two','f3','e2','t')  = -%ly%/2;
elct('two','f3','e2','n')  = %lx%/4;
elct('two','f3','e2','mw') = -%lx%/4;
elct('two','f3','e3','t')  = -%ly%/2;
elct('two','f3','e3','n')  = -%lx%/4;
elct('two','f3','e3','mw') = -%lx%/4;
elct('two','f3','e4','t')  = -%lx%/2;
elct('two','f3','e4','mw') = -%ly%/2;
elct('two','f3','e5','t')  = -%ly%/2;
elct('two','f3','e5','n')  = %lx%/4;
elct('two','f3','e5','mw') = %lx%/4;
elct('two','f3','e6','t')  = -%ly%/2;
elct('two','f3','e6','n')  = -%lx%/4;
elct('two','f3','e6','mw') = %lx%/4;

elct('three','f3','e1','t')  = -%lx%/4;
elct('three','f3','e1','mw') = %ly%/2;
elct('three','f3','e2','t')  = -%ly%/2;
elct('three','f3','e2','mw') = -%lx%/4;
elct('three','f3','e3','t')  = -%lx%/4;
elct('three','f3','e3','mw') = -%ly%/2;
elct('three','f3','e4','t')  = -%ly%/2;
elct('three','f3','e4','mw') = %lx%/4;

set current(contact),
    type(eltype);

loop(block,
  type(eltype) = yes$(ord(eltype) eq data(block,'typ'));
  loop(element,
    current(contact) = yes$(ord(contact) eq data(block,element));
    ct(block,dof,current,resolve) =
      sum(type,elct(type,dof,element,resolve));
  )
);

$onlisting

