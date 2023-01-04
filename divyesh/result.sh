echo "enter number of subject"
read n1
echo "enter number of subject"
read n2
echo "enter number of subject"
read n3
echo "enter number of subject"
read n4
echo "enter number of subject"
read n5
sum=`expr $n1 + $n2 + $n3 + $n4 + $n5`
percentage=`expr $sum / 5`
echo $percentage
if [ 0 -ge $percentage -o $percentage -le 39 ] 
then
echo "fail"
elif [ 48 -ge $percentage -o $percentage -le 59 ] 
then
echo "pass"
elif [ 60 -ge $percentage -o $percentage -le 79 ] 
then
echo "second"
elif [ 80 -ge $percentage -o $percentage -le 100 ] 
then
echo "first"
fi

