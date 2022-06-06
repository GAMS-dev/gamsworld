$title	Optimal Taxation Example -- An Activity Analysis Example

scalar 
tlmin /0.30/, tcmin /-0.05/, tlmax /0.70/, tcmax /0.20/;

set t technologies /t0*t5/,
    tbmk(t) /t0/;

set	h	Households	/h1*h6/
	i	Commodities	/i1*i3/;

alias (i,j,s), (h,hh);

parameter	y0(i)	output
		l0(i)	employment
		k0(i)	return to capital
		g0		public provision
		gd0(i)		composition of public demand
		vg0(h)		valuation of public output
		ls0(h)		labor supply
		ld0(h)		leisure demand
		w0(h)
		alpha(i)	labor value share
		lc
		kc
		ke0(s,h)	capital endowment
		c0(i,h)		consumption demand;

scalar	pl0	base year cost of labor /1.5/
	esubl	elasticity of substitution labor demand /2/;

parameter objc(h);

$if '%household%' == '1' objc('h1') = 1;
$if '%household%' == '2' objc('h2') = 1;
$if '%household%' == '3' objc('h3') = 1;
$if '%household%' == '4' objc('h4') = 1;
$if '%household%' == '5' objc('h5') = 1;
$if '%household%' == '6' objc('h6') = 1;

$if defined objc $goto alldefined
$error "you must $set the household to a valid value"
$exit
$label alldefined

variable obj;
variable
	tl	labor tax rate,
	tc	consumption tax rate
;

tl.lo = tlmin;
tl.up = tlmax;
tc.lo = tcmin;
tc.up = tcmax;

*	Benchmark replication:

tl.l = pl0 - 1;

*	Base year output:

y0(i) = card(h) * uniform(0.5, 1.5);

*	Base year employment and capital income:

l0(i) = uniform(0.2, 0.8) * y0(i);
k0(i) = y0(i) - l0(i);

*	Public output:

g0 = tl.l * sum(i, l0(i)/pl0);
gd0(i) = uniform(0,1);
gd0(i) = g0 * gd0(i) / sum(j, gd0(j))
abort$(smin(i, y0(i)-gd0(i)) lt 0) ' Public demand too large!';

*	Composition of final demand:

c0(i,h) = uniform(0,1);
c0(i,h) = (y0(i)-gd0(i)) * c0(i,h)/sum(hh, c0(i,hh));

*	Endowment income:

ke0(s,h) = uniform(0.5,1.5) * sum(i, c0(i,h)) / sum((i,hh), c0(i,hh));
ke0(s,h) = k0(s) * ke0(s,h) / sum(hh, ke0(s,hh));

ls0(h) = sum(i, c0(i,h)) - sum(s,ke0(s,h));
abort$(smin(h, ls0(h)) lt 0) "Error: negative labor supply?";
ld0(h) = uniform(0.5,1) * ls0(h);

vg0(h) = uniform(0.5, 1.5) * g0 * sum(i,c0(i,h)) / sum((i,hh), c0(i,hh));

w0(h) = vg0(h) + sum(i, c0(i,h)) + ld0(h);

parameter walras;

walras(h) = w0(h) - ls0(h) - ld0(h) - sum(s, ke0(s,h)) - vg0(h);
display walras;


alpha(i) = l0(i) / y0(i);
lc(i,t) = uniform(0.8,1.2);
lc(i,tbmk) = 1;
kc(i,t) = lc(i,t)**(-alpha(i)/(1-alpha(i)));

parameter	thetag, thetal, thetac;
thetag(h) = vg0(h) / w0(h);
thetal(h) = ld0(h) / (ld0(h) + sum(i,c0(i,h)));
thetac(i,h) = c0(i,h) / sum(j, c0(j,h));
scalar esubg/0.5/;


