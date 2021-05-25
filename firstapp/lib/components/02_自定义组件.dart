import 'package:flutter/material.dart';

class Person {
  String name;
  int age;
  Person(this.name, this.age);

  run() {
    print('${this.name} --- ${this.age}');
  }
}

void main() {
  var p = new Person('张阿三', 20);
  p.run();
  runApp(MyApp());
}

// 自定义组件  Widget就是组件，部件的意思
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO
    return MaterialApp(
      home: Scaffold(
        // 导航
        appBar: AppBar(
          title: Text('flutter demo')
        ),
        // 内容区域
        body: HomeContent()
      ),
      // 主题颜色
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

// build 回车，可以快速生成下面的Widget内容
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: new Text('hello flutter', textDirection: TextDirection.ltr, style: TextStyle(fontSize: 50.0, color: Colors.yellow)),
    );
  }
}

/**
 * MaterialApp 是一个方便的Widget，封装了Material Design 所需要的一些Widget
 *  home 主页
 *  title 标题
 *  color 颜色
 *  theme 主题
 *  routes 路由
 *  ......
 * 
 * Scaffold 是Material Design布局结构的基本实现
 *  appBar 顶部导航
 *  body 中间内容
 *  draw 抽屉蓝菜单
 */
