count=0
IFS=$'\t'
while read name email city birthday_day birthday_month birthday_year country
 do
         if test -z ${name}
         then echo -e "X\tBlank line found"
         else
                 if test ${country}=="country"
                 then
                 echo -e "X\tHeader line found"
         else
                 count=$((count+1))
                 echo -e "${count}\t{country}"
        fi
         fi
 done < example_people_data.tsv

