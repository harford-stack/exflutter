import 'package:flutter/material.dart';
import 'db.dart';


class UserEdit extends StatefulWidget {
  final int? userId;
  UserEdit({super.key, this.userId});

  @override
  State<UserEdit> createState() => _UserEditState();
}

class _UserEditState extends State<UserEdit> {
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController ageCtrl = TextEditingController();

  Future<void> _selectUser() async{
    var user = await DB.getUser(widget.userId!);
    print(user);
    print(user.first);
    var info = user.first;
    setState(() {
      nameCtrl.text = info["name"];
      ageCtrl.text = info["age"].toString();
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
        appBar: AppBar(
          title : Text("사용자 수정"),
        ),
        body : Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                controller: nameCtrl,
                decoration: InputDecoration(
                    labelText: "Name"
                ),
              ),
              TextField(
                controller: ageCtrl,
                decoration: InputDecoration(
                    labelText: "Age"
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: () async{
                    DB.updateUser(widget.userId!, nameCtrl.text, int.tryParse(ageCtrl.text)!);
                    Navigator.pop(context, true);
                  },
                  child: Text("수정")
              )
            ],
          ),
        )

    );
  }
}