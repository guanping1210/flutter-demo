import 'package:flutter/material.dart';

void main() {
  runApp(new Center(
    child: new Text(
      'hello', 
    textDirection: TextDirection.ltr)
  ));
}
/**
 * 入口函数：main runApp 是固定搭配的
 * 执行：flutter run
 * 
 * 所有的东西都是类，书写的时候可以省略new关键字
 * 例如 new Center，可以省略为 Center
 */