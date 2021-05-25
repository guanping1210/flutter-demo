/**
 * 路由页面：新增一个路由按钮，能够跳转到新页面，以及返回按钮
 */
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// 新建路由
class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('new route'),
        ),
        body: Center(child: Text('this is new route')));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'first flutter demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            FlatButton(
                onPressed: () {
                  // 导航到新路由
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return NewRoute();
                  }));
                },
                child: Text('open new route'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

/**
 * MaterialPageRoute UI组件，可以针对不同平台，实现风格一致的路由切换动画
 *  builder 构建页面内容，返回值是Widget
 *  settings 路由的配置信息
 *  maintainState 路由入栈保存
 *  fullscreenDialog 表示新路由页面是不是一个全屏的模态对话框
 * 
 * Navigator 路由管理组件
 *  push 打开新的路由页面
 *  pop 关闭上一个路由页面
 */
