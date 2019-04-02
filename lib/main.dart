import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new App(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class App extends StatefulWidget {
  @override
  _AppState createState() => new _AppState();
}

class _AppState extends State<App> {
  Color _color;
  final Random _random = Random();

  @override
  void initState() {
    _color = Colors.red;
    super.initState();
  }

  void changeColor() {
    setState(() {
      _color = Color.fromARGB(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget baseSection = new GestureDetector(
      onTap: () {
        changeColor();
      },
      child: Container(
        color: _color,
        child: Center(
          child: Text(
            'Hey there',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 50,
              color: Colors.black.withOpacity(0.8),
            ),
          ),
        ),
      ),
    );

    return new Scaffold(
      body: new Container(child: baseSection),
    );
  }
}
