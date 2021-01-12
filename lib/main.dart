import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: XyloPhone()));
}

class XyloPhone extends StatelessWidget {
  const XyloPhone({Key key}) : super(key: key);
  void playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded builKey(Color color, int noteNumber) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(noteNumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            builKey(Colors.red, 1),
            builKey(Colors.yellow, 2),
            builKey(Colors.orange, 3),
            builKey(Colors.green, 4),
            builKey(Colors.greenAccent, 5),
            builKey(Colors.blue, 6),
            builKey(Colors.pinkAccent, 7),
                        ],
        ),
      ),
    );
  }
}
