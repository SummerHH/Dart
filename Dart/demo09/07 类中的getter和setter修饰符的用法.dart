

// class Rect{

//   int height;
//   int width;
 
//   getArea(){
//     return this.height*this.width;
//   } 
// }


// class Rect{
//   num height;
//   num width; 
  
//   Rect(this.height,this.width);
//   area(){
//     return this.height*this.width;
//   }
// }

// void main(){
//   Rect r=new Rect(10,4);
//   print("面积:${r.area()}");   
// }





// class Rect{
//   num height;
//   num width;   
//   Rect(this.height,this.width);
//   get area{
//     return this.height*this.width;
//   }
// }

// void main(){
//   Rect r=new Rect(10,2);
//   print("面积:${r.area}");      //注意调用直接通过访问属性的方式访问area
// }

/**
 * setter和getter
 * 默认情况下,Dart中定义的属性是可以直接被外界访问的
 * 但是某些情况下我们希望监控这个类的属性被访问的过程这个时候就可以使用 setter 和getter 了
 */

/**
 * main(List<String> args) {
  final d = Dog("黄色");
  d.setColor = "黑色";
  print(d.getColor);
}

class Dog {
  String color;

  String get getColor {
    return color;
  }
  set setColor(String color) {
    this.color = color;
  }

  Dog(this.color);
}
 */
class Rect{
  num height;
  num width; 
  
  Rect(this.height,this.width);
  get area{
    return this.height*this.width;
  }
  set areaHeight(value){
    this.height=value;
  }
}

void main(){
  Rect r=new Rect(10,4);
  // print("面积:${r.area()}");   
  r.areaHeight=6;

  print(r.area);

}