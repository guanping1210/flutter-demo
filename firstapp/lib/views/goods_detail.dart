/**
 * 商品详情页面  要有完整的
 */
import 'package:flutter/material.dart';
import './helper.dart';

class GoodDetail extends StatefulWidget {
  // 从上级页面携带数据过来
  final goodId;
  GoodDetail({Key key, @required this.goodId}) : super();

  @override
  State<StatefulWidget> createState() {
    print(this.goodId);
    // TODO: implement createState
    return _GoodDetail(id: this.goodId);
  }
}

class _GoodDetail extends State {
  final id;
  var goods = {};
  var count = 0; // 记录选取的份数

  _GoodDetail({Key key, @required this.id}) : super();

  getGoodDetail() async {
    var res = await get('/goods/$id');
    print(res['data']);

    setState(() {
      goods = res['data'];
    });
  }

  // 该方法固定名字叫initState，用来初次获取接口数据
  void initState() {
    get('/goods/$id').then((res) {
      setState(() {
        goods = res['data'];
      });
    });
    super.initState();
  }

  void addGood(num item) {
    setState(() {
      count = count + item;
    });
  }

  void removeGood(num item) {
    setState(() {
      count = count - item;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print('ssssss jjjjj ${this.goods}');
    return Scaffold(
        appBar: AppBar(
          title: Text('商品详情页'),
        ),
        body: Container(
            padding: EdgeInsets.all(10),
            // color: Colors.blue,  // 背景色
            child: Column(
              children: <Widget>[
                Image.network(goods['img']),
                Container(
                  width: double.infinity, // 满屏占满
                  color: Color.fromARGB(10, 10, 10, 3),
                  child: Column(
                      children: [Text(goods['title']), Text(goods['desc'])]),
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    GestureDetector(
                      child: Icon(Icons.add_circle_outline, color: Colors.red),
                      onTap: () {
                        addGood(1);
                      },
                    ),
                                        Padding(padding: EdgeInsets.all(5)),

                    Text('$count'),
                    Padding(padding: EdgeInsets.all(5)),
              GestureDetector(
                        child: Icon(Icons.remove_circle_outline,
                            color: Colors.red),
                        onTap: () {
                          removeGood(1);
                        }),
                  ],
                )
              ],
            )));
  }
}
