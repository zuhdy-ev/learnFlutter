import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Good Morning, Zuhdi!",
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: "Poppins-SemiBold",
          ),
        ),
        backgroundColor: Colors.green[800],
      ),
      body: Container(
          padding: const EdgeInsets.all(30.0),
          color: Colors.white70,
          child: const Column(children: [
            Image(
              image: AssetImage("assets/Gojek_Logo_Brandmark.png"),
            ),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: "Poppins-SemiBold",
                color: Colors.green,
              ),
            ),
            Icon(
              Icons.favorite,
              color: Colors.red,
              size: 30.0,
            )
          ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("You Click Me");
        },
        backgroundColor: Colors.green[800],
        child: const Text(
          "Click",
          style: TextStyle(
            fontSize: 15.0,
            fontFamily: "Poppins-SemiBold",
          ),
        ),
      ),
    );
  }
}

/*
const Center(
          child: Column(children: [
        Image(
          image: AssetImage("assets/Gojek_Logo_Brandmark.png"),
        ),
        Text(
          "Welcome",
          style: TextStyle(
            fontSize: 30.0,
            fontFamily: "Poppins-SemiBold",
            color: Colors.green,
          ),
        ),
        Icon(
          Icons.favorite,
          color: Colors.red,
          size: 30.0,
        )
      ])),
*/