import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LayoutWidget extends StatefulWidget {

  LayoutWidgetState createState() => new LayoutWidgetState();
}

class LayoutWidgetState extends State<LayoutWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // flex布局，可以指定主轴方向，占位比例，两个子widget按照1：2占据水平空间
          Flex(direction: Axis.horizontal,
          children: [
            Expanded(child: Container(height: 30, color: Colors.red), flex: 1),
            Expanded(child: Container(height: 30, color: Colors.green), flex: 2)
          ]),
          // 垂直方向, 两个子widget按照1：2的比例占据100像素的空间
          Padding(padding: const EdgeInsets.only(top: 20), child: SizedBox(height: 100, child:  Flex(direction: Axis.vertical,
          children: [
            Expanded(child: Container(height: 30, color: Colors.red), flex: 1),
            Expanded(child: Container(height: 30, color: Colors.green), flex: 2),
      
          ]))),
          // 不会自动换行，会溢出
          Row(
            children: [Text('xxxx' * 100)]
          ),
         Wrap(
           spacing: 8,
           runSpacing: 4,
           children: [
             Text('uuuuuu' * 100)
           ],
         ),
        //  stack 允许子组件重叠
        Stack(
            children: [
              Text('stack' * 100)
            ]
          ),
        // position 绝对定位
        Positioned(
            child: Text('Positioned' * 100),
            left: 10,
          )
        ]
      )
    );
  }
}
