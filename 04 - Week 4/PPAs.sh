# PPA 1
ls -l | cut -c 8- | grep rwx | cut -d ' ' -f 12

# PPA 2
cir=`cat Pincode_info.csv | grep $pin | cut -d ',' -f 1 | cut -d ' ' -f 1`;
div=`cat Pincode_info.csv | grep $pin | cut -d ',' -f 4 | cut -d ' ' -f 1`;
echo $cir $div;
