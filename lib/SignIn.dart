import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:sync_project/ForgotPassword.dart';
import './Homepage.dart';
import 'package:adobe_xd/page_link.dart';
import './SignUp.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignIn extends StatelessWidget {
  SignIn({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 55,
            top: 697,
            child: PageLink(
                links: [
            PageLinkInfo(
              transition: LinkTransition.Fade,
              ease: Curves.easeOut,
              duration: 0.3,
              pageBuilder: () => Homepage(),
            ),
                ],
                child: SizedBox(
            width: 300.0,
            height: 53.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 273.0, 48.0),
                  size: Size(273.0, 48.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child:
                      // Adobe XD layer: 'Button' (shape)
                      Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        begin: Alignment(-0.97, -0.82),
                        end: Alignment(0.97, 0.79),
                        colors: [
                          const Color(0xfffe4f70),
                          const Color(0xffcb6bd8)
                        ],
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
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(102.0, 14.0, 70.0, 21.0),
                  size: Size(273.0, 48.0),
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
              ],
            ),
                ),
              ),
          ),
          Positioned(
            left: 100,
            top: 656,
            child: PageLink(
                links: [
            PageLinkInfo(
              transition: LinkTransition.Fade,
              ease: Curves.easeOut,
              duration: 0.3,
              pageBuilder: () => SignUp(),
            ),
                ],
                child: SizedBox(
            width: 190.0,
            height: 17.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 210.0, 17.0),
                  size: Size(190.0, 17.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
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
              ],
            ),
                ),
              ),
          ),
          Positioned(
            left: 236,
            top: 446,
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => ForgotPassword(),
                ),
              ],
              child: SizedBox(
                  width: 98.0,
                  height: 17.0,
                  child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 138.0, 17.0),
                  size: Size(98.0, 17.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      color: const Color(0xff9d9d9d),
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
                  ),
                ),
            ),
          ),
          Positioned(
            left: 54,
            top: 383,
            child: SizedBox(
                width: 297.0,
                height: 48.0,
                child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 273.0, 48.0),
                size: Size(273.0, 48.0),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child:
                    // Adobe XD layer: 'Password Input' (shape)
                    Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0x1a9d9d9d),
                  ),
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(19.0, 14.0, 107.0, 20.0),
                size: Size(273.0, 48.0),
                pinLeft: true,
                fixedWidth: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Password Placeholder' (text)
                    Text(
                  'Password',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 17,
                    color: const Color(0xffb6b6b6),
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
                ),
              ),
          ),
          Positioned(
            left: 54,
            top: 315,
            child: SizedBox(
                width: 297.0,
                height: 48.0,
                child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 273.0, 48.0),
                size: Size(273.0, 48.0),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child:
                    // Adobe XD layer: 'Mail Input' (shape)
                    Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0x1a9d9d9d),
                  ),
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(19.0, 14.0, 85.0, 20.0),
                size: Size(273.0, 48.0),
                pinLeft: true,
                fixedWidth: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Mail Placeholder' (text)
                    Text(
                  'Mail ID',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 17,
                    color: const Color(0xffb6b6b6),
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
                ),
              ),
          ),
          Positioned(
            left: 54,
            top: 237,
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
          Positioned(
            left: 54,
            top: 179,
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
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
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
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
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
          Positioned(
            left: 214,
            top: 112,
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
          Positioned(
            left: 136,
            top: 141,
            child: Container(
                width: 20.0,
                height: 3.0,
                decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            gradient: LinearGradient(
              begin: Alignment(0.0, -1.0),
              end: Alignment(0.0, 1.0),
              colors: [const Color(0xfffe4f70), const Color(0xffcb6bd8)],
              stops: [0.0, 1.0],
            ),
                ),
              ),
          ),
          Positioned(
            left: 136,
            top: 111,
            child: Text(
              'Sign In',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 21,
                color: const Color(0xff404040),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Positioned(
            left: 173,
            top: 39,
            child: Container(
                width: 64.0,
                height: 37.0,
                decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/Sync Logo.png'),
              fit: BoxFit.fill,
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.7), BlendMode.dstIn),
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0x45000000),
                offset: Offset(0, 3),
                blurRadius: 80,
              ),
            ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}

const String _svg_asnqyb =
    '<svg viewBox="45.0 206.0 19.0 5.4" ><path transform="translate(43.0, 206.0)" d="M 2.048095703125 0 C 2.048095703125 0 5.241455078125 5.4482421875 11.241455078125 5.4482421875 C 17.241455078125 5.4482421875 21 0 21 0" fill="none" stroke="#fe4f70" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
