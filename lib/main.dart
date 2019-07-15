import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        body: SafeArea(child: new BodyWidget()),
      ),
    );
  }
}

class BodyWidget extends StatefulWidget {
  @override
  _BodyWidgetState createState() => _BodyWidgetState();
}

Expanded buildKey(Color color, int keyNo) {
  return Expanded(
    child: Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(keyNo * 10.0, 5.0, keyNo * 10.0, 5.0),
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('sounds/note$keyNo.wav');
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), side: BorderSide()),
      ),
    ),
  );
}

class _BodyWidgetState extends State<BodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        buildKey(Colors.red, 1),
        buildKey(Colors.blue, 2),
        buildKey(Colors.yellow, 3),
        buildKey(Colors.green, 4),
        buildKey(Colors.indigo, 5),
        buildKey(Colors.orange, 6),
        buildKey(Colors.purple, 7),
      ],
    );
  }
}
