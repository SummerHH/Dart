/*
Dart数据类型：数值类型

    int 

    double
*/



void main(){

  //1、int   必须是整型


    int a=123;

    a=45;

    print(a);


  //2、double  既可以是整型 也可是浮点型

    double b=23.5;

    b=24;

    print(b);

  //3、运算符

    // + - * / %
    
    var c=a+b;
    print(c);

  //字符串和数字之间的转化:
  // 字符串和数字转化
  // 1.字符串转数字
  var one = int.parse('111');
  var two = double.parse('12.22');
  print('${one} ${one.runtimeType}'); // 111 int
  print('${two} ${two.runtimeType}'); // 12.22 double

  // 2.数字转字符串
  var num1 = 123;
  var num2 = 123.456;
  var num1Str = num1.toString();
  var num2Str = num2.toString();
  var num2StrD = num2.toStringAsFixed(2); // 保留两位小数
  print('${num1Str} ${num1Str.runtimeType}'); // 123 String
  print('${num2Str} ${num2Str.runtimeType}'); // 123.456 String
  print('${num2StrD} ${num2StrD.runtimeType}'); // 123.46 String

}

