echo "enter year : "
read n1
if [ `expr $n1 % 400` -ne 0 -a `expr $n1 % 4` -eq 0 -o `expr $n1 % 100` -eq 0 ]
then
echo "leap year"
else
echo "non leap year"
fi
