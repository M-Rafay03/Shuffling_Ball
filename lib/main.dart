import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
String ballImage = 'assets/ball1.png';

void shuffleBall(){
  int randomBall = Random().nextInt(5)+1;
  setState(() {
    ballImage = 'assets/ball$randomBall.png';
  });
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Shuffling Ball"),
          backgroundColor: Colors.red,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ballImage),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: shuffleBall, child: Text("shuffle"))
          ],
        ),
      ),
    );
  }
}
