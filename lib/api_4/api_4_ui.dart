import 'package:flutter/cupertino.dart';

import 'api_4_model.dart';

class Api4UI extends StatelessWidget {
  final api4Model user;
  const Api4UI({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: Container(
        padding: EdgeInsets.all(5),
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: Color(0xff2A3132).withAlpha(35),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Color(0xff2A3132),
                width: 2)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Id :${user.id}"),
            Text("UserId : ${user.userId}"),
            Text("Title :${user.title}"),
            Text("Completed : ${user.completed}"),
          ],
        ),
      ),
    );
  }
}
