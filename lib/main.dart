import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade500,
          title: const Text(
            'Ask Me Anything',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        body: const changeball(),
      ),
    );
  }
}

class changeball extends StatefulWidget {
  const changeball({Key? key}) : super(key: key);

  @override
  State<changeball> createState() => _changeballState();
}

class _changeballState extends State<changeball> {
  var ball_number = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ball_number = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset(
          'images/ball$ball_number.png',
        ),
      ),
    );
  }
}
