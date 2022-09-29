import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}

class Ball extends StatefulWidget {
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {

  int number = 1;

  void generateRandomNumber() {
    setState(() {
      number = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Magic 8 Ball'),
      ),
      body: SafeArea(
        child: Center(
          child: TextButton(
            onPressed: (){
              generateRandomNumber();
              print('Image was tapped by User! Number Generated: $number');
            },
            child: Image(
              image: AssetImage('images/ball$number.png'),
            ),
          ),
        ),
      ),
    );
  }
}
