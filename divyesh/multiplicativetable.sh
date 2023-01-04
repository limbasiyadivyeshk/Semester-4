echo "Enter Number to print table :"
read n
i=1

while [ $i -le 10 ]
do
    mul=`expr $i \* $n`
    echo "$n X $i = $mul"
    i=`expr $i + 1`
done