import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = true;
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
  var _message;
  static var _janken = <String>['グー', 'チョキ', 'パー'];
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(_message,
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 32.0))),
              RaisedButton(
                onPressed: buttonPressed,
                color: Colors.black12,
                child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(Icons.android, size: 50.0)),
              ),
            ],
          ),
        ));
  }

  void buttonPressed() {
    setState(() {
      _message = (_janken..shuffle()).first;
    });
  }
}
