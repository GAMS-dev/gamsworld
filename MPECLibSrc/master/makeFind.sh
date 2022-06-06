#!/bin/bash

source `dirname $BASH_SOURCE`/common.sh
pushd ${SRCDIR}  > /dev/null || exit 1

/bin/rm -rf ${TMPLIB}
mkdir ${TMPLIB} || exit 2
FILES="findWXYZ.gms"
for i in ${FILES} ; do
    echo "Copying misc/$i to ${TMPLIB}"
    /bin/cp misc/$i ${TMPLIB} || { echo "could not cp misc/$i" ; exit 4; }
done

cd ${TMPLIB} || { echo "Could not cd to ${TMPLIB}" ; exit 6 ; }

echo terminate  > convert.opt
echo objvar    >> convert.opt
echo gmsinsert >> convert.opt
gamscmd="gams findWXYZ.gms mcp=pathc mpec=convert optfile=1"

for dof in a b c ; do
    for alpha in 1 3 ; do
	for pert in 0 5 ; do
	    for bnds in t s l ; do
		userx="--dof=$dof --alpha=$alpha --perturb=$pert --bounds=$bnds"
		echo $gamscmd $userx
		$gamscmd $userx
                [ -r gams.gms ] || { echo "convert didn't make gams.gms" ; exit 6 ; }
		mv gams.gms find${dof}${alpha}${pert}${bnds}.gms
#		zip -m ../mpeclib.zip find${dof}${alpha}${pert}${bnds}.gms
		rm *.lst find${dof}${alpha}${pert}${bnds}.gms
	    done
	done
    done
done

# gams find1.gms mcp=gams mpec=mpecdump user1=a user2=1 user3=5 user4=S

# gams mpecscript.gms
# /bin/bash rs.bat
# gmszip mpeclib.zip changelog.txt

popd > /dev/null
