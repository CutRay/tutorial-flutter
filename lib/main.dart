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
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 120.0,
                child: const Center(
                    child: Text('One', style: const TextStyle(fontSize: 32.0))),
              ),
              Container(
                color: Colors.white,
                height: 120.0,
                child: const Center(
                    child: Text('Two', style: const TextStyle(fontSize: 32.0))),
              ),
              Container(
                color: Colors.blue,
                height: 120.0,
                child: const Center(
                    child:
                        Text('Three', style: const TextStyle(fontSize: 32.0))),
              ),
              Container(
                color: Colors.white,
                height: 120.0,
                child: const Center(
                    child:
                        Text('Four', style: const TextStyle(fontSize: 32.0))),
              ),
              Container(
                color: Colors.blue,
                height: 120.0,
                child: const Center(
                    child:
                        Text('Five', style: const TextStyle(fontSize: 32.0))),
              ),
              Container(
                color: Colors.white,
                height: 120.0,
                child: const Center(
                    child: Text('Six', style: const TextStyle(fontSize: 32.0))),
              ),
              Container(
                color: Colors.blue,
                height: 120.0,
                child: const Center(
                    child:
                        Text('Seven', style: const TextStyle(fontSize: 32.0))),
              ),
              Container(
                color: Colors.white,
                height: 120.0,
                child: const Center(
                    child:
                        Text('Eight', style: const TextStyle(fontSize: 32.0))),
              ),
              Container(
                color: Colors.blue,
                height: 120.0,
                child: const Center(
                    child:
                        Text('Nine', style: const TextStyle(fontSize: 32.0))),
              ),
              Container(
                color: Colors.white,
                height: 120.0,
                child: const Center(
                    child: Text('Ten', style: const TextStyle(fontSize: 32.0))),
              ),
              Container(
                color: Colors.blue,
                height: 120.0,
                child: const Center(
                    child:
                        Text('eleven', style: const TextStyle(fontSize: 32.0))),
              ),
              Container(
                color: Colors.white,
                height: 120.0,
                child: const Center(
                    child:
                        Text('Twelve', style: const TextStyle(fontSize: 32.0))),
              ),
            ],
          ),
        ));
  }

  void tapTile() {
    setState(() {
      _message = 'you tatpped: No,$_index.';
    });
  }
}
