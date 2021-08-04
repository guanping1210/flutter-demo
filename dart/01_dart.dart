// 所有的函数都必须放到main中执行

// main 写法一
// main() {
//   print('nihao');
//   print('nice to meet u');
// }

// main 写法二
void main() {
  print('hello');
  print('noce to meet u');
  print(name);

  name = 'jjjjjj';
  print(name);

  final time = new DateTime.now(); // 这时候并没有赋值
  print(time); // 执行time的时候才赋值， 用final定义的常量可以这样，但是const定义的常量不可以这样
}


var name  = 'guanping';
String hobbit = 'reading';
int age = 10;