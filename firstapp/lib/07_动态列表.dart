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
        ListTile(
          leading: Image.network(url),
          title:
              Text('我是第$i个列表', style: TextStyle(color: Colors.red, fontSize: 20)),
          subtitle: Text('1111111'),
          trailing: Image.network(url),
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
      return ListTile(
        title: Text(value['title']),
        subtitle: Text(value['author']),
        leading: Image.network(value['imageUrl'])
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

  List<Widget> getData4() {

  }

  @override
  Widget build(BuildContext context) {
    // 列表
    // return ListView(
    //   // children: this.getData(),
    //   // children: this.getData2(),
    //   children: this.getData3(),
    //   padding: EdgeInsets.all(0),
    // );

    // build渲染方法
    return ListView.builder(
      // itemCount: this.list.length,
      // itemBuilder: (context, index) {
      //   return ListTile(
      //     title: Text(this.list[index])
      //   );
      // },

      // 渲染外部数据
      itemCount: listData.length,
      itemBuilder: (context, index) {
        var temp = listData[index];
        return ListTile(
          title: Text(temp['title']),
          subtitle: Text(temp['author']),
          leading: Image.network(temp['imageUrl']),
        );
      }
    );
  }
}

/**
 * 列表 ListView:
 *  接收数组，接收任意Widget;
 *  可以指定列表滚动方向：垂直或水平
 */
