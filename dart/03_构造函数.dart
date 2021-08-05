// 1、构造函数

const double xOrigin = 0;
const double yOrigin = 0;

class Point {
  double x = 0;
  double y = 0;

  Point(this.x, this.y);

  // Point的构造函数定义 constructor
  Point.origin()
      : x = xOrigin,
        y = yOrigin;
}

class Person {
  String? firstname;

  Person.fromJson(Map data) {
    print('in Person');
  }
}

class Employee extends Person {
  // 子类显式的继承父类
  Employee.fromJson(Map data) : super.fromJson(data) {
    print('in Employee');
  }
}

// 2、工厂构造函数：关键字factory
class Logger {
  final String name;
  bool mute = false;

  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent((name), () => Logger._internal(name));
  }

  factory Logger.fromJson(Map<String, Object> json) {
    return Logger(json['name'].toString());
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) {
      print(msg);
    }
  }
}

void main() {
  // 实例化
  var employee = Employee.fromJson({});
  print(employee);

  // Logger 实例化
  var logger = Logger('UI');
  logger.log('Button clicked');

  var logMap = {'name': 'UI', 'click': 'Button'};
  var loggerJSON = Logger.fromJson(logMap);

  // 打印log值
  print(loggerJSON.name);
}

// 定义枚举类型
enum Color { red, green, blue }

// 泛型
abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}
