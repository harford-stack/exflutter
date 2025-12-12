import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hello World, 안녕하세요",
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(color: Colors.blue, letterSpacing: .5),
                  ),
                ),
                Text("Hello World, 안녕하세요"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
