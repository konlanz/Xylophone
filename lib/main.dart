import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MaterialApp(
    home: XyloPhone()
  ));
}

class XyloPhone extends StatelessWidget {
  const XyloPhone({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
      body: SafeArea(
        child: Center(
          child: FlatButton(
            onPressed: () {
              final player = AudioCache();
              player.play('note1.wav');
            },
            child: Text('click Me'),
          ),
        ),
      ),
    ),
    );
  }
}