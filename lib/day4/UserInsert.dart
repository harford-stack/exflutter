import 'package:flutter/material.dart';
import 'UserList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserInsert(),
    );
  }
}

class UserInsert extends StatefulWidget {
  const UserInsert({super.key});

  @override
  State<UserInsert> createState() => _UserInsertState();
}

class _UserInsertState extends State<UserInsert> {

  final TextEditingController _nameCtrl = TextEditingController();
  final TextEditingController _ageCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[200],
        title: Text("sqlite 실습"),
        actions: [
          IconButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => UserList()
                    )
                );
              },
              icon: Icon(Icons.list)
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _nameCtrl,
                decoration: InputDecoration(
                  labelText: "Name",
                  hintText: "이름을 입력하세요.",
                  // border: OutlineInputBorder(),
                  // filled: true,
                  // fillColor: Colors.yellow[200],
                  // enabled: false,
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: _ageCtrl,
                decoration: InputDecoration(
                  labelText: "Age",
                  hintText: "나이를 입력하세요.",
                  // border: OutlineInputBorder(),
                  // filled: true,
                  // fillColor: Colors.yellow[200],
                  // enabled: false,
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: (){
                    print("입력된 값 : ${_nameCtrl.text}");
                    print("입력된 값 : ${_ageCtrl.text}");
                  },
                  child: Text("사용자 추가")
              )
            ],
          ),
        ),
      ),
    );
  }
}

