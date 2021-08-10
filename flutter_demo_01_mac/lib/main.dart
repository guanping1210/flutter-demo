/**
 * 计数器demo
 */
import 'package:flutter/material.dart';
import './route.dart';
// 引入组件
import './components//demo1.dart';
import './components//demo2.dart';
import './components//demo3.dart';

// 主函数
void main() {
  runApp(new MyApp());
  // runApp(new RouterTestRoute());
}

// 应用结构
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'count demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: new MyHomePage(title: 'home page'),
      // 注册命名路由，如果用了注册路由，那么home就不能直接指定了
      // 需要通过 / 来注册首页路由
      routes: {
        'new_page': (context) => NewRoute(),
        "demo1": (context) => Demo1(),
        "demo2": (context) => Demo2(),
        "demo3": (context) => Demo3(),
        // 注册首页路由
        "/": (context) => new MyHomePage(title: 'new route home page'),
      }
    );
  }
}

// 首页的结构，继承自StatefulWidget，说明是一个有状态的组件，状态可以更改
// StatefulWidget这个widget，至少由两个类组成：
//    StatefulWidget（有状态的组件）类, 本身是不变的 + State（状态）类，在widget生命周期中可能会发生变化
// StatelessWidget，也是有状态组件，但是状态是不可更改的
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}): super(key: key);
  final String title;

  // _MyHomePageState类是MyHomePage类对应的状态类
  // MyHomePage类没有build方法，被移动到了_MyHomePage中了，为什么要这样做
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

// 状态 类
class _MyHomePageState extends State<MyHomePage> {
  // 维护了一个_counter状态
  int _counter = 0;

  // 可以修改_counter状态
  // setState的作用就是通知flutter框架，状态发生改变，执行build方法重新构建界面
  // 如果不调用setState，那么_counter是不会增加的
  void _incrementCounter() {
    setState(() {
      // 首先会自增，然后通过setState通知页面更新
      // _counter ++;
      _counter = _counter + 1;
    });
  }

  // 构建UI界面的逻辑
  // 第一次创建是，fultter框架就会调用Widget中的build方法来构建widget树，然后渲染到屏幕上
  @override
  Widget build(BuildContext context) {

    // Scaffold是页面脚手架，提供来导航栏、标题、主屏幕Widget树的body属性
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('一共点击的次数：'),
            new Text('$_counter', style: Theme.of(context).textTheme.headline4),
            // 添加一个新的按钮，点击可以跳转去新的页面
            FlatButton(
              child: Text('打开新页面'),
              textColor: Colors.blue,
              // 按钮点击事件
              onPressed: () {
                // Navigator 是一个路由管理的组件，提供了打开和退出路由的方法，通过栈来保存路由历史
                //   .push 打开新页面  .pop 回到上一个页面 .replace 替换当前页面 ......
                // MaterialPageRoute 继承自PageRoute，表示占有整个屏幕空间的路由页面
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NewRoute();
                }));
              }
            ),
          ]
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: '点击一次，计数增加1',
        child: new Icon(Icons.add),
      ),
    );
  }
}

// 封装打开demo1 demo2 demo3三个新页面的按钮组件
// 自己想一下，如何实现从上面传递参数
class OpenDemoPage extends StatelessWidget {
  OpenDemoPage({Key key, @required this.title}) : super(key:key);
  
  final String title;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(text)
    );
  }
}

/**
 * 为什么把build放在state类中而不是放到StatefulWidget中呢？ --> 主要是Widget组件和State状态就会分离，不方便取用
 * 暂时还没理解到是为什么
 */