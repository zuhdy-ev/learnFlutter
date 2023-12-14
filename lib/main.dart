import 'package:flutter/material.dart';
import 'mytasks.dart';

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

  List<Tasks> myTasks = [
    Tasks(task: "Bake mom's birthday cake", isDone: "done"),
    Tasks(task: "Clean my room", isDone: "done"),
    Tasks(task: "Buy groceries", isDone: "not yet"),
  ];

  Widget tasksTemplate(tasks) {
    return Card(
      child: ListTile(
        title: Text(
          tasks.task,
          style: const TextStyle(
            fontSize: 12.0,
            fontFamily: "Poppins-SemiBold",
          ),
        ),
        trailing: const Icon(
          Icons.check_circle,
          color: Colors.green,
        ),
      ),
    );
  }

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
        child: Column(
          children: [
            Row(
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
                      const SizedBox(
                        height: 5.0,
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 15.0,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "Indonesia",
                            style: TextStyle(
                              fontSize: 12.0,
                              fontFamily: "Poppins-SemiBold",
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
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
            const SizedBox(
              height: 10.0,
            ),
            Container(
              height: 2,
              width: double.infinity,
              color: Colors.black12,
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Task",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: "Poppins-SemiBold",
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontFamily: "Poppins-SemiBold",
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Column(
              children: [
                ...myTasks.map((tasks) => tasksTemplate(tasks)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/*
  Expanded(
    child: ListView.builder(
      itemCount: myTasks.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(
              myTasks[index],
              style: const TextStyle(
                fontSize: 12.0,
                fontFamily: "Poppins-SemiBold",
              ),
            ),
            trailing: const Icon(
              Icons.check_circle,
              color: Colors.green,
            ),
          ),
        );
      },
    ),
  ),
*/