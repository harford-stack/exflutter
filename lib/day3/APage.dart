import 'package:flutter/material.dart';
import 'BPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: APage(),
    );
  }
}

class APage extends StatefulWidget {
  const APage({super.key});

  @override
  State<APage> createState() => _APageState();
}

class _APageState extends State<APage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text("A 페이지"),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.list)
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => BPage()
                  )
                );
              },
              child: Text("그냥 이동")
            ),
            SizedBox(height: 40,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => BPage(msg: "A에서 넘긴 값")
                    )
                );
              },
              child: Text("값을 넣어서 이동")
            )
          ],
        ),
      ),
    );
  }
}
