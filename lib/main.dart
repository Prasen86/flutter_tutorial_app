import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

Widget _bodyWidget() {
  return Container(
    color: Colors.teal,
    child: new Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          width: 100.0,
          color: Colors.red,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.yellow,
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.green,
            ),
          ],
        ),
        Container(
          width: 100.0,
          color: Colors.blue,
          margin: EdgeInsets.all(10.0),
        ),
      ],
    ),
  );
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Center(child: new Text("I AM POOR")),
        backgroundColor: Colors.red,
      ),
      body: _bodyWidget(),
    );
  }
}
