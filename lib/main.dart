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
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              _message,
              style: TextStyle(
                  color: const Color(0xFF000000),
                  fontSize: 32.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto'),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            RaisedButton(
              onPressed: buttonPressed,
              padding: EdgeInsets.all(10.0),
              child: Text(
                'tap me.',
                style: TextStyle(
                    color: const Color(0xFF000000),
                    fontSize: 28.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto'),
              ),
            )
          ],
        ));
  }

  void buttonPressed() {
    showDialog(
        context: context,
        builder: (BuildContext context) => Container(
            color: Colors.white,
            child: Text(
              'Hello',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28.0,
                  decorationStyle: TextDecorationStyle.solid),
            )));
  }
}
