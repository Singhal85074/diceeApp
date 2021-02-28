import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
            backgroundColor: Colors.teal,
          title: Center(
            child: Text('Dicee',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          )

        ),
        body: DicePage(),
      ),
    )
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 3;
  void changeDiceFace(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Row(
        children: [
          Expanded(
            child:FlatButton(
              onPressed: (){
                changeDiceFace();
              },
              child: Image(
                width: 200.0,
                image: AssetImage("images/dice$leftDiceNumber.png"),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                changeDiceFace();
              },
              child: Image(
                width: 200.0,
                image: AssetImage("images/dice$rightDiceNumber.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }

}



