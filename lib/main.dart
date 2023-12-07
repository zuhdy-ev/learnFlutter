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
      body: const Padding(
        padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 8.0, 0, 0),
                child: CircleAvatar(
                  radius: 22.0,
                  backgroundImage: AssetImage("assets/Pict.png"),
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Zuhdi Ardi",
                      style: TextStyle(
                        fontSize: 21.0,
                        fontFamily: "Poppins-SemiBold",
                      )),
                  Text("ardhiekov@gmail.com",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: "Poppins-Light",
                      )),
                  Text("628012341234",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: "Poppins-Light",
                      )),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 15.0,
                      ),
                      Text("Yogyakarta",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: "Poppins-Light",
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
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
