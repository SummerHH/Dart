//调用方法传参

main() {
  

//1、定义一个方法 求1到这个数的所有数的和      60    1+2+3+。。。+60

 /*
    int sumNum(int n){
      var sum=0;
      for(var i=1;i<=n;i++)
      {
        sum+=i;
      }
      return sum;
    } 

    var n1=sumNum(5);
    print(n1);
    var n2=sumNum(100);
    print(n2);

 */
       


  //2、定义一个方法然后打印用户信息


    // String printUserInfo(String username,int age){  //行参
    //     return "姓名:$username---年龄:$age";
    // }

    // print(printUserInfo('张三',20)); //实参





    //3、定义一个带可选参数的方法
    //1. 可选参数分为命名可选参数和位置可选参数
    //2. 定义方式如下

    /**
     * 命名可选参数: {param1, param2, ....}
     * 位置可选参数: [param1, param2, ....]
     */
    
  
    // 命名可选参数
    printInfo1(String name, {int age, double height}) {
      print('name=$name age=$age height=$height');
    }

    // 调用printInfo1函数
    printInfo1('why'); // name=why age=null height=null
    printInfo1('why', age: 18); // name=why age=18 height=null
    printInfo1('why', age: 18, height: 1.88); // name=why age=18 height=1.88
    printInfo1('why', height: 1.88); // name=why age=null height=1.88

    //位置可选参数的演示:
    // 定义位置可选参数
    printInfo2(String name, [int age, double height]) {
      print('name=$name age=$age height=$height');
    }

    // 调用printInfo2函数
    printInfo2('why'); // name=why age=null height=null
    printInfo2('why', 18); // name=why age=18 height=null
    printInfo2('why', 18, 1.88); // name=why age=18 height=1.88

    // 参数的默认值 (只有可选参数可以有默认值,比传参数不能右默认值)
    printInfo4(String name, {int age = 18, double height=1.88}) {
      print('name=$name age=$age height=$height');
    }

//6、实现一个 把方法当做参数的方法

  // var fn=(){

  //   print('我是一个匿名方法');
  // };      
  // fn();




  //方法
  fn1(){
    print('fn1');
  }

  //方法
  fn2(fn){
    
    fn();
  }

  //调用fn2这个方法 把fn1这个方法当做参数传入
  fn2(fn1);







}
