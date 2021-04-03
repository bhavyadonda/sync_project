import 'dart:convert';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sync_project/AboutUs.dart';
import 'package:sync_project/Bookmarks.dart';
import 'package:sync_project/register.dart';
import 'package:sync_project/Categories.dart';
import 'package:sync_project/ClubDetails.dart';
import 'package:sync_project/Clubs.dart';
import 'package:sync_project/CompleteProfile.dart';
import 'package:sync_project/ContactUs.dart';
import 'package:sync_project/EventDetails1.dart';
import 'package:sync_project/EventDetails2.dart';
import 'package:sync_project/Events.dart';
import 'package:sync_project/Calender.dart';
import 'package:sync_project/PrivacyPolicy.dart';
import 'package:sync_project/filterpage.dart';
import 'package:sync_project/ForgotPassword.dart';
import 'package:sync_project/Home.dart';
import 'package:sync_project/Intro1.dart';
import 'package:sync_project/Intro2.dart';
import 'package:sync_project/Intro3.dart';
import 'package:sync_project/Intro4.dart';
import 'package:sync_project/Intro5.dart';
import 'package:sync_project/NavBar.dart';
import 'package:sync_project/Notifications.dart';
import 'package:sync_project/TermsAndConditions.dart';
import 'package:sync_project/ProfilePage.dart';
import 'package:sync_project/Settings.dart';
import 'package:sync_project/SignIn.dart';
import 'package:sync_project/SignUp.dart';
import 'package:sync_project/opening_screen.dart';

List messages = [];

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  // print("Handling a background message: ${message.data}");
  messages.add({
    'title': message.notification.title,
    'body': message.notification.body,
    'data': message.data
  });
  prefs.setString('messages', json.encode(messages));
  print(messages);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await Firebase.initializeApp();
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  // For IOS
  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  print('User granted permission: ${settings.authorizationStatus}');
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    // print('Message data: ${message.data}');

    if (message.notification != null) {
      // print('Message also contained a notification: ${message.notification.body}');
      messages.add({
        'title': message.notification.title,
        'body': message.notification.body,
        'data': message.data
      });
    }
    prefs.setString('messages', json.encode(messages));
    print(messages);
  });

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(MaterialApp(
    initialRoute: '/OpeningScreen',
    routes: {
      '/AboutUs': (context) => AboutUs(),
      '/Categories': (context) => Categories(),
      '/Home': (context) => HomePage(),
      '/CompleteProfile': (context) => CompleteProfile(),
      '/SignUp': (context) => SignUp(),
      '/SignIn': (context) => SignIn(),
      '/ProfilePage': (context) => ProfilePage(),
      '/Notifications': (context) => Notifications(),
      '/NavBar': (context) => NavBar(),
      '/Calender': (context) => Calender(),
      '/Intro1': (context) => Intro1(),
      '/Intro2': (context) => Intro2(),
      '/Intro3': (context) => Intro3(),
      '/Intro4': (context) => Intro4(),
      '/Intro5': (context) => Intro5(),
      '/ClubDetails': (context) => ClubDetails(),
      '/Clubs': (context) => Clubs(),
      '/ContactUs': (context) => ContactUs(),
      '/EventDetails1': (context) => EventDetails1(),
      '/EventDetails2': (context) => EventDetails2(),
      '/ForgotPassword': (context) => ForgotPassword(),
      '/TermsAndConditions': (context) => TermsAndConditions(),
      '/Settings': (context) => Settings(),
      '/Filters': (context) => FilterPage(),
      '/Events': (context) => Events(),
      '/OpeningScreen': (context) => OpeningView(),
      '/PrivacyPolicy': (context) => PrivacyPolicy(),
      '/register': (context) => register(),
      '/Bookmarks': (context) => Bookmarks(),
    },
  ));
}

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   final String appTitle = 'Firebase messaging';
//   @override
//   Widget build(BuildContext context) => MaterialApp(
//         title: appTitle,
//         home: MainPage(appTitle: appTitle),
//       );
// }

// class MainPage extends StatelessWidget {
//   final String appTitle;

//   const MainPage({this.appTitle});

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           title: Text(appTitle),
//         ),
//         body: MessagingWidget(),
//       );
// }
