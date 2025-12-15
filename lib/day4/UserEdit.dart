import 'package:flutter/material.dart';
import 'UserList.dart';

class UserEdit extends StatefulWidget {
  const UserEdit({super.key});

  @override
  State<UserEdit> createState() => _UserEditState();
}

class _UserEditState extends State<UserEdit> {

  final TextEditingController _nameCtrl = TextEditingController();
  final TextEditingController _ageCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[200],
        title: Text("사용자 수정"),
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
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.yellow[200],
                  // enabled: false,
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: _ageCtrl,
                decoration: InputDecoration(
                  labelText: "Age",
                  hintText: "나이를 입력하세요.",
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.yellow[200],
                  // enabled: false,
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: (){
                    print("입력된 값 : ${_nameCtrl.text}");
                    print("입력된 값 : ${_ageCtrl.text}");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => UserList()
                        )
                    );
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
