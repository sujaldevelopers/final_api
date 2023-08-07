import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

nevigater (BuildContext context ,Widget page){
  return Navigator.push(context, MaterialPageRoute(builder: (context) {
    return page;
  },));
}
class HelperBox extends StatelessWidget {
  final String text;
  final Widget page;
  HelperBox({Key? key, required this.page, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        nevigater(context, page);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 85,
          width: 85,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff2A3132),
              ),
              child: Center(
                  child: Text(text, style: TextStyle(color: Colors.white))),
            ),
          ),
      ),
    );
  }
}
