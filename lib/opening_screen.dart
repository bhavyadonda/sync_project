import 'dart:convert';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class OpeningView extends StatefulWidget {
  @override
  OpeningViewState createState() => OpeningViewState();
}

class OpeningViewState extends State<OpeningView> {
  OpeningViewState();

  bool displayName;

  @override
  void initState() {
    super.initState();
    startTime();
  }

  userState() async {
    if (displayName == false) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.pushNamedAndRemoveUntil(context, '/SingIn', (r) => false);
      });
    } else {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.pushNamedAndRemoveUntil(context, '/Home', (r) => false);
      });
    }
  }

  getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    FirebaseDatabase.instance.reference().child("events").once().then(
        (DataSnapshot snapshot) =>
            {prefs.setString('data', json.encode(snapshot.value))});
    setState(() {
      displayName = prefs.getBool('my_bool_key');
    });
    userState();
  }

  startTime() async {
    var duration = new Duration(seconds: 1);
    return new Timer(duration, getData);
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    final logo = Image.asset(
      "assets/Tech Club Logo.png",
      height: mq.size.height / 4,
    );

    return Scaffold(
      backgroundColor: Color(0xff8c52ff),
      body: Padding(
        padding: EdgeInsets.all(36),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: logo,
            ),
            Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
                strokeWidth: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
