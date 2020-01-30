import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Widget keyNotes({@required Color color, int noteNumber}) {
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.all(0),
        child: Container(
          color: color,
        ),
        onPressed: () {
          final player = AudioCache();
          player.play("note$noteNumber.wav");
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Xylophone App",
      theme: ThemeData.dark(),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              keyNotes(color: Colors.red, noteNumber: 1),
              keyNotes(color: Colors.yellow, noteNumber: 2),
              keyNotes(color: Colors.green, noteNumber: 3),
              keyNotes(color: Colors.orange, noteNumber: 4),
              keyNotes(color: Colors.black, noteNumber: 5),
              keyNotes(color: Colors.blue, noteNumber: 6),
              keyNotes(color: Colors.pink, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
