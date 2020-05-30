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
      body: Center(
          child: Card(
        margin: EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            Text(
              'Hello',
              style: TextStyle(
                  fontSize: 32.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto'),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
            ),
            Text(
              'This is Card Layout' * 5,
              style: TextStyle(
                  fontSize: 24.0,
                  color: const Color(0xFF0000FF),
                  fontWeight: FontWeight.w200,
                  fontFamily: 'Roboto'),
            ),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.android), onPressed: fabPressed),
    );
  }

  void fabPressed() {}
}
