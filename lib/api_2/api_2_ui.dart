import 'package:flutter/cupertino.dart';

class Api2Ui extends StatelessWidget {
  final List<Map<String, dynamic>> user;

  Api2Ui({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xff90AFC5),
        ),
        child: ListView.builder(
          itemCount: user.length,
          itemBuilder: (context, index) {
            final users = user.elementAt(index);
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Id : ${users["id"]}"),
                Text("UserId : ${users["userId"]}"),
                Text("Title : ${users["title"]}"),
                Text("Body : ${users["body"]}"),
                Text("__________________________________________________"),
                SizedBox(height: 15,),
              ],
            );
          },
        ),
    );
  }
}
