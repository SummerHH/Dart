
/*
dart里面构造函数可以写多个
*/
class Person{
  String name;
  int age; 
  //默认构造函数的简写 语法糖
  Person(this.name,this.age);
  
  Person.now(){
    print('我是命名构造函数');
  }

  Person.setInfo(String name,int age){
    this.name=name;
    this.age=age;
  }

  void printInfo(){   
    print("${this.name}----${this.age}");
  }
}

/// 2.重定向构造方法
/// 在某些情况下, 我们希望在一个构造方法中去调用另外一个构造方法, 这个时候可以使用重定向构造方法：
/// 在一个构造函数中，去调用另外一个构造函数（注意：是在冒号后面使用this调用）
class Person1 {
  String name;
  int age;

  Person1(this.name, this.age);
  Person1.fromName(String name) : this(name, 0);
}


///3.常量构造方法
///在某些情况下，传入相同值时，我们希望返回同一个对象，这个时候，可以使用常量构造方法.
///默认情况下，创建对象时，即使传入相同的参数，创建出来的也不是同一个对象，看下面代码:

  ///这里我们使用identical(对象1, 对象2)函数来判断两个对象是否是同一个对象:
  /**
  main(List<String> args) {
  var p1 = Person('why');
  var p2 = Person('why');
  print(identical(p1, p2)); // false
}

class Person {
  String name;

  Person(this.name);
}
*/

///但是, 如果将构造方法前加const进行修饰，那么可以保证同一个参数，创建出来的对象是相同的

///这样的构造方法就称之为常量构造方法。
/**
  main(List<String> args) {
  var p1 = const Person('why');
  var p2 = const Person('why');
  print(identical(p1, p2)); // true
}

class Person {
  final String name;

  const Person(this.name);
}
 */

/**
 * 常量构造方法有一些注意的地方
 * 1.拥有常量构造方法的类中，所有的成员变量必须是final修饰的.
 * 2.为了可以通过常量构造方法，创建出相同的对象，不再使用 new关键字，而是使用const关键字
 * 如果是将结果赋值给const修饰的标识符时，const可以省略.
 */

/// 4.工厂构造方法
// Dart提供了factory关键字, 用于通过工厂去获取对象
/**
 * main(List<String> args) {
  var p1 = Person('why');
  var p2 = Person('why');
  print(identical(p1, p2)); // true
}

class Person {
  String name;

  static final Map<String, Person> _cache = <String, Person>{};

  factory Person(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final p = Person._internal(name);
      _cache[name] = p;
      return p;
    }
  }

  Person._internal(this.name);
} */

void main(){


  // var d=new DateTime.now();   //实例化DateTime调用它的命名构造函数
  // print(d);


  //Person p1=new Person('张三', 20);   //默认实例化类的时候调用的是 默认构造函数

  //Person p1=new Person.now();   //命名构造函数



  Person p1=new Person.setInfo('李四',30);
  p1.printInfo(); 

}