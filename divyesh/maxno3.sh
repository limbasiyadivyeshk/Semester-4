echo "enter a"
read a
echo "enter b"
read b
echo "enter c"
read c
if [ $a -gt $b ]
then
    if [ $a -gt $c ]
        then
        echo a=$a is greater
        else
        echo c=$c is greater

    fi
else
    if [ $b -gt $c ]
        then 
        echo b=$b is greater
        else
        echo c=$c is greater
    fi
fi