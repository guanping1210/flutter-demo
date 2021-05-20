import 'package:flutter/material.dart';
import 'res/listData.dart';

final url =
    'https://img.alicdn.com/imgextra/i3/2206686532409/O1CN01CNYxyS1TfMndKWG5H_!!2206686532409-0-lubanimage.jpg';
// 入口方法
void main() {
  // 自定义runApp接收自定义组件方法
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('flutter demo 24489999888')),
            body: HomeContent()));
  }
}

class HomeContent extends StatelessWidget {

  // 自定义方法 获取的直接的数据
  List<Widget> getData() {
    return [
        Image.network(url),
        Image.network(url),
        ListTile(
          leading: Image.network(url),
          title:
              Text('新闻标题', style: TextStyle(color: Colors.red, fontSize: 20)),
          subtitle: Text('1111111'),
          trailing: Image.network(url),
        ),
        Text('hellow'),
        Text('age')
    ];
  }

  // 自定义方法，数据和遍历分开
  List<Widget> getData2() {
    List<Widget> list = new List();

    // 遍历构造数据
    for(var i = 0; i < 20; i ++) {
      list.add(
        Container(
          color: Colors.blueGrey,
          alignment: Alignment.center,
          child: ListTile(
            title: Text('这是第$i个文本', style: TextStyle(color: Colors.white)),
            subtitle: Text('guanping', style: TextStyle(color: Colors.white)),
            leading: Image.network(url),
          ) 
        ),
      );
    }

    return list;
  }

  // 自定义方法3， 获取外部数据并遍历
  /**
   * 注意：列表转Widget，用.toList
   *      对象数据获取只能用[name]的方式读取
   */
  List<Widget> getData3() {
    var tempList = listData.map((value){
      return Container(
        // color: Colors.blueGrey,

        child: Column(
          children: <Widget>[
            Image.network(value['imageUrl']),
            SizedBox(height: 40), // 产生边距的事儿
            Text(value['title']),
            Text(value['author'])
          ],
        ),

        // 边框
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.0,
            color: Colors.orange
          )
        ),
      );
    });

    return tempList.toList();
  }

  /**
   * 自定义方法4: ListView.builder
   */
  List list = new List();
  HomeContent() {
    for(var j = 0; j < 20; j ++) {
      this.list.add(
        '我是第$j条数据3333'
      );
    }
  }

  @override
  Widget build(BuildContext context) {

    // build渲染方法
    return GridView.count(
      // children: <Widget>[
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      // ],

      // children: this.getData2(),
      
      children: this.getData3(),
      crossAxisCount: 3, // 显示的列数
      crossAxisSpacing: 10.0, // 左右边距double类型
      mainAxisSpacing: 10.0, // 上下边距double类型
      padding: EdgeInsets.all(10),
    );
  }
}

/**
 * 列表 ListView:
 *  接收数组，接收任意Widget;
 *  可以指定列表滚动方向：垂直或水平
 */
