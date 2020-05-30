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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
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
          Padding(
            padding: EdgeInsets.all(25.0),
          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 255, 125, 0),
              child: Text(
                'Two',
                style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(25.0),
            child: Expanded(
              child: Container(
                color: Color.fromARGB(255, 255, 0, 0),
                child: Text(
                  'One',
                  style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto'),
                ),
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
