import 'package:flutter/material.dart';

void main() {
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
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('App Name'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          FractionallySizedBox(
            widthFactor: 0.25,
            child: Container(
              color: Color.fromARGB(255, 255, 255, 0),
              child: Text(
                'One',
                style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto'),
              ),
            ),
          ),
          FractionalTranslation(
            translation: Offset(1.0, 1.0),
            child: Container(
              color: Color.fromARGB(255, 255, 255, 0),
              child: Text(
                'One',
                style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto'),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.android), onPressed: fabPressed),
    );
  }

  void fabPressed() {}
}
