import 'package:flutter/material.dart';

class CustomImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 1.0 本地加载图片
    // return Image(
    //   image: AssetImage('images/th.jpg'),
    //   width: 100
    // );

    // 2.0 本地加载图片
    // return Image.asset('images/th.jpg', width: 100);

    // 3.0 加载网络图片
    // return Image(
    //     image: NetworkImage(
    //   'https://avatars2.githubusercontent.com/u/20411648?s=460&v=4'),
    //   width: 100,
    // );

    // 4.0 加载网络图片
    return Image.network(
        'https://avatars2.githubusercontent.com/u/20411648?s=460&v=4',
        width: 100);
  }
}
