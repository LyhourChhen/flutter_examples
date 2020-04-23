import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int sound_number) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(Audio("assets/note$sound_number.wav"));
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
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        playSound(1);
                      },
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        playSound(2);
                      },
                      child: Container(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        playSound(3);
                      },
                      child: Container(
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        playSound(4);
                      },
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        playSound(5);
                      },
                      child: Container(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        playSound(6);
                      },
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        playSound(7);
                      },
                      child: Container(
                        color: Colors.purple,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
