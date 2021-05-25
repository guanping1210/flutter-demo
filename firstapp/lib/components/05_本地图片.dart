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
        child: Image.asset('images/taobao.jpeg', fit: BoxFit.cover),
        height: 300.0,
        width: 300.0,
        // 边框
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
            color: Colors.redAccent,
            width: 2.0
          ),
        ),
      )
    );
  }
}

/**
 * 本地图片：
 *  1、新建images文件夹，然后里面新增2.0x、3.0x、4.0x文件夹
 *  2、每个文件夹下面都需要放一份图片
 *  3、在pubspec.yaml 文件中，引入assets图片
 *  4、目前版本引入图片之后每次都要重启，所以建议使用远程图片
 */