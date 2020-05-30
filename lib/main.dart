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
  String _selected = 'A';
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
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              _message,
              style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto'),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Radio<String>(
                  value: 'A',
                  groupValue: _selected,
                  onChanged: (String value) => checkChanged(value),
                ),
                Text(
                  'A',
                  style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto'),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Radio<String>(
                  value: 'B',
                  groupValue: _selected,
                  onChanged: (String value) => checkChanged(value),
                ),
                Text(
                  'B',
                  style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto'),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Radio<String>(
                  value: 'C',
                  groupValue: _selected,
                  onChanged: (String value) => checkChanged(value),
                ),
                Text(
                  'C',
                  style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto'),
                )
              ],
            )
          ],
        ));
  }

  void checkChanged(String val) {
    setState(() {
      _selected = val;
      _message = 'selected:$_selected';
    });
  }
}
