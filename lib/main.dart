import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Center(
            child: Text(
              'Ask Me Anything',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: displayAnswer(),
      ),
    );
  }
}

class displayAnswer extends StatefulWidget {
  @override
  _displayAnswerState createState() => _displayAnswerState();
}

class _displayAnswerState extends State<displayAnswer> {
  int ballno = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Image.asset('assets/images/ball$ballno.png'),
        onPressed: () {
          setState(() {
            ballno = Random().nextInt(5) + 1;
          });
        },
      ),
    );
  }
}
