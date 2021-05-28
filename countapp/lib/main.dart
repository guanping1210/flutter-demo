import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: CountPage(title: 'count app'),
    );
  }
}

class CountPage extends StatefulWidget {
  CountPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Count();
  }
}

class Count extends State<CountPage> {
  var countNum = 0;

  addCount() {
    setState(() {
      countNum++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Text('$countNum', style: TextStyle(color: Colors.redAccent, fontSize: 24)),
      ),
      floatingActionButton: FloatingActionButton(
        child: FlatButton(
          child: Icon(Icons.add, color: Colors.white),
        ),
        onPressed: () {
          addCount();
        },
      ),
    );
  }
}
