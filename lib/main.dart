import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(String soundName) {
    final player = AudioCache();
    player.play(soundName);
  }

  Expanded generateKey(Color color, String sound) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(sound);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              generateKey(Colors.lightBlue.shade700, 'note1.wav'),
              generateKey(Colors.lightBlue.shade600, 'note2.wav'),
              generateKey(Colors.lightBlue.shade500, 'note3.wav'),
              generateKey(Colors.lightBlue.shade400, 'note4.wav'),
              generateKey(Colors.lightBlue.shade300, 'note5.wav'),
              generateKey(Colors.lightBlue.shade200, 'note6.wav'),
              generateKey(Colors.lightBlue.shade100, 'note7.wav'),
            ],
          ),
        ),
      ),
    );
  }
}
