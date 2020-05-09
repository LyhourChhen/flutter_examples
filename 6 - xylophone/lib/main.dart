import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int sound_number) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(Audio("assets/note$sound_number.wav"));
  }

  Expanded playSoundUI({Color color, int sound}) {
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.all(0),
        onPressed: () {
          playSound(sound);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  playSoundUI(color: Colors.red, sound: 1),
                  playSoundUI(color: Colors.blue, sound: 2),
                  playSoundUI(color: Colors.green, sound: 3),
                  playSoundUI(color: Colors.purple, sound: 4),
                  playSoundUI(color: Colors.white, sound: 5),
                  playSoundUI(color: Colors.black, sound: 6),
                  playSoundUI(color: Colors.blue, sound: 7),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
