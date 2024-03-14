import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() => runApp(xylophone());
// same as void main(){
//    return runApp(xylophone());
//    }

class xylophone extends StatefulWidget {
  const xylophone({super.key});

  @override
  State<xylophone> createState() => _xylophoneState();
}

class _xylophoneState extends State<xylophone> {
  void playsound(int soundno){
    final player = AudioPlayer();
    player.play(AssetSource('note$soundno.wav'),);
  }

  Expanded buildkey(color,int sound){
    return
      Expanded(
        child: TextButton(
          style: TextButton.styleFrom(backgroundColor: color),
          onPressed: ()  {
            playsound(sound);
          },
          child: Text(''),
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
            children: [
              buildkey(Colors.red, 1),
              buildkey(Colors.greenAccent, 2),
              buildkey(Colors.blueAccent, 3),
              buildkey(Colors.yellowAccent, 4),
              buildkey(Colors.purpleAccent, 5),
              buildkey(Colors.deepOrange, 6),
              buildkey(Colors.cyan, 7),
            ],
          ),
        ),
      ),
    );
  }
}