import 'package:flutter/material.dart';

final url =
    'https://img.alicdn.com/imgextra/i3/2206686532409/O1CN01CNYxyS1TfMndKWG5H_!!2206686532409-0-lubanimage.jpg';

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: ListView(children: <Widget>[
      Image.network(url),
      // Image.network('https://www.itying.com/images/flutter/2.png'),
    ]));
  }
}
