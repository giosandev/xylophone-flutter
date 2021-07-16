import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(String soundName) {
    final player = AudioCache();
    player.play(soundName);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound('note1.wav');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.lightBlue.shade700),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound('note2.wav');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.lightBlue.shade600),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound('note3.wav');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.lightBlue.shade500),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound('note4.wav');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.lightBlue.shade400),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound('note5.wav');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.lightBlue.shade300),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound('note6.wav');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.lightBlue.shade200),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound('note7.wav');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.lightBlue.shade100),
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
