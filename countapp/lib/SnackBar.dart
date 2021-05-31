import 'package:flutter/material.dart';

class SnackPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SnackContainer();
  }
}

class SnackContainer extends State {
  var count = 0;

  @override
  void initState() {
    // TODO: implement initState
    count = 10;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('获取state'),
      ),
      body: Center(
          child: RaisedButton(
            onPressed: () {
              // 查找父级最近的Scaffold对应的ScaffoldState对象
              ScaffoldState _state = context.findAncestorStateOfType<ScaffoldState>();
              
              _state.showSnackBar(
                SnackBar(
                  content: Text('我是SnackBar'),
                ),
              );
              print('获取上级的state');
            },
            child: Text('显示snackerBar'),
          )
        ),
    );
  } 
}