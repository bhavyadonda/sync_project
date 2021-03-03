import 'package:flutter/material.dart';
import 'package:sync_project/AboutUs.dart';
import 'package:sync_project/Categories.dart';
import 'package:sync_project/ClubDetails.dart';
import 'package:sync_project/Clubs.dart';
import 'package:sync_project/CompleteProfile.dart';
import 'package:sync_project/ContactUs.dart';
import 'package:sync_project/EventDetails1.dart';
import 'package:sync_project/EventDetails2.dart';
import 'package:sync_project/Events.dart';
import 'package:sync_project/EventsPage.dart';
import 'package:sync_project/Filters.dart';
import 'package:sync_project/ForgotPassword.dart';
import 'package:sync_project/Homepage.dart';
import 'package:sync_project/Intro1.dart';
import 'package:sync_project/Intro2.dart';
import 'package:sync_project/Intro3.dart';
import 'package:sync_project/Intro4.dart';
import 'package:sync_project/Intro5.dart';
import 'package:sync_project/main.dart';
import 'package:sync_project/NavBar.dart';
import 'package:sync_project/Notifications.dart';
import 'package:sync_project/TermsAndConditions.dart';
import 'package:sync_project/ProfilePage.dart';
import 'package:sync_project/Settings.dart';
import 'package:sync_project/SignIn.dart';
import 'package:sync_project/SignUp.dart';


void main() {runApp(MaterialApp(
  initialRoute: '/Categories',
  routes: {
    '/AboutUs': (context) => AboutUs(),
    '/Categories': (context) => Categories(),
    '/Home': (context) => Homepage(),
    '/CompleteProfile': (context) => CompleteProfile(),
    '/SignUp': (context) => SignUp(),
    '/SignIn': (context) => SignIn(),
    '/ProfilePage': (context) => ProfilePage(),
    '/Notifications': (context) => Notifications(),
    '/NavBar': (context) => NavBar(),
    '/EventsPage': (context) => EventsPage(),
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
    '/PrivacyPolicy': (context) => PrivacyPolicy(),
    '/Settings': (context) => Settings(),
    '/Filters': (context) => Filters(),
    '/Events': (context) => Events(),
  },
));
}
