import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.cyan.shade800,
      appBar: AppBar(
        title: Text('dice app'),
        backgroundColor: Colors.cyan.shade900,
      ),
      body: AppDice(),
    ),
  ));
}

class AppDice extends StatefulWidget {
  // const AppDice({super.key});

  @override
  State<AppDice> createState() => _AppDiceState();
}

class _AppDiceState extends State<AppDice> {
  int left  = 1;
  int right = 1;

  void diceNumber(){
    setState(() {
      left = Random() .nextInt(6) + 1;
      right = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: (){
                 diceNumber();
                },
                child: Image.asset('images/dice$left.png')),
          ),
          Expanded(
            child: TextButton(
                onPressed: (){
                  diceNumber();
                },
                child: Image.asset('images/dice$right.png')),
          ),
        ],
      ),
    );
  }
}























// child: Image.asset('images/dice1.png'),
// child: Image(
// image: AssetImage("images/dice1.png"),
// ),