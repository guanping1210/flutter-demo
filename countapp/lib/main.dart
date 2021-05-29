import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      // home: CountPage(title: 'count app'),
      // 命名路由, 注册路由表
      initialRoute: '/', // 指定默认路由
      routes: {
        "new_page2": (context) => NewRoute(),
        "new_page": (context) => NewRoute(),
        '/': (context) => CountPage(title: 'count app'),
      }
    );
  }
}

class CountPage extends StatefulWidget {
  CountPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Count();
  }
}

class Count extends State<CountPage> {
  var countNum = 0;

  addCount() {
    setState(() {
      countNum++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Text('$countNum', style: TextStyle(color: Colors.redAccent, fontSize: 24)),
            RaisedButton(
              child: Text('打开新页面new page 111', style: TextStyle(color: Colors.blue)),
              onPressed: () {
                // 跳转到第一个路由, 并且可以带参数
                Navigator.pushNamed(context, 'new_page', arguments: { "hello": 'hi', "title": '3' });
              },
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('打开新页面new page 222', style: TextStyle(color: Colors.blue)),
              onPressed: () {
                // 跳转到第二个页面
                Navigator.pushNamed(context, 'new_page2');
              },
            ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: FlatButton(
          child: Icon(Icons.add, color: Colors.white),
        ),
        onPressed: () {
          addCount();
        },
      ),
    );
  }
}


// 新的路由页面
class NewRoute extends StatelessWidget {
  // NewRoute({Key key, }) : super(key: key);
  String title = 'hhhhhhh';

  @override 
  Widget build(BuildContext context) {
    // 获取路由参数, 可以带给对象
    dynamic args = ModalRoute.of(context).settings.arguments;
    print('路由参数 $args'); // 打印的结果就是 { title: 'xxx', hello: 'xxx'}
    
    // TODO 读取路由参数有问题
    // if(args != null && args['title']) {
    //   title = args['title'];
    // }

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('${title}'),
      ),
      body: Center(
        child: Text('new page content'),
      )
    );
  }
}
