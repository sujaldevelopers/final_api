import 'package:flutter/material.dart';

class Api7Ui extends StatelessWidget {
  final List<Map<String,dynamic>>user;
  const Api7Ui({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: user.length,
      itemBuilder: (context, index) {
      final users=user.elementAt(index);
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 12
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black,width: 1),
            color: Colors.grey,
          ),
          width: double.maxFinite,
          margin: EdgeInsets.only(bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Id : ${users["id"]}"),
              Text("CreatedAt : ${users["createdAt"]}"),
              Text("UpdatedAt : ${users["updatedAt"]}"),
              Text("Name : ${users["name"]}"),
              Text("Price : ${users["price"]}"),
              Text("No : ${users["no"]}"),
            ],
          ),
        ),
      );
    },);
  }
}
/* Text("Is_generic_service : ${users["is_generic_service"]}"),
            Text("Is_taxable : ${users["is_taxable"]}"),
            Text("Garage_id : ${users["garage_id"]}"),*/