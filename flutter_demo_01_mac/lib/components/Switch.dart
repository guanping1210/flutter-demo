/**
 * 单选框、多选框的基本操作，切换状态和自定义样式等
 */

import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  CustomSwitchState createState() => new CustomSwitchState();
}

class CustomSwitchState extends State<CustomSwitch> {
  bool switchSelected = true; // 单选开关状态
  bool checkboxSelected = true; // 复选框状态

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Switch(
          value: switchSelected,
          onChanged: (value) {
            // 修改单选开关状态
            setState(() {
              switchSelected = value;
            });
          }),
      Checkbox(
          value: checkboxSelected,
          activeColor: Colors.red, // 选中时的颜色
          onChanged: (value) {
            // 修改复选框状态
            setState(() {
              checkboxSelected = value;
            });
          })
    ]);
  }
}
