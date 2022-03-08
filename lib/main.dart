import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  void playsound(int sn) {
    final player = AudioCache();
    player.play('note$sn.wav');
  }

  Expanded buildkey({required Color colour, required int soundno}) {
    return Expanded(
      child: TextButton(
        style:
            ButtonStyle(backgroundColor: MaterialStateProperty.all(colour)),
        onPressed: () {
          playsound(soundno);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                  buildkey(colour: Colors.red, soundno: 1),
                  buildkey(colour: Colors.orange, soundno: 2),
                  buildkey(colour: Colors.yellow, soundno: 3),
                  buildkey(colour: Colors.green, soundno: 4),
                  buildkey(colour: Colors.blue, soundno: 5),
                  buildkey(colour: Colors.indigo, soundno: 6),
                  buildkey(colour: Colors.purple, soundno: 7),
                  ]))),
    );
  }
}
