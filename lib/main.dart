import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              FlatButton(
                color: Colors.red.shade700,
                onPressed: () {
                  playSound(1);
                },
              ),
              FlatButton(
                color: Colors.orange.shade700,
                onPressed: () {
                  playSound(2);
                },
              ),
              FlatButton(
                color: Colors.yellow.shade400,
                onPressed: () {
                  playSound(3);
                },
              ),
              FlatButton(
                color: Colors.green.shade500,
                onPressed: () {
                  playSound(4);
                },
              ),
              FlatButton(
                color: Colors.teal.shade700,
                onPressed: () {
                  playSound(5);
                },
              ),
              FlatButton(
                color: Colors.blue.shade700,
                onPressed: () {
                  playSound(6);
                },
              ),
              FlatButton(
                color: Colors.purple.shade700,
                onPressed: () {
                  playSound(7);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
