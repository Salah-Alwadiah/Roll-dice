import 'package:flutter/material.dart';

import 'gradient_continoer.dart';

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 80, 2, 38),
          Color.fromARGB(255, 116, 177, 207),
        ),
      ),
    ),
  );
}


Widget myCustomeText(String msg){
  return Text(
    msg,
    style: const TextStyle(
    color: Color.fromARGB(170, 0, 0, 0),
    fontSize: 50,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    letterSpacing: 8,
    wordSpacing: 8,
    shadows: [
      Shadow(
        color: Color.fromARGB(190, 130, 250, 150),
        offset: Offset(5, 10),
        blurRadius: 8,
      ),
    ]
    ),
    );
}