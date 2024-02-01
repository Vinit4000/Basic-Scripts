echo Enter 2 Numbers
read a
read b
echo Enter the Symbol
read s
 
case $s in
        "add" )
                echo "$a + $b" | bc  ;;
        "sub" )
                echo "$a - $b" | bc ;;
        "mul" )
                echo "$a * $b" | bc ;;
        "div" )
                echo "$a / $b" | bc ;;
esac
