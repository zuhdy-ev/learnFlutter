import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text(
        "My First App",
        style: TextStyle(
          fontSize: 20.0,
          fontFamily: "Poppins-SemiBold",
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.green[800],

    ),
    body: const Center(
      child: Text(
        "Hello World",
        style: TextStyle(
          fontSize: 30.0,
          fontFamily: "Poppins-SemiBold",
          color: Colors.green,
        ),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.green[800],
      child: const Text(
        "Click",
        style: TextStyle(
          fontSize: 15.0,
          fontFamily: "Poppins-SemiBold",
        ),
      ),
    ),
  )
));