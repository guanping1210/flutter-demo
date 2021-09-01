/**
 * 进度条，自带动画
 */
import 'package:flutter/material.dart';

class CustomLinearProgress extends StatefulWidget {
  CustomLinearProgressState createState() => new CustomLinearProgressState();
}

class CustomLinearProgressState extends State<CustomLinearProgress>
    with SingleTickerProviderStateMixin {
  // 定义控制器
  AnimationController processController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // 长条形的进度条
          LinearProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation(Colors.blue),
            value: .5,
          ),
          // 圆形的进度条
          CircularProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation(Colors.blue),
          )
        ],
      )
    );
  }
}
