echo "enter subject one mark"
read sub1
echo "enter subject two mark"
read sub2
echo "enter subject three mark"
read sub3
echo "enter subject four mark"
read sub4
echo "enter subject five mark"
read sub5
total=`expr $sub1 + $sub2 + $sub3 + $sub4 + $sub5 `
percentage=`expr $total / 5`
echo $percentage "%"

case  $percentage in

1) $percentage -le 39 -a $percentage -gt 0
echo "fail"
;;
1) $percentage -le 45 -a $percentage -gt 39
echo "pass"
;;
1) $percentage -le 60 -a $percentage -gt 45
echo "second class"
;;
1) $percentage -le 70 -a $percentage -gt 60
echo "first class"
;;
*) 
echo "distinction" 
esac
