import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Good Morning",
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: "Poppins-SemiBold",
          ),
        ),
        backgroundColor: Colors.green[800],
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
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(50.0),
                color: Colors.cyan[100],
                child: const Text("One"),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(50.0),
                color: Colors.amber[100],
                child: const Text("Two"),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(50.0),
                color: Colors.black38,
                child: const Text("One"),
              ),
            ]),
      ),
    );
  }
}

/*
  Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      const Icon(Icons.account_balance_wallet_rounded,
          size: 60.0, color: Colors.lightBlueAccent),
      const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Saldo",
              style: TextStyle(
                fontSize: 15.0,
                fontFamily: "Poppins-SemiBold",
              )),
          Text("Rp1000.000,-",
              style: TextStyle(
                  fontSize: 15.0, fontFamily: "Poppins-SemiBold")),
        ],
      ),
      Container(
        color: Colors.cyan,
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(10.0),
        child: const Text(
          "Top Up",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
            fontFamily: "Poppins-SemiBold",
          ),
        ),
      ),
    ],
  ),

  ==========================

  Container(
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
*/