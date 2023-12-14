import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "My Profile",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontFamily: "Poppins-SemiBold",
            ),
          ),
        ),
        backgroundColor: Colors.white70,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level += 1;
          });
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 8.0, 0, 0),
                child: CircleAvatar(
                  radius: 22.0,
                  backgroundImage: AssetImage("assets/Pict.png"),
                ),
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Zuhdi Ardi",
                      style: TextStyle(
                        fontSize: 21.0,
                        fontFamily: "Poppins-SemiBold",
                      )),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(5.0, 0, 5.0, 0),
                      alignment: Alignment.center,
                      width: 50.0,
                      height: 25.0,
                      decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(5))),
                      child: const Text(
                        "Level",
                        style: TextStyle(
                          fontSize: 12.0,
                          fontFamily: "Poppins-SemiBold",
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                      alignment: Alignment.center,
                      width: 20.0,
                      height: 25.0,
                      decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(5))),
                      child: Text(
                        '$level',
                        style: const TextStyle(
                          fontSize: 12.0,
                          fontFamily: "Poppins-SemiBold",
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            const Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 2.0, 0, 0),
                child: Icon(
                  Icons.edit,
                  size: 25.0,
                  color: Color.fromARGB(221, 24, 21, 21),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
