# PPA 1
BEGIN{
		count=`grep "" data.txt | wc -l`
		if ((count > 16)); then
			echo Yes;
		else
			echo No;
		fi
}

# PPA 2
BEGIN {
	sumo=0
	sume=0
}
{
	for (i=1; i<($1+1); i++) {
		if (i % 2 == 0)
			sume+=i
		else
			sumo+=i
	}
}
END {
	print sumo
	print sume
}

# PPA 3
BEGIN{
	FS=" "
}
{
	for (i=2; i < (NF + 1); i++) {
		if ($i == $(i - 1))
			print $i
	}
}
