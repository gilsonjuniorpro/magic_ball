import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: BallPage(),
  ));
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Ask Me Anything"),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  var ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: (){
            setState(() {
              ballNumber = Random().nextInt(4) + 1;
              print("I got clicked: $ballNumber");
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Image.asset("images/ball$ballNumber.png"),
          ),
        ),
      ],
    );
  }
}

