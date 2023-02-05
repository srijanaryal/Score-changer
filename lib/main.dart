import 'package:flutter/material.dart';

void main() {
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  const ScoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ScoreApp',
      home: const ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  const ScoreHome({super.key});

  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;
  void increaseNumber() {
    setState(() {
      number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      number--;
    });
  }

  void resetNumber() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Score Changer"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: resetNumber,
        child: Icon(Icons.replay_outlined),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Center(
              child: Text("Your Score is",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 35,
                      fontWeight: FontWeight.bold))),
          SizedBox(
            height: 70,
          ),
          // ignore: prefer_const_constructors
          Center(
              // ignore: prefer_const_constructors
              child: Text(number.toString(),
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 90,
                      fontWeight: FontWeight.bold))),
          SizedBox(
            height: 30,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: increaseNumber, child: Text('Increase')),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: decreaseNumber, child: Text('Decrease')),
            ],
          )
        ],
      ),
    );
  }
}
