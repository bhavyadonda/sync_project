import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:sync_project/ContactUs.dart';
import './Settings.dart';
import 'package:adobe_xd/page_link.dart';
import './ContactUs.dart';
import './AboutUs.dart';
import './Clubs.dart';
import './ProfilePage.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageLink(
            links: [
              PageLinkInfo(
                transition: LinkTransition.PushLeft,
                ease: Curves.easeOut,
                duration: 0.3,
              ),
            ],
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: const DecoratedBox(
                decoration: const BoxDecoration(color: Colors.black12),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(230, 0, 0, 0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 88.0,
                    height: 89.0,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 88.2, 89.3),
                          size: Size(88.2, 89.3),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child:
                              // Adobe XD layer: 'Burger Gradient Cir…' (shape)
                              SvgPicture.string(
                            _svg_zicyw5,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(50.2, 32.7, 30.0, 23.8),
                          size: Size(88.2, 89.3),
                          pinRight: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Burger Menu' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 17.8, 15.0, 6.0),
                                size: Size(30.0, 23.8),
                                child:
                                    // Adobe XD layer: 'Bottom Line' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.0),
                                    color: const Color(0xffffffff),
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
                                bounds: Rect.fromLTWH(0.0, 9.0, 30.0, 6.0),
                                size: Size(30.0, 23.8),
                                child:
                                    // Adobe XD layer: 'Mid Line' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3.0),
                                    color: const Color(0xffffffff),
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
                                bounds: Rect.fromLTWH(11.0, 0.0, 19.0, 6.0),
                                size: Size(30.0, 23.8),
                                child:
                                    // Adobe XD layer: 'Upper Line' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3.0),
                                    color: const Color(0xffffffff),
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 272, //272
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
                color: const Color(0xffffffff),
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
          Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 272.0,
                  height: MediaQuery.of(context).size.height - 160,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 70, 170, 0),
                        child: Text(
                          'Menu',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 23,
                            color: const Color(0xff404040),
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 40, 80, 0),
                        child: PageLink(
                          links: [
                            PageLinkInfo(
                              transition: LinkTransition.Fade,
                              ease: Curves.easeOut,
                              duration: 0.3,
                              pageBuilder: () => ProfilePage(),
                            ),
                          ],
                          child: SizedBox(
                            width: 150.0,
                            height: 25.0,
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(34.0, 0.0, 116.0, 25.0),
                                  size: Size(150.0, 25.0),
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  fixedWidth: true,
                                  child: Text(
                                    'P R O F I L E',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      color: const Color(0xff404040),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 4.0, 16.0, 16.0),
                                  size: Size(129.0, 25.0),
                                  pinLeft: true,
                                  fixedWidth: true,
                                  fixedHeight: true,
                                  child:
                                      // Adobe XD layer: 'Profile Icon' (group)
                                      Stack(
                                    children: <Widget>[
                                      Pinned.fromSize(
                                        bounds:
                                            Rect.fromLTWH(4.0, 0.0, 8.0, 8.0),
                                        size: Size(16.0, 16.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(
                                                    9999.0, 9999.0)),
                                            gradient: LinearGradient(
                                              begin: Alignment(-0.97, -0.82),
                                              end: Alignment(0.97, 0.79),
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
                                        bounds:
                                            Rect.fromLTWH(0.0, 10.0, 16.0, 6.0),
                                        size: Size(16.0, 16.0),
                                        child: SvgPicture.string(
                                          _svg_qlpfar,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 40, 120, 0),
                        child: PageLink(
                          links: [
                            PageLinkInfo(
                              transition: LinkTransition.Fade,
                              ease: Curves.easeOut,
                              duration: 0.3,
                              pageBuilder: () => Clubs(),
                            ),
                          ],
                          child: SizedBox(
                            width: 109.0,
                            height: 25.0,
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(34.0, 0.0, 75.0, 25.0),
                                  size: Size(109.0, 25.0),
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  fixedWidth: true,
                                  child: Text(
                                    'C L U B S',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      color: const Color(0xff404040),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 4.0, 16.0, 16.0),
                                  size: Size(109.0, 25.0),
                                  pinLeft: true,
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  child:
                                      // Adobe XD layer: 'Club Icon' (shape)
                                      SvgPicture.string(
                                    _svg_bnazwc,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 40, 80, 0),
                        child: PageLink(
                          links: [
                            PageLinkInfo(
                              transition: LinkTransition.Fade,
                              ease: Curves.easeOut,
                              duration: 0.3,
                              pageBuilder: () => AboutUs(),
                            ),
                          ],
                          child: SizedBox(
                            width: 150.0,
                            height: 25.0,
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(34.0, 0.0, 116.0, 25.0),
                                  size: Size(150.0, 25.0),
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  fixedWidth: true,
                                  child: Text(
                                    'A B O U T  U S',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      color: const Color(0xff404040),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 4.0, 16.0, 16.0),
                                  size: Size(150.0, 25.0),
                                  pinLeft: true,
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  child:
                                      // Adobe XD layer: 'About Us Icon' (shape)
                                      SvgPicture.string(
                                    _svg_fpdumm,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 40, 60, 0),
                        child: PageLink(
                          links: [
                            PageLinkInfo(
                              transition: LinkTransition.Fade,
                              ease: Curves.easeOut,
                              duration: 0.3,
                              pageBuilder: () => ContactUs(),
                            ),
                          ],
                          child: SizedBox(
                            width: 186.0,
                            height: 25.0,
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(34.0, 0.0, 152.0, 25.0),
                                  size: Size(186.0, 25.0),
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  fixedWidth: true,
                                  child: Text(
                                    'C O N T A C T  U S',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      color: const Color(0xff404040),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 4.0, 16.0, 16.0),
                                  size: Size(186.0, 25.0),
                                  pinLeft: true,
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  child:
                                      // Adobe XD layer: 'Contact Us Icon' (shape)
                                      SvgPicture.string(
                                    _svg_s5ghc3,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 40, 80, 0),
                        child: PageLink(
                          links: [
                            PageLinkInfo(
                              transition: LinkTransition.Fade,
                              ease: Curves.easeOut,
                              duration: 0.3,
                              pageBuilder: () => Settings(),
                            ),
                          ],
                          child: SizedBox(
                            width: 149.0,
                            height: 25.0,
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(34.0, 0.0, 115.0, 25.0),
                                  size: Size(149.0, 25.0),
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  fixedWidth: true,
                                  child: Text(
                                    'S E T T I N G S',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      color: const Color(0xff404040),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 3.2, 16.0, 16.8),
                                  size: Size(149.0, 25.0),
                                  child:
                                      // Adobe XD layer: 'Settings Icon' (shape)
                                      SvgPicture.string(
                                    _svg_5hxx43,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                            child: SizedBox(
                              width: 36.0,
                              height: 36.0,
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(0.0, 0.0, 36.0, 36.0),
                                    size: Size(36.0, 36.0),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child:
                                        // Adobe XD layer: 'Facebook Circle' (shape)
                                        SvgPicture.string(
                                      _svg_2hom8a,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromSize(
                                    bounds:
                                        Rect.fromLTWH(10.0, 10.0, 16.0, 16.0),
                                    size: Size(36.0, 36.0),
                                    fixedWidth: true,
                                    fixedHeight: true,
                                    child:
                                        // Adobe XD layer: 'Facebook Logo' (group)
                                        Stack(
                                      children: <Widget>[
                                        Pinned.fromSize(
                                          bounds: Rect.fromLTWH(
                                              0.0, 0.0, 16.0, 16.0),
                                          size: Size(16.0, 16.0),
                                          pinLeft: true,
                                          pinRight: true,
                                          pinTop: true,
                                          pinBottom: true,
                                          child: Container(
                                            decoration: BoxDecoration(),
                                          ),
                                        ),
                                        Pinned.fromSize(
                                          bounds: Rect.fromLTWH(
                                              4.0, 0.0, 8.4, 16.0),
                                          size: Size(16.0, 16.0),
                                          pinTop: true,
                                          pinBottom: true,
                                          fixedWidth: true,
                                          child: SvgPicture.string(
                                            _svg_t9k0ox,
                                            allowDrawingOutsideViewBox: true,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: SizedBox(
                              width: 36.0,
                              height: 36.0,
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(0.0, 0.0, 36.0, 36.0),
                                    size: Size(36.0, 36.0),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child:
                                        // Adobe XD layer: 'YouTube Circle' (shape)
                                        SvgPicture.string(
                                      _svg_vg42yg,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromSize(
                                    bounds:
                                        Rect.fromLTWH(7.0, 10.0, 22.8, 16.0),
                                    size: Size(36.0, 36.0),
                                    child:
                                        // Adobe XD layer: 'Youtube Logo' (shape)
                                        SvgPicture.string(
                                      _svg_xbairv,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: SizedBox(
                              width: 36.0,
                              height: 36.0,
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(0.0, 0.0, 36.0, 36.0),
                                    size: Size(36.0, 36.0),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child:
                                        // Adobe XD layer: 'Instagram Circle' (shape)
                                        SvgPicture.string(
                                      _svg_3k9cdm,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromSize(
                                    bounds:
                                        Rect.fromLTWH(10.0, 10.0, 16.0, 16.0),
                                    size: Size(36.0, 36.0),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child:
                                        // Adobe XD layer: 'Instagram Logo' (shape)
                                        SvgPicture.string(
                                      _svg_i2487t,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Text(
                            'Developed by',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 17,
                              color: const Color(0xff9d9d9d),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                          width: 160.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: const AssetImage(
                                  'assets/Tech Club Logo Horizontal.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// class NavBar extends StatelessWidget {
//   NavBar({
//     Key key,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xb3000000),
//       body: Stack(
//         children: <Widget>[
//           Positioned(
//             left: 226.8,
//             top: 361.4,
//             child: SizedBox(
//               width: 88.0,
//               height: 89.0,
//               child: Stack(
//                 children: <Widget>[
//                   Pinned.fromSize(
//                     bounds: Rect.fromLTWH(0.0, 0.0, 88.2, 89.3),
//                     size: Size(88.2, 89.3),
//                     pinLeft: true,
//                     pinRight: true,
//                     pinTop: true,
//                     pinBottom: true,
//                     child:
//                     // Adobe XD layer: 'Burger Gradient Cir…' (shape)
//                     SvgPicture.string(
//                       _svg_zicyw5,
//                       allowDrawingOutsideViewBox: true,
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                   Pinned.fromSize(
//                     bounds: Rect.fromLTWH(50.2, 32.7, 30.0, 23.8),
//                     size: Size(88.2, 89.3),
//                     pinRight: true,
//                     fixedWidth: true,
//                     fixedHeight: true,
//                     child:
//                     // Adobe XD layer: 'Burger Menu' (group)
//                     Stack(
//                       children: <Widget>[
//                         Pinned.fromSize(
//                           bounds: Rect.fromLTWH(0.0, 17.8, 15.0, 6.0),
//                           size: Size(30.0, 23.8),
//                           child:
//                           // Adobe XD layer: 'Bottom Line' (shape)
//                           Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(4.0),
//                               color: const Color(0xffffffff),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: const Color(0x29000000),
//                                   offset: Offset(0, 3),
//                                   blurRadius: 6,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Pinned.fromSize(
//                           bounds: Rect.fromLTWH(0.0, 9.0, 30.0, 6.0),
//                           size: Size(30.0, 23.8),
//                           child:
//                           // Adobe XD layer: 'Mid Line' (shape)
//                           Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(3.0),
//                               color: const Color(0xffffffff),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: const Color(0x29000000),
//                                   offset: Offset(0, 3),
//                                   blurRadius: 6,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Pinned.fromSize(
//                           bounds: Rect.fromLTWH(11.0, 0.0, 19.0, 6.0),
//                           size: Size(30.0, 23.8),
//                           child:
//                           // Adobe XD layer: 'Upper Line' (shape)
//                           Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(3.0),
//                               color: const Color(0xffffffff),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: const Color(0x29000000),
//                                   offset: Offset(0, 3),
//                                   blurRadius: 6,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             left: 0,
//             top: 0,
//             child: Container(
//               width: 272.0,
//               height: 812.0,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                   topRight: Radius.circular(50.0),
//                   bottomRight: Radius.circular(50.0),
//                 ),
//                 color: const Color(0xffffffff),
//                 boxShadow: [
//                   BoxShadow(
//                     color: const Color(0x29000000),
//                     offset: Offset(0, 3),
//                     blurRadius: 6,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             left: 13,
//             top: 743,
//             child: Container(
//               width: 160.0,
//               height: 45.0,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: const AssetImage('assets/Tech Club Logo Horizontal.png'),
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 13,
//             top: 712,
//             child: Text(
//               'Developed by',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 17,
//                 color: const Color(0xff9d9d9d),
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           Positioned(
//             left: 152,
//             top: 654,
//             child: SizedBox(
//               width: 36.0,
//               height: 36.0,
//               child: Stack(
//                 children: <Widget>[
//                   Pinned.fromSize(
//                     bounds: Rect.fromLTWH(0.0, 0.0, 36.0, 36.0),
//                     size: Size(36.0, 36.0),
//                     pinLeft: true,
//                     pinRight: true,
//                     pinTop: true,
//                     pinBottom: true,
//                     child:
//                     // Adobe XD layer: 'YouTube Circle' (shape)
//                     SvgPicture.string(
//                       _svg_vg42yg,
//                       allowDrawingOutsideViewBox: true,
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                   Pinned.fromSize(
//                     bounds: Rect.fromLTWH(7.0, 10.0, 22.8, 16.0),
//                     size: Size(36.0, 36.0),
//                     child:
//                     // Adobe XD layer: 'Youtube Logo' (shape)
//                     SvgPicture.string(
//                       _svg_xbairv,
//                       allowDrawingOutsideViewBox: true,
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             left: 83,
//             top: 654,
//             child: SizedBox(
//               width: 36.0,
//               height: 36.0,
//               child: Stack(
//                 children: <Widget>[
//                   Pinned.fromSize(
//                     bounds: Rect.fromLTWH(0.0, 0.0, 36.0, 36.0),
//                     size: Size(36.0, 36.0),
//                     pinLeft: true,
//                     pinRight: true,
//                     pinTop: true,
//                     pinBottom: true,
//                     child:
//                     // Adobe XD layer: 'Facebook Circle' (shape)
//                     SvgPicture.string(
//                       _svg_2hom8a,
//                       allowDrawingOutsideViewBox: true,
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                   Pinned.fromSize(
//                     bounds: Rect.fromLTWH(10.0, 10.0, 16.0, 16.0),
//                     size: Size(36.0, 36.0),
//                     fixedWidth: true,
//                     fixedHeight: true,
//                     child:
//                     // Adobe XD layer: 'Facebook Logo' (group)
//                     Stack(
//                       children: <Widget>[
//                         Pinned.fromSize(
//                           bounds: Rect.fromLTWH(0.0, 0.0, 16.0, 16.0),
//                           size: Size(16.0, 16.0),
//                           pinLeft: true,
//                           pinRight: true,
//                           pinTop: true,
//                           pinBottom: true,
//                           child: Container(
//                             decoration: BoxDecoration(),
//                           ),
//                         ),
//                         Pinned.fromSize(
//                           bounds: Rect.fromLTWH(4.0, 0.0, 8.4, 16.0),
//                           size: Size(16.0, 16.0),
//                           pinTop: true,
//                           pinBottom: true,
//                           fixedWidth: true,
//                           child: SvgPicture.string(
//                             _svg_t9k0ox,
//                             allowDrawingOutsideViewBox: true,
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             left: 13,
//             top: 654,
//             child: SizedBox(
//               width: 36.0,
//               height: 36.0,
//               child: Stack(
//                 children: <Widget>[
//                   Pinned.fromSize(
//                     bounds: Rect.fromLTWH(0.0, 0.0, 36.0, 36.0),
//                     size: Size(36.0, 36.0),
//                     pinLeft: true,
//                     pinRight: true,
//                     pinTop: true,
//                     pinBottom: true,
//                     child:
//                     // Adobe XD layer: 'Instagram Circle' (shape)
//                     SvgPicture.string(
//                       _svg_3k9cdm,
//                       allowDrawingOutsideViewBox: true,
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                   Pinned.fromSize(
//                     bounds: Rect.fromLTWH(10.0, 10.0, 16.0, 16.0),
//                     size: Size(36.0, 36.0),
//                     pinLeft: true,
//                     pinRight: true,
//                     pinTop: true,
//                     pinBottom: true,
//                     child:
//                     // Adobe XD layer: 'Instagram Logo' (shape)
//                     SvgPicture.string(
//                       _svg_i2487t,
//                       allowDrawingOutsideViewBox: true,
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             left: 13,
//             top: 435,
//             child: PageLink(
//               links: [
//                 PageLinkInfo(
//                   transition: LinkTransition.Fade,
//                   ease: Curves.easeOut,
//                   duration: 0.3,
//                   pageBuilder: () => Settings(),
//                 ),
//               ],
//               child: SizedBox(
//                 width: 149.0,
//                 height: 25.0,
//                 child: Stack(
//                   children: <Widget>[
//                     Pinned.fromSize(
//                       bounds: Rect.fromLTWH(34.0, 0.0, 115.0, 25.0),
//                       size: Size(149.0, 25.0),
//                       pinRight: true,
//                       pinTop: true,
//                       pinBottom: true,
//                       fixedWidth: true,
//                       child: Text(
//                         'S E T T I N G S',
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           fontSize: 18,
//                           color: const Color(0xff404040),
//                         ),
//                         textAlign: TextAlign.left,
//                       ),
//                     ),
//                     Pinned.fromSize(
//                       bounds: Rect.fromLTWH(0.0, 3.2, 16.0, 16.8),
//                       size: Size(149.0, 25.0),
//                       child:
//                       // Adobe XD layer: 'Settings Icon' (shape)
//                       SvgPicture.string(
//                         _svg_5hxx43,
//                         allowDrawingOutsideViewBox: true,
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 13,
//             top: 370,
//             child: PageLink(
//               links: [
//                 PageLinkInfo(
//                   transition: LinkTransition.Fade,
//                   ease: Curves.easeOut,
//                   duration: 0.3,
//                   pageBuilder: () => ContactUs(),
//                 ),
//               ],
//               child: SizedBox(
//                 width: 186.0,
//                 height: 25.0,
//                 child: Stack(
//                   children: <Widget>[
//                     Pinned.fromSize(
//                       bounds: Rect.fromLTWH(34.0, 0.0, 152.0, 25.0),
//                       size: Size(186.0, 25.0),
//                       pinRight: true,
//                       pinTop: true,
//                       pinBottom: true,
//                       fixedWidth: true,
//                       child: Text(
//                         'C O N T A C T  U S',
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           fontSize: 18,
//                           color: const Color(0xff404040),
//                         ),
//                         textAlign: TextAlign.left,
//                       ),
//                     ),
//                     Pinned.fromSize(
//                       bounds: Rect.fromLTWH(0.0, 4.0, 16.0, 16.0),
//                       size: Size(186.0, 25.0),
//                       pinLeft: true,
//                       pinRight: true,
//                       pinTop: true,
//                       pinBottom: true,
//                       child:
//                       // Adobe XD layer: 'Contact Us Icon' (shape)
//                       SvgPicture.string(
//                         _svg_s5ghc3,
//                         allowDrawingOutsideViewBox: true,
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 13,
//             top: 305,
//             child: PageLink(
//               links: [
//                 PageLinkInfo(
//                   transition: LinkTransition.Fade,
//                   ease: Curves.easeOut,
//                   duration: 0.3,
//                   pageBuilder: () => AboutUs(),
//                 ),
//               ],
//               child: SizedBox(
//                 width: 150.0,
//                 height: 25.0,
//                 child: Stack(
//                   children: <Widget>[
//                     Pinned.fromSize(
//                       bounds: Rect.fromLTWH(34.0, 0.0, 116.0, 25.0),
//                       size: Size(150.0, 25.0),
//                       pinRight: true,
//                       pinTop: true,
//                       pinBottom: true,
//                       fixedWidth: true,
//                       child: Text(
//                         'A B O U T  U S',
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           fontSize: 18,
//                           color: const Color(0xff404040),
//                         ),
//                         textAlign: TextAlign.left,
//                       ),
//                     ),
//                     Pinned.fromSize(
//                       bounds: Rect.fromLTWH(0.0, 4.0, 16.0, 16.0),
//                       size: Size(150.0, 25.0),
//                       pinLeft: true,
//                       pinRight: true,
//                       pinTop: true,
//                       pinBottom: true,
//                       child:
//                       // Adobe XD layer: 'About Us Icon' (shape)
//                       SvgPicture.string(
//                         _svg_fpdumm,
//                         allowDrawingOutsideViewBox: true,
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 13,
//             top: 240,
//             child: PageLink(
//               links: [
//                 PageLinkInfo(
//                   transition: LinkTransition.Fade,
//                   ease: Curves.easeOut,
//                   duration: 0.3,
//                   pageBuilder: () => Clubs(),
//                 ),
//               ],
//               child: SizedBox(
//                 width: 109.0,
//                 height: 25.0,
//                 child: Stack(
//                   children: <Widget>[
//                     Pinned.fromSize(
//                       bounds: Rect.fromLTWH(34.0, 0.0, 75.0, 25.0),
//                       size: Size(109.0, 25.0),
//                       pinRight: true,
//                       pinTop: true,
//                       pinBottom: true,
//                       fixedWidth: true,
//                       child: Text(
//                         'C L U B S',
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           fontSize: 18,
//                           color: const Color(0xff404040),
//                         ),
//                         textAlign: TextAlign.left,
//                       ),
//                     ),
//                     Pinned.fromSize(
//                       bounds: Rect.fromLTWH(0.0, 4.0, 16.0, 16.0),
//                       size: Size(109.0, 25.0),
//                       pinLeft: true,
//                       pinRight: true,
//                       pinTop: true,
//                       pinBottom: true,
//                       child:
//                       // Adobe XD layer: 'Club Icon' (shape)
//                       SvgPicture.string(
//                         _svg_bnazwc,
//                         allowDrawingOutsideViewBox: true,
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 13,
//             top: 175,
//             child: PageLink(
//               links: [
//                 PageLinkInfo(
//                   transition: LinkTransition.Fade,
//                   ease: Curves.easeOut,
//                   duration: 0.3,
//                   pageBuilder: () => ProfilePage(),
//                 ),
//               ],
//               child: SizedBox(
//                 width: 150.0,
//                 height: 25.0,
//                 child: Stack(
//                   children: <Widget>[
//                     Pinned.fromSize(
//                       bounds: Rect.fromLTWH(34.0, 0.0, 116.0, 25.0),
//                       size: Size(150.0, 25.0),
//                       pinRight: true,
//                       pinTop: true,
//                       pinBottom: true,
//                       fixedWidth: true,
//                       child: Text(
//                         'P R O F I L E',
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           fontSize: 18,
//                           color: const Color(0xff404040),
//                         ),
//                         textAlign: TextAlign.left,
//                       ),
//                     ),
//                     Pinned.fromSize(
//                       bounds: Rect.fromLTWH(0.0, 4.0, 16.0, 16.0),
//                       size: Size(129.0, 25.0),
//                       pinLeft: true,
//                       fixedWidth: true,
//                       fixedHeight: true,
//                       child:
//                       // Adobe XD layer: 'Profile Icon' (group)
//                       Stack(
//                         children: <Widget>[
//                           Pinned.fromSize(
//                             bounds: Rect.fromLTWH(4.0, 0.0, 8.0, 8.0),
//                             size: Size(16.0, 16.0),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.all(
//                                     Radius.elliptical(9999.0, 9999.0)),
//                                 gradient: LinearGradient(
//                                   begin: Alignment(-0.97, -0.82),
//                                   end: Alignment(0.97, 0.79),
//                                   colors: [
//                                     const Color(0xfffe4f70),
//                                     const Color(0xffcb6bd8)
//                                   ],
//                                   stops: [0.0, 1.0],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Pinned.fromSize(
//                             bounds: Rect.fromLTWH(0.0, 10.0, 16.0, 6.0),
//                             size: Size(16.0, 16.0),
//                             child: SvgPicture.string(
//                               _svg_qlpfar,
//                               allowDrawingOutsideViewBox: true,
//                               fit: BoxFit.fill,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 13,
//             top: 110,
//             child: Text(
//               'Menu',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 18,
//                 color: const Color(0xff404040),
//                 fontWeight: FontWeight.w600,
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

const String _svg_zicyw5 =
    '<svg viewBox="226.8 361.4 88.2 89.3" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(226.76, 361.37)" d="M 44.11841583251953 0 C 68.48434448242188 0 88.23683166503906 19.98300743103027 88.23683166503906 44.63329315185547 C 88.23683166503906 69.28357696533203 68.48434448242188 89.26658630371094 44.11841583251953 89.26658630371094 C 19.75248908996582 89.26658630371094 0 69.28357696533203 0 44.63329315185547 C 0 19.98300743103027 19.75248908996582 0 44.11841583251953 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_vg42yg =
    '<svg viewBox="169.0 633.0 36.0 36.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(169.0, 633.0)" d="M 15 0 L 21 0 C 29.28427124023438 0 36 6.715728759765625 36 15 L 36 21 C 36 29.28427124023438 29.28427124023438 36 21 36 L 15 36 C 6.715728759765625 36 0 29.28427124023438 0 21 L 0 15 C 0 6.715728759765625 6.715728759765625 0 15 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xbairv =
    '<svg viewBox="176.0 643.0 22.8 16.0" ><path transform="translate(172.91, 551.11)" d="M 14.61904525756836 107.894660949707 C 12.06069564819336 107.8140106201172 9.627801895141602 107.7512817382813 7.194906711578369 107.6571960449219 C 6.67069149017334 107.6347961425781 6.137515544891357 107.5541458129883 5.626741886138916 107.4331741333008 C 4.66792106628418 107.2091522216797 4.004811763763428 106.6311721801758 3.66429591178894 105.685791015625 C 3.390987157821655 104.9241104125977 3.29241681098938 104.1400299072266 3.220729351043701 103.3425064086914 C 3.063912868499756 101.4696655273438 3.063912868499756 99.59683227539063 3.14008092880249 97.72399139404297 C 3.184885740280151 96.66660308837891 3.211768388748169 95.60025024414063 3.494038105010986 94.57421875 C 3.66429615020752 93.96039581298828 3.870397567749023 93.36001586914063 4.367730140686035 92.91645050048828 C 4.891944885253906 92.44599914550781 5.505769729614258 92.16372680664063 6.204722881317139 92.13236999511719 C 8.122364044189453 92.03827667236328 10.03552532196045 91.92178344726563 11.95316505432129 91.90386199951172 C 14.53391647338867 91.87698364257813 17.11915016174316 91.91282653808594 19.69989967346191 91.96211242675781 C 20.81553649902344 91.98451232910156 21.94013404846191 92.04275512695313 23.04681015014648 92.18613433837891 C 24.05939674377441 92.32054901123047 24.81659698486328 92.88508605957031 25.21983909606934 93.87078857421875 C 25.52899169921875 94.62799072265625 25.64548492431641 95.42103576660156 25.71269226074219 96.22751617431641 C 25.88742828369141 98.24820709228516 25.89191055297852 100.2688980102539 25.79333877563477 102.2895965576172 C 25.74405288696289 103.3156204223633 25.69476890563965 104.3461303710938 25.40353775024414 105.3452758789063 C 25.07198333740234 106.4922790527344 24.36854934692383 107.2494735717773 23.19466590881348 107.5093460083008 C 22.73765754699707 107.60791015625 22.26272964477539 107.6437530517578 21.7967586517334 107.6616821289063 C 19.35938453674316 107.7468032836914 16.92648887634277 107.8229751586914 14.61904525756836 107.894660949707 Z M 12.1413459777832 102.8003692626953 C 14.18444061279297 101.7429733276367 16.20513153076172 100.6945495605469 18.26614952087402 99.62371063232422 C 16.20961380004883 98.54840087890625 14.18892097473145 97.49549102783203 12.1413459777832 96.42465209960938 C 12.1413459777832 98.56184387207031 12.1413459777832 100.6631774902344 12.1413459777832 102.8003692626953 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_t9k0ox =
    '<svg viewBox="152.0 653.0 8.4 16.0" ><path transform="translate(72.0, 653.0)" d="M 85.42222595214844 16 L 85.42222595214844 8.711111068725586 L 87.91111755371094 8.711111068725586 L 88.26667785644531 5.8666672706604 L 85.42222595214844 5.8666672706604 L 85.42222595214844 4.088889122009277 C 85.42222595214844 3.288889169692993 85.68890380859375 2.666667222976685 86.84445190429688 2.666667222976685 L 88.35556030273438 2.666667222976685 L 88.35556030273438 0.08888889104127884 C 88 0.08888889104127884 87.11111450195313 0 86.13333129882813 0 C 84 0 82.4888916015625 1.333333373069763 82.4888916015625 3.733333110809326 L 82.4888916015625 5.866666793823242 L 80 5.866666793823242 L 80 8.711111068725586 L 82.4888916015625 8.711111068725586 L 82.4888916015625 16 L 85.42222595214844 16 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2hom8a =
    '<svg viewBox="139.5 643.0 36.0 36.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(139.5, 643.0)" d="M 15 0 L 21 0 C 29.28427124023438 0 36 6.715728759765625 36 15 L 36 21 C 36 29.28427124023438 29.28427124023438 36 21 36 L 15 36 C 6.715728759765625 36 0 29.28427124023438 0 21 L 0 15 C 0 6.715728759765625 6.715728759765625 0 15 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3k9cdm =
    '<svg viewBox="49.0 643.0 36.0 36.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(49.0, 643.0)" d="M 15 0 L 21 0 C 29.28427124023438 0 36 6.715728759765625 36 15 L 36 21 C 36 29.28427124023438 29.28427124023438 36 21 36 L 15 36 C 6.715728759765625 36 0 29.28427124023438 0 21 L 0 15 C 0 6.715728759765625 6.715728759765625 0 15 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_i2487t =
    '<svg viewBox="59.0 653.0 16.0 16.0" ><path transform="translate(59.0, 653.0)" d="M 8 1.422222256660461 C 10.13333320617676 1.422222256660461 10.39999961853027 1.422222256660461 11.20000076293945 1.51111114025116 C 12 1.51111114025116 12.44444465637207 1.688889026641846 12.71111106872559 1.777777791023254 C 13.06666660308838 1.955555558204651 13.33333301544189 2.133333444595337 13.60000038146973 2.400000095367432 C 13.86666679382324 2.666666746139526 14.0444450378418 2.9333336353302 14.22222232818604 3.288888931274414 C 14.31111145019531 3.555555582046509 14.48888874053955 4 14.48888874053955 4.800000190734863 C 14.48888874053955 5.600000381469727 14.57777786254883 5.8666672706604 14.57777786254883 8 C 14.57777786254883 10.13333320617676 14.57777786254883 10.39999961853027 14.48888874053955 11.20000076293945 C 14.48888874053955 12 14.31110954284668 12.44444465637207 14.22222137451172 12.71111106872559 C 14.04444408416748 13.06666660308838 13.86666584014893 13.33333301544189 13.59999942779541 13.60000038146973 C 13.33333301544189 13.86666679382324 13.06666564941406 14.0444450378418 12.71111011505127 14.22222232818604 C 12.44444370269775 14.31111145019531 11.99999904632568 14.48888874053955 11.19999980926514 14.48888874053955 C 10.39999961853027 14.48888874053955 10.13333320617676 14.57777786254883 8 14.57777786254883 C 5.866666793823242 14.57777786254883 5.600000381469727 14.57777786254883 4.800000190734863 14.48888874053955 C 4 14.48888874053955 3.555555582046509 14.31110954284668 3.288888931274414 14.22222137451172 C 2.933333396911621 14.04444408416748 2.666666746139526 13.86666584014893 2.400000095367432 13.59999942779541 C 2.133333444595337 13.33333301544189 1.955555558204651 13.06666564941406 1.777777791023254 12.71111011505127 C 1.688888907432556 12.44444370269775 1.51111114025116 11.99999904632568 1.51111114025116 11.19999980926514 C 1.51111114025116 10.39999961853027 1.422222256660461 10.13333320617676 1.422222256660461 8 C 1.422222256660461 5.866666793823242 1.422222256660461 5.600000381469727 1.51111114025116 4.800000190734863 C 1.51111114025116 4 1.688888907432556 3.555555582046509 1.777777791023254 3.288888931274414 C 1.955555558204651 2.933333396911621 2.133333444595337 2.666666746139526 2.400000095367432 2.400000095367432 C 2.666666746139526 2.04444432258606 2.933333396911621 1.866666555404663 3.288888931274414 1.777777791023254 C 3.555555582046509 1.688888907432556 4 1.51111114025116 4.800000190734863 1.51111114025116 C 5.600000381469727 1.422222256660461 5.866666793823242 1.422222256660461 8 1.422222256660461 M 8 0 C 5.866666793823242 0 5.511110782623291 0 4.711111545562744 0.08888889104127884 C 3.822222471237183 0.08888889104127884 3.288889169692993 0.2666666805744171 2.755555629730225 0.4444444477558136 C 2.222222328186035 0.6222222447395325 1.777777791023254 0.8888888955116272 1.333333373069763 1.333333373069763 C 0.8888888955116272 1.777777791023254 0.6222222447395325 2.222222328186035 0.4444444477558136 2.755555391311646 C 0.1777777820825577 3.288888931274414 0.08888889104127884 3.822222471237183 0.08888889104127884 4.711111545562744 C 0 5.511110782623291 0 5.866666793823242 0 8 C 0 10.13333320617676 0 10.48888874053955 0.08888889104127884 11.28888893127441 C 0.08888889104127884 12.17777729034424 0.2666666805744171 12.71111106872559 0.4444444477558136 13.24444389343262 C 0.6222222447395325 13.77777767181396 0.8888888955116272 14.22222232818604 1.333333373069763 14.66666698455811 C 1.777777791023254 15.11111164093018 2.222222328186035 15.37777709960938 2.755555391311646 15.55555534362793 C 3.288888692855835 15.7333345413208 3.822222471237183 15.91111087799072 4.711111545562744 15.91111087799072 C 5.511110782623291 16 5.866666793823242 16 8 16 C 10.13333320617676 16 10.48888874053955 16 11.28888893127441 15.91111087799072 C 12.17777729034424 15.91111087799072 12.71111106872559 15.73333263397217 13.24444389343262 15.55555534362793 C 13.77777767181396 15.37777709960938 14.22222232818604 15.11111164093018 14.66666698455811 14.66666698455811 C 15.11111164093018 14.22222232818604 15.37777709960938 13.77777767181396 15.55555534362793 13.24444389343262 C 15.7333345413208 12.71111011505127 15.91111087799072 12.17777729034424 15.91111087799072 11.28888893127441 C 15.91111087799072 10.39999961853027 16 10.13333320617676 16 8 C 16 5.866666793823242 16 5.511110782623291 15.91111087799072 4.711111545562744 C 15.91111087799072 3.822222471237183 15.73333263397217 3.288889169692993 15.55555534362793 2.755555629730225 C 15.37777709960938 2.222222328186035 15.11111164093018 1.777777791023254 14.66666698455811 1.333333492279053 C 14.22222232818604 0.8888890147209167 13.77777767181396 0.6222223043441772 13.24444389343262 0.4444445669651031 C 12.71111011505127 0.2666667997837067 12.17777729034424 0.0888889878988266 11.28888893127441 0.0888889878988266 C 10.48888874053955 0 10.13333320617676 0 8 0 M 8 3.911111116409302 C 5.688889026641846 3.911111116409302 3.911111116409302 5.688889026641846 3.911111116409302 8 C 3.911111116409302 10.31111145019531 5.777777671813965 12.08888912200928 8 12.08888912200928 C 10.31111145019531 12.08888912200928 12.08888912200928 10.22222232818604 12.08888912200928 8 C 12.08888912200928 5.777777671813965 10.31111145019531 3.911111116409302 8 3.911111116409302 M 8 10.66666698455811 C 6.488889217376709 10.66666698455811 5.333333492279053 9.511111259460449 5.333333492279053 8 C 5.333333492279053 6.488889217376709 6.488889217376709 5.333333492279053 8 5.333333492279053 C 9.511111259460449 5.333333492279053 10.66666698455811 6.488889217376709 10.66666698455811 8 C 10.66666698455811 9.511111259460449 9.511111259460449 10.66666698455811 8 10.66666698455811 M 12.26666736602783 2.755555391311646 C 11.73333358764648 2.755555391311646 11.28888893127441 3.200000047683716 11.28888893127441 3.733333110809326 C 11.28888893127441 4.266666412353516 11.73333358764648 4.711111068725586 12.26666736602783 4.711111068725586 C 12.80000019073486 4.711111068725586 13.24444484710693 4.266666412353516 13.24444484710693 3.733333110809326 C 13.24444389343262 3.200000047683716 12.80000019073486 2.755555391311646 12.26666736602783 2.755555391311646" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5hxx43 =
    '<svg viewBox="20.0 178.2 16.0 16.8" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-240.0, 178.16)" d="M 267.894775390625 10.5263500213623 C 269.0526733398438 10.5263500213623 270.0000305175781 9.578978538513184 270.0000305175781 8.421079635620117 C 270.0000305175781 7.263180732727051 269.0526733398438 6.315809726715088 267.894775390625 6.315809726715088 C 266.7368469238281 6.315809726715088 265.7894897460938 7.263181209564209 265.7894897460938 8.421079635620117 C 265.7894897460938 9.578978538513184 266.7368469238281 10.5263500213623 267.894775390625 10.5263500213623 Z M 263.5789489746094 3.789485692977905 C 264.3157958984375 3.157904863357544 265.1578979492188 2.631587505340576 266.1052551269531 2.42106032371521 L 266.9473571777344 0 L 269.0526428222656 0 L 269.8947143554688 2.42106032371521 C 270.8421020507813 2.736850738525391 271.6842346191406 3.157904863357544 272.4210510253906 3.789485692977905 L 274.9473571777344 3.263168334960938 L 276 5.157910823822021 L 274.3157653808594 7.052653789520264 C 274.4210510253906 7.473708152770996 274.4210510253906 8.000025749206543 274.4210510253906 8.421079635620117 C 274.4210510253906 8.842133522033691 274.3157653808594 9.368451118469238 274.3157653808594 9.789505004882813 L 276 11.68424797058105 L 274.9473571777344 13.57899188995361 L 272.4210510253906 13.05267429351807 C 271.6842041015625 13.68425559997559 270.8421020507813 14.21057319641113 269.8947143554688 14.42109966278076 L 269.0526428222656 16.84215927124023 L 266.9473571777344 16.84215927124023 L 266.1052551269531 14.42109870910645 C 265.1578979492188 14.10530757904053 264.3157653808594 13.68425464630127 263.5789489746094 13.05267333984375 L 261.0526428222656 13.5789909362793 L 260 11.68424701690674 L 261.6842346191406 9.789504051208496 C 261.5789489746094 9.368451118469238 261.5789489746094 8.842133522033691 261.5789489746094 8.421078681945801 C 261.5789489746094 8.00002384185791 261.6842346191406 7.47370719909668 261.6842346191406 7.052652835845947 L 260 5.15791130065918 L 261.0526428222656 3.263168573379517 L 263.5789489746094 3.789485692977905 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_s5ghc3 =
    '<svg viewBox="20.0 179.0 16.0 16.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(20.0, 179.0)" d="M 9.285714149475098 11.42857074737549 L 11 9.857143402099609 C 11.14285755157471 9.714284896850586 11.28571510314941 9.714284896850586 11.4285717010498 9.714284896850586 L 11.7142858505249 9.857143402099609 L 15.7142858505249 11.7142858505249 C 16 11.85714340209961 16 12 16 12.28571319580078 C 15.85714244842529 13.42857074737549 15.5714282989502 14.28571224212646 14.85714244842529 14.85714149475098 C 14.14285659790039 15.5714282989502 13.14285755157471 16 11.85714244842529 16 C 10.57142734527588 16 9.285713195800781 15.7142858505249 7.857141494750977 15 C 6.42857027053833 14.2857141494751 5.142855644226074 13.2857141494751 3.857141733169556 12.14285755157471 C 3.142857313156128 11.14285755157471 2.285714387893677 10.14285755157471 1.714285850524902 9.000000953674316 C 1.142857313156128 7.857143402099609 0.571428656578064 6.857143402099609 0.2857143580913544 5.857143402099609 C 0 4.999999523162842 0 4 0 3.142857313156128 C 0.1428571492433548 2.285714387893677 0.4285714626312256 1.571428656578064 1 1.00000011920929 C 1.571428656578064 0.4285714626312256 2.428571462631226 0.1428571492433548 3.714285612106323 5.960465898624534e-08 C 4 -2.55448320274354e-08 4.142857551574707 0.1428571343421936 4.285714149475098 0.2857142686843872 L 6.428572177886963 4.285714149475098 C 6.428572177886963 4.428571224212646 6.571428775787354 4.571428775787354 6.571428775787354 4.571428775787354 C 6.571428775787354 4.714285850524902 6.571428775787354 4.857142448425293 6.428572177886963 4.999999523162842 L 4.571428775787354 6.714285373687744 C 4.428571224212646 7.000000476837158 4.428571224212646 7.285714626312256 4.571428775787354 7.428570747375488 C 5 8.285715103149414 5.714285850524902 9.000000953674316 6.285714626312256 9.714284896850586 C 7.000000476837158 10.42857074737549 7.714285850524902 11.00000190734863 8.571428298950195 11.57142925262451 C 8.857142448425293 11.7142858505249 9.142857551574707 11.7142858505249 9.285714149475098 11.42857074737549 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fpdumm =
    '<svg viewBox="20.0 179.0 16.0 16.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(20.0, 179.0)" d="M 5 8 C 5 8.600000381469727 5.400000095367432 9 6 9 L 10 9 C 10.5 9 11 8.600000381469727 11 8 C 11 7.400001049041748 10.59999942779541 7 6 7 C 5.5 7 5 7.400001049041748 5 8 Z M 0 5 C 0 2.200000047683716 2.200000047683716 0 5 0 L 11 0 C 13.79999923706055 0 16 2.200000047683716 16 5 L 16 15 C 16 15.60000133514404 15.59999942779541 16 15 16 L 5 16 C 2.200000047683716 16 0 13.80000114440918 0 11 L 0 5 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bnazwc =
    '<svg viewBox="20.0 179.0 16.0 16.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-110.0, 179.0)" d="M 138 16 C 133.6000061035156 16 130 12.39999961853027 130 8 C 130 3.600000381469727 133.6000061035156 0 138 0 C 142.3999938964844 0 146 3.599999904632568 146 8 C 146 12.39999961853027 142.3999938964844 16 138 16 Z M 142 4 L 138.1000061035156 5.800000190734863 C 137.2000122070313 6.200000286102295 136.2000122070313 7.200000286102295 135.8000030517578 8.100000381469727 L 134 12 L 137.8999938964844 10.19999980926514 C 138.7999877929688 9.800000190734863 139.7999877929688 8.800000190734863 140.1999969482422 7.899999618530273 L 142 4 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qlpfar =
    '<svg viewBox="20.0 189.0 16.0 6.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(20.0, 179.0)" d="M 7.999899864196777 10 C 3.599954843521118 10 3.405972748282693e-08 11.79998302459717 3.405972748282693e-08 13.99995899200439 L 3.405972748282693e-08 15.99993991851807 L 15.99979972839355 15.99993991851807 L 15.99979972839355 13.99995899200439 C 15.99979972839355 11.79998302459717 12.39984512329102 10 7.999899864196777 10 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bmep7c =
    '<svg viewBox="58.9 361.4 88.2 89.3" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 147.12, 450.63)" d="M 44.11832809448242 89.26658630371094 C 68.48420715332031 89.26658630371094 88.23665618896484 69.28357696533203 88.23665618896484 44.63329315185547 C 88.23665618896484 19.98300933837891 68.48420715332031 0 44.11832809448242 0 C 19.75245094299316 0 0 19.98300933837891 0 44.63329315185547 C 0 69.28357696533203 19.75245094299316 89.26658630371094 44.11832809448242 89.26658630371094 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
