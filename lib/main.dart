import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'Quiz_controller.dart';

Qstns a = Qstns();
int qno = 0;
int count = 0;
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: Center(
            child: Text("Quiz Time"),
          ),
        ),
        backgroundColor: Colors.grey[900],
        body: Padding(
          child: Quziller(),
          padding: EdgeInsets.all(20),
        ),
      ),
    );
  }
}

class Quziller extends StatefulWidget {
  @override
  _QuzillerState createState() => _QuzillerState();
}

class _QuzillerState extends State<Quziller> {
  List<Widget> points = [];
  // ignore: missing_return
  bool checkanswer(answer) {
    if (a.qstns[qno].ans == answer) {
      count++;
      points.add(Icon(
        Icons.check_circle,
        color: Colors.green,
        size: 12,
      ));
    } else {
      points.add(
        Icon(
          Icons.cancel,
          color: Colors.red,
          size: 12,
        ),
      );
    }
    setState(
      () {
        if (qno < a.qstns.length - 1) {
          qno += 1;
        } else {
          print("your final score is $count");
          Alert(
                  context: context,
                  title: "Quiz ended",
                  desc: "You got $count Points!!!")
              .show();
          qno = 0;
          count = 0;
          points = [];
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 6,
          child: Center(
            child: Text(
              a.qstns[qno].qstn,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 10,
            width: 20,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(100.0),
            ),
            child: FlatButton(
              child: Text(
                "True",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                checkanswer(true);
              },
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: Container(
            height: 10,
            width: 20,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(100.0),
            ),
            child: FlatButton(
              child: Text(
                "False",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                checkanswer(false);
              },
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Expanded(
          flex: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: points,
          ),
        ),
      ],
    );
  }
}
