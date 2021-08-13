import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final wordPair = new WordPair().random();

    return new MaterialApp(
        title: 'flutter_demo_01',
        home: Scaffold(
            appBar: AppBar(
              title: Text('cesi'),
            ),
            body: Column(children: <Widget>[
              Text('23333'),
              Center(child: Image.asset('lib/images/th.jpg'))
            ])));
  }
}
