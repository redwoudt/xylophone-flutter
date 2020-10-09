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
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  color: Colors.red.shade700,
                  onPressed: () {
                    playSound(1);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.orange.shade700,
                  onPressed: () {
                    playSound(2);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.yellow.shade400,
                  onPressed: () {
                    playSound(3);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.green.shade500,
                  onPressed: () {
                    playSound(4);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.teal.shade700,
                  onPressed: () {
                    playSound(5);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blue.shade700,
                  onPressed: () {
                    playSound(6);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.purple.shade700,
                  onPressed: () {
                    playSound(7);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
