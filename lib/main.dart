import 'package:flutter/material.dart';
import 'dart:math';

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

//Widget used earlier wont use setState
Widget _bodyWidget() {
  return Center(
    child: Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              child: Image.asset('assets/images/dice 1.png'),
              onPressed: () {
                print('The left butt');
              },
            ),
          ),
        ),
        Expanded(
          child: FlatButton(
            child: Image.asset('assets/images/dice 2.png'),
            onPressed: () {
              print('The right butt');
            },
          ),
        ),
      ],
    ),
  );
}

//new Class to use SetState Method
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber = 1;

  void changeDiceFace() {
    setState(() {
      rightdicenumber = Random().nextInt(6) + 1;
      leftdicenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                child: Image.asset('assets/images/dice $leftdicenumber.png'),
                onPressed: () {
                  changeDiceFace();
                },
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('assets/images/dice $rightdicenumber.png'),
              onPressed: () {
                setState(
                  () {
                    rightdicenumber = Random().nextInt(6) + 1;
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "DICEE",
          style: TextStyle(
            fontFamily: 'Pacifico',
            color: Colors.white,
          ),
        ),
      ),
      body: DicePage(),
    );
  }
}
