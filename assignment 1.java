1.class Name
{
public static void main(String args[])
{
System.out.println("Hello");
System.out.println("vikash shukla");
}
}



2.
class AddNos
{
public static void main(String args[])
{
int a,b,c;
a=Integer.parseInt(args[0]);
b=Integer.parseInt(args[1]);
c=a+b;
System.out.println("sum ="+c);
}
}


3.
class Divide
{
public static void main(String args[])
{
int a,b,c;
a=Integer.parseInt(args[0]);
b=Integer.parseInt(args[1]);
c=a/b;
System.out.println("divide ="+c);
}
}



4.
class J4
{
public static void main(String args[])
{
System.out.println(-5 + 8 * 6);
System.out.println( (55+9) % 9);
System.out.println( 20 + -3*5 / 8);
System.out.println( 5 + 15 / 3 * 2 - 8 % 3);
}
}




5.
import java.util.Scanner;
class Product
{
public static void main(String args[])
{
Scanner kb=new Scanner(System.in);
int a,b,c;
System.out.println("Enter first no");
a=kb.nextInt();
System.out.println("Enter Second no");
b=kb.nextInt();
c=a*b;
System.out.println("product ="+c);
}
}



6.
import java.util.Scanner;
class Math
{
public static void main(String args[])
{
Scanner kb=new Scanner(System.in);
int a,b,c,d,e;
System.out.println("Enter first no");
a=kb.nextInt();
System.out.println("Enter Second no");
b=kb.nextInt();
c=a*b;
d=a+b;
e=a-b;
f=a/b;
g=a%b;
System.out.println("product ="+c);
System.out.println("addition ="+d);
System.out.println("substraction ="+e);
System.out.println("divide ="+f);
System.out.println("remander ="+g);
}
}



7.
import java.util.Scanner;
class Muliplication
{
public static void main(String args[])
{
Scanner kb=new Scanner(System.in);
int a;
System.out.println("Enter a no");
a=kb.nextInt();
for(int i=1;i<=10;i++)
{
int b=a*i;
System.out.println(b);
}
}
}




9.
class J9
{
public static void main(String args[])
{
System.out.println((25.5 * 3.5 - 3.5 * 3.5) / (40.5 - 4.5));
}
}



10
class J10
{
public static void main(String args[])
{
System.out.println(4.0 * (1 - (1.0/3) + (1.0/5) - (1.0/7) + (1.0/9) - (1.0/11)));
}
}






11.
class Circle
{
public static void main(String args[])
{
float rad=7.5;
double area,circ;
area=3.14*rad*rad;
circ=2*3.14*rad;
System.out.println("area ="+area);
System.out.println("circ ="+circ);
}
}



12.
import java.util.Scanner;
class Avg
{
public static void main(String args[])
{
Scanner kb=new Scanner(System.in);
int a,b,c;
float d;
System.out.println("Enter first no");
a=kb.nextInt();
System.out.println("Enter second no");
b=kb.nextInt();
System.out.println("Enter third no");
c=kb.nextInt();
System.out.println("Average ="+(float)(a+b+c)/3);
}
}



13.
class AreaAndPer
{
public static void main(String args[])
{
float height=8.5f;
float width=5.5f;
float area,parameter;
area=height*width;
parameter=2*(height+width);
System.out.println("Area="+area);
System.out.println("parameter="+parameter);
}
}







