import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(Ui2());
}

class Ui2 extends StatefulWidget {
  Ui2({Key? key}) : super(key: key);

  @override
  _Ui2State createState() => _Ui2State();
}

class _Ui2State extends State<Ui2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tscaffold(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Tscaffold extends StatelessWidget {
  const Tscaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceheight = MediaQuery.of(context).size.height;
    double devicewidth = MediaQuery.of(context).size.width;
    int questionsnotdone = 450;

    print(deviceheight);
    print(devicewidth);
    return Scaffold(
        backgroundColor: Colors.pink[100],
        body: Container(
            //height: deviceheight * 0.1,
            child: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: devicewidth * 0.29),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  //backgroundImage: AssetImage("assets/ui_image.png"),
                  radius: 30,
                  backgroundColor: Colors.pink,
                ),
                Column(
                  children: [
                    Text(
                      'DRISHTI SAINI ',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                    ),
                    Text(
                      'Developer',
                      style:
                          TextStyle(fontWeight: FontWeight.w100, fontSize: 15),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.home,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'Questions Not Done',
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    questionsnotdone.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 35,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Container(
              child: Column(
                children: [
                  Array(
                    name: 'Array',
                    doneque: 0,
                    maxques: 45,
                  ),
                  Array(
                    name: 'Trees',
                    doneque: 0,
                    maxques: 50,
                  ),
                  Array(
                    name: 'LinkLists',
                    doneque: 0,
                    maxques: 24,
                  ),
                  Array(
                    name: 'Tree',
                    doneque: 0,
                    maxques: 34,
                  ),
                  Array(
                    name: 'Queue',
                    doneque: 0,
                    maxques: 89,
                  ),
                  Array(
                    name: 'Stack',
                    doneque: 0,
                    maxques: 44,
                  ),
                  Array(
                    name: 'Graph',
                    doneque: 0,
                    maxques: 23,
                  ),
                ],
              ),
            ),
          )
        ])));
  }
}

class Array extends StatelessWidget {
  Array({
    required this.name,
    required this.doneque,
    required this.maxques,
    Key? key,
  }) : super(key: key);
  String name;
  int maxques;
  int doneque;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        height: 43,
        width: 300,
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Text(
                '$doneque/$maxques',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
