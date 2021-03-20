import 'dart:convert';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';

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
        Navigator.pushNamedAndRemoveUntil(context, '/SignIn', (r) => false);
      });
    } else {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.pushNamedAndRemoveUntil(context, '/Home', (r) => false);
      });
    }
  }

  getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('filter_applied', false);

    FirebaseDatabase.instance.reference().child("events").once().then(
        (DataSnapshot snapshot) =>
            {prefs.setString('data', json.encode(snapshot.value))});

    FirebaseDatabase.instance.reference().child("clubs").once().then(
        (DataSnapshot snapshot) =>
            {prefs.setString('clubs', json.encode(snapshot.value))});

    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseUser currentUser = await auth.currentUser();
    final uid = currentUser.uid;
    prefs.setString('uid', uid);

    FirebaseDatabase.instance.reference().child("users/" + uid).once().then(
        (DataSnapshot snapshot) =>
            {prefs.setString('userData', json.encode(snapshot.value))});

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
