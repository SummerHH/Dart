/*
Dart数据类型：字符串类型
*/

//Dart字符串是UTF-16编码单元的序列。您可以使用单引号或双引号创建一个字符串:

void main(){

  //1、字符串定义的几种方式

  // var str1='this is str1';

  // var str2="this is str2";

  // print(str1);
  // print(str2);

  ///可以使用三个单引号或者双引号表示多行字符串:
  
  // String str1='''this is str1
  // this is str1

  // this is str1
  // ''';

  //  print(str1);


  //字符串和其他变量或表达式拼接: 使用${expression}, 如果表达式是一个标识符, 那么{}可以省略
  //2、字符串的拼接

  String str1='你好';

  String str2='Dart';

  // print("$str1 $str2");


  print(str1 + str2);

  print(str1 +" "+ str2);

  ///字符串中的一些 API 请参考文档

}

