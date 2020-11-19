
1.
mkdir {a1,a2,a3,a4,a5,a6,a7,a8,a9,a10}

2.
cat > string.txt

c)cp string.txt string1.txt

d)
cat > string1.txt
cat > string2.txt
cat string1.txt string2.txt >> string3.txt

e)
read "enter 2 string" str1 str2
if[[$str1 == #str2]]
then 
echo "string are equal"
else 
echo "string are not equal"
fi

f)
read str1
echo $str1 | rev


5.
echo "enter the directory name"
read dir
if [ -d $dir ]
then
cd $dir
ls > f
exec < f
while read line
do
if [ -f $line ]
then
if [ -r $line -a -w $line -a -x $line ]
then
echo "$line has all permissions"
else
echo "files not having all permissions"
fi
fi
done
fi


6.
echo -n "Enter file name : "
read file
 
[ -w $file ] && W="Write = yes" || W="Write = No"
 
[ -x $file ] && X="Execute = yes" || X="Execute = No"
 
[ -r $file ] && R="Read = yes" || R="Read = No"
 
echo "$file permissions"
echo "$W"
echo "$R"
echo "$X"


1.
echo  "enter  year" 
read  y 
k='expr  $y  %  4' 
if  test  $k  -eq  0 
then
       echo  "leap  year" 
else       
       echo  "not  a  leap  year" 
fi


3.
a)
echo  "enter  the  value of  a  b  c" 
read a 
read b 
read c 
if  
test $a -gt $b -a $a -gt $c 
then       
echo "a  is  greatest" 
else       
if  
test $b -gt $c       
then             
echo "b is greatest"
else
echo "c is greatest"
fi 
fi  


4.
echo "enter a number"
read x 
y='expr $x % 2'
if test $y -eq 0 
then      
echo  "Number is even" 
else     
echo "Number is odd" 
fi

6.
echo "Enter two numbers"
read num1 num2
sum = 'expr $num1 + $num2'
echo "The sum is = $sum"

7.
red -p "enter number"
f=0
s=1
echo $f
echo $s
t=0
echo "The Fibonacci series is : "
   
for (( i=0; i<N; i++ )) 
do
    
    fn=$(($f + $s)) 
    f=$s
    s=#t
    s=$t
    echo $t 
done


8.
read - p "Enter string:" string 
reverse="" 
for ((i = $len - 1; i >= 0; i--)) 
    do
    
    reverse = "$reverse${string:$i:1}" 
    done 
    echo "$reverse"
    

10.
echo "Enter a number"
read n
sd=0
rev=0

while [ $n -gt 0 ]
do
    sd=$(( $n % 10 ))
    rev=$(( $rev *\ 10 + $sd ))
    n=$(( $n / 10 ))
done

echo "Reverse number of entered digit is $rev"