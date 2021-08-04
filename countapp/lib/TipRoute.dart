import "package:flutter/material.dart";

class TipRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FlatButton(onPressed: () {
      // 新路由 带参数
    }, child: Text('带参数的路由', style: TextStyle(
      color: Colors.blue,
    )));
  }
}

class TipRoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text('new tip route')),
        body: Center(child: Text('body')));
  }
}
