import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MaterialApp(home: XyloPhone()));
}

class XyloPhone extends StatelessWidget {
  const XyloPhone({Key key}) : super(key: key);
  void playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    playSound(1);
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.yellow,
                  onPressed: () {
                    playSound(2);
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.orange,
                  onPressed: () {
                    playSound(3);
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    playSound(4);
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.greenAccent,
                  onPressed: () {
                    playSound(5);
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    playSound(6);
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.pinkAccent,
                  onPressed: () {
                    playSound(7);
                  },
                  child: Text(''),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
