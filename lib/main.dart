import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MaterialApp(home: XyloPhone()));
}

class XyloPhone extends StatelessWidget {
  const XyloPhone({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              FlatButton(
                color: Colors.red,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note1.wav');
                },
                child: Text(''),
              ),
              FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note2.wav');
                },
                child: Text(''),
              ),
              FlatButton(
                color: Colors.orange,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note3.wav');
                },
                child: Text(''),
              ),
              FlatButton(
                color: Colors.green,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note4.wav');
                },
                child: Text(''),
              ),
              FlatButton(
                color: Colors.greenAccent,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note5.wav');
                },
                child: Text(''),
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note6.wav');
                },
                child: Text(' '),
              ),
              FlatButton(
                color: Colors.pinkAccent,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note7.wav');
                },
                child: Text(' '),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
