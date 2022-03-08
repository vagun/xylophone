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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
        Expanded(
          child: TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red)),
            onPressed: () {
              playsound(1);
            },
            child: Text('1'),
          ),
        ),
        Expanded(
          child: TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange)),
            onPressed: () {
              playsound(2);
            },
            child: Text('2'),
          ),
        ),
        Expanded(
          child: TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.yellow)),
            onPressed: () {
              playsound(3);
            },
            child: Text('3'),
          ),
        ),
        Expanded(
          child: TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green)),
            onPressed: () {
              playsound(4);
            },
            child: Text('4'),
          ),
        ),
        Expanded(
          child: TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue)),
            onPressed: () {
              playsound(5);
            },
            child: Text('5'),
          ),
        ),
        Expanded(
          child: TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.indigo)),
            onPressed: () {
              playsound(6);
            },
            child: Text('6'),
          ),
        ),
        Expanded(
          child: TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple)),
            onPressed: () {
              playsound(7);
            },
            child: Text('7'),
          ),
        ),
      ]))),
    );
  }
}
