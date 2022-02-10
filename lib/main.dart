import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  int keyNumber;
  Color keyColor;

  Widget builtKey({int keyNumber, Color keyColor}) {
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.all(0),
        child: Container(color: keyColor),
        onPressed: () {
          print(go to hell);
          playSound(keyNumber);
        },
      ),
    );
  }

  void playSound(int keyNumber) {
    final player = AudioCache();
    player.play("note$keyNumber.wav");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Xylpohone",
      theme: ThemeData.dark(),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              builtKey(keyNumber: 1, keyColor: Colors.red),
              builtKey(keyNumber: 2, keyColor: Colors.orange),
              builtKey(keyNumber: 3, keyColor: Colors.yellow),
              builtKey(keyNumber: 4, keyColor: Colors.green),
              builtKey(keyNumber: 5, keyColor: Colors.green[900]),
              builtKey(keyNumber: 6, keyColor: Colors.blue),
              builtKey(keyNumber: 7, keyColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
