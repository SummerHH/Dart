/*
Dart数据类型： Maps（字典）  
*/

void main(){

  
  //第一种定义 Maps的方式

    // var person={
    //   "name":"张三",
    //   "age":20,
    //   "work":["程序员","送外卖"]
    // };

    // print(person);

    // print(person["name"]);

    // print(person["age"]);

    // print(person["work"]);

   //第二种定义 Maps的方式

    var p=new Map();

    p["name"]="李四";
    p["age"]=22;
    p["work"]=["程序员","送外卖"];
    print(p);

    print(p["age"]);



/// Map 的操作

/// 1.根据 key 获取 value
print(p["name"]);

/// 2.获取所有的 entries
print("${p.entries} ${p.entries.runtimeType}");

/// 获取所有的 keys
print("${p.keys}");

/// 获取所有的 value
print("${p.values}");

/// 判断是否包含某个 key或者 value
print("${p.containsKey('name')} ${p.containsValue('李四')}");

/// 根据 key 删除元素
print("${p.remove('age')}");

}

