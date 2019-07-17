import 'package:flutter/material.dart';
import 'StoryBrain.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new HomePage(),
    );
  }
}

BoxDecoration _background() {
  return BoxDecoration(
    image: DecorationImage(
      image: ExactAssetImage('assets/images/background.png'),
      fit: BoxFit.cover,
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  StoryBrain storyBrain = StoryBrain();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: _background(),
        child: SafeArea(
          minimum: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    storyBrain.getStory(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(style: BorderStyle.solid, width: 2.0),
                  ),
                  onPressed: () {
                    setState(
                      () {
                        storyBrain.nextStory(1);
                      },
                    );
                  },
                  color: Colors.red,
                  child: Text(storyBrain.getChoice1()),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 3,
                child: Visibility(
                  visible: storyBrain.buttonShouldBeVisible(),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(style: BorderStyle.solid, width: 2.0),
                    ),
                    onPressed: () {
                      setState(() {
                        storyBrain.nextStory(2);
                      });
                    },
                    color: Colors.green,
                    child: Text(storyBrain.getChoice2()),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
