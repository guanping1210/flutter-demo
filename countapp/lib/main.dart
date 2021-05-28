import 'package:flutter/material.dart';
import './TipRoute.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: CountPage(title: 'count app'),
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
      body: Column(
        children: [
          Center(
            child: Text('$countNum',
                style: TextStyle(color: Colors.redAccent, fontSize: 24)),
          ),
          NewRouteButton(),
          
        ],
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

// 按钮，链接跳转新路由
class NewRouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FlatButton(
        onPressed: () {
          // 导航新路由
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return NewRoutePage();
          }));
        },
        child: Text('new route', style: TextStyle(color: Colors.blue)));
  }
}

// 新页面
class NewRoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('new route page'),
      ),
      body: Center(child: Text('hello, new page')),
    );
  }
}
