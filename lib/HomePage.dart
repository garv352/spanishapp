import 'package:flutter/material.dart';
import 'NumberAudio.dart';
import 'package:audioplayers/audio_cache.dart';

class HomePage extends StatefulWidget {
  @override
  __HomePageState createState() => __HomePageState();
}

class __HomePageState extends State<HomePage> {
  static AudioCache audioPlayer = AudioCache();

  List<NumberAudio> numberList = [
    NumberAudio("assets/one.wav", Colors.red, "One"),
    NumberAudio("assets/two.wav", Colors.red, "Two"),
    NumberAudio("assets/three.wav", Colors.red, "Three"),
    NumberAudio("assets/four.wav", Colors.red, "Four"),
    NumberAudio("assets/five.wav", Colors.red, "Five"),
    NumberAudio("assets/six.wav", Colors.red, "Six"),
    NumberAudio("assets/seven.wav", Colors.red, "Seven"),
    NumberAudio("assets/eight.wav", Colors.red, "Eight"),
    NumberAudio("assets/nine.wav", Colors.red, "Nine"),
    NumberAudio("assets/ten.wav", Colors.red, "Ten"),
  ];
  play(String uri) {
    audioPlayer.play(uri);
  }

//F:\flutter\spanishapp\spanishapp\assets\one.wav
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spanish Number'),
      ),
      body: Container(
          child: Center(
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage("images/logo.png"),
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(10.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2.0,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0),
                itemCount: numberList.length,
                itemBuilder: (context, i) => SizedBox(
                    width: 100.0,
                    height: 50.0,
                    child: RaisedButton(
                      color: numberList[i]
                          .buttonColor, //buttonColor is a class in numberaudio.dart
                      child: Text(
                        numberList[i].buttonText,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        play(numberList[i].audioUri);
                      },
                    )),
              ),
            )
          ],
        ),
      )),
    );
  }
}
