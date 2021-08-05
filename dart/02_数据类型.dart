import '01_dart.dart';

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

  // 前缀r 可以原样输出，特殊字符不会被转义
  String namex = r'In a roa \n \v\r';

  print(name);
  print('$name2 $age');
  print(namex);
  print(namex.isEmpty);

  // 2、数字类型：int double
  // int 类型必须是整型；double可以是整型，也可以是浮点型
  int num1 = 10;
  double num2 = 23.55;

  double num3 = num1 + num2;

  if (num1 == num2) {
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

  // 4.3 创建集合的方式
  var list3 = List.filled(10, 10);
  print(list3);

  var list4 = const [1, 2, 3];
  print(list4);

  var list;
  var list5 = [1, 2, 3, ...?list];
  print(list5);

  // 5、Map 字典类型
  var map = Map<String, String>();
  map['123'] = '454545';
  print(map['123']);

  // 6、Set 特定元素的无序集合
  var set = {'hello', 'word', 'nice to meet u', 3};
  print(set);

  // 7、late
  late String people;
  people = 'hello world';

  print(people);

  // 8、assert 断言，判断是否相等
  assert(people == 'hello world');
  print(people is String);
}
