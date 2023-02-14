echo "enter number : "
read n1
echo "enter number : "
read n2
echo "enter number : "
read n3
if [ $n1 -gt $n2 -o $n1 -gt $n3 ] 
then
echo $n1
elif [ $n2 -gt $n3 ]
then
echo $n2
else
echo $n3
fi