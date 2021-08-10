import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Demo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('demo1 page'),
      ),
      body: Center(
        child: Text('demo1 page')
      )
    );
  }
}