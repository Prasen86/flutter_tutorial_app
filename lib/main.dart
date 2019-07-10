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
    color: Colors.black,
    height: double.infinity,
    width: double.infinity,
    child: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50.0,
            backgroundColor: Colors.red,
            backgroundImage: AssetImage('assets/images/rhythm.jpg'),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: new Text(
              "RHYTHM SHARMA",
              style: TextStyle(
                  color: Colors.white, fontSize: 20.0, fontFamily: 'Pacifico'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: new Text(
              "Think Big Think Different",
              style: TextStyle(
                  letterSpacing: 3.0,
                  color: Colors.white,
                  fontSize: 20.0,
                  fontFamily: 'SourceSansPro',
                  fontStyle: FontStyle.italic),
            ),
          ),
          SizedBox(
            height: 20.0,
            width: 150.0,
            child: Divider(
              color: Colors.white,
            ),
          ),
          Container(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.phone_android,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  "Phone No.",
                  style: TextStyle(
                    fontFamily: "SourceSansPro",
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Icon(
                Icons.email,
              ),
              title: Text(
                "Email",
                style: TextStyle(fontFamily: "SourceSansPro", fontSize: 20.0),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _bodyWidget(),
    );
  }
}
