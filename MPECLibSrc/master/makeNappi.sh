#!/bin/bash

source `dirname $BASH_SOURCE`/common.sh
pushd ${SRCDIR}  > /dev/null || exit 1

/bin/rm -rf ${TMPLIB}
mkdir ${TMPLIB} || exit 2
FILES="nappi.gms"
for i in ${FILES} ; do
    echo "Copying misc/$i to ${TMPLIB}"
    /bin/cp misc/$i ${TMPLIB} || { echo "could not cp misc/$i" ; exit 4; }
done

cd ${TMPLIB} || { echo "Could not cd to ${TMPLIB}" ; exit 6 ; }

echo terminate  > convert.opt
echo objvar    >> convert.opt
echo gmsinsert >> convert.opt
gamscmd="gams nappi.gms mcp=pathc mpec=convert optfile=1"

for cas in a b c d ; do
    userx="--case=$cas"
    echo $gamscmd $userx
    $gamscmd $userx
    [ -r gams.gms ] || { echo "convert didn't make gams.gms" ; exit 6 ; }
    mv gams.gms nappi_${cas}.gms
    zip -m ../mpeclib.zip nappi_${cas}.gms
    rm *.lst nappi_${cas}.gms
#    rm *.lst
done

# gams find1.gms mcp=gams mpec=mpecdump user1=a user2=1 user3=5 user4=S

# gams mpecscript.gms
# /bin/bash rs.bat
# gmszip mpeclib.zip changelog.txt

popd > /dev/null
