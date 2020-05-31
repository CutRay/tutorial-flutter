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
  int _index;
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
              ListTile(
                leading: const Icon(Icons.android),
                title: const Text('First item'),
                selected: _index == 1,
                onTap: () {
                  _index = 1;
                  tapTile();
                },
              ),
              ListTile(
                leading: const Icon(Icons.favorite),
                title: const Text('Second item'),
                selected: _index == 2,
                onTap: () {
                  _index = 2;
                  tapTile();
                },
              ),
              ListTile(
                leading: const Icon(Icons.favorite_border),
                title: const Text('Third item'),
                selected: _index == 3,
                onTap: () {
                  _index = 3;
                  tapTile();
                },
              )
            ],
          )
        ],
      ),
    );
  }

  void tapTile() {
    setState(() {
      _message = 'you tatpped: No,$_index.';
    });
  }
}
