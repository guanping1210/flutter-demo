import 'package:flutter/material.dart';

final url = 'https://img.alicdn.com/imgextra/i3/2206686532409/O1CN01CNYxyS1TfMndKWG5H_!!2206686532409-0-lubanimage.jpg';
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
        child: Image.network(
          url,
          alignment: Alignment.bottomRight,
          fit: BoxFit.cover,
        ),
        // height: 300.0,
        // width: 300.0,
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
 * Image.asset 本地图片
 * Image.nextwortk 远程图片
 */