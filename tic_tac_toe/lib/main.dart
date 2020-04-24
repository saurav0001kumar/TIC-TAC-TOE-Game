import 'package:flutter/material.dart';
import 'package:tictactoe/screens/screen1.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Tic Tac Toe",
    theme: ThemeData(
      hoverColor: Colors.transparent,
      splashColor: Colors.purpleAccent.shade100,
    ),
    home: screen1(),
  ));
}
