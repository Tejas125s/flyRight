import 'package:flutter/material.dart';
class taxiService extends StatefulWidget {
  @override
  _myStatefullState createState() => _myStatefullState();
}

class _myStatefullState extends State<taxiService> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "\t TaxiService",
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
