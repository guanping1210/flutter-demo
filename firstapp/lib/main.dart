import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';

// 网络请求
getMusicData() async {
  var httpClient = new HttpClient();
  var url = new Uri.http('api.66mz8.com', '/api/rand.music.163.php');
  // var url = 'https://api.66mz8.com/api/rand.music.163.php?format=json';
  var request = await httpClient.getUrl(url);
  var response = await request.close();
  var responseBody = await response.transform(Utf8Decoder());
  print('1111$responseBody');
}

var httpClient = new HttpClient();

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(title: 'music app', home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  PageContainer createState() => new PageContainer();
}

class PageContainer extends State {
  var _ipAddress = 'Unknown';

  _getIPAddress() async {
    var url = 'https://httpbin.org/ip';
    var httpClient = new HttpClient();
    String result;
    try {
      var request = await httpClient.getUrl(Uri.parse(url));
      var response = await request.close();
      if (response.statusCode == HttpStatus.OK) {
        var json = await response.transform(utf8.decoder).join();
        var data = jsonDecode(json);
        result = data['origin'];
      } else {
        result =
            'Error getting IP address:\nHttp status ${response.statusCode}';
      }
    } catch (exception) {
      result = 'Failed getting IP address';
    }

    // If the widget was removed from the tree while the message was in flight,
    // we want to discard the reply rather than calling setState to update our
    // non-existent appearance.
    if (!mounted) return;
    print(result);
    setState(() {
      _ipAddress = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    // getMusicData();
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text('music app')),
        body: Container(
          child: new Column(children: <Widget>[
            Text('test'),
            RaisedButton(onPressed: _getIPAddress, child: Text('获取接口数据'))
          ]),
        ));
  }
}
