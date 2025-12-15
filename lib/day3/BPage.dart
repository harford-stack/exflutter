import 'package:flutter/material.dart';

class BPage extends StatelessWidget {
  final String? msg;
  const BPage({super.key, this.msg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text("B 페이지"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(msg ?? "전달 받은 값 없음")
          ],
        ),
      ),
    );
  }
}
