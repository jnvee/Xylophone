import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int note){
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded buildKey({Color color, int note}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(note);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.cyan[900],
          title: Center(
              child: Text(
                  'XyloPhone',
                style: TextStyle(
                  fontFamily:'Pacifico',
                  fontSize: 25.0,
                  color: Colors.cyanAccent[200],

                ),
              ),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red[700], note: 1),
              buildKey(color: Colors.deepOrange[400], note: 2),
              buildKey(color: Colors.yellow[600], note: 3),
              buildKey(color: Colors.greenAccent[200], note: 4),
              buildKey(color: Colors.teal[600], note: 5),
              buildKey(color: Colors.indigoAccent[100], note: 6),
              buildKey(color: Colors.purple[400], note: 7),
            ],
          ),
        ),
      ),
    );
  }
}