positive
variables
	y(i,t)	 Sectoral output
	ls(h)	 Labor supply by household
	w(h)	 welfare index
	g	 Public provision
	p(i)	 Output price
	pls(h)	 Wage rate (net of tax)
	pl	 Market wage
	rk(i)	 Capital income
	pw(h)	 welfare price
	pg	 Public sector output
	vg(h)	 Valuation of public output
	pc
	pcl;

equations
	cost,
	profit_y, profit_ls, profit_g, profit_w, govtrev, income,
	mkt, mktvg, mktk, mktl, mktls, pcdef, pcldef;

profit_y(i,t)..	pl * l0(i)*lc(i,t) + rk(i) * k0(i)*kc(i,t) =g= p(i) * y0(i);

profit_ls(h)..	pls(h) * ls0(h) * (1 + tl) =g= pl * ls0(h) * pl0;


profit_g..	sum(i, p(i) * gd0(i)) =e= pg * g0;

profit_w(h)..	( thetag(h)    * vg(h)**(1-esubg) +
		(1-thetag(h)) * pcl(h)**(1-esubg) )**(1/(1-esubg)) =e= pw(h);


govtrev..	g * pg * g0 =e= sum(h, tl * pls(h) * ls0(h) * ls(h))
		+ sum((i,h), tc * p(i) * w(h) * c0(i,h) * (pc(h)/(p(i)*(1+tc)))
					* (pcl(h)/pc(h) )**esubl
					* (pw(h)/pcl(h) )**esubg );


income(h)..	w(h)*w0(h)*pw(h) =e= vg(h) * g * vg0(h) + 
		pls(h) * (ls0(h)+ld0(h)) +
		sum(i, rk(i) * ke0(i,h));

pcdef(h)..	pc(h) =e= prod(j, (p(j)*(1+tc))**thetac(j,h));

pcldef(h)..	pcl(h) =e= ( thetal(h)  * pls(h)**(1-esubl)
		        + (1-thetal(h)) *  pc(h)**(1-esubl) )**(1/(1-esubl));

mkt(i)..	sum(t, y(i,t) * y0(i)) =g= g * gd0(i) 
		+ sum(h, w(h) * c0(i,h) * (pc(h)/(p(i)*(1+tc)))
					* (pcl(h)/pc(h) )**esubl
					* (pw(h)/pcl(h) )**esubg );

mktls(h)..	ls0(h) + ld0(h) =e= ls(h) * ls0(h) + w(h) * ld0(h)
			        * (pcl(h)/pls(h) )**esubl
				* (pw(h) /pcl(h) )**esubg;

mktl..		sum(h,ls(h)*ls0(h)*pl0) =g= sum((i,t),y(i,t)*l0(i)*lc(i,t));

mktvg(h)..	g =e= w(h) * (pw(h)/vg(h))**esubg;


mktk(i)..	sum(h, ke0(i,h)) =g= sum(t, y(i,t) * k0(i) * kc(i,t));

cost..          obj =e= sum(h,objc(h)*w(h));

y.l(i,t) = 0;y.l(i,tbmk) = 1;ls.l(h) = 1;w.l(h) = 1;g.l = 1;p.l(i) = 1;
pls.l(h) = 1;pl.l = 1;rk.l(i) = 1;pw.l(h) = 1;pg.l = 1;vg.l(h) = 1;
pc.l(h) = 1;pcl.l(h) = 1;
p.lo(i) = 1.e-4;pls.lo(h) = 1.e-4;pl.lo = 1.e-4;rk.lo(i) = 1.e-4;
pw.lo(h) = 1.e-4;pg.lo = 1.e-4;vg.lo(h) = 1.e-4;pc.lo(h) = 1.e-4;
pcl.lo(h) = 1.e-4;

model shoven /	cost, profit_y.y, profit_ls.ls, profit_g.g, profit_w.w, 
		govtrev.pg, income.pw,pcdef.pc, pcldef.pcl,
		mkt.p, mktvg.vg, mktk.rk, mktl.pl, mktls.pls		/;

pl.fx = 1;

solve shoven using mpec minimizing obj;
