import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/gestures.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Text('App Name'),
      ),
      body: Center(
        child: MyRenderBoxWidget(),
      ),
    );
  }
}

class MyRenderBoxWidget extends SingleChildRenderObjectWidget {
  @override
  RenderObject createRenderObject(BuildContext context) {
    return _MyRenderBox();
  }
}

class _MyRenderBox extends RenderBox {
  @override
  bool hitTest(HitTestResult result, {@required Offset position}) {
    return true;
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    Canvas c = context.canvas;
    int dx = offset.dx.toInt();
    int dy = offset.dy.toInt();
    // 正円の描画
    Paint p = Paint();
    p.style = PaintingStyle.fill;
    p.color = Color.fromARGB(150, 0, 200, 255);
    Offset ctr = Offset(dx + 100.0, dy + 100.0);
    c.drawCircle(ctr, 75.0, p);
    // 楕円１の描画
    p.style = PaintingStyle.stroke;
    p.color = Color.fromARGB(150, 200, 0, 255);
    p.strokeWidth = 10.0;
    Rect r = Rect.fromLTWH(dx + 100.0, dy + 50.0, 200.0, 150.0);
    c.drawOval(r, p);
    // 楕円２の描画
    r = Rect.fromLTWH(dx + 50.0, dy + 100.0, 150.0, 200.0);
    c.drawOval(r, p);
  }
}
