import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';

import 'dart:typed_data';
import 'dart:async';
import 'dart:ui' as ui;

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
  ui.Image _img;

  @override
  bool hitTest(HitTestResult result, {@required Offset position}) {
    return true;
  }

  _MyRenderBox() {
    loadAssetImage('img.jpg');
  }

  loadAssetImage(String fname) => rootBundle.load("assets/$fname").then((bd) {
        Uint8List u8lst = Uint8List.view(bd.buffer);
        ui.instantiateImageCodec(u8lst).then((codec) {
          codec.getNextFrame().then((frameInfo) {
            _img = frameInfo.image;
            markNeedsPaint();
            print("_img created: $_img");
          });
        });
      });

  @override
  void paint(PaintingContext context, Offset offset) {
    Canvas c = context.canvas;
    int dx = offset.dx.toInt();
    int dy = offset.dy.toInt();

    if (_img != null) {
      c.drawImage(_img, Offset(dx + 50.0, dy + 50.0), Paint());
    }

    Paint p = Paint();
    p.style = PaintingStyle.fill;

    c.save();
    Rect r = Rect.fromLTWH(dx + 70.0, dy + 70.0, 130.0, 130.0);
    c.clipRect(r);
    c.drawColor(Color.fromARGB(255, 255, 0, 0), BlendMode.darken);
    c.restore();
    r = Rect.fromLTWH(dx + 200.0, dy + 200.0, 130.0, 130.0);
    c.clipRect(r);
    c.drawColor(Color.fromARGB(255, 0, 255, 0), BlendMode.lighten);
    c.restore();
  }
}
