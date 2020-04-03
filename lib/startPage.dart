import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import './myProfile.dart';
import './restaurants.dart';
import './taxiService.dart';
import './flight.dart';

class startPage extends StatefulWidget {
  @override
  _startPageState createState() => _startPageState();
}

class _startPageState extends State<startPage> {
  int _selectedPage = 2;
  final _pageOptions = [
    restaurants(),
    taxiService(),
    flight(),
    myProfile(),
    startPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.airplanemode_active,
                      color: Colors.black,
                    ),
                    Text(
                      "flyRight",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ],
            )),
        bottomNavigationBar: CurvedNavigationBar(
          color: Color.fromRGBO(226, 226, 226, 1),
          backgroundColor: Colors.black,
          buttonBackgroundColor: Color.fromRGBO(226, 226, 226, 1),
          height: 50,
          items: <Widget>[
            IconButton(
              icon: Icon(
                Icons.restaurant_menu,
                color: Colors.black,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.local_taxi,
                color: Colors.black,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.airplanemode_active,
                color: Colors.black,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.movie,
                color: Colors.black,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.account_circle,
                color: Colors.black,
              ),
            ),
          ],
          index: 2,
          animationDuration: Duration(microseconds: 200),
          onTap: (index) {
            setState(() {
              _selectedPage = index;
            });
          },
        ),
        body: _pageOptions[_selectedPage]);
  }
}
