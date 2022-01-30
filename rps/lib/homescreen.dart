import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Random random = Random();

  int machineIndex = 0;
  int myIndex = 0;
  String result = '';

  _randomGenarator() {
    machineIndex = random.nextInt(3);
  }

  _checker() {
    if (myIndex == machineIndex) {
      result = 'Draw';
    } else if (myIndex == 0 && machineIndex == 1) {
      result = 'Win!';
    } else if (myIndex == 0 && machineIndex == 2) {
      result = 'Lost!';
    } else if (myIndex == 1 && machineIndex == 0) {
      result = 'Lost!';
    } else if (myIndex == 1 && machineIndex == 2) {
      result = 'Win!';
    } else if (myIndex == 2 && machineIndex == 0) {
      result = 'Win!';
    } else if (myIndex == 2 && machineIndex == 1) {
      result = 'Lost!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ' R P S',
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Human",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                "Machine",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: Image(
                  image: AssetImage('asset/image/$myIndex.png'),
                  // height: 200,
                  // width: 200,
                ),
              ),
              Flexible(
                child: Image(
                  image: AssetImage('asset/image/$machineIndex.png'),
                  // height: 200,
                  // width: 200,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  _randomGenarator();
                  setState(() {});
                  myIndex = 1;
                  _checker();
                },
                child: Text('Rock'),
              ),
              ElevatedButton(
                onPressed: () {
                  _randomGenarator();
                  setState(() {});
                  myIndex = 0;
                  _checker();
                },
                child: Text('Paper'),
              ),
              ElevatedButton(
                onPressed: () {
                  _randomGenarator();

                  setState(() {});
                  myIndex = 2;
                  _checker();
                },
                child: Text('Scissor'),
              ),
            ],
          ),
          Text(
            result,
            style: TextStyle(fontSize: 21),
          ),
        ],
      ),
    );
  }
}
