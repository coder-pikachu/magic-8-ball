import 'dart:math' as prefix0;

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber;

  _BallState() {
    ballNumber = _getRandomBallNumber();
  }

  int _getRandomBallNumber() => prefix0.Random().nextInt(5) + 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          onPressed: () {
            setState(() {
              ballNumber = _getRandomBallNumber();
            });
          },
          child: Image.asset("images/ball$ballNumber.png"),
        ),
      ),
    );
  }
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything!'),
        backgroundColor: Colors.indigo.shade900,
      ),
      body: Ball(),
    );
  }
}
