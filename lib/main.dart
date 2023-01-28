import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

void play(int n) {
  final player = AudioPlayer();
  player.play(AssetSource('note$n.wav'));
}

Expanded buildKey(Color color,int n, String txt) {
  return Expanded(
    child: TextButton(
      onPressed: () async {
        play(n);
      },
      style: TextButton.styleFrom(
        backgroundColor: color, // Background Color
      ),
    child: Text(txt ,style: TextStyle(color: Colors.black,fontSize: 22),),

    ),

  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            body: SafeArea(
                child: Container(
                    child: Center(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              buildKey( Colors.red, 1, 'Moh Moh Ke Dhaage'),
                              buildKey( Colors.orange, 2,'Ikk Kudi'),
                              buildKey( Colors.yellow, 3,'Paani Da Rang'),
                              buildKey( Colors.green, 4,'Agar Tum Saath Ho'),
                              buildKey( Colors.blue.shade900, 5,'Khuda jaane'),
                              buildKey( Colors.blue, 6,'Patakha Guddi'),
                              buildKey( Colors.purple, 7,'O meri Jaan'),

                    ],
                  ),
                ),
                )),
              ),
             );
         }
      }
