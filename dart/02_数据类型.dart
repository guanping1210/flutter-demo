void main() {
  // 1、字符串类型
  String name = '123';
  name += '909090';

  name += '''
    this is str1
    this is str2  \n \n 
        this is str3
   ''';

  var name2 = 'guanping';
  var age = 40;

  print(name);
  print('$name2 $age');

  // 2、数字类型：int double
  // int 类型必须是整型；double可以是整型，也可以是浮点型
  int num1 = 10;
  double num2 = 23.55;

  double num3 = num1 + num2;

  if(num1 == num2) {
    print('num1 == num2');
  } else {
    print('num1 != num2');
  }

  print(num3);

  // 3、bool类型： true false
  bool flag = true;
  print(flag);

  // 4、list类型：数组｜集合
  // 4.1 list每一项没有指定类型
  var list1 = ['guanping', 20, true];
  var length = list1.length;
  print('$list1, $length');
  print(list1[0]);

  // 4.2 list每一项指定类型
  var list2 = <String>['1', '2'];
  list2.add('3');
  print(list2);
}