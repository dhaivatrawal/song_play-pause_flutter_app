import 'package:flutter/material.dart';

void main() {
  runApp(PlayerApp());
}

class PlayerApp extends StatefulWidget {
  @override
  _PlayerAppState createState() => _PlayerAppState();
}

class _PlayerAppState extends State<PlayerApp> {
  IconData playPauseIcon = Icons.play_circle_filled;
  String playPauseText = 'SONG IS PAUSED!';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Player',
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blueGrey.shade900,
          title: Text(
            'My Player',
            style: TextStyle(
                fontFamily: 'Reggae One', fontSize: 30, color: Colors.white),
          ),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                playPauseText,
                style: TextStyle(
                    fontFamily: 'Reggae One',
                    fontSize: 30,
                    color: Colors.white),
              ),
              SizedBox(
                height: 80,
              ),
              Divider(
                height: 10,
                thickness: 3,
                indent: 20,
                endIndent: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.skip_previous_rounded,
                    size: 60,
                    color: Colors.white,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        if( playPauseIcon==Icons.play_circle_filled ){
                          playPauseIcon = Icons.pause_circle_filled;
                          playPauseText = 'SONG IS PLAYING!';
                        } else if (playPauseIcon==Icons.pause_circle_filled){
                          playPauseIcon = Icons.play_circle_filled;
                          playPauseText = 'SONG IS  PAUSED!';
                        }
                      });
                    },
                    child: Icon(
                      playPauseIcon,
                      size: 80,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.skip_next_rounded,
                    size: 60,
                    color: Colors.white,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
