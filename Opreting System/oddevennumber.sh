echo "enter number : "
read n1
if [ `expr $n1 % 2` -ne 0 ]
then
echo "odd"
else
echo "even"
fi