/**
 * 商城首页
 */
import 'package:flutter/material.dart';
import 'package:dio/dio.dart'; // http请求库, 最新版本3.x.x
import './helper.dart';

class HomePage extends StatefulWidget {
  _HomePage createState() => _HomePage();
}

class _HomePage extends State {
  // 定义state数据
  var goods = [];

  void getHttp() async {
    var res = await get('/goods');
    var data = res['data'];
    setState(() {
      goods = data as List<dynamic>;
    });
  }

  // 初始状态下就只请求一次
  void initState() {
    getHttp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // 通过接口获取数据
    return Container(
        child: GridView.builder(
      scrollDirection: Axis.vertical,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
      ),
      itemCount: goods.length,
      itemBuilder: (context, index) {
        var item = goods[index];
        return Container(
          
          child: Column(
            children: <Widget>[
              Image.network(item['img']),
              Text(item['title']),
              Text(item['desc'])
            ],
          )
          );
          
      },
    ));
  }
}
