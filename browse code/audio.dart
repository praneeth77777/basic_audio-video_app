import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

myApp() {
  var playIcon = Icon(Icons.play_circle_outline);
  var pauseIcon = Icon(Icons.pause_circle_outline);
  var a = AudioPlayer();
  var p = AudioCache(fixedPlayer: a);

  var playBut = RaisedButton(
    onPressed: () => p.play('song.mpeg'),
    child: playIcon,
  );
  var pauseBut = RaisedButton(
    onPressed: () => a.pause(),
    child: pauseIcon,
  );

  return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Row(
            children: <Widget>[
              playBut,
              pauseBut,
            ],
          ),
        ),
      ));
}
