import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularPercentIndicator(
                radius: 60.0,
                lineWidth: 5.0,
                percent: 0.71,
                center: new Text("71%"),
                progressColor: Colors.green,
                backgroundColor: Colors.yellow,
                animation: true,
                animationDuration: 1200,
              ),
              SizedBox(height: 50,),
              LinearPercentIndicator(
                // width: 140.0,
                lineHeight: 40.0,
                percent: 0.71,
                center: new Text("71%"),
                backgroundColor: Colors.grey,
                progressColor: Colors.blue,
                animation: true,
                animationDuration: 1200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
