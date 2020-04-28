import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flyright/loading.dart';
import 'package:flyright/loginPage.dart';
import 'package:flyright/signupPage.dart';
import './startPage.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myStateFulWidgets(),
      theme: ThemeData(primaryColor: Colors.black, accentColor: Colors.white),
      routes: <String, WidgetBuilder>{
        "/signupPage": (BuildContext context) => signupPage(),
        "/startPage": (BuildContext context) => startPage(),
        "/loginPage": (BuildContext context) => LoginPage(),
        "/loading": (BuildContext context) => Loading(),
      },
    ));

// ignore: camel_case_types
class myStateFulWidgets extends StatefulWidget {
  @override
  _myStateFulWidgetsState createState() => _myStateFulWidgetsState();
}

// ignore: camel_case_types
class _myStateFulWidgetsState extends State<myStateFulWidgets> {
  bool userExist = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    FirebaseAuth.instance.currentUser().then((currentUser) {
      if (currentUser != null) {
        userExist = true;
        Navigator.pushNamed(context, '/startPage');
      } else {
        Navigator.pushNamed(context, '/loginPage');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SpinKitFadingCircle(
          color: Colors.black,
          size: 90.0,
        ),
      ),
    );
  }
}
