import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:sync_project/ForgotPassword.dart';
import 'package:sync_project/Home.dart';
import 'package:adobe_xd/page_link.dart';
import './SignUp.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';
import './methods.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_database/firebase_database.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  String deviceId;
  
   @override
  void initState() {
    super.initState();
    _getToken();
  }

  _getToken() {
    _firebaseMessaging.getToken().then((token) {
      deviceId = token;
    });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 30,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              //Sync Logo
              child: Container(
                width: 64.0,
                height: 37.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    // enter variable
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
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    //Sign In
                    padding: const EdgeInsets.fromLTRB(0, 0, 7, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          //Sign In Text
                          'Sign In',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 21,
                            color: const Color(0xff404040),
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Container(
                          //Underline
                          width: 20.0,
                          height: 3.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            gradient: LinearGradient(
                              begin: Alignment(0.0, -1.0),
                              end: Alignment(0.0, 1.0),
                              colors: [
                                const Color(0xfffe4f70),
                                const Color(0xffcb6bd8)
                              ],
                              stops: [0.0, 1.0],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    //Sign Up
                    padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                    child: PageLink(
                      links: [
                        PageLinkInfo(
                          transition: LinkTransition.Fade,
                          ease: Curves.easeOut,
                          duration: 0.3,
                          pageBuilder: () => SignUp(),
                        ),
                      ],
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 19,
                          color: const Color(0xffb4b4b4),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.18,
              padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.125, 0, 0, 0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: 39.0,
                        height: 38.0,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 39.0, 38.0),
                              size: Size(39.0, 38.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child:
                              // Adobe XD layer: 'Face' (shape)
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0),
                                  color: const Color(0xffffffff),
                                  border: Border.all(
                                      width: 3.0, color: const Color(0xfffe4f70)),
                                ),
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(10.0, 24.0, 19.0, 5.4),
                              size: Size(39.0, 38.0),
                              fixedWidth: true,
                              fixedHeight: true,
                              child:
                              // Adobe XD layer: 'Smile' (shape)
                              SvgPicture.string(
                                _svg_asnqyb,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(24.0, 11.0, 6.0, 6.0),
                              size: Size(39.0, 38.0),
                              fixedWidth: true,
                              fixedHeight: true,
                              child:
                              // Adobe XD layer: 'Right Eye' (shape)
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  gradient: LinearGradient(
                                    begin: Alignment(0.0, -1.0),
                                    end: Alignment(0.0, 1.0),
                                    colors: [
                                      const Color(0xfffe4f70),
                                      const Color(0xffcb6bd8)
                                    ],
                                    stops: [0.0, 1.0],
                                  ),
                                ),
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(9.0, 11.0, 6.0, 6.0),
                              size: Size(39.0, 38.0),
                              fixedWidth: true,
                              fixedHeight: true,
                              child:
                              // Adobe XD layer: 'Left Eye' (shape)
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  gradient: LinearGradient(
                                    begin: Alignment(0.0, -1.0),
                                    end: Alignment(0.0, 1.0),
                                    colors: [
                                      const Color(0xfffe4f70),
                                      const Color(0xffcb6bd8)
                                    ],
                                    stops: [0.0, 1.0],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 23,
                            color: const Color(0xff9d9d9d),
                          ),
                          children: [
                            TextSpan(
                              text: 'Welcome',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            TextSpan(
                              text: ',\n',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'sign in to continue',
                              style: TextStyle(
                                color: const Color(0xff404040),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.75,
              height: MediaQuery.of(context).size.height * 0.22,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.75,
                      height: 48.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0x1a9d9d9d),
                      ),
                      child: SizedBox.expand(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: TextFormField(
                            maxLines: 1,
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: const Color(0x1a9d9d9d),
                              hintText: 'Mail Id',
                              hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 17,
                                color: const Color(0xffb6b6b6),
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.75,
                      height: 48.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0x1a9d9d9d),
                      ),
                      child: SizedBox.expand(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: TextFormField(
                            maxLines: 1,
                            obscureText: true,
                            controller: _passwordController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: const Color(0x1a9d9d9d),
                              hintText: 'Enter Password',
                              hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 17,
                                color: const Color(0xffb6b6b6),
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: PageLink(
                      links: [
                        PageLinkInfo(
                          transition: LinkTransition.Fade,
                          ease: Curves.easeOut,
                          duration: 0.3,
                          pageBuilder: () => ForgotPassword(),
                        ),
                      ],
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          color: const Color(0xff9d9d9d),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.20,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 20),
                    child: Text(
                      'OR',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        color: const Color(0xff9d9d9d),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      showLoaderDialog(
                          context, "Checking Verification Status...");
                      try {
                        await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: _emailController.text,
                          password: _passwordController.text,
                        );
                        User user = FirebaseAuth.instance.currentUser;
                        if (user.emailVerified) {
                          Navigator.pop(context);
                          showAlertDialog(context, '', 'Verification Status',
                              'Email already verified. Please continue with Login.');
                        } else {
                          await user.sendEmailVerification();
                          showAlertDialog(context, '', 'Success',
                              'A new verification link has been sent.');
                          _emailController.text = "";
                          _passwordController.text = "";
                        }
                      } on FirebaseAuthException catch (e) {
                        Navigator.pop(context);
                        _emailController.text = "";
                        _passwordController.text = "";
                        showAlertDialog(context, '', e.code, e.message);
                      }
                    },
                    child: Text(
                      'Send Verification Link',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.15,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: PageLink(
                      links: [
                        PageLinkInfo(
                          transition: LinkTransition.Fade,
                          ease: Curves.easeOut,
                          duration: 0.3,
                          pageBuilder: () => SignUp(),
                        ),
                      ],
                      child: Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            color: const Color(0xff9d9d9d),
                          ),
                          children: [
                            TextSpan(
                              text: 'Don\'t have an account? ',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(
                                color: const Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      showLoaderDialog(context, "Authenticating...");
                      try {
                        await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: _emailController.text,
                          password: _passwordController.text,
                        );
                        User user = FirebaseAuth.instance.currentUser;
                        if (user.emailVerified) {
                          final databaseReference = FirebaseDatabase.instance.reference();
                          await databaseReference.child("users/" + user.uid+ "/device_id").set(deviceId);
                          SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                          prefs.setBool('my_bool_key', true);
                          Navigator.pop(context);
                          Navigator.pushNamedAndRemoveUntil(
                              context, '/OpeningScreen', (r) => false);
                        }
                      } on FirebaseAuthException catch (e) {
                        print(e);
                        Navigator.pop(context);
                        _emailController.text = "";
                        _passwordController.text = "";
                        showAlertDialog(context, '', e.code, e.message);
                      }
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.73,
                      height: 53.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        gradient: LinearGradient(
                          begin: Alignment(-0.97, -0.82),
                          end: Alignment(0.97, 0.79),
                          colors: [const Color(0xfffe4f70), const Color(0xffcb6bd8)],
                          stops: [0.0, 1.0],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const String _svg_asnqyb =
    '<svg viewBox="45.0 206.0 19.0 5.4" ><path transform="translate(43.0, 206.0)" d="M 2.048095703125 0 C 2.048095703125 0 5.241455078125 5.4482421875 11.241455078125 5.4482421875 C 17.241455078125 5.4482421875 21 0 21 0" fill="none" stroke="#fe4f70" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
