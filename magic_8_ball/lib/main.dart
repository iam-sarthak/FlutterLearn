import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MagicBall());
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  @override
  int ballnumb = 1;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Text('Ask me Anything'),
        ),
        body: Center(
          child: TextButton(
            onPressed: () {
              setState(
                () {
                  ballnumb = Random().nextInt(5) + 1;
                },
              );
            },
            child: Image.asset('images/ball$ballnumb.png'),
          ),
        ),
      ),
    );
  }
}
