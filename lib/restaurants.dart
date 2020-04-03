import 'package:flutter/material.dart';

class restaurants extends StatefulWidget {
  @override
  _myStatefullState createState() => _myStatefullState();
}

class _myStatefullState extends State<restaurants> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            bottom: PreferredSize(
          preferredSize: Size(double.infinity, 0), //
          child: TabBar(
            indicatorWeight: 4.00,
            tabs: <Widget>[
              Tab(
                text: "In Flight Food",
              ),
              Tab(
                text: "Airport Restaurants",
              )
            ],
          ),
        )),
      ),
    );
  }
}
