import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class taxiService extends StatefulWidget {
  @override
  _myStatefullState createState() => _myStatefullState();
}

class _myStatefullState extends State<taxiService> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(initialCameraPosition: CameraPosition(target: LatLng(12.92,77.02),zoom: 20),)
        ],
      ),
    );
  }
}
