import 'package:flutter/material.dart';
class myProfile extends StatefulWidget {
  @override
  _myProfileState createState() => _myProfileState();
}

class _myProfileState extends State<myProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "\t Myprofile",
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
