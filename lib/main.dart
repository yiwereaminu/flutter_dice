import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    DiceApp(),
  );
}

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftButtonNumber = 1;
  int rightButtonNumber = 1;
  @override
  Widget build(BuildContext context) {
    var random = Random();
    void updateState() {
      setState(() {
        leftButtonNumber = 1 + random.nextInt(6);
        rightButtonNumber = 1 + random.nextInt(6);
      });
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text('Dicee'),
          ),
        ),
        body: Container(
          child: Center(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextButton(
                    onPressed: () {
                      updateState();
                    },
                    child: Image.asset('images/dice$leftButtonNumber.png'),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: TextButton(
                    onPressed: () {
                      updateState();
                    },
                    child: Image.asset('images/dice$rightButtonNumber.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
