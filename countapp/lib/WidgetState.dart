/**
 * 状态管理
 */
import 'package:flutter/material.dart';

class WidgetState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return WidgetStatePage();
  }
}

class WidgetStatePage extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('状态管理'),
      ),
      body: Container(
        child: Column(
          children: [
            Text('see u lala'),
          ]
        )
      ),
    );
  }
}