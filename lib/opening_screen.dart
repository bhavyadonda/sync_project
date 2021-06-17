import 'dart:convert';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class OpeningView extends StatefulWidget {
  @override
  OpeningViewState createState() => OpeningViewState();
}

class OpeningViewState extends State<OpeningView> {
  OpeningViewState();

  bool displayName;
  bool firstOpen;

  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 1);
    return new Timer(duration, getData);
  }

  getData() async {
    await Firebase.initializeApp();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('filter_applied', false);

    FirebaseDatabase.instance.reference().child("events").once().then(
        (DataSnapshot snapshot) =>
            {prefs.setString('data', json.encode(snapshot.value))});

    FirebaseDatabase.instance.reference().child("clubs").once().then(
        (DataSnapshot snapshot) =>
            {prefs.setString('clubs', json.encode(snapshot.value))});

    User user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final uid = user.uid;
      prefs.setString('uid', uid);

      FirebaseDatabase.instance.reference().child("users/" + uid).once().then(
          (DataSnapshot snapshot) =>
              {prefs.setString('userData', json.encode(snapshot.value))});
    }

    setState(() {
      displayName = prefs.getBool('my_bool_key');
      firstOpen = prefs.getBool('firstOpen');
    });
    userState();
  }

  userState() async {
    if (firstOpen == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.pushNamedAndRemoveUntil(context, '/Intro1', (r) => false);
      });
    } else {
      if (displayName == null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          Navigator.pushNamedAndRemoveUntil(context, '/SignIn', (r) => false);
        });
      } else {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          Navigator.pushNamedAndRemoveUntil(context, '/Home', (r) => false);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 120,
              height: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/Sync Logo.png'),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.7), BlendMode.dstIn),
                ),
                // boxShadow: [
                //   BoxShadow(
                //     color: const Color(0x45000000),
                //     offset: Offset(0, 3),
                //     blurRadius: 80,
                //   ),
                // ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
                strokeWidth: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
