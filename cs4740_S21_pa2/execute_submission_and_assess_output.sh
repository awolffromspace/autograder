#!/bin/bash

echo \<h1\>Autograder Results\</h1\>
correct=0
count=0
for (( i = -2; i <= 2; i++ )) do
    for (( j = -2; j <= 2; j++ )) do
	let count=count+1
	tmpoutput=`echo -e $i '\n' $j | python subtract.py`
	tmpanswer=$(( $i - $j ))
	if (( $tmpanswer < 0 )); then
	    f1=`echo $tmpoutput | grep -q '\'$tmpanswer'$'`
	else
	    f1=`echo $tmpoutput | grep -q $tmpanswer'$'`
	fi
	if [ $? = 0 ]; then
	    let correct=correct+1
	else
	    echo \<p\>Failed test case \#$count: \($i\) - \($j\) = $tmpanswer\</p\>
	fi
    done
done
echo \<p\>\<b\>Score\</b\>: Passed $correct out of $count test cases.\<p\>
exit
