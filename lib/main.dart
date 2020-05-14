import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  void audio(int num){
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Widget list(Color colors,int num){
    return Expanded(
      child: FlatButton(
        color: colors,
        child: Text(''),
        onPressed: (){
          audio(num);
        },
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              list(Colors.red,1),
              list(Colors.blue,2),
              list(Colors.orange,3),
              list(Colors.yellow,4),
              list(Colors.teal,5),
              list(Colors.purple,6),
              list(Colors.amber,7),
            ],
          ),
        ),
      ),
    );
  }
}

