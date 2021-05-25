// https://www.cnblogs.com/crazycode2/p/11220203.html
import 'package:flutter/material.dart';
import './index_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new IndexPage(),
    ));
  }
}


/**
 * Material 风格UI组件
 * Cupertino ios风格组件
 * 
 * StatelessWidget 无状态widget
 * 
 * easy-mock 模拟在线数据接口  ping.guan  123456
 */