import 'package:flutter/material.dart';

final url =
    'https://img.alicdn.com/imgextra/i3/2206686532409/O1CN01CNYxyS1TfMndKWG5H_!!2206686532409-0-lubanimage.jpg';
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
            appBar: AppBar(title: Text('flutter demo 24489999888')),
            body: HomeContent()));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 列表
    return ListView(
      children: <Widget>[
        Image.network(url),
        Image.network(url),
        Image.network(url),
        Image.network(url),

        ListTile(
          leading: Image.network(url),
          title:
              Text('新闻标题', style: TextStyle(color: Colors.red, fontSize: 20)),
          subtitle: Text('1111111'),
          trailing: Image.network(url),
        ),
        ListTile(
          leading: Icon(Icons.home, color: Colors.blue),
          title: Text('新闻标题222'),
          subtitle: Text('nfnskemfowfoiew'),
        ),
        ListTile(
          leading: Icon(Icons.pages),
          title: Text('新闻标题3333'),
          subtitle: Text('8888888'),
        ),
        Text('hellow'),
        Text('name'),
        Text('age')
      ],
      padding: EdgeInsets.all(0),
    );
  }
}

/**
 * 列表 ListView:
 *  接收数组，接收任意Widget;
 *  可以指定列表滚动方向：垂直或水平
 */
