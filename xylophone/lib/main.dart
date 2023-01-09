import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child:Center(
              child: TextButton(
                child: Text('Click me'),
                onPressed: () async {
                  final player = AudioCache();

                },
              ),
            ),
          ),
        ),
      ),
    )
  );
}
