import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.purple,
        primaryColor: const Color(0xFF9c27b0),
        accentColor: const Color(0xFF9c27b0),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _message;

  @override
  void initState() {
    _message = 'ok';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('App Name'),
      ),
      body: Column(
        children: <Widget>[
          Text(
            _message,
            style: TextStyle(fontSize: 20.0),
          ),
          ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20.0),
            children: <Widget>[
              Text(
                'FIrst item',
                style: TextStyle(fontSize: 24.0),
              ),
              Text(
                'Second item',
                style: TextStyle(fontSize: 24.0),
              ),
              Text(
                'Third item',
                style: TextStyle(fontSize: 24.0),
              )
            ],
          )
        ],
      ),
    );
  }
}
