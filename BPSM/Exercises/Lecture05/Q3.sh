count=0; IFS=$'\t';
while read name email city birthday_day birthday_month birthday_year country
do
if test -z ${name} || test ${country} == "country"
 then
  count=count;# a meaningless action, it does nothing useful
 else
 echo "outputfile1 will be ${country}.details";
 echo "outputfile2 will be ${country// /}.details"
fi
done <  example_people_data.tsv | head -10
count=0; IFS=$'\t';
rm  -f *.details
while read name email city birthday_day birthday_month birthday_year country
do
if test -z ${name} || test ${country} == "country"
 then
 echo "Ignoring"
 else
 count=$((count+1));
 echo -e "${count}\t${name}\t$city\t${country}" >> ${country// /}.details
fi
done < example_people_data.tsv
cat Mozambique.details
