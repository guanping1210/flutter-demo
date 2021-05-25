import 'package:flutter/material.dart';

// 入口方法
void main() {
  // 自定义runApp接收自定义组件方法
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('flutter demo 244')),
        body: HomeContent()
      )
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: Text('我是一个文本'),
        height: 300.0,
        width: 300.0,
        // 边框
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
            color: Colors.redAccent,
            width: 2.0
          )
        ),
      )
    );
  }
}

/**
 * Container 类：类似于div
 * 每个类传递的都是参数，而不是属性
 */