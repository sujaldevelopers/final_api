import 'package:flutter/material.dart';

import 'api_6_model.dart';

class Api6Ui extends StatelessWidget {
  final List<Api6Model>user;
  const Api6Ui({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10),
    child: ListView.builder(
      itemCount: user.length,
      itemBuilder: (context, index) {
        final users=user.elementAt(index);
        return Container(
          padding:EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          width: double.maxFinite,
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFF90AFC5),
            border: Border.all(color: Color(0xFF2A3132),width: 2),
          ),
          child: Column(
           // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Id : ${users.id}"),
              const SizedBox(height: 5,),
              Text("Name : ${users.name}"),
              const SizedBox(height: 5,),
              Text("UserName : ${users.username}"),
              const SizedBox(height: 5,),
              Text("Email : ${users.email}"),
              const SizedBox(height: 5,),
              Text("Phone : ${users.phone}"),
              const SizedBox(height: 5,),
              Text("Website : ${users.website}"),
            ],
          ),
        );
    },),
    );
  }
}
