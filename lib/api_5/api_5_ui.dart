import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'api_5_model.dart';

class Api5Ui extends StatelessWidget {
  final List<Api5Model>user;
  const Api5Ui({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: user.length,
      itemBuilder: (context, index) {
        final users=user.elementAt(index);
      return Padding(padding: EdgeInsets.all(10),child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        margin: EdgeInsets.only(bottom: 10),
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Color(0xFF90AFC5),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xFF2A3132),width: 2),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Id : ${users.id}"),
            const SizedBox(height: 5),
            Text("UserId : ${users.userId}"),
            const SizedBox(height: 5),
            Text("Title : ${users.title}"),
            const SizedBox(height: 5),
            Text("Body : ${users.body}"),
          ],
        ),
      ),);
    },);
  }
}
