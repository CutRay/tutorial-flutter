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
  var _gridData = <Widget>[
    Container(
        color: Colors.red,
        width: 200.0,
        height: 200.0,
        child: Text(
          "One",
          style: TextStyle(
              fontSize: 32.0,
              color: const Color(0xFF000000),
              fontWeight: FontWeight.w400,
              fontFamily: "Roboto"),
        )),
    Container(
        color: Colors.red,
        width: 200.0,
        height: 200.0,
        child: Text(
          "Two",
          style: TextStyle(
              fontSize: 32.0,
              color: const Color(0xFF000000),
              fontWeight: FontWeight.w400,
              fontFamily: "Roboto"),
        )),
    Container(
        color: Colors.red,
        width: 200.0,
        height: 200.0,
        child: Text(
          "Three",
          style: TextStyle(
              fontSize: 32.0,
              color: const Color(0xFF000000),
              fontWeight: FontWeight.w400,
              fontFamily: "Roboto"),
        )),
    Container(
        color: Colors.red,
        width: 200.0,
        height: 200.0,
        child: Text(
          "Four",
          style: TextStyle(
              fontSize: 32.0,
              color: const Color(0xFF000000),
              fontWeight: FontWeight.w400,
              fontFamily: "Roboto"),
        )),
    Container(
        color: Colors.red,
        width: 200.0,
        height: 200.0,
        child: Text(
          "Five",
          style: TextStyle(
              fontSize: 32.0,
              color: const Color(0xFF000000),
              fontWeight: FontWeight.w400,
              fontFamily: "Roboto"),
        )),
    Container(
        color: Colors.red,
        width: 200.0,
        height: 200.0,
        child: Text(
          "Six",
          style: TextStyle(
              fontSize: 32.0,
              color: const Color(0xFF000000),
              fontWeight: FontWeight.w400,
              fontFamily: "Roboto"),
        ))
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('App Name'),
      ),
      body: GridView.extent(
          maxCrossAxisExtent: 300.0,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          padding: const EdgeInsets.all(10.0),
          children: _gridData),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.android), onPressed: fabPressed),
    );
  }

  void fabPressed() {}
}
