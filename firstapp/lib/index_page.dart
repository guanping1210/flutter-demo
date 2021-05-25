import 'package:firstapp/views/category_page.dart';
import 'package:flutter/material.dart';
import "package:flutter/cupertino.dart";

import './views/cart_page.dart';
import './views/category_page.dart';
import './views/home_page.dart';
import './views/member_page.dart';


// 列表文件
List tabBarList = [
  HomePage(),
  CategoryPage(),
  ShopCartPage(),
  MemberPage(),
];

// 整体入口文件, 状态组件，创建state
class IndexPage extends StatefulWidget {
  @override
  _IndexPage createState() => _IndexPage();
}

class _IndexPage extends State<IndexPage> {
  // 声明底部导航变量 --> 可优化为动态数据渲染
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text('首页'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      title: Text('分类'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      title: Text('购物车'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.vpn_lock_outlined),
      title: Text('会员中心'),
    ),
  ];

  // 声明state状态
  int currentIndex = 0;
  var currentPage;

  void initState() {
    currentPage = tabBarList[currentIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(title: Text('百姓生活+')),
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // 底部导航定位
          currentIndex: currentIndex, // 设置导航选中状态
          items: bottomTabs,
          onTap: (index) {
            setState(() {
              currentIndex = index;
              currentPage = tabBarList[index];
            });
          }),
    );
  }
}
