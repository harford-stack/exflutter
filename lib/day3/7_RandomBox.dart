import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Random _ran = Random();
  List<Widget> list = [];
  int currentIdx = 0;

  void _createBox() {
    List<Widget> tempList = [];
    for (int i=1; i<=10; i++) {
      tempList.add(
        Positioned(
          left: _ran.nextDouble() * (MediaQuery.of(context).size.width - 50),
          top: _ran.nextDouble() * (MediaQuery.of(context).size.height - 50),
          child: GestureDetector(
            onTap: () => _removeBox(i-1),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.blue[200],
              child: Center(
                child: Text("$i"),
              ),
            ),
          ),
        ),
      );
    }
    setState(() {
      list = tempList;
    });
    currentIdx = 0;
  }

  void _removeBox(int index) {
    if(index == currentIdx) {
      currentIdx++;
      setState(() {
        list.removeAt(0);
      });
    }
    if(list.length == 0) {
      currentIdx = 0;
      _createBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
                child: Stack(
                  children: list,
                )
            ),
            Container(
              height: 50, color: Colors.green[200],
              child: Center(
                child: ElevatedButton(
                    onPressed: _createBox,
                    child: Text("클릭 시 랜덤 위치 박스 10개")
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
