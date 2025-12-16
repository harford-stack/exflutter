import 'package:flutter/material.dart';
import 'db.dart';

class UserView extends StatefulWidget {
  final int userId;
  const UserView({super.key, required this.userId});

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  Map<String, dynamic> info = {};
  Future<void> _selectUser() async{
    var user = await DB.getUser(widget.userId);
    setState(() {
      info = user.first;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("상세보기"),),
        body : Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("아이디 : ${info["userId"]}"),
              Text("이름 : ${info["name"]}"),
              Text("나이 : ${info["age"]}")
            ],
          ),
        )
    );
  }
}