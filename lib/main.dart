import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const PianoApp());
}


class PianoApp extends StatelessWidget {
  const PianoApp({super.key});
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
    home: Scaffold(
     appBar: AppBar(
      backgroundColor: Colors.blueGrey,
      title: Text('Piano', style: TextStyle(fontSize: 22, color: Colors.white),),
      centerTitle: true,
    ),
    body: Column(
      children: [

          Category(
            color: Colors.red,
              sound:'note1.wav',
            ),

            Category(
              color: Colors.orange, 
              sound: 'note2.wav',
              ),

                Category(
                  color: Colors.lime,
                       sound: 'note3.wav',
                       ),

                        Category(
                          color: Colors.green, 
                            sound: 'note4.wav',
                            ),

                             Category(
                              color: Colors.cyan,
                                 sound: 'note5.wav',
                                 ),

                                  Category(
                                    color: const Color.fromARGB(255, 33, 2, 124), 
                                          sound: 'note6.wav',
                                          ),
                                            
                                            Category(
                                               color: Colors.purpleAccent,
                                                  sound: 'note7.wav',
                                                  ),
      ],
    ),
    ),
   );
  }
}






class Category extends StatelessWidget{
  final Color color;
  final String sound;
  Category ({super.key , required this.color , required this. sound});

  @override
  Widget build(BuildContext context) {
    return Expanded(
     child:  GestureDetector(
          onTap: () {
              AudioPlayer().play(AssetSource(sound));
        },

      child: Container(
          width: double.infinity,
          color: color,
      ),   
    ),
    );
  }
}










