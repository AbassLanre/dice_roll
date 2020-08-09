import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int leftDice = 1;
  int rightDice = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Dice Roll'),
          centerTitle: true,
          backgroundColor: Colors.redAccent[400],
        ),
        backgroundColor: Colors.redAccent[400],
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: FlatButton(
                onPressed: () {
                  randomIt();
                },
                child: Image.asset('images/dice$leftDice.png'),
              )),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    randomIt();
                  },
                  child: Image.asset('images/dice$rightDice.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void randomIt() {
    setState(() {
      leftDice = 1 + Random().nextInt(6);
      rightDice = 1 + Random().nextInt(6);
    });
  }
}
