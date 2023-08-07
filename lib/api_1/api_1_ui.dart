import 'package:flutter/cupertino.dart';

class ApiUi extends StatelessWidget {
  final Map<String,dynamic>user;
  const ApiUi({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            //Text("ID :${}"),
          ],
        ),
      ),
    );
  }
}
