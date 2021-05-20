import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'template',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  final titleSize = 16.0, subSize = 12.0;
  final titleColor = 'black', subColor = 'black54';

  final image1 =
      'https://img.alicdn.com/imgextra/i1/6000000006577/O1CN01zfi5dc1ySJbVW4IDM_!!6000000006577-2-octopus.png';
  final image2 =
      'https://img.alicdn.com/imgextra/i4/2206686532409/O1CN011gHVP31TfMnUKtgdy_!!2206686532409-0-lubanimage.jpg';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('template'),
        ),
        body: Center(
            child: ListView(children: <Widget>[
          ListTile(
            leading: Image.network(image1),
            title: Text('前端小报系统开源',
                style: TextStyle(color: Colors.black54, fontSize: titleSize)),
            subtitle: Text('关于前端小报系统开源的问题，我们是这样考虑的',
                style:
                    TextStyle(color: Colors.black54, fontSize: subSize)),
            trailing: Image.network(image2)
          ),
          ListTile(
            leading: Image.network(image1),
            title: Text('添加一个组件',
                style: TextStyle(color: Colors.black54, fontSize: titleSize)),
            subtitle: Text('关于添加一个组件开源的问题，我们是这样考虑的',
                style:
                    TextStyle(color: Colors.black54, fontSize: subSize)),
            trailing: Image.network(image2)
          ),
        ])));
  }
}
