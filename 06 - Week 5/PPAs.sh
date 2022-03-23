# PPA 1
out="";
i=1;
for argument in "$@"; do
	if (( i%2 == 1 )); then
		out="$out $argument";
	fi;
	(( i++ ));
done;
echo $out

# PPA 2
total=0;
for hash in `cat result`; do
	filename=`grep "$hash" map | cut -d " " -f 2`;
	amt=`cat $filename | head -n 1 | cut -d "$" -f 2`;
	total=$(($total+$amt));
done;
echo $total;
