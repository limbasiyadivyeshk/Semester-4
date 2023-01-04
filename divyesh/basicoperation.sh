echo "enter a"
read a
echo "enter a"
read b
sum=`expr $a + $b`
sub=`expr $a - $b`
mul=`expr $a \* $b`
div=`expr $a / $b`
mod=`expr $a % $b`
echo " sum : $sum"
echo " subtraction : $sub"
echo " multiplication : $mul"
echo " divison : $div"
echo " mod : $mod"
