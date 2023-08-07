import 'package:flutter/material.dart';

class Api3Ui extends StatelessWidget {
  final Map<String, dynamic> user;

  const Api3Ui({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFF90AFC5),
            border: Border.all(color: Color(0xFF2A3132), width: 1),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Id :${user["id"]}"),
              Text("Name :${user["name"]}"),
              Text("Username :${user["username"]}"),
              Text("Email :${user["email"]}"),
              Text("address :"),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xFF2A3132),width: 1),
                    color: Color(0xFF336B87),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisSize: MainAxisSize.min,
                     children: [
                       Text("Street :${user["address"]["street"]}"),
                       Text("Suite :${user["address"]["suite"]}"),
                       Text("City :${user["address"]["city"]}"),
                       Text("Zipcode :${user["address"]["zipcode"]}"),
                       Text("geo :"),
                       Container(
                         padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                         width: double.maxFinite,
                         decoration: BoxDecoration(
                             border:Border.all(color: Color(0xFF2A3132),width: 1),
                           borderRadius: BorderRadius.circular(10),
                           color: Color(0xFF336B99),
                         ),
                         child: Column(
                           mainAxisSize: MainAxisSize.min,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("Lat : ${user["address"]["geo"]["lat"]}"),
                             Text("Lng : ${user["address"]["geo"]["lng"]}")
                           ],
                         ),
                       ),
                     ],
                   ),
                ),
              ),
              Text("Phone : ${user["phone"]}"),
              Text("Wesite : ${user["website"]}"),
              Text("Company :"),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xFF2A3132),width: 1),
                  color: Color(0xFF336B87),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("name :${user["company"]["name"]}"),
                    Text("CatchPhrase :${user["company"]["catchPhrase"]}"),
                    Text("Bs :${user["company"]["bs"]}"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
