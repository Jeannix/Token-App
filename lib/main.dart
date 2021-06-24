import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Token App Generator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title = "awa"}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var rng = new Random();
  int min = 1000000, max = 9999999;
  int _start = 10;
  Timer? timer;
  var rn;
  void change_la_number() {
    setState(() {
      var temp = new Random();
      rn = min + temp.nextInt(max);
    });
  }

  @override
  void initState() {
    super.initState();
    var temp = new Random();
    rn = min + temp.nextInt(max);
    timer = Timer.periodic(
        Duration(seconds: 10), (Timer t) => change_la_number());
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is your code to paste in the web app',
            ),
            Text("$rn")
          ],
        ),
      ),
    );
  }
}
