/**
 * 基础的表单操作，校验、监听、输入、重置等
 */

import 'package:flutter/material.dart';

class CustomForm extends StatefulWidget {
  CustomFormState createState() => new CustomFormState();
}

// 简单的登录输入框
// 获取输入内容：onChange触发；通过controller直接获取
class CustomFormState extends State<CustomForm> {
  // 定义controller, 类似于React获取ref实例的方式
  // 1、监听变化 2、设置初始值 3、控制焦点
  TextEditingController nameController = TextEditingController();
  GlobalKey formKey = new GlobalKey<FormState>();

  // 初始化定义
  void initState() {
    nameController.text = 'hello world';
    nameController.addListener(() {
      final text = nameController.text;
      print('addListener: $text');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey, // 设置globalkey，方便后去获取FormState
        autovalidate: true, // 开启自动校验
        child: Column(
          children: <Widget>[
            RaisedButton(
                child: Text('控制台打印'),
                onPressed: () {
                  // 打印输入框输入的文本
                  print(nameController.text);
                }),
            // 文本输入, 从TextField修改为TextFormField，可以增加校验功能
            TextFormField(
              autofocus: true,
              controller: nameController,
              onChanged: (v) {
                print('监听onchange事件：$v');
              },
              decoration: InputDecoration(
                labelText: 'username',
                hintText: 'username or email address',
                prefixIcon: Icon(Icons.person),
              ),
              // username 校验
              validator: (v) {
                return v.trim().length > 0 ? null : 'username can not be empty';
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'password',
                hintText: 'login password',
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            // 登录按钮 1.0
            Padding(
                padding: const EdgeInsets.only(top: 28),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: RaisedButton(
                            child: Text('login'),
                            color: Theme.of(context).primaryColor,
                            textColor: Colors.white,
                            onPressed: () {
                              // 这儿不能通过Form.of来获取FormState,因为此处的context不是Form的context
                              // print(Form.of(context));
                              // 通过formKey.currentState可以获取FormState
                              print(formKey.currentState);
                            }))
                  ],
                )),

            // 登录按钮 2.0
            Expanded(child: Builder(builder: (context) {
              return RaisedButton(onPressed: () {
                // 此时能通context获取到FormState, 因为此 Widget是Form的子代Widget，所以可以获取
                print(Form.of(context));

                if (Form.of(context).validate()) {
                  // 校验通过之后的提交数据操作
                }
              });
            }))
          ],
        ))
    );
  }
}
