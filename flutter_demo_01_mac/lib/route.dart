import 'package:flutter/material.dart';

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('点击我，访问新路由')
      ),
      // body: Center(
      //   child: Text('这是一个新页面')
      // )
      // 测试打开一个新路由，并且传递着有参数
      body: Column(
        children: <Widget>[
          // 单个非命名路由
          new RouterTestRoute(),
          // 命名路由，需要注册
          Text('hahahhah')
        ]
      ),
    );
  }
}

// 路由传值
class TipRoute extends StatelessWidget {
  // 定义接收的参数
  TipRoute({
    Key key, 
    @required this.text // 接收一个text参数，必传项
  }): super(key:key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('提示，接收一个参数')
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(text),
              RaisedButton(
                onPressed: () => Navigator.pop(context, '我是返回值'),
                child: Text('返回')
              )
            ]
          )
        )
      )
    );
  }
}

class RouterTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: ()async {
          // 打开 TipRoute，等待返回结果
          // 点击顶部的导航返回result=null, 点击指定的按钮，result有具体的值
          var result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return TipRoute(
                // 自定义路由参数
                text: '我是提示路由上带的参数'
              );
            }),
          );

          // 打印
          print('路由返回值：$result');
        },
        child: Text('打开提示页面')
      )
    );
  }
}