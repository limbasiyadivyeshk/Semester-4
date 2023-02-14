echo "Enter a Number:"
read n
sum=0
i=1
while [ $i -le $n ] 
do
    echo "Enter number $i :"
    read a
    sum=`expr $sum + $a`
    i=`expr $i + 1`
done
avg=`expr $sum / $n`

echo "Avrege: $avg"
