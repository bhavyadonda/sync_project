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
import 'package:sync_project/main.dart';
import 'package:sync_project/NavBar.dart';
import 'package:sync_project/Notifications.dart';
import 'package:sync_project/TermsAndConditions.dart';
import 'package:sync_project/ProfilePage.dart';
import 'package:sync_project/Settings.dart';
import 'package:sync_project/SignIn.dart';
import 'package:sync_project/SignUp.dart';
import 'package:sync_project/opening_screen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/PrivacyPolicy',
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
    },
  ));
}
