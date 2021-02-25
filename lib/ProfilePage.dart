import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './EventsPage.dart';
import 'package:adobe_xd/page_link.dart';
import './Homepage.dart';
import './Categories.dart';
import './ClubDetails.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
//Bottom Bar
          Positioned(
            left: -0.4,
            top: 743,
            child: SizedBox(
                width: 412.0,
                height: 78.0,
                child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 28.3, 375.4, 49.9),
                size: Size(375.4, 78.1),
                pinLeft: true,
                pinRight: true,
                pinBottom: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Bottom Bar' (shape)
                    SvgPicture.string(
                  _svg_qsmher,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(297.4, 32.0, 40.0, 40.0),
                size: Size(375.4, 78.1),
                pinRight: true,
                pinBottom: true,
                fixedWidth: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Calendar Button' (group)
                    PageLink(
                      links: [
                        PageLinkInfo(
                          transition: LinkTransition.Fade,
                          ease: Curves.easeOut,
                          duration: 0.3,
                          pageBuilder: () => EventsPage(),
                        ),
                      ],
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 40.0, 40.0),
                            size: Size(40.0, 40.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child:
                                // Adobe XD layer: 'Calendar Circle' (shape)
                                Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
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
                            bounds: Rect.fromLTWH(9.0, 9.0, 22.0, 22.0),
                            size: Size(40.0, 40.0),
                            fixedWidth: true,
                            fixedHeight: true,
                            child:
                                // Adobe XD layer: 'Calendar Icon' (group)
                                Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(14.9, 0.0, 2.6, 5.2),
                                  size: Size(22.0, 22.0),
                                  child: SvgPicture.string(
                                    _svg_7sbw54,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 2.6, 22.0, 5.2),
                                  size: Size(22.0, 22.0),
                                  child: SvgPicture.string(
                                    _svg_x7aajd,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(4.6, 0.0, 2.6, 5.2),
                                  size: Size(22.0, 22.0),
                                  child: SvgPicture.string(
                                    _svg_udq5wv,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 9.1, 22.0, 12.9),
                                  size: Size(22.0, 22.0),
                                  child: SvgPicture.string(
                                    _svg_q86o9f,
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
                  PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => Homepage(),
                      ),
                    ],
                    child: Pinned.fromSize(
                      bounds: Rect.fromLTWH(167.9, 32.0, 40.0, 40.0),
                      size: Size(375.4, 78.1),
                      child:
                          // Adobe XD layer: 'Home Button' (group)
                          SvgPicture.string(
                            _svg_cyebqd,
                            allowDrawingOutsideViewBox: true,
                          ),
                    ),
                  ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(41, 0.0, 60.0, 60.0),
                size: Size(375.4, 78.1),
                child:
                    // Adobe XD layer: 'Profile Button' (group)
                    Stack(
                  children: <Widget>[
                    // Adobe XD layer: 'Profile Circle' (shape)
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.elliptical(9999.0, 9999.0)),
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
                    Transform.translate(
                      offset: Offset(15.1, 13.0),
                      child:
                          // Adobe XD layer: 'Profile Icon' (group)
                          SizedBox(
                        width: 30.0,
                        height: 33.0,
                        child: Stack(
                          children: <Widget>[
                            Transform.translate(
                              offset: Offset(7.9, 0.0),
                              child: Container(
                                width: 15.0,
                                height: 15.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: Offset(0.0, 19.0),
                              child: SvgPicture.string(
                                _svg_rlij92,
                                allowDrawingOutsideViewBox: true,
                              ),
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
          ),
//Events Scroll
          Positioned(
            left: 13,
            top: 529,
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.linear,
                  duration: 0.3,
                  pageBuilder: () => Categories(),
                ),
              ],
              child: SizedBox(
                  width: 469.0,
                  height: 191.0,
                  child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(242.0, 2.0, 227.0, 189.0),
                  size: Size(469.0, 191.0),
                  child:
                      // Adobe XD layer: 'Registered' (group)
                      Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x45000000),
                                  offset: Offset(0, 3),
                                  spreadRadius: -7,
                                  blurRadius: 15,
                                ),
                              ],
                            ),
                            child: SvgPicture.string(
                              _svg_n6g982,
                              allowDrawingOutsideViewBox: true,
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(16.0, 5.0),
                            child:
                                // Adobe XD layer: 'Registered Image' (group)
                                SizedBox(
                              width: 194.0,
                              height: 132.0,
                              child: Stack(
                                children: <Widget>[
                                  SvgPicture.string(
                                    _svg_5t89m8,
                                    allowDrawingOutsideViewBox: true,
                                  ),
                                  Transform.translate(
                                    offset: Offset(15.6, 10.5),
                                    child: Container(
                                      width: 1.4,
                                      height: 1.4,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9999.0, 9999.0)),
                                        color: const Color(0xc8fa5959),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(17.5, 10.5),
                                    child: Container(
                                      width: 1.4,
                                      height: 1.4,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9999.0, 9999.0)),
                                        color: const Color(0xc8fed253),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(19.3, 10.5),
                                    child: Container(
                                      width: 1.4,
                                      height: 1.4,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9999.0, 9999.0)),
                                        color: const Color(0xc88ccf4d),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(20.0, 20.0),
                                    child: SizedBox(
                                      width: 155.0,
                                      height: 87.0,
                                      child: Stack(
                                        children: <Widget>[
                                          Container(
                                            width: 155.0,
                                            height: 87.4,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1.0,
                                                  color:
                                                      const Color(0x4bcb6bd8)),
                                            ),
                                          ),
                                          Transform.translate(
                                            offset: Offset(20.2, 0.0),
                                            child: Container(
                                              width: 114.5,
                                              height: 87.4,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0x4bcb6bd8)),
                                              ),
                                            ),
                                          ),
                                          Transform.translate(
                                            offset: Offset(40.5, 0.0),
                                            child: Container(
                                              width: 74.1,
                                              height: 87.4,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0x4bcb6bd8)),
                                              ),
                                            ),
                                          ),
                                          Transform.translate(
                                            offset: Offset(60.7, 0.0),
                                            child: Container(
                                              width: 33.6,
                                              height: 87.4,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0x4bcb6bd8)),
                                              ),
                                            ),
                                          ),
                                          Transform.translate(
                                            offset: Offset(77.5, 0.0),
                                            child: SvgPicture.string(
                                              _svg_f1jset,
                                              allowDrawingOutsideViewBox: true,
                                            ),
                                          ),
                                          Transform.translate(
                                            offset: Offset(0.0, 12.7),
                                            child: Container(
                                              width: 155.0,
                                              height: 62.1,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0x4bcb6bd8)),
                                              ),
                                            ),
                                          ),
                                          Transform.translate(
                                            offset: Offset(0.0, 25.2),
                                            child: Container(
                                              width: 155.0,
                                              height: 37.0,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0x4bcb6bd8)),
                                              ),
                                            ),
                                          ),
                                          Transform.translate(
                                            offset: Offset(0.0, 37.7),
                                            child: Container(
                                              width: 155.0,
                                              height: 12.0,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0x4bcb6bd8)),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(44.3, 24.8),
                                    child: Container(
                                      width: 12.2,
                                      height: 4.5,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.0, -1.0),
                                          end: Alignment(0.0, 1.0),
                                          colors: [
                                            const Color(0x19fe4f70),
                                            const Color(0x19cb6bd8)
                                          ],
                                          stops: [0.0, 1.0],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(25.3, 37.0),
                                    child: Container(
                                      width: 9.1,
                                      height: 4.5,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.0, -1.0),
                                          end: Alignment(0.0, 1.0),
                                          colors: [
                                            const Color(0x19fe4f70),
                                            const Color(0x19cb6bd8)
                                          ],
                                          stops: [0.0, 1.0],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(64.0, 24.8),
                                    child: Container(
                                      width: 12.2,
                                      height: 4.5,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.0, -1.0),
                                          end: Alignment(0.0, 1.0),
                                          colors: [
                                            const Color(0x19fe4f70),
                                            const Color(0x19cb6bd8)
                                          ],
                                          stops: [0.0, 1.0],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(82.5, 24.8),
                                    child: Container(
                                      width: 12.2,
                                      height: 4.5,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.0, -1.0),
                                          end: Alignment(0.0, 1.0),
                                          colors: [
                                            const Color(0x19fe4f70),
                                            const Color(0x19cb6bd8)
                                          ],
                                          stops: [0.0, 1.0],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(99.7, 24.8),
                                    child: Container(
                                      width: 12.2,
                                      height: 4.5,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.0, -1.0),
                                          end: Alignment(0.0, 1.0),
                                          colors: [
                                            const Color(0x19fe4f70),
                                            const Color(0x19cb6bd8)
                                          ],
                                          stops: [0.0, 1.0],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(118.9, 24.8),
                                    child: Container(
                                      width: 12.2,
                                      height: 4.5,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.0, -1.0),
                                          end: Alignment(0.0, 1.0),
                                          colors: [
                                            const Color(0x19fe4f70),
                                            const Color(0x19cb6bd8)
                                          ],
                                          stops: [0.0, 1.0],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(138.4, 24.8),
                                    child: Container(
                                      width: 12.2,
                                      height: 4.5,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.0, -1.0),
                                          end: Alignment(0.0, 1.0),
                                          colors: [
                                            const Color(0x19fe4f70),
                                            const Color(0x19cb6bd8)
                                          ],
                                          stops: [0.0, 1.0],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(159.2, 24.8),
                                    child: Container(
                                      width: 12.2,
                                      height: 4.5,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.0, -1.0),
                                          end: Alignment(0.0, 1.0),
                                          colors: [
                                            const Color(0x19fe4f70),
                                            const Color(0x19cb6bd8)
                                          ],
                                          stops: [0.0, 1.0],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(68.4, 49.0),
                                    child: Container(
                                      width: 7.9,
                                      height: 7.7,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.0, 1.0),
                                          end: Alignment(0.0, -1.0),
                                          colors: [
                                            const Color(0x3f808080),
                                            const Color(0x1e808080),
                                            const Color(0x19808080)
                                          ],
                                          stops: [0.0, 0.54, 1.0],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(68.5, 49.1),
                                    child: Container(
                                      width: 7.6,
                                      height: 7.4,
                                      decoration: BoxDecoration(
                                        color: const Color(0xfa7cfcff),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(84.7, 47.3),
                                    child: Container(
                                      width: 7.9,
                                      height: 7.7,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.0, 1.0),
                                          end: Alignment(0.0, -1.0),
                                          colors: [
                                            const Color(0x3f808080),
                                            const Color(0x1e808080),
                                            const Color(0x19808080)
                                          ],
                                          stops: [0.0, 0.54, 1.0],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(84.8, 47.5),
                                    child: Container(
                                      width: 7.6,
                                      height: 7.4,
                                      decoration: BoxDecoration(
                                        color: const Color(0xfaffffa5),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(116.1, 73.4),
                                    child: Container(
                                      width: 7.9,
                                      height: 7.7,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.0, 1.0),
                                          end: Alignment(0.0, -1.0),
                                          colors: [
                                            const Color(0x3f808080),
                                            const Color(0x1e808080),
                                            const Color(0x19808080)
                                          ],
                                          stops: [0.0, 0.54, 1.0],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(116.2, 73.5),
                                    child: Container(
                                      width: 7.6,
                                      height: 7.4,
                                      decoration: BoxDecoration(
                                        color: const Color(0xfaffffa5),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(46.4, 35.4),
                                    child: Container(
                                      width: 7.9,
                                      height: 7.7,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.0, 1.0),
                                          end: Alignment(0.0, -1.0),
                                          colors: [
                                            const Color(0x3f808080),
                                            const Color(0x1e808080),
                                            const Color(0x19808080)
                                          ],
                                          stops: [0.0, 0.54, 1.0],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(46.5, 35.5),
                                    child: Container(
                                      width: 7.6,
                                      height: 7.4,
                                      decoration: BoxDecoration(
                                        color: const Color(0xfaffffa5),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(62.1, 46.3),
                                    child: Container(
                                      width: 7.9,
                                      height: 7.7,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.0, 1.0),
                                          end: Alignment(0.0, -1.0),
                                          colors: [
                                            const Color(0x3f808080),
                                            const Color(0x1e808080),
                                            const Color(0x19808080)
                                          ],
                                          stops: [0.0, 0.54, 1.0],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(62.2, 46.5),
                                    child: Container(
                                      width: 7.6,
                                      height: 7.4,
                                      decoration: BoxDecoration(
                                        color: const Color(0xfaff69b4),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(125.3, 73.4),
                                    child: Container(
                                      width: 7.9,
                                      height: 7.7,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.0, 1.0),
                                          end: Alignment(0.0, -1.0),
                                          colors: [
                                            const Color(0x3f808080),
                                            const Color(0x1e808080),
                                            const Color(0x19808080)
                                          ],
                                          stops: [0.0, 0.54, 1.0],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(125.4, 73.5),
                                    child: Container(
                                      width: 7.6,
                                      height: 7.4,
                                      decoration: BoxDecoration(
                                        color: const Color(0xfa7cfcff),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(139.2, 35.5),
                                    child: Container(
                                      width: 7.9,
                                      height: 7.7,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.0, 1.0),
                                          end: Alignment(0.0, -1.0),
                                          colors: [
                                            const Color(0x3f808080),
                                            const Color(0x1e808080),
                                            const Color(0x19808080)
                                          ],
                                          stops: [0.0, 0.54, 1.0],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(139.3, 35.6),
                                    child: Container(
                                      width: 7.6,
                                      height: 7.4,
                                      decoration: BoxDecoration(
                                        color: const Color(0xfa7cfcff),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(138.3, 59.8),
                                    child: Container(
                                      width: 7.9,
                                      height: 7.7,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.0, 1.0),
                                          end: Alignment(0.0, -1.0),
                                          colors: [
                                            const Color(0x3f808080),
                                            const Color(0x1e808080),
                                            const Color(0x19808080)
                                          ],
                                          stops: [0.0, 0.54, 1.0],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(138.5, 59.9),
                                    child: Container(
                                      width: 7.6,
                                      height: 7.4,
                                      decoration: BoxDecoration(
                                        color: const Color(0xfa7cfcff),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(144.3, 61.5),
                                    child: Container(
                                      width: 7.9,
                                      height: 7.7,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.0, 1.0),
                                          end: Alignment(0.0, -1.0),
                                          colors: [
                                            const Color(0x3f808080),
                                            const Color(0x1e808080),
                                            const Color(0x19808080)
                                          ],
                                          stops: [0.0, 0.54, 1.0],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(144.5, 61.7),
                                    child: Container(
                                      width: 7.6,
                                      height: 7.4,
                                      decoration: BoxDecoration(
                                        color: const Color(0xfa7cfcff),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(119.0, 70.7),
                                    child: Container(
                                      width: 7.9,
                                      height: 7.7,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.0, 1.0),
                                          end: Alignment(0.0, -1.0),
                                          colors: [
                                            const Color(0x3f808080),
                                            const Color(0x1e808080),
                                            const Color(0x19808080)
                                          ],
                                          stops: [0.0, 0.54, 1.0],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(119.2, 70.8),
                                    child: Container(
                                      width: 7.6,
                                      height: 7.4,
                                      decoration: BoxDecoration(
                                        color: const Color(0xfaff69b4),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(119.9, 47.5),
                                    child: Container(
                                      width: 7.9,
                                      height: 7.7,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.0, 1.0),
                                          end: Alignment(0.0, -1.0),
                                          colors: [
                                            const Color(0x3f808080),
                                            const Color(0x1e808080),
                                            const Color(0x19808080)
                                          ],
                                          stops: [0.0, 0.54, 1.0],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(120.0, 47.7),
                                    child: Container(
                                      width: 7.6,
                                      height: 7.4,
                                      decoration: BoxDecoration(
                                        color: const Color(0xfaff69b4),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(25.3, 49.0),
                                    child: Container(
                                      width: 9.1,
                                      height: 4.5,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.0, -1.0),
                                          end: Alignment(0.0, 1.0),
                                          colors: [
                                            const Color(0x19fe4f70),
                                            const Color(0x19cb6bd8)
                                          ],
                                          stops: [0.0, 1.0],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(25.3, 61.5),
                                    child: Container(
                                      width: 9.1,
                                      height: 4.5,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.0, -1.0),
                                          end: Alignment(0.0, 1.0),
                                          colors: [
                                            const Color(0x19fe4f70),
                                            const Color(0x19cb6bd8)
                                          ],
                                          stops: [0.0, 1.0],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(25.3, 74.1),
                                    child: Container(
                                      width: 9.1,
                                      height: 4.5,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.0, -1.0),
                                          end: Alignment(0.0, 1.0),
                                          colors: [
                                            const Color(0x19fe4f70),
                                            const Color(0x19cb6bd8)
                                          ],
                                          stops: [0.0, 1.0],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(25.3, 86.6),
                                    child: Container(
                                      width: 9.1,
                                      height: 4.5,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.0, -1.0),
                                          end: Alignment(0.0, 1.0),
                                          colors: [
                                            const Color(0x19fe4f70),
                                            const Color(0x19cb6bd8)
                                          ],
                                          stops: [0.0, 1.0],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(25.3, 99.1),
                                    child: Container(
                                      width: 9.1,
                                      height: 4.5,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.0, -1.0),
                                          end: Alignment(0.0, 1.0),
                                          colors: [
                                            const Color(0x19fe4f70),
                                            const Color(0x19cb6bd8)
                                          ],
                                          stops: [0.0, 1.0],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(15.2, 46.2),
                                    child: SvgPicture.string(
                                      _svg_9ceqlz,
                                      allowDrawingOutsideViewBox: true,
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(26.4, 49.3),
                                    child: Container(
                                      width: 8.3,
                                      height: 8.3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9999.0, 9999.0)),
                                        color: const Color(0xfaee8e9e),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(19.8, 46.8),
                                    child: SvgPicture.string(
                                      _svg_m0dg8c,
                                      allowDrawingOutsideViewBox: true,
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(19.8, 46.8),
                                    child: SizedBox(
                                      width: 15.0,
                                      height: 25.0,
                                      child: Stack(
                                        children: <Widget>[
                                          SvgPicture.string(
                                            _svg_dlmjp,
                                            allowDrawingOutsideViewBox: true,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(15.2, 56.4),
                                    child: SvgPicture.string(
                                      _svg_i788q8,
                                      allowDrawingOutsideViewBox: true,
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(43.7, 59.8),
                                    child: Container(
                                      width: 7.9,
                                      height: 7.7,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.0, 1.0),
                                          end: Alignment(0.0, -1.0),
                                          colors: [
                                            const Color(0x3f808080),
                                            const Color(0x1e808080),
                                            const Color(0x19808080)
                                          ],
                                          stops: [0.0, 0.54, 1.0],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(43.8, 59.9),
                                    child: Container(
                                      width: 7.6,
                                      height: 7.4,
                                      decoration: BoxDecoration(
                                        color: const Color(0xfa7cfcff),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(49.8, 58.9),
                                    child: SvgPicture.string(
                                      _svg_lf2h9g,
                                      allowDrawingOutsideViewBox: true,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(0.0, 140.0),
                            child:
                                // Adobe XD layer: 'Category Background' (shape)
                                Container(
                              width: 227.0,
                              height: 49.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(15.0),
                                  bottomLeft: Radius.circular(15.0),
                                ),
                                color: const Color(0xfaffffff),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x28000000),
                                    offset: Offset(0, 3),
                                    blurRadius: 6,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(8.0, 166.5),
                            child: Text(
                              'Check events you have registered for!',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                color: const Color(0xfa9d9d9d),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(8.0, 143.8),
                            child: Text(
                              'Registered',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                color: const Color(0xfa404040),
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 227.0, 191.0),
                  size: Size(469.0, 191.0),
                  child:
                      // Adobe XD layer: 'Followed' (group)
                      PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.linear,
                        duration: 0.3,
                        pageBuilder: () => Categories(),
                      ),
                    ],
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x45000000),
                                offset: Offset(0, 3),
                                spreadRadius: -7,
                                blurRadius: 15,
                              ),
                            ],
                          ),
                          child: SvgPicture.string(
                            _svg_emp5xq,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(27.0, 5.0),
                          child:
                              // Adobe XD layer: 'Followed Image ' (group)
                              SizedBox(
                            width: 174.0,
                            height: 132.0,
                            child: Stack(
                              children: <Widget>[
                                SvgPicture.string(
                                  _svg_t9y3dt,
                                  allowDrawingOutsideViewBox: true,
                                ),
                                Transform.translate(
                                  offset: Offset(5.6, 1.8),
                                  child: Container(
                                    width: 1.8,
                                    height: 1.8,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(9999.0, 9999.0)),
                                      color: const Color(0xfaffffff),
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(9.1, 1.8),
                                  child: Container(
                                    width: 1.8,
                                    height: 1.8,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(9999.0, 9999.0)),
                                      color: const Color(0xfaffffff),
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(12.6, 1.8),
                                  child: Container(
                                    width: 1.8,
                                    height: 1.8,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(9999.0, 9999.0)),
                                      color: const Color(0xfaffffff),
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(15.3, 21.1),
                                  child: SvgPicture.string(
                                    _svg_ll8npt,
                                    allowDrawingOutsideViewBox: true,
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(25.4, 27.5),
                                  child: Container(
                                    width: 9.5,
                                    height: 9.5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(9999.0, 9999.0)),
                                      color: const Color(0xfaffffff),
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(22.9, 40.1),
                                  child: SvgPicture.string(
                                    _svg_xfmgpr,
                                    allowDrawingOutsideViewBox: true,
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(67.6, 27.5),
                                  child: Container(
                                    width: 9.5,
                                    height: 9.5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(9999.0, 9999.0)),
                                      color: const Color(0xfaffffff),
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(65.1, 40.1),
                                  child: SvgPicture.string(
                                    _svg_girgtz,
                                    allowDrawingOutsideViewBox: true,
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(109.9, 27.5),
                                  child: Container(
                                    width: 9.5,
                                    height: 9.5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(9999.0, 9999.0)),
                                      color: const Color(0xfaffffff),
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(107.4, 40.1),
                                  child: SvgPicture.string(
                                    _svg_3c53hp,
                                    allowDrawingOutsideViewBox: true,
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(25.4, 61.8),
                                  child: Container(
                                    width: 9.5,
                                    height: 9.5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(9999.0, 9999.0)),
                                      color: const Color(0xfaffffff),
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(22.9, 74.4),
                                  child: SvgPicture.string(
                                    _svg_g3624k,
                                    allowDrawingOutsideViewBox: true,
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(67.6, 61.8),
                                  child: Container(
                                    width: 9.5,
                                    height: 9.5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(9999.0, 9999.0)),
                                      color: const Color(0xfaffffff),
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(65.1, 74.4),
                                  child: SvgPicture.string(
                                    _svg_ex7dgl,
                                    allowDrawingOutsideViewBox: true,
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(109.9, 61.8),
                                  child: Container(
                                    width: 9.5,
                                    height: 9.5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(9999.0, 9999.0)),
                                      color: const Color(0xfaffffff),
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(107.4, 64.9),
                                  child: SvgPicture.string(
                                    _svg_w2w599,
                                    allowDrawingOutsideViewBox: true,
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(143.7, 52.2),
                                  child: Container(
                                    width: 10.6,
                                    height: 10.6,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(9999.0, 9999.0)),
                                      color: const Color(0xfaa0616a),
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(125.3, 49.8),
                                  child: SvgPicture.string(
                                    _svg_r0qjcu,
                                    allowDrawingOutsideViewBox: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(0.0, 142.0),
                          child:
                              // Adobe XD layer: 'Category Background' (shape)
                              Container(
                            width: 227.0,
                            height: 49.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(15.0),
                                bottomLeft: Radius.circular(15.0),
                              ),
                              color: const Color(0xfaffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x28000000),
                                  offset: Offset(0, 3),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(8.0, 168.5),
                          child: Text(
                            'Check events from clubs you follow!',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              color: const Color(0xfa9d9d9d),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(8.0, 143.8),
                          child: Text(
                            'Followed',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              color: const Color(0xfa404040),
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
                  ),
                ),
            ),
          ),
//My Events Text
          Positioned(
            left: 13,
            top: 494,
            child: Text(
              'My Events',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                color: const Color(0xff404040),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
//Club Circle 3
          Positioned(
            left: 170,
            top: 403,
            child: RaisedButton(
              onPressed: () async{
                dynamic result = await Navigator.pushNamed(context, '/ClubDetails');
              },
              shape: CircleBorder(),
              child: SizedBox(
              width: 70.0,
              height: 70.0,
              child: Stack(
                children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 70.3, 70.3),
                size: Size(70.3, 70.3),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child:
                    // Adobe XD layer: 'Logo Circle' (shape)
                    Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.elliptical(9999.0, 9999.0)),
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
                bounds: Rect.fromLTWH(21.1, 22.6, 28.0, 25.0),
                size: Size(70.3, 70.3),
                fixedWidth: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Montage Logo' (shape)
                    Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage('assets/Montage Logo.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
                ],
              ),
              ),
            ),
          ),
//Club Circle 2
          Positioned(
            left: 84,
            top: 403,
            child: RaisedButton(
              onPressed: () async{
                dynamic result = await Navigator.pushNamed(context, '/ClubDetails');
              },
              shape: CircleBorder(),
              child: SizedBox(
              width: 70.0,
              height: 70.0,
              child: Stack(
                children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 70.3, 70.3),
                size: Size(70.3, 70.3),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child:
                    // Adobe XD layer: 'Logo Circle' (shape)
                    Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.elliptical(9999.0, 9999.0)),
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
                bounds: Rect.fromLTWH(17.0, 22.0, 36.0, 26.0),
                size: Size(70.3, 70.3),
                pinLeft: true,
                pinRight: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Vaayu Logo' (shape)
                    Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage('assets/Vaayu Logo1.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
                ],
              ),
              ),
            ),
          ),
//Club Circle 1
          Positioned(
            top: 403.4,
            left: 0,
            child: RaisedButton(
              onPressed: () async{
                dynamic result = await Navigator.pushNamed(context, '/ClubDetails');
              },
              shape: CircleBorder(),
              child: SizedBox(
                width: 70.0,
                height: 70.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 70.3, 70.3),
                      size: Size(70.3, 70.3),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                      // Adobe XD layer: 'Logo Circle' (shape)
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(9999.0, 9999.0)),
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
                      bounds: Rect.fromLTWH(23.0, 21.0, 25.0, 25.0),
                      size: Size(70.3, 70.3),
                      fixedWidth: true,
                      fixedHeight: true,
                      child:
                      // Adobe XD layer: 'Tech Club Logo' (shape)
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage('assets/Tech Club Logo.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
//My Club Text
          Positioned(
            left: 13,
            top: 368,
            child: Text(
              'My Clubs',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                color: const Color(0xff404040),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
//Profile Name and Course
          Positioned(
            left: 140,
            top: 300,
            child: SizedBox(
              width: 134.0,
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    color: const Color(0xff404040),
                  ),
                  children: [
                    TextSpan(
                      text: 'Jay Sharma\n',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: 'FY BSc Finance',
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xff9d9d9d),
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
//Profile Circle
          Positioned(
            left: 117,
            top: 101,
            child: SizedBox(
                width: 181.0,
                height: 181.0,
                child: Stack(
            children: <Widget>[
              // Adobe XD layer: 'Profile Circle' (shape)
              Container(
                width: 181.0,
                height: 181.0,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  image: DecorationImage(
                    image: const AssetImage('assets/Profile Circle.png'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x7a000000),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
              ),
              Transform.translate(
                offset: Offset(96.0, 136.0),
                child:
                    // Adobe XD layer: 'Add Button' (group)
                    RaisedButton(
                      onPressed: () async{
                        dynamic result = await Navigator.pushNamed(context, '/');
                      },
                      shape: CircleBorder(),
                      child: SizedBox(
                  width: 35.0,
                  height: 35.0,
                  child: Stack(
                      children: <Widget>[
                        // Adobe XD layer: 'Add Circle' (shape)
                        Container(
                          width: 35.0,
                          height: 35.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
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
                        Transform.translate(
                          offset: Offset(7.6, 7.9),
                          child: SvgPicture.string(
                            _svg_u19fij,
                            allowDrawingOutsideViewBox: true,
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
//Notifications
          Positioned(
            left: 322,
             top: 35,
             child: FlatButton(
               onPressed: () async{
                 dynamic result = await Navigator.pushNamed(context, '/Notifications');
               },
               //shape: CircleBorder(),
               child: SvgPicture.string(
                  _svg_t3qb8j,
                  allowDrawingOutsideViewBox: true,
                ),
             ),
          ),
//Sync Logo
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
//Navigation Bar
          Positioned(
            left: 0,
            top: 35,
            child: FlatButton(
              onPressed: () async{
                dynamic result = await Navigator.pushNamed(context, '/NavBar');
              },
              //shape: CircleBorder(),
              child: SizedBox(
                width: 30.0,
                height: 24.0,
                child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 17.8, 15.0, 6.0),
                  size: Size(30.0, 23.8),
                  child:
                      // Adobe XD layer: 'Bottom Line' (shape)
                      Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
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
                  bounds: Rect.fromLTWH(0.0, 9.0, 30.0, 6.0),
                  size: Size(30.0, 23.8),
                  child:
                      // Adobe XD layer: 'Mid Line' (shape)
                      Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
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
                  bounds: Rect.fromLTWH(11.0, 0.0, 19.0, 6.0),
                  size: Size(30.0, 23.8),
                  child:
                      // Adobe XD layer: 'Upper Line' (shape)
                      Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
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
              ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_7sbw54 =
    '<svg viewBox="262.7 704.0 2.6 5.2" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-83.35, 704.0)" d="M 347.2890625 5.15625 C 346.5771179199219 5.15625 346 4.579136848449707 346 3.8671875 L 346 1.2890625 C 346 0.5771132707595825 346.5771179199219 0 347.2890625 0 C 348.0010070800781 0 348.578125 0.5771132707595825 348.578125 1.2890625 L 348.578125 3.8671875 C 348.578125 4.579136848449707 348.0010070800781 5.15625 347.2890625 5.15625 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x7aajd =
    '<svg viewBox="247.8 706.6 22.0 5.2" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(247.79, 646.58)" d="M 19.63671875 60 L 18.734375 60 L 18.734375 61.2890625 C 18.734375 62.71063995361328 17.57782745361328 63.8671875 16.15625 63.8671875 C 14.73467254638672 63.8671875 13.578125 62.71063995361328 13.578125 61.2890625 L 13.578125 60 L 8.421875 60 L 8.421875 61.2890625 C 8.421875 62.71063995361328 7.265327930450439 63.8671875 5.84375 63.8671875 C 4.422172069549561 63.8671875 3.265625 62.71063995361328 3.265625 61.2890625 L 3.265625 60 L 2.36328125 60 C 1.060168027877808 60 0 61.0601692199707 0 62.36328125 L 0 65.2421875 L 22 65.2421875 L 22 62.36328125 C 22 61.0601692199707 20.93983268737793 60 19.63671875 60 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_udq5wv =
    '<svg viewBox="252.3 704.0 2.6 5.2" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(146.34, 704.0)" d="M 107.2890625 5.15625 C 106.5771102905273 5.15625 106 4.579136848449707 106 3.8671875 L 106 1.2890625 C 106 0.5771132707595825 106.5771102905273 0 107.2890625 0 C 108.0010147094727 0 108.578125 0.5771132707595825 108.578125 1.2890625 L 108.578125 3.8671875 C 108.578125 4.579136848449707 108.0010147094727 5.15625 107.2890625 5.15625 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_q86o9f =
    '<svg viewBox="247.8 713.1 22.0 12.9" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(247.79, 501.11)" d="M 0 212 L 0 222.52734375 C 0 223.8304595947266 1.060168027877808 224.890625 2.36328125 224.890625 L 19.63671875 224.890625 C 20.93983268737793 224.890625 22 223.8304595947266 22 222.52734375 L 22 212 L 0 212 Z M 11.67735958099365 220.37890625 C 11.67735958099365 221.8004760742188 10.52081298828125 222.95703125 9.099234580993652 222.95703125 C 7.820140838623047 222.95703125 6.722504138946533 222.0029144287109 6.545902252197266 220.7377014160156 C 6.529445648193359 220.6196594238281 6.521109580993652 220.4989624023438 6.521109580993652 220.37890625 C 6.521109580993652 220.02294921875 6.809688091278076 219.734375 7.165640830993652 219.734375 C 7.521594047546387 219.734375 7.810172080993652 220.02294921875 7.810172080993652 220.37890625 C 7.810172080993652 220.4395751953125 7.814383506774902 220.5003356933594 7.822632789611816 220.5595397949219 C 7.91076135635376 221.1914520263672 8.459601402282715 221.66796875 9.099234580993652 221.66796875 C 9.810023307800293 221.66796875 10.38829708099365 221.0896911621094 10.38829708099365 220.37890625 C 10.38829708099365 219.6681213378906 9.810023307800293 219.08984375 9.099234580993652 219.08984375 C 8.743281364440918 219.08984375 8.454703330993652 218.80126953125 8.454703330993652 218.4453125 C 8.454703330993652 218.08935546875 8.743281364440918 217.80078125 9.099234580993652 217.80078125 C 9.810023307800293 217.80078125 10.38829708099365 217.2225036621094 10.38829708099365 216.51171875 C 10.38829708099365 215.8009338378906 9.810023307800293 215.22265625 9.099234580993652 215.22265625 C 8.484523773193359 215.22265625 7.95257043838501 215.6594390869141 7.83436393737793 216.2611694335938 C 7.76569938659668 216.6104583740234 7.426633358001709 216.8379364013672 7.077727317810059 216.7694091796875 C 6.728434562683105 216.7007751464844 6.500871658325195 216.3620147705078 6.569492816925049 216.0127258300781 C 6.806078433990479 214.8080139160156 7.869985103607178 213.93359375 9.099234580993652 213.93359375 C 10.52081298828125 213.93359375 11.67735958099365 215.0901489257813 11.67735958099365 216.51171875 C 11.67735958099365 217.2812042236328 11.33807849884033 217.9725341796875 10.80178546905518 218.4453125 C 11.33807849884033 218.9180908203125 11.67735958099365 219.6094207763672 11.67735958099365 220.37890625 Z M 15.47889137268066 222.3125 C 15.47889137268066 222.66845703125 15.1903133392334 222.95703125 14.83436012268066 222.95703125 C 14.47840690612793 222.95703125 14.18982887268066 222.66845703125 14.18982887268066 222.3125 L 14.18982887268066 215.22265625 L 13.18122386932373 215.22265625 C 12.825270652771 215.22265625 12.53669261932373 214.93408203125 12.53669261932373 214.578125 C 12.53669261932373 214.22216796875 12.825270652771 213.93359375 13.18122386932373 213.93359375 L 14.83436012268066 213.93359375 C 15.1903133392334 213.93359375 15.47889137268066 214.22216796875 15.47889137268066 214.578125 L 15.47889137268066 222.3125 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qsmher =
    '<svg viewBox="-0.6 762.3 375.4 49.9" ><defs><filter id="shadow"><feDropShadow dx="0" dy="-3" stdDeviation="6"/></filter><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(13631.0, -7716.43)" d="M -13631.212890625 8528.576171875 L -13256.212890625 8528.36328125 L -13256.212890625 8479.013671875 C -13256.212890625 8479.013671875 -13502.9990234375 8478.517578125 -13516.2421875 8478.8486328125 C -13529.4853515625 8479.1796875 -13528.7275390625 8515.1455078125 -13564.29296875 8515.1455078125 C -13599.8583984375 8515.1455078125 -13594.1845703125 8479.1796875 -13614.994140625 8478.8486328125 C -13635.8037109375 8478.517578125 -13631.212890625 8478.8486328125 -13631.212890625 8478.8486328125 L -13631.212890625 8528.576171875 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_cyebqd =
    '<svg viewBox="158.0 753.0 40.0 40.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(158.0, 753.0)" d="M 20 0 C 31.04569625854492 0 40 8.954306602478027 40 20 C 40 31.04569625854492 31.04569625854492 40 20 40 C 8.954306602478027 40 0 31.04569625854492 0 20 C 0 8.954306602478027 8.954306602478027 0 20 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(165.21, 760.0)" d="M 24.45757102966309 13.4313497543335 C 24.19749069213867 14.12438106536865 23.55317306518555 14.57225799560547 22.81535720825195 14.57225799560547 L 22.21504211425781 14.57225799560547 L 22.21504211425781 23.21549987792969 C 22.21504211425781 23.64923477172852 21.86302757263184 24.00125122070313 21.42929458618164 24.00125122070313 L 16.71479797363281 24.00125122070313 L 16.71479797363281 18.50100517272949 C 16.71479797363281 16.33469390869141 14.95236110687256 14.57225799560547 12.78605079650879 14.57225799560547 C 10.6197395324707 14.57225799560547 8.857303619384766 16.33469390869141 8.857303619384766 18.50100517272949 L 8.857303619384766 24.00125122070313 L 4.142808437347412 24.00125122070313 C 3.709074974060059 24.00125122070313 3.357059240341187 23.64923477172852 3.357059240341187 23.21549987792969 L 3.357059240341187 14.57225799560547 L 2.755960702896118 14.57225799560547 C 2.018142461776733 14.57225799560547 1.373827934265137 14.12516689300537 1.113744854927063 13.43213558197021 C 0.8536618947982788 12.73910427093506 1.044598937034607 11.97692775726318 1.60090959072113 11.49133491516113 L 10.77767562866211 2.800946712493896 C 11.90443992614746 1.734684705734253 13.66844844818115 1.734684705734253 14.79442501068115 2.800946712493896 L 23.99319458007813 11.51176452636719 C 24.52593231201172 11.97614192962646 24.71765518188477 12.73831939697266 24.45757102966309 13.4313497543335 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_rlij92 =
    '<svg viewBox="0.0 18.7 30.2 14.3" ><path transform="translate(0.0, 8.74)" d="M 15.08589935302734 10.00000190734863 C 6.789139270782471 10.00000190734863 0.0008828481659293175 13.43024730682373 0.0008828481659293175 17.62277221679688 C 0.0008828481659293175 17.62277221679688 -0.005009809974581003 17.6309928894043 0.0008828481659293175 21.43415832519531 C 0.006775506306439638 25.23732376098633 30.17053985595703 25.23732376098633 30.1709156036377 21.43415832519531 C 30.17129325866699 17.6309928894043 30.1709156036377 17.62277221679688 30.1709156036377 17.62277221679688 C 30.1709156036377 13.43024730682373 23.38265609741211 10.00000190734863 15.08589935302734 10.00000190734863 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5t89m8 =
    '<svg viewBox="0.0 0.0 194.2 131.5" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-33.81, -66.43)" d="M 138.8639221191406 85.68959808349609 C 126.9314041137695 85.67073822021484 115.4344177246094 81.96357727050781 104.434684753418 77.83803558349609 C 93.43495178222656 73.71249389648438 82.52267456054688 69.11198425292969 70.80619812011719 67.13838195800781 C 63.26156616210938 65.8695068359375 54.70526885986328 65.95523834228516 48.82902908325195 70.46144866943359 C 43.17570114135742 74.79789733886719 41.55703353881836 81.99444580078125 40.7819938659668 88.65087127685547 C 40.20071411132813 93.65433502197266 39.94008255004883 98.90985870361328 42.18289184570313 103.4949340820313 C 43.74155044555664 106.6791076660156 46.39931488037109 109.306022644043 48.28033065795898 112.3427352905273 C 54.82530212402344 122.9052124023438 50.9415283203125 136.3483734130859 44.63833236694336 147.1200561523438 C 41.68049240112305 152.1629638671875 38.21510314941406 157.0035247802734 35.98429489135742 162.3464813232422 C 33.75348281860352 167.689453125 32.84984588623047 173.7525939941406 35.15438461303711 179.0389709472656 C 37.44178009033203 184.2807769775391 42.58584594726563 188.1028289794922 48.08828735351563 190.7108612060547 C 59.28348922729492 196.0264129638672 72.29283142089844 197.1958312988281 84.9541015625 197.6708068847656 C 112.98583984375 198.7236022949219 141.0604400634766 196.8477325439453 169.0613098144531 194.9615783691406 C 179.4231719970703 194.2654266357422 189.8313446044922 193.5624084472656 199.9754333496094 191.4824829101563 C 205.6081848144531 190.3285064697266 211.4055480957031 188.6086578369141 215.3904724121094 184.8089141845703 C 220.4488067626953 179.9872131347656 221.4639129638672 172.0910797119141 217.7584686279297 166.4034576416016 C 211.5410003662109 156.8543395996094 195.2240295410156 155.0093231201172 190.7486877441406 144.6903381347656 C 188.2846832275391 139.0095672607422 190.3766174316406 132.5160522460938 193.4682006835938 127.0530395507813 C 200.1023254394531 115.3434371948242 211.5478668212891 104.8701171875 211.7039184570313 91.74931335449219 C 211.8102264404297 82.73690795898438 205.8173980712891 73.92855072021484 196.8941497802734 69.98477172851563 C 187.5388031005859 65.84549713134766 174.8089447021484 66.86402893066406 168.2879943847656 74.49095916748047 C 161.5732574462891 82.34424591064453 149.4006805419922 85.70674133300781 138.8639221191406 85.68959808349609 Z" fill="url(#gradient)" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-807.97, -581.43)" d="M 972.3758544921875 688.7742309570313 C 972.3758544921875 688.7742309570313 970.2686157226563 687.3836059570313 968.1800537109375 688.3729858398438 C 968.1800537109375 688.3729858398438 968.8230590820313 689.6126708984375 971.4671020507813 689.494384765625 L 972.3758544921875 688.7742309570313 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-822.75, -585.45)" d="M 987.4185180664063 692.8699951171875 C 987.4185180664063 692.8699951171875 988.059814453125 695.311767578125 986.4531860351563 696.9732666015625 C 986.4531860351563 696.9732666015625 985.486083984375 695.9650268554688 986.4531860351563 693.4993286132813 L 987.4185180664063 692.8699951171875 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-818.79, -566.74)" d="M 986.083984375 671.8119506835938 C 986.083984375 671.8119506835938 985.9279174804688 669.7337036132813 981.239990234375 670.4230346679688 C 981.239990234375 670.4230346679688 981.2177124023438 671.7639770507813 982.86376953125 672.3983764648438 C 984.5098876953125 673.0327758789063 985.2626342773438 672.497802734375 986.083984375 671.8119506835938 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-836.95, -574.05)" d="M 1004.535827636719 679.1099853515625 C 1004.535827636719 679.1099853515625 1006.519775390625 679.7478637695313 1004.751892089844 684.1460571289063 C 1004.751892089844 684.1460571289063 1003.443603515625 683.8528442382813 1003.208679199219 682.1038208007813 C 1002.973754882813 680.3548583984375 1003.6767578125 679.7478637695313 1004.535827636719 679.1099853515625 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-834.52, -544.88)" d="M 1004.759887695313 646.9932861328125 C 1004.759887695313 646.9932861328125 1005.027404785156 643.5758666992188 1000.23486328125 643.9274291992188 C 1000.23486328125 643.9274291992188 999.8919067382813 647.0138549804688 1003.912841796875 647.8145751953125 L 1004.759887695313 646.9932861328125 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-845.4, -527.0)" d="M 1018.8076171875 625.2598876953125 C 1018.8076171875 625.2598876953125 1018.149169921875 621.3881225585938 1013.359985351563 622.5421752929688 C 1013.359985351563 622.5421752929688 1013.341125488281 625.8909301757813 1018.02392578125 626.1841430664063 L 1018.8076171875 625.2598876953125 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-854.65, -508.11)" d="M 1030.375366210938 602.3818359375 C 1030.375366210938 602.3818359375 1029.2763671875 598.6095581054688 1024.530029296875 599.7395629882813 C 1024.530029296875 599.7395629882813 1025.658325195313 603.1311645507813 1030.059936523438 603.0797119140625 L 1030.375366210938 602.3818359375 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-866.18, -488.77)" d="M 1044.098388671875 579.1469116210938 C 1044.098388671875 579.1469116210938 1043.023315429688 575.2322998046875 1038.43994140625 576.4034423828125 C 1038.43994140625 576.4034423828125 1039.969360351563 580.1226196289063 1043.796630859375 579.810546875 L 1044.098388671875 579.1469116210938 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-875.76, -466.46)" d="M 1055.094360351563 553.1358642578125 C 1055.094360351563 553.1358642578125 1054.267944335938 548.3553466796875 1050 549.4081420898438 C 1050 549.4081420898438 1051.241455078125 553.763427734375 1054.784057617188 553.83203125 L 1055.094360351563 553.1358642578125 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-881.1, -445.81)" d="M 1061.765502929688 528.012451171875 C 1061.765502929688 528.012451171875 1060.774291992188 523.1856079101563 1056.449951171875 524.5831298828125 C 1056.449951171875 524.5831298828125 1058.145751953125 529.1424560546875 1061.460205078125 528.6709594726563 L 1061.765502929688 528.012451171875 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-887.0, -420.8)" d="M 1068.48779296875 498.8422546386719 C 1068.48779296875 498.8422546386719 1066.911987304688 494.0171203613281 1063.569946289063 494.1474609375 C 1063.569946289063 494.1474609375 1065.181762695313 499.2452087402344 1068.19970703125 499.805908203125 L 1068.48779296875 498.8422546386719 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-891.86, -397.86)" d="M 1073.874389648438 471.843017578125 C 1073.874389648438 471.843017578125 1072.15966796875 466.0336303710938 1069.440063476563 466.481201171875 C 1069.440063476563 466.481201171875 1070.626586914063 470.9222106933594 1073.778198242188 472.7466430664063 L 1073.874389648438 471.843017578125 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-893.98, -376.13)" d="M 1076.286743164063 445.2643127441406 C 1076.286743164063 445.2643127441406 1074.680053710938 440.4220275878906 1072 440.22998046875 C 1072 440.22998046875 1073.093994140625 444.9933471679688 1076.231811523438 446.5211486816406 L 1076.286743164063 445.2643127441406 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-898.07, -354.7)" d="M 1080.702392578125 419.3154907226563 C 1080.702392578125 419.3154907226563 1078.697998046875 414.4680480957031 1076.930053710938 414.3600158691406 C 1076.930053710938 414.3600158691406 1077.799560546875 419.1303100585938 1080.530883789063 420.111083984375 L 1080.702392578125 419.3154907226563 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-902.85, -330.79)" d="M 1085.7041015625 391.1996459960938 C 1085.7041015625 391.1996459960938 1084.466186523438 385.9286804199219 1082.699951171875 385.5 C 1082.699951171875 385.5 1082.943481445313 389.8038635253906 1085.527465820313 391.5923156738281 L 1085.7041015625 391.1996459960938 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-907.39, -308.38)" d="M 1090.911499023438 363.293701171875 C 1090.911499023438 363.293701171875 1089.615234375 359.0995788574219 1088.179931640625 358.4599914550781 C 1088.179931640625 358.4599914550781 1088.464599609375 363.4051513671875 1090.58056640625 364.32080078125 L 1090.911499023438 363.293701171875 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-918.06, -278.54)" d="M 1102.13671875 329.837158203125 L 1102.399169921875 322.4400024414063 C 1102.399169921875 322.4400024414063 1099.720825195313 328.0213317871094 1101.939697265625 331.1420593261719 L 1102.13671875 329.837158203125 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-928.24, -251.21)" d="M 1114.385498046875 295.1530456542969 C 1114.385498046875 295.1530456542969 1116.316284179688 289.7500915527344 1116.7861328125 289.4499816894531 C 1116.7861328125 289.4499816894531 1112.99658203125 292.9530944824219 1113.367065429688 297.4627380371094 L 1114.385498046875 295.1530456542969 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-853.3, -559.65)" d="M 1023.666809082031 661.7371826171875 C 1023.666809082031 661.7371826171875 1027.065307617188 661.2913818359375 1026.962280273438 666.0958862304688 C 1026.962280273438 666.0958862304688 1023.891418457031 666.5949096679688 1022.890075683594 662.6236572265625 L 1023.666809082031 661.7371826171875 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-868.71, -540.55)" d="M 1042.273681640625 638.6800537109375 C 1042.273681640625 638.6800537109375 1046.202026367188 638.6663208007813 1045.87451171875 643.583984375 C 1045.87451171875 643.583984375 1042.578857421875 644.172119140625 1041.490112304688 639.607666015625 L 1042.273681640625 638.6800537109375 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-881.56, -521.88)" d="M 1057.323608398438 616.4599609375 C 1057.323608398438 616.4599609375 1060.888549804688 614.7880859375 1063.170776367188 619.102294921875 C 1063.170776367188 619.102294921875 1059.876831054688 620.4962768554688 1057.009887695313 617.1561279296875 L 1057.323608398438 616.4599609375 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-892.45, -501.46)" d="M 1070.451904296875 591.8677978515625 C 1070.451904296875 591.8677978515625 1074.100708007813 590.0879516601563 1076.244018554688 594.3043823242188 C 1076.244018554688 594.3043823242188 1072.442626953125 595.6143798828125 1070.150024414063 592.5347900390625 L 1070.451904296875 591.8677978515625 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-899.36, -478.55)" d="M 1078.65283203125 565.3296508789063 C 1078.65283203125 565.3296508789063 1082.166259765625 561.9740600585938 1084.9697265625 565.369140625 C 1084.9697265625 565.369140625 1081.380859375 568.1297607421875 1078.489868164063 566.0773315429688 L 1078.65283203125 565.3296508789063 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-905.22, -455.91)" d="M 1085.685302734375 537.9960327148438 C 1085.685302734375 537.9960327148438 1089.220947265625 534.5667114257813 1092.002075195313 538.15380859375 C 1092.002075195313 538.15380859375 1088.034301757813 540.9710083007813 1085.56005859375 538.7162475585938 L 1085.685302734375 537.9960327148438 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-909.02, -426.08)" d="M 1090.150024414063 503.9830017089844 C 1090.150024414063 503.9830017089844 1092.872924804688 499.6962890625 1096.07763671875 500.65478515625 C 1096.07763671875 500.65478515625 1093.253540039063 505.1935729980469 1090.180908203125 504.9912414550781 L 1090.150024414063 503.9830017089844 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-912.56, -401.68)" d="M 1094.490234375 475.6358337402344 C 1094.490234375 475.6358337402344 1097.233764648438 470.2362365722656 1099.828125 471.1776123046875 C 1099.828125 471.1776123046875 1097.850952148438 475.3271789550781 1094.419921875 476.5462951660156 L 1094.490234375 475.6358337402344 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-912.49, -380.9)" d="M 1094.612670898438 449.7597045898438 C 1094.612670898438 449.7597045898438 1097.433349609375 445.5107116699219 1100.075805664063 446.028564453125 C 1100.075805664063 446.028564453125 1097.771240234375 450.3375854492188 1094.340087890625 450.9891357421875 L 1094.612670898438 449.7597045898438 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-914.85, -354.94)" d="M 1097.18994140625 419.459716796875 C 1097.18994140625 419.459716796875 1099.374389648438 414.69287109375 1101.152587890625 414.6500244140625 C 1101.152587890625 414.6500244140625 1100.10302734375 419.385986328125 1097.335571289063 420.2621765136719 L 1097.18994140625 419.459716796875 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-916.94, -334.45)" d="M 1099.7099609375 394.7571716308594 C 1099.7099609375 394.7571716308594 1102.1396484375 389.9285888671875 1103.9658203125 389.9200134277344 C 1103.9658203125 389.9200134277344 1102.72265625 394.0472717285156 1099.792236328125 395.1824035644531 L 1099.7099609375 394.7571716308594 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-918.72, -311.68)" d="M 1101.849975585938 366.8879089355469 C 1101.849975585938 366.8879089355469 1103.66748046875 362.8927001953125 1105.17138671875 362.4400024414063 C 1105.17138671875 362.4400024414063 1104.262451171875 367.3097229003906 1102.048950195313 367.9476013183594 L 1101.849975585938 366.8879089355469 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-921.45, -283.71)" d="M 1105.743286132813 334.8665771484375 L 1109.8037109375 328.6799926757813 C 1109.8037109375 328.6799926757813 1108.7646484375 334.7825622558594 1105.150024414063 336.0531616210938 L 1105.743286132813 334.8665771484375 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-928.28, -262.87)" d="M 1115.358520507813 307.3160095214844 C 1115.358520507813 307.3160095214844 1120.0791015625 304.0581359863281 1120.248779296875 303.5299987792969 C 1120.248779296875 303.5299987792969 1117.848266601563 308.0945129394531 1113.390014648438 308.9004211425781 L 1115.358520507813 307.3160095214844 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-938.52, -248.94)" d="M 1125.88037109375 291.9140625 C 1125.88037109375 291.9140625 1131.300537109375 286.7030944824219 1132.684326171875 286.7099609375 C 1132.684326171875 286.7099609375 1128.214111328125 286.9140319824219 1125.750122070313 291.6362915039063 L 1125.88037109375 291.9140625 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-918.96, -272.02)" d="M 1102.150024414063 327.9994812011719 L 1102.347290039063 328.0251770019531 C 1103.36572265625 320.0519104003906 1104.850708007813 315.3364868164063 1106.529296875 314.7569274902344 L 1106.464233398438 314.5700073242188 C 1104.68603515625 315.1873168945313 1103.194213867188 319.8306884765625 1102.150024414063 327.9994812011719 Z" fill="#444053" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-911.73, -334.05)" d="M 1093.420043945313 409.0937805175781 L 1093.718383789063 409.1195068359375 C 1093.780151367188 408.3753051757813 1093.828247070313 407.6122741699219 1093.860717773438 406.8544006347656 C 1094.145385742188 400.2545471191406 1094.587768554688 394.196533203125 1095.167358398438 389.6543273925781 L 1094.995849609375 389.4400024414063 C 1094.414672851563 393.9907836914063 1093.848754882813 400.2339782714844 1093.564086914063 406.8406677246094 C 1093.52978515625 407.5951538085938 1093.481811523438 408.35302734375 1093.420043945313 409.0937805175781 Z" fill="#444053" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-800.58, -426.22)" d="M 959.41943359375 537.3638305664063 C 959.47265625 537.3397827148438 964.7247314453125 534.995849609375 970.1757202148438 529.4007568359375 C 973.3689575195313 526.12451171875 976.0225219726563 522.3626098632813 978.0376586914063 518.2553100585938 C 980.5564575195313 513.1232299804688 982.0928344726563 506.8165893554688 982.6089477539063 500.6900024414063 L 982.298583984375 500.8357849121094 C 981.1411743164063 514.5858764648438 974.8807983398438 523.9840698242188 969.9013671875 529.1007080078125 C 964.5035400390625 534.64599609375 959.3114624023438 536.9677124023438 959.260009765625 536.98828125 L 959.41943359375 537.3638305664063 Z" fill="#444053" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-99.49, -106.92)" d="M 279.3088073730469 115.3099975585938 L 114.5477752685547 115.3099975585938 C 113.7371444702148 115.3099975585938 113.0800018310547 115.9671401977539 113.0800018310547 116.7777633666992 L 113.0800018310547 121.05419921875 L 280.7765808105469 121.05419921875 L 280.7765808105469 116.7777633666992 C 280.7765808105469 115.9671401977539 280.1194152832031 115.3099975585938 279.3088073730469 115.3099975585938 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-99.49, -134.68)" d="M 113.0800018310547 148.8099975585938 L 113.0800018310547 245.0451965332031 C 113.0800018310547 246.6797180175781 114.4050369262695 248.0047454833984 116.03955078125 248.0047454833984 L 277.8170471191406 248.0047454833984 C 279.4515380859375 248.0047454833984 280.7765808105469 246.6797180175781 280.7765808105469 245.0451965332031 L 280.7765808105469 148.8099975585938 L 113.0800018310547 148.8099975585938 Z" fill="#ffffff" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_f1jset =
    '<svg viewBox="77.5 0.0 1.0 87.4" ><path transform="translate(77.5, 0.0)" d="M 0 0 L 0 87.44914245605469" fill="none" fill-opacity="0.29" stroke="#cb6bd8" stroke-width="1" stroke-opacity="0.29" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_9ceqlz =
    '<svg viewBox="15.2 46.2 38.2 79.0" ><defs><linearGradient id="gradient" x1="-0.000404" y1="0.49997" x2="0.999977" y2="0.49997"><stop offset="0.0" stop-color="#40808080" stop-opacity="0.25" /><stop offset="0.54" stop-color="#1f808080" stop-opacity="0.12" /><stop offset="1.0" stop-color="#1a808080" stop-opacity="0.1" /></linearGradient></defs><path transform="translate(-107.19, -289.55)" d="M 160.0434265136719 349.7489624023438 C 160.2971954345703 349.5877990722656 160.1960296630859 349.1557006835938 159.9353942871094 349.0065002441406 C 159.6747589111328 348.8573303222656 159.3506774902344 348.9070739746094 159.0574645996094 348.9653625488281 C 159.0830688476563 348.81201171875 159.0068969726563 348.65966796875 158.8688507080078 348.588134765625 L 158.8688507080078 348.5229797363281 C 159.0403137207031 348.3515014648438 158.9751586914063 348.0085754394531 158.7659606933594 347.857666015625 C 158.5567779541016 347.706787109375 158.2309875488281 347.6999206542969 157.9497680664063 347.7136535644531 C 157.9902954101563 347.3678894042969 157.8628082275391 347.0236511230469 157.6068420410156 346.7877197265625 C 157.5576934814453 346.7347106933594 157.4903106689453 346.7022094726563 157.418212890625 346.6968383789063 C 157.2467498779297 346.6968383789063 157.19873046875 346.9162902832031 157.1867370605469 347.0791931152344 C 157.1541137695313 347.5070190429688 157.0835266113281 347.9310913085938 156.975830078125 348.3463745117188 L 151.6465911865234 357.2627563476563 C 151.0532989501953 358.1200866699219 152.8965911865234 355.5480346679688 152.3032989501953 356.4139709472656 C 152.0027923583984 356.8853149414063 151.6508483886719 357.3218078613281 151.25390625 357.7154235839844 C 150.8975219726563 358.0335388183594 150.498779296875 358.3006896972656 150.0690612792969 358.5093383789063 C 149.7820892333984 358.5177001953125 149.4994964599609 358.4374694824219 149.2597198486328 358.2795715332031 C 148.9586639404297 358.0686645507813 148.6954650878906 357.808349609375 148.4812622070313 357.5096435546875 C 148.0167236328125 356.9191589355469 147.5966186523438 356.2950134277344 147.2243957519531 355.6423645019531 C 147.0953521728516 355.435791015625 146.9982299804688 355.2109069824219 146.9363250732422 354.975341796875 C 146.8574523925781 354.60498046875 146.9363250732422 354.2037658691406 146.7905731201172 353.8556823730469 C 146.7285308837891 353.7258605957031 146.6514282226563 353.6038818359375 146.560791015625 353.4921569824219 L 146.1921539306641 353.0034484863281 L 146.1921539306641 352.9811706542969 C 146.1510009765625 352.257568359375 145.5628662109375 351.6985778808594 145.01416015625 351.2218933105469 C 144.5477752685547 350.8138122558594 144.0419464111328 350.3885498046875 143.4263610839844 350.3096923828125 C 143.0971374511719 350.2668151855469 142.7593536376953 350.3302307128906 142.4301300048828 350.2890930175781 C 142.1609191894531 350.2547912597656 141.9054260253906 350.1536560058594 141.637939453125 350.1090698242188 C 141.3804931640625 350.0739135742188 141.1198272705078 350.0687255859375 140.8611907958984 350.0936279296875 L 140.7514495849609 349.9924621582031 C 141.3205413818359 349.7521057128906 141.8039703369141 349.3457641601563 142.1386260986328 348.8264770507813 C 142.3924102783203 348.4166564941406 142.5312805175781 347.9433898925781 142.7662048339844 347.5216064453125 C 143.0525512695313 347.0071716308594 143.4777984619141 346.5819396972656 143.7950134277344 346.088134765625 C 144.5614776611328 344.9169921875 144.7020874023438 343.4097900390625 144.3917388916016 342.0448913574219 C 144.0813751220703 340.6799926757813 143.3543395996094 339.4403076171875 142.5055694580078 338.3343200683594 C 140.8594665527344 336.2046508789063 138.0988311767578 335.4193420410156 135.4993438720703 335.8308715820313 C 135.327880859375 335.8583068847656 135.1564178466797 335.890869140625 134.9849548339844 335.9285888671875 C 134.547607421875 336.0206298828125 134.1207580566406 336.1567687988281 133.7109222412109 336.3349914550781 C 133.1564025878906 336.56201171875 132.6752319335938 336.9375610351563 132.3203277587891 337.4203796386719 C 132.2246551513672 337.5614929199219 132.1436462402344 337.7120361328125 132.0785522460938 337.8695983886719 C 132.0306549072266 337.9900512695313 131.99169921875 338.1138610839844 131.9619598388672 338.239990234375 C 131.8822174072266 338.6209106445313 131.8608245849609 339.0117797851563 131.8985137939453 339.3991088867188 C 131.9087829589844 339.5311584472656 131.9225158691406 339.6632080078125 131.9379425048828 339.7951965332031 L 131.9636688232422 339.9941101074219 C 131.9808197021484 340.1261596679688 131.9996795654297 340.2582092285156 132.0185394287109 340.3901977539063 C 132.0459747314453 340.589111328125 132.0716857910156 340.7880249023438 132.0905456542969 340.9834899902344 C 132.1056671142578 341.1218872070313 132.1130981445313 341.2609558105469 132.1128387451172 341.400146484375 C 132.1128387451172 341.4361572265625 132.1128387451172 341.4704895019531 132.1128387451172 341.5047607421875 C 132.1067962646484 341.6082458496094 132.0912780761719 341.7109985351563 132.0665435791016 341.8117065429688 C 132.0530242919922 341.8670654296875 132.0358581542969 341.9214782714844 132.0151062011719 341.9745788574219 C 131.9533386230469 342.1321411132813 131.8721313476563 342.2813110351563 131.7733459472656 342.418701171875 C 131.6397705078125 342.6051330566406 131.4948883056641 342.7832336425781 131.3395080566406 342.9519653320313 L 131.1903381347656 343.1234130859375 C 131.140625 343.1800231933594 131.0926055908203 343.23828125 131.0428771972656 343.2948913574219 C 130.8468475341797 343.5234985351563 130.6674652099609 343.765869140625 130.5061798095703 344.0202026367188 C 130.427490234375 344.148193359375 130.3570404052734 344.2810668945313 130.2952728271484 344.4179992675781 C 130.2483520507813 344.5217895507813 130.2077026367188 344.6282653808594 130.1735382080078 344.7369384765625 C 130.1298828125 344.8826293945313 130.0988922119141 345.0317687988281 130.0809478759766 345.1827697753906 C 130.0809478759766 345.2204895019531 130.0809478759766 345.2582092285156 130.0706481933594 345.2959289550781 C 130.0706481933594 345.3696594238281 130.0706481933594 345.4450988769531 130.0706481933594 345.5205383300781 C 130.0744171142578 345.5952758789063 130.0824279785156 345.6697082519531 130.0946502685547 345.7434692382813 C 130.1067352294922 345.8165893554688 130.1239166259766 345.8887939453125 130.1461029052734 345.9595336914063 C 130.1675872802734 346.0311889648438 130.1945190429688 346.1011352539063 130.2266845703125 346.1687316894531 C 130.2266845703125 346.1875610351563 130.2438354492188 346.2064514160156 130.2541198730469 346.2252807617188 L 130.2815704345703 346.2818908691406 C 130.3004302978516 346.3196105957031 130.3192901611328 346.3556213378906 130.33642578125 346.3933410644531 C 130.3623046875 346.4479370117188 130.3813018798828 346.5055236816406 130.3930206298828 346.5648193359375 C 130.3930206298828 346.5836486816406 130.3930206298828 346.6042175292969 130.3930206298828 346.6248168945313 C 130.3930206298828 346.6454162597656 130.3930206298828 346.6694030761719 130.3930206298828 346.6899719238281 C 130.36572265625 346.8622131347656 130.2752532958984 347.0180969238281 130.1392364501953 347.1272277832031 C 130.1049499511719 347.1597900390625 130.0706634521484 347.18896484375 130.0346374511719 347.2198181152344 L 129.9797668457031 347.264404296875 L 129.8683166503906 347.3518676757813 L 129.7620086669922 347.4375610351563 C 129.6686096191406 347.515869140625 129.5819854736328 347.6018676757813 129.5030975341797 347.6947631835938 C 128.5375823974609 347.6431274414063 127.56982421875 347.7379455566406 126.6327056884766 347.9760131835938 C 126.2997665405273 348.0844116210938 125.9536819458008 348.1472778320313 125.603889465332 348.1629028320313 C 125.4334487915039 348.1786804199219 125.2663269042969 348.1086120605469 125.1580657958984 347.9760131835938 C 125.0986480712891 347.8473815917969 125.0824127197266 347.7030334472656 125.1117630004883 347.564453125 C 125.1580123901367 346.9903869628906 125.0638580322266 346.4136657714844 124.8374252319336 345.8840637207031 C 124.7826919555664 345.7291259765625 124.6880569458008 345.5912780761719 124.5630645751953 345.4845886230469 C 124.4324035644531 345.3782958984375 124.2480621337891 345.3685913085938 124.1069641113281 345.4605407714844 C 124.3969802856445 346.398681640625 124.3552017211914 347.4079895019531 123.9886474609375 348.3189392089844 C 123.8003921508789 348.7483520507813 123.5796966552734 349.1627807617188 123.3284912109375 349.5586853027344 C 122.9375457763672 350.2256469726563 122.7180633544922 350.9887084960938 122.3699798583984 351.6797485351563 C 122.7592163085938 352.9983215332031 122.6717681884766 354.4060974121094 122.884391784668 355.7675476074219 C 123.0747146606445 357.0346984863281 123.5171051025391 358.2487182617188 123.9612121582031 359.45068359375 C 124.3041534423828 360.3577575683594 124.6608047485352 361.3042907714844 125.3878326416016 361.9421691894531 C 125.6221466064453 362.1785278320313 125.9382171630859 362.3160095214844 126.2708969116211 362.3262329101563 C 126.5171508789063 362.2957763671875 126.7524261474609 362.2063598632813 126.9567718505859 362.0655822753906 C 127.1688385009766 361.9500732421875 127.3643569946289 361.8064270019531 127.5380401611328 361.638671875 C 127.6023101806641 361.5682373046875 127.6597290039063 361.4918823242188 127.7095184326172 361.4106140136719 C 127.7308197021484 361.5254516601563 127.7745208740234 361.6349792480469 127.8381195068359 361.7329406738281 C 128.2565155029297 360.8310241699219 128.7160339355469 359.9496765136719 129.2098693847656 359.0871887207031 C 129.3569641113281 359.0088500976563 129.4949798583984 358.91455078125 129.6213989257813 358.8059997558594 C 129.6213989257813 358.8368530273438 129.6368255615234 358.8677062988281 129.6454010009766 358.8985900878906 C 129.6231079101563 358.9808959960938 129.6025390625 359.0700378417969 129.5802459716797 359.147216796875 C 129.5579528808594 359.224365234375 129.5322265625 359.3066711425781 129.5082397460938 359.3838195800781 C 129.4842224121094 359.4609985351563 129.4722137451172 359.4987182617188 129.4533538818359 359.5552978515625 C 129.4344940185547 359.6118774414063 129.4070587158203 359.6924743652344 129.3813323974609 359.7610778808594 C 129.3556060791016 359.8296508789063 129.3264770507813 359.9102478027344 129.2973175048828 359.9839782714844 C 129.2681732177734 360.0577087402344 129.2578735351563 360.0902709960938 129.2355804443359 360.1417236328125 C 129.1824340820313 360.2720642089844 129.1275634765625 360.3989562988281 129.0641174316406 360.5258178710938 C 129.1118927001953 360.549072265625 129.1611480712891 360.5691223144531 129.2115936279297 360.5858459472656 L 129.2441558837891 360.5960998535156 C 129.2886047363281 360.6101684570313 129.3338470458984 360.6216430664063 129.3796234130859 360.6304321289063 L 129.4293365478516 360.6304321289063 C 129.4628601074219 360.6356506347656 129.4966278076172 360.6390686035156 129.530517578125 360.6406860351563 L 129.5682373046875 360.6406860351563 L 129.6797027587891 360.6406860351563 C 129.8024139404297 360.6353454589844 129.9239501953125 360.6146240234375 130.04150390625 360.5789794921875 L 130.1083679199219 360.8533325195313 C 130.2794189453125 361.4697875976563 130.3896942138672 362.1015319824219 130.4376068115234 362.739501953125 C 130.4701690673828 363.4596862792969 130.3450012207031 364.1918334960938 130.48388671875 364.8999938964844 C 130.55419921875 365.2686462402344 130.6965179443359 365.6218872070313 130.7479553222656 365.9922485351563 C 130.7811126708984 366.341064453125 130.7747802734375 366.6925354003906 130.7290954589844 367.0399169921875 C 130.6490631103516 367.8812561035156 130.5690612792969 368.7231750488281 130.4890289306641 369.565673828125 C 130.4816741943359 369.8749389648438 130.4080047607422 370.1789855957031 130.2729797363281 370.4573059082031 C 130.1546630859375 370.6630859375 129.9626312255859 370.8979797363281 130.0826568603516 371.1020202636719 C 130.2802734375 371.0494384765625 130.4813995361328 371.0110168457031 130.6845092773438 370.9871520996094 C 130.6107788085938 371.254638671875 130.5438995361328 371.5238342285156 130.48046875 371.7947692871094 C 130.4185791015625 371.9961242675781 130.4021911621094 372.208740234375 130.4324493408203 372.4172058105469 C 130.4753265380859 372.6126708984375 130.6039123535156 372.789306640625 130.6176452636719 372.9881896972656 C 130.6484985351563 373.2968444824219 130.4341735839844 373.5694885253906 130.3158569335938 373.8558349609375 C 130.0140838623047 374.5862731933594 130.334716796875 375.4093322753906 130.6587829589844 376.1329345703125 L 131.6053009033203 378.2797241210938 L 132.3820648193359 380.0407104492188 C 132.6118316650391 380.5551147460938 132.8433074951172 381.086669921875 133.0679321289063 381.6148071289063 C 134.0802154541016 384.0194702148438 134.9068145751953 386.4981994628906 135.5405120849609 389.0291137695313 C 135.5616760253906 389.1440124511719 135.6053924560547 389.2535705566406 135.6691131591797 389.3515014648438 C 135.7994232177734 389.5229797363281 136.0377655029297 389.5778198242188 136.2315216064453 389.6841125488281 C 136.8128204345703 390.0047607421875 136.8796844482422 390.9615783691406 136.3481292724609 391.3594055175781 C 136.4561614990234 392.6488342285156 135.4907836914063 393.8954162597656 134.9935302734375 395.0888366699219 C 133.8481140136719 397.8323364257813 134.0555877685547 400.9290466308594 133.6629180908203 403.8783569335938 L 134.1070404052734 403.6194152832031 C 134.1596984863281 403.6430969238281 134.2082977294922 403.6749267578125 134.2510681152344 403.7137451171875 C 134.2407836914063 403.7685852050781 134.2287750244141 403.8257446289063 134.2150573730469 403.8851928710938 C 134.1549835205078 404.1359558105469 134.0591125488281 404.3767700195313 133.930419921875 404.6002197265625 C 133.6715087890625 405.0443420410156 133.2754058837891 405.4404296875 133.2153930664063 405.9513854980469 C 133.1793823242188 406.260009765625 133.2736968994141 406.5686645507813 133.27197265625 406.8789978027344 C 133.27197265625 406.9081726074219 133.27197265625 406.9356079101563 133.27197265625 406.9647521972656 C 133.2325439453125 406.9270629882813 133.1725158691406 406.9304504394531 133.0833587646484 407.0007934570313 C 132.9437713623047 407.1473693847656 132.8471069335938 407.3294372558594 132.8038482666016 407.5271911621094 C 132.7266998291016 407.7483520507813 132.6649780273438 407.9729919433594 132.6032409667969 408.1976318359375 L 132.3734741210938 408.9897766113281 C 132.2561492919922 409.46728515625 132.1007537841797 409.9345703125 131.9087982177734 410.3872375488281 C 131.74462890625 410.6903076171875 131.6069488525391 411.0069885253906 131.4972839355469 411.3337707519531 C 131.4361419677734 411.6000671386719 131.4124908447266 411.8736267089844 131.4269866943359 412.1465148925781 C 131.4224700927734 412.4080200195313 131.4601135253906 412.6685791015625 131.5384368896484 412.9181518554688 C 131.7465362548828 413.4151306152344 132.1541595458984 413.8016052246094 132.6615447998047 413.9829406738281 C 133.1637878417969 414.1594543457031 133.6898956298828 414.2589111328125 134.2219085693359 414.2778930664063 C 134.3582916259766 414.2953796386719 134.4965972900391 414.2913513183594 134.6317291259766 414.265869140625 C 134.7764282226563 414.2242126464844 134.9111785888672 414.1536254882813 135.02783203125 414.0583801269531 C 135.7514190673828 413.52685546875 136.1252288818359 412.5494384765625 136.1903686523438 411.6578369140625 C 136.1720733642578 411.4737854003906 136.139404296875 411.2914733886719 136.0926361083984 411.1125793457031 C 136.1372222900391 410.1369018554688 135.9949035644531 409.1561279296875 136.0686340332031 408.1838684082031 C 136.0840759277344 408.2953186035156 136.0995025634766 408.4050598144531 136.1166381835938 408.5148010253906 L 136.2881164550781 409.6070556640625 C 136.2780609130859 409.5682373046875 136.2579498291016 409.53271484375 136.2298126220703 409.5041809082031 C 136.1028900146484 409.9086608886719 136.0804901123047 410.3386840820313 136.1646423339844 410.7541809082031 C 136.2501525878906 411.167724609375 136.3706207275391 411.5733032226563 136.5247497558594 411.9664916992188 L 136.7579345703125 412.6180114746094 C 136.8141326904297 412.8145751953125 136.9085388183594 412.9981384277344 137.0357208251953 413.1581726074219 C 137.2397766113281 413.3828125 137.5501251220703 413.4668273925781 137.8484802246094 413.538818359375 C 138.4897918701172 413.7261352539063 139.1500701904297 413.8411865234375 139.8169403076172 413.8817443847656 C 139.9061126708984 413.8921813964844 139.9963531494141 413.8754577636719 140.0758666992188 413.833740234375 C 140.1166687011719 413.8035583496094 140.1555938720703 413.7709045410156 140.1924591064453 413.7360229492188 C 140.251708984375 413.6935424804688 140.3148651123047 413.6567687988281 140.3810729980469 413.6262512207031 C 140.6675872802734 413.4754943847656 140.8840942382813 413.218994140625 140.9846496582031 412.9112548828125 C 141.0822448730469 412.6014709472656 141.0416259765625 412.2647094726563 140.8731994628906 411.9870300292969 C 140.7952270507813 411.8712463378906 140.7062225341797 411.7632446289063 140.607421875 411.6646423339844 L 139.4345703125 410.4215087890625 C 139.2552642822266 410.2085266113281 139.0640411376953 410.0058898925781 138.8618621826172 409.8145141601563 C 138.8128814697266 409.7643432617188 138.742431640625 409.7412719726563 138.6732482910156 409.7528076171875 C 138.3543090820313 408.9571838378906 138.3954772949219 408.02783203125 138.4503326416016 407.1550598144531 C 138.4674835205078 406.8943786621094 138.6098022460938 406.3542785644531 138.6663818359375 405.9101867675781 C 138.8925933837891 405.8337707519531 139.1033935546875 405.7176513671875 139.288818359375 405.5672302246094 C 139.4675598144531 405.4366760253906 139.5944671630859 405.2472229003906 139.6471862792969 405.0322570800781 C 140.2387542724609 402.010986328125 141.1903991699219 399.0823059082031 142.0889129638672 396.13818359375 C 142.1780700683594 395.848388671875 142.2603759765625 395.556884765625 142.3512573242188 395.26708984375 C 142.3889770507813 395.1436462402344 142.4232635498047 395.0184631347656 142.4592742919922 394.8932800292969 C 142.4953002929688 394.7681274414063 142.5193023681641 394.6909790039063 142.5484466552734 394.5897827148438 C 142.5964660644531 394.4183044433594 142.6444702148438 394.2468566894531 142.6907653808594 394.0753784179688 C 142.7044830322266 394.0290832519531 142.7164916992188 393.9828186035156 142.7302093505859 393.9364929199219 C 142.7294311523438 393.9273681640625 142.7294311523438 393.918212890625 142.7302093505859 393.9090881347656 C 142.7867889404297 393.6981506347656 142.8416595458984 393.4872436523438 142.9016723632813 393.2763671875 C 142.9222412109375 393.1940612792969 142.9445343017578 393.1151733398438 142.9651184082031 393.0328674316406 C 143.031982421875 392.765380859375 143.0988616943359 392.4944458007813 143.1622924804688 392.2252197265625 C 143.1727600097656 392.1880798339844 143.1807708740234 392.1502685546875 143.1862945556641 392.1120910644531 C 143.20947265625 392.0169372558594 143.2028961181641 391.9170227050781 143.1674346923828 391.8257141113281 L 143.1674346923828 391.8257141113281 L 143.1674346923828 391.8257141113281 C 143.1503601074219 391.7904052734375 143.1277923583984 391.7579650878906 143.1005706787109 391.7297058105469 C 143.0817108154297 391.7074279785156 143.0611419677734 391.6851196289063 143.0405578613281 391.66455078125 C 143.0199890136719 391.6439819335938 142.9959716796875 391.6165161132813 142.9754028320313 391.5908203125 C 142.9212646484375 391.5243835449219 142.8804931640625 391.4481201171875 142.8553619384766 391.3661804199219 C 142.8553619384766 391.2839050292969 142.8553619384766 391.1947326660156 142.8553619384766 391.1192626953125 C 142.8553619384766 391.0438232421875 142.8450927734375 390.9477844238281 142.8399353027344 390.858642578125 C 142.8583068847656 390.7427978515625 142.8840789794922 390.6282348632813 142.9170989990234 390.5156860351563 C 142.9376831054688 390.4488220214844 142.9599761962891 390.3819580078125 142.9805450439453 390.3150939941406 C 143.0011138916016 390.2482299804688 143.031982421875 390.1436157226563 143.0594177246094 390.0664672851563 C 143.1620178222656 389.9494323730469 143.2176055908203 389.7985534667969 143.2154541015625 389.6429443359375 C 143.3217620849609 389.3777160644531 143.4389343261719 389.1176452636719 143.5669708251953 388.8627624511719 C 143.7248840332031 388.6043395996094 143.8314208984375 388.3179016113281 143.8807525634766 388.0191040039063 C 143.8800201416016 387.7491455078125 143.8466186523438 387.4802856445313 143.7813110351563 387.2183837890625 C 143.6098327636719 386.1038208007813 144.1242523193359 385.0184326171875 144.5031890869141 383.96044921875 C 144.7843017578125 383.1800537109375 144.9977264404297 382.3768920898438 145.1410522460938 381.5598754882813 C 145.2525024414063 380.9340209960938 145.3296661376953 380.2773132324219 145.6640319824219 379.7354736328125 C 145.7743682861328 379.5833129882813 145.8686065673828 379.4201049804688 145.9452514648438 379.2485046386719 C 145.9971466064453 379.069091796875 146.0225677490234 378.8830871582031 146.0206909179688 378.6963500976563 C 146.0628814697266 377.939208984375 146.2460784912109 377.1966247558594 146.5608215332031 376.5067138671875 C 146.6305694580078 376.3729858398438 146.6780548095703 376.228759765625 146.701416015625 376.0797424316406 C 146.7023315429688 376.0700378417969 146.7023315429688 376.060302734375 146.701416015625 376.0505981445313 L 146.701416015625 376.0094604492188 L 146.7888793945313 375.9957275390625 C 146.9380493164063 375.0509338378906 147.0889434814453 373.9981079101563 146.9860687255859 373.0464477539063 C 146.8522491455078 371.9441528320313 146.3153991699219 370.9302978515625 145.4788513183594 370.2000732421875 L 145.4960021972656 370.2000732421875 C 145.7909240722656 370.0509033203125 145.9229583740234 369.6856689453125 145.9281005859375 369.3633117675781 C 145.9295196533203 368.8685302734375 145.7062225341797 368.3998718261719 145.3210906982422 368.0892944335938 C 145.2360687255859 368.0364074707031 145.1653900146484 367.96337890625 145.1153259277344 367.8766784667969 C 145.0869140625 367.78759765625 145.078125 367.6934204101563 145.0896301269531 367.6006164550781 C 145.0924530029297 367.0280151367188 144.7490081787109 366.5104370117188 144.2202758789063 366.2905578613281 C 144.1665954589844 366.2756958007813 144.1176147460938 366.2473754882813 144.0779418945313 366.2082824707031 C 144.0339050292969 366.1326904296875 144.0204010009766 366.0431518554688 144.0402221679688 365.9579467773438 C 144.0726318359375 365.3905334472656 143.7881011962891 364.8518676757813 143.3011932373047 364.5587768554688 C 143.3697814941406 364.1918029785156 143.4383697509766 363.8077087402344 143.3337707519531 363.4476318359375 C 143.2291717529297 363.0875549316406 142.8913726806641 362.7617492675781 142.5210113525391 362.8132019042969 C 142.8227996826172 361.9901428222656 142.3941192626953 361.0744934082031 142.5072937011719 360.2051696777344 C 142.5570220947266 359.8313598632813 142.7061920166016 359.4729614257813 142.7250518798828 359.0974731445313 C 142.7422027587891 358.7545471191406 142.6581726074219 358.3875732421875 142.8245086669922 358.0892333984375 C 142.9908447265625 357.7908630371094 143.3835144042969 357.5576782226563 143.2823181152344 357.2319030761719 C 143.2394714355469 357.0929870605469 143.1108551025391 356.9969787597656 143.0508422851563 356.8615112304688 C 142.9908294677734 356.7260437011719 143.2308807373047 356.5185852050781 143.3543548583984 356.5940246582031 C 143.4126434326172 356.5494384765625 143.470947265625 356.5031433105469 143.5258178710938 356.4551086425781 C 143.5437316894531 356.6294860839844 143.5781707763672 356.8017272949219 143.6286926269531 356.9695434570313 C 143.7127227783203 357.250732421875 143.8413238525391 357.5148010253906 143.9287719726563 357.7943115234375 C 144.0625152587891 358.2212524414063 144.1002349853516 358.6842041015625 144.3162841796875 359.0751647949219 C 144.6592254638672 359.7010192871094 145.3845367431641 360.0113830566406 145.8749389648438 360.5309448242188 C 146.1630096435547 360.83447265625 146.3704833984375 361.2168273925781 146.6671295166016 361.5048828125 C 146.8924255371094 361.7153015136719 147.1396026611328 361.9009704589844 147.4044342041016 362.0587158203125 L 148.9888153076172 363.0875549316406 C 149.1531524658203 363.2068786621094 149.3362884521484 363.2978820800781 149.5306549072266 363.3567504882813 C 149.7798461914063 363.4042358398438 150.0376281738281 363.3472290039063 150.2435302734375 363.1990356445313 C 150.4494476318359 363.0508422851563 150.5853729248047 362.8245239257813 150.6194763183594 362.5731201171875 C 150.4738006591797 362.5215759277344 150.3410186767578 362.4391174316406 150.2302551269531 362.3313598632813 C 150.2525482177734 362.3313903808594 150.2748413085938 362.3313903808594 150.2971343994141 362.3210754394531 C 150.6735076904297 362.22265625 151.0216674804688 362.0376892089844 151.3139495849609 361.7809753417969 C 152.4421997070313 360.8824462890625 153.2532501220703 359.6564636230469 154.0454406738281 358.4510192871094 C 154.8753356933594 357.1872863769531 158.8688659667969 353.8436584472656 158.8688659667969 353.8436584472656 L 158.8688659667969 352.4890441894531 C 159.3770294189453 352.1944885253906 159.8278198242188 351.8105163574219 160.199462890625 351.3556518554688 C 160.3998413085938 351.113037109375 160.5170288085938 350.8125 160.5338287353516 350.498291015625 C 160.5495300292969 350.1687927246094 160.3516845703125 349.866455078125 160.0434265136719 349.7489624023438 Z M 126.8298873901367 352.9983215332031 C 126.753303527832 353.4910278320313 126.6589965820313 353.9802551269531 126.5469665527344 354.4660949707031 C 126.4235610961914 355.0280151367188 126.265510559082 355.581787109375 126.0737152099609 356.1242065429688 L 126.0119857788086 356.2956848144531 C 125.9553985595703 356.1893615722656 125.898811340332 356.0847778320313 125.8405151367188 355.9767456054688 C 125.7119140625 355.70751953125 125.6073150634766 355.4280395507813 125.4975814819336 355.1485595703125 L 124.8357086181641 353.3652648925781 C 124.7499771118164 353.1337890625 124.6642379760742 352.8663024902344 124.792839050293 352.6536560058594 C 124.8871154785156 352.5234375 125.0186309814453 352.4247741699219 125.1700744628906 352.3707580566406 C 125.6354293823242 352.1573486328125 126.1215438842773 351.992431640625 126.6206970214844 351.8786315917969 C 126.7785186767578 351.8469848632813 126.9342727661133 351.8057556152344 127.0870971679688 351.7551879882813 C 126.9640426635742 352.1609497070313 126.8779602050781 352.5770263671875 126.8298950195313 352.998291015625 Z M 127.5620574951172 350.7692260742188 C 127.5171813964844 350.6887512207031 127.5171813964844 350.5907897949219 127.5620574951172 350.5103149414063 C 127.6116027832031 350.4603881835938 127.669677734375 350.4197692871094 127.7335357666016 350.3902893066406 L 127.7832489013672 350.3559875488281 C 127.7146606445313 350.498291015625 127.6375122070313 350.635498046875 127.5620574951172 350.7743530273438 Z M 128.9338073730469 348.8299255371094 C 128.7391662597656 348.9913940429688 128.5621337890625 349.1730346679688 128.4057006835938 349.3717651367188 C 128.2378082275391 349.593505859375 128.0865173339844 349.8273620605469 127.9530181884766 350.0713500976563 C 127.9942932128906 349.8778991699219 127.9209442138672 349.6778869628906 127.7643890380859 349.5569152832031 C 127.7036743164063 349.5235900878906 127.6462554931641 349.4845581054688 127.5929260253906 349.4403381347656 C 127.4736022949219 349.2812194824219 127.5058441162109 349.0555419921875 127.6649475097656 348.9362182617188 C 127.8227386474609 348.8280029296875 128.0071716308594 348.76513671875 128.1982116699219 348.7544860839844 L 128.9886932373047 348.6378784179688 C 128.9646759033203 348.7047424316406 128.9492492675781 348.7698974609375 128.9320983886719 348.8350524902344 Z M 136.3344116210938 406.2119750976563 C 136.3483428955078 405.9749145507813 136.3328094482422 405.7370300292969 136.2881164550781 405.5037841796875 C 136.3858489990234 405.5037841796875 136.4835815429688 405.5037841796875 136.5796051025391 405.5037841796875 C 136.4990081787109 405.7318420410156 136.4167175292969 405.9736328125 136.3344116210938 406.2119750976563 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-129.58, -292.02)" d="M 157.9237213134766 338.8221130371094 C 156.5519714355469 339.0433044433594 155.0259094238281 339.5714416503906 154.4943389892578 340.8574523925781 C 154.0982513427734 341.8296813964844 154.4051818847656 342.9236450195313 154.50634765625 343.9678955078125 C 154.5447082519531 344.2435607910156 154.5348510742188 344.5238037109375 154.4772033691406 344.7960815429688 C 154.3640289306641 345.2367553710938 154.0519561767578 345.5934143066406 153.7501678466797 345.9346618652344 C 153.3309326171875 346.3678894042969 152.9789428710938 346.8614807128906 152.7059326171875 347.3989868164063 C 152.4589996337891 347.9476928710938 152.380126953125 348.5992736816406 152.6356201171875 349.1479797363281 C 152.7225341796875 349.2889709472656 152.7808074951172 349.4457092285156 152.8070983886719 349.6092224121094 C 152.8242340087891 349.9658813476563 152.450439453125 350.1922302246094 152.1760864257813 350.4202575683594 C 151.1472625732422 351.2776489257813 151.1901397705078 352.8208312988281 151.1815643310547 354.1634521484375 C 151.1657562255859 356.9010620117188 150.5580139160156 359.6028747558594 149.3999938964844 362.0835876464844 C 150.2881774902344 362.533447265625 151.3612518310547 362.3932495117188 152.1040649414063 361.7303771972656 C 151.9614715576172 362.3399658203125 151.7557525634766 362.9329833984375 151.4902191162109 363.4999389648438 C 152.3612670898438 363.9217224121094 153.4123840332031 363.22900390625 153.849609375 362.3648071289063 C 154.286865234375 361.5006103515625 154.3383026123047 360.4957885742188 154.6486511230469 359.5784301757813 C 154.9590301513672 358.6610717773438 155.5060119628906 357.86376953125 155.7477722167969 356.9395141601563 C 155.824951171875 356.6343078613281 155.8729553222656 356.3085021972656 156.0598602294922 356.0547485351563 C 156.2173309326172 355.8711547851563 156.4024505615234 355.7132263183594 156.6085662841797 355.5866394042969 C 157.5129852294922 354.9337768554688 158.1909637451172 354.0148315429688 158.5478668212891 352.9580078125 C 159.6143951416016 353.1929016113281 160.7032318115234 353.4295349121094 161.7903442382813 353.3301086425781 C 162.8774566650391 353.2306518554688 163.9885711669922 352.738525390625 164.5630035400391 351.8091735839844 C 164.8167724609375 351.3993530273438 164.9539489746094 350.9278259277344 165.1888580322266 350.5060119628906 C 165.4769287109375 349.9916076660156 165.9004364013672 349.5663452148438 166.2176666259766 349.0742492675781 C 166.9824371337891 347.9031372070313 167.1230163574219 346.3993225097656 166.8126678466797 345.0344543457031 C 166.5023040771484 343.6695556640625 165.7838439941406 342.4349670410156 164.9264984130859 341.3289794921875 C 163.2838287353516 339.1959228515625 160.523193359375 338.4054565429688 157.9237213134766 338.8221130371094 Z" fill="#303d5c" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-124.56, -364.52)" d="M 144.2423553466797 428.4708557128906 C 144.1651916503906 428.9612731933594 144.0708770751953 429.4516906738281 143.9611358642578 429.9369201660156 C 143.8367156982422 430.498046875 143.6786651611328 431.0511474609375 143.4878845214844 431.5933227539063 C 143.3757019042969 431.8307800292969 143.3244323730469 432.0924072265625 143.3387145996094 432.3546752929688 C 143.3725433349609 432.5152282714844 143.4346771240234 432.6685180664063 143.5221710205078 432.8073120117188 C 144.1480407714844 433.920166015625 144.9950866699219 434.9952697753906 145.0653991699219 436.27099609375 C 145.0825500488281 436.5882263183594 145.0653991699219 436.932861328125 145.2368621826172 437.1952209472656 C 145.7203979492188 436.1538391113281 146.2542572021484 435.1387329101563 146.83837890625 434.1499328613281 C 147.4488220214844 433.1211242675781 148.1278381347656 432.0682983398438 148.302734375 430.8783264160156 C 148.3724822998047 430.31982421875 148.3649749755859 429.7543640136719 148.2804412841797 429.1979064941406 C 148.1998596191406 428.5720520019531 148.0592498779297 427.9307250976563 147.6785736083984 427.4300842285156 C 147.2636413574219 426.8882141113281 146.1353607177734 426.0703125 145.3928985595703 426.2400817871094 C 144.5304107666016 426.437255859375 144.3520812988281 427.7729797363281 144.2423553466797 428.4708557128906 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-235.55, -345.01)" d="M 277.3402099609375 414.9591674804688 C 278.1598815917969 414.6247863769531 278.9966125488281 414.2732849121094 279.6465148925781 413.6697387695313 C 280.0434265136719 413.276123046875 280.3953857421875 412.8396301269531 280.6958923339844 412.3682861328125 L 282.6249084472656 409.5853576660156 C 283.0810241699219 408.9234924316406 283.5525512695313 408.22900390625 283.6537170410156 407.4317016601563 C 284.783447265625 406.2389831542969 285.4640197753906 404.6911010742188 285.5793151855469 403.0523681640625 C 285.5930480957031 402.8894653320313 285.6478881835938 402.6751403808594 285.810791015625 402.6699829101563 C 285.8829040527344 402.6753845214844 285.9502868652344 402.7078552246094 285.9994201660156 402.7608947753906 C 286.255126953125 402.9962768554688 286.3825988769531 403.3398742675781 286.3423461914063 403.6850891113281 C 286.6235656738281 403.6713562011719 286.9287719726563 403.6645202636719 287.1585388183594 403.8291015625 C 287.3883056640625 403.9937133789063 287.4500427246094 404.4018249511719 287.203125 404.5372924804688 C 287.3741760253906 404.5892639160156 287.4794616699219 404.7608032226563 287.4483337402344 404.9367980957031 C 287.7432556152344 404.8785095214844 288.0673522949219 404.8305053710938 288.3279724121094 404.9779663085938 C 288.588623046875 405.1254272460938 288.6880493164063 405.5575256347656 288.4360046386719 405.7186889648438 C 288.7371215820313 405.8351440429688 288.9326782226563 406.1281433105469 288.9247131347656 406.4508666992188 C 288.9089965820313 406.7653198242188 288.7916564941406 407.0661926269531 288.59033203125 407.3082275390625 C 287.8495483398438 408.302734375 286.54296875 408.7039794921875 285.6839294433594 409.5990295410156 C 285.4016418457031 409.9119873046875 285.1485290527344 410.2500305175781 284.927734375 410.6090087890625 L 282.439697265625 414.3950500488281 C 281.6492614746094 415.5953063964844 280.8381958007813 416.8247375488281 279.7099304199219 417.7198181152344 C 279.4176635742188 417.9765625 279.0694885253906 418.1614990234375 278.693115234375 418.2599182128906 C 278.3096618652344 418.3566284179688 277.903564453125 418.243896484375 277.6248779296875 417.9633178710938 C 277.376220703125 417.6803894042969 277.3385009765625 417.2774047851563 277.3145141601563 416.8984680175781 C 277.2733764648438 416.2606506347656 277.3830871582031 415.6021728515625 277.3402099609375 414.9591674804688 Z" fill="#ee8e9e" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-173.77, -648.05)" d="M 207.2246551513672 770.5770263671875 C 207.3238830566406 770.67529296875 207.4129180908203 770.7832641601563 207.4904479980469 770.8994140625 C 207.6587982177734 771.1764526367188 207.6994171142578 771.5126953125 207.6018981933594 771.8219604492188 C 207.5025024414063 772.1293334960938 207.286376953125 772.3855590820313 207.0000305175781 772.5352172851563 C 206.9330902099609 772.5653686523438 206.8693237304688 772.6021118164063 206.8097076416016 772.6449584960938 C 206.7732391357422 772.6807861328125 206.7342834472656 772.7140502929688 206.6930999755859 772.7444458007813 C 206.6130523681641 772.7844848632813 206.5233001708984 772.8011474609375 206.4341888427734 772.7924194335938 C 205.76806640625 772.7501831054688 205.1085510253906 772.6351928710938 204.4674530029297 772.4495239257813 C 204.1725158691406 772.375732421875 203.8604431152344 772.291748046875 203.6546783447266 772.0687866210938 C 203.5274810791016 771.9088134765625 203.4330749511719 771.7252197265625 203.3768920898438 771.5286865234375 L 203.1436920166016 770.8788452148438 C 202.9905853271484 770.486083984375 202.8707122802734 770.0811157226563 202.7853240966797 769.6682739257813 C 202.7002410888672 769.25341796875 202.7226715087891 768.8236694335938 202.8504943847656 768.4199829101563 C 202.9083099365234 768.4923706054688 202.9386749267578 768.5828247070313 202.9362335205078 768.6754760742188 C 203.0048675537109 769.1129150390625 203.1764678955078 769.52783203125 203.4369049072266 769.885986328125 C 203.4913330078125 769.9757690429688 203.5570373535156 770.0581665039063 203.6323852539063 770.1312255859375 C 203.8028564453125 770.2620849609375 204.0043029785156 770.3464965820313 204.2171020507813 770.3764038085938 C 204.6266632080078 770.4654541015625 205.0431823730469 770.518798828125 205.4619598388672 770.535888671875 C 205.5199432373047 770.5437622070313 205.5789794921875 770.5366821289063 205.6334228515625 770.5153198242188 C 205.7006683349609 770.47802734375 205.75146484375 770.4168090820313 205.7757568359375 770.3438110351563 C 205.8357391357422 770.1776123046875 205.8357391357422 769.9956665039063 205.7757568359375 769.8294677734375 C 205.6625823974609 769.51220703125 205.3522186279297 769.3047485351563 205.2047576904297 769.0029907226563 C 205.0933074951172 768.780029296875 205.2459106445313 768.534912109375 205.4722442626953 768.7234497070313 C 205.6754302978516 768.9143676757813 205.8672332763672 769.1170654296875 206.0466766357422 769.3304443359375 L 207.2246551513672 770.5770263671875 Z" fill="#303d5c" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-173.34, -625.27)" d="M 204.6378479003906 743.29248046875 C 204.5709686279297 744.3401489257813 204.5246734619141 745.4718627929688 205.0973815917969 746.3515014648438 C 205.3048553466797 746.6669921875 205.5809326171875 746.9327392578125 205.8158416748047 747.2293701171875 C 205.9505462646484 747.3777465820313 206.0398254394531 747.5616455078125 206.0730285644531 747.75927734375 C 206.1056213378906 748.143310546875 205.7455291748047 748.4725952148438 205.3665924072266 748.5445556640625 C 204.9876403808594 748.6165771484375 204.6001281738281 748.4965209960938 204.2331695556641 748.3731079101563 C 203.8859710693359 748.2866821289063 203.5591125488281 748.1329345703125 203.2712249755859 747.92041015625 C 202.7722625732422 747.4985961914063 202.6402282714844 746.7955932617188 202.5407867431641 746.1508178710938 L 202.3075866699219 744.6522827148438 C 202.1309356689453 743.8947143554688 202.20556640625 743.1002197265625 202.5202026367188 742.3887939453125 L 202.904296875 741.2640380859375 C 202.9294281005859 741.1546020507813 202.9896392822266 741.0565185546875 203.0757751464844 740.9844970703125 C 203.1651153564453 740.9353637695313 203.2678833007813 740.9160766601563 203.3689880371094 740.9296264648438 C 203.7359161376953 740.9485473632813 204.66357421875 741.082275390625 204.8419036865234 741.4714965820313 C 204.9927825927734 741.8092651367188 204.6635589599609 742.8895263671875 204.6378479003906 743.29248046875 Z" fill="#ee8e9e" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-173.34, -625.27)" d="M 204.6378479003906 743.29248046875 C 204.5709686279297 744.3401489257813 204.5246734619141 745.4718627929688 205.0973815917969 746.3515014648438 C 205.3048553466797 746.6669921875 205.5809326171875 746.9327392578125 205.8158416748047 747.2293701171875 C 205.9505462646484 747.3777465820313 206.0398254394531 747.5616455078125 206.0730285644531 747.75927734375 C 206.1056213378906 748.143310546875 205.7455291748047 748.4725952148438 205.3665924072266 748.5445556640625 C 204.9876403808594 748.6165771484375 204.6001281738281 748.4965209960938 204.2331695556641 748.3731079101563 C 203.8859710693359 748.2866821289063 203.5591125488281 748.1329345703125 203.2712249755859 747.92041015625 C 202.7722625732422 747.4985961914063 202.6402282714844 746.7955932617188 202.5407867431641 746.1508178710938 L 202.3075866699219 744.6522827148438 C 202.1309356689453 743.8947143554688 202.20556640625 743.1002197265625 202.5202026367188 742.3887939453125 L 202.904296875 741.2640380859375 C 202.9294281005859 741.1546020507813 202.9896392822266 741.0565185546875 203.0757751464844 740.9844970703125 C 203.1651153564453 740.9353637695313 203.2678833007813 740.9160766601563 203.3689880371094 740.9296264648438 C 203.7359161376953 740.9485473632813 204.66357421875 741.082275390625 204.8419036865234 741.4714965820313 C 204.9927825927734 741.8092651367188 204.6635589599609 742.8895263671875 204.6378479003906 743.29248046875 Z" fill="#000000" fill-opacity="0.05" stroke="none" stroke-width="1" stroke-opacity="0.05" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-175.59, -474.07)" d="M 215.13134765625 561.045166015625 C 215.1320953369141 561.0548706054688 215.1320953369141 561.0645751953125 215.13134765625 561.0743408203125 C 215.1095581054688 561.22265625 215.0619659423828 561.3659057617188 214.9907379150391 561.497802734375 C 214.6759948730469 562.1859741210938 214.4922485351563 562.9268188476563 214.4488983154297 563.682373046875 C 214.4507904052734 563.869140625 214.4253692626953 564.0551147460938 214.3734588623047 564.2344360351563 C 214.2965393066406 564.4054565429688 214.2023162841797 564.5680541992188 214.0922698974609 564.7197265625 C 213.7578887939453 565.2632446289063 213.6807250976563 565.9200439453125 213.5692749023438 566.5424194335938 C 213.4255828857422 567.3560180664063 213.2121887207031 568.15576171875 212.931396484375 568.9327392578125 C 212.5490264892578 569.9923706054688 212.0346221923828 571.0760498046875 212.2095184326172 572.1906127929688 C 212.2748413085938 572.4525756835938 212.3082427978516 572.721435546875 212.3089752197266 572.9913940429688 C 212.2601165771484 573.2897338867188 212.1535186767578 573.57568359375 211.9951782226563 573.8333129882813 C 211.8671569824219 574.0870971679688 211.7528381347656 574.3471069335938 211.6522521972656 574.6134643554688 C 211.5407867431641 574.8980712890625 211.4413299560547 575.1896362304688 211.3538970947266 575.4845581054688 C 211.2510070800781 575.8428955078125 211.1824340820313 576.2681884765625 211.4190521240234 576.5562133789063 C 211.4925689697266 576.6267700195313 211.5576019287109 576.70556640625 211.6128082275391 576.7911376953125 C 211.6573486328125 576.92236328125 211.6573486328125 577.0645751953125 211.6128082275391 577.19580078125 C 211.4767761230469 577.767333984375 211.3316040039063 578.3389282226563 211.1772766113281 578.9104614257813 C 211.0572509765625 579.3563232421875 210.9303588867188 579.7987060546875 210.800048828125 580.2410888671875 C 209.8363952636719 583.4766845703125 208.7424163818359 586.6797485351563 208.0977020263672 589.9942626953125 C 208.0051116943359 590.470947265625 207.3929595947266 590.8121948242188 206.9197082519531 590.916748046875 C 206.4362945556641 591.0200805664063 205.9326324462891 590.8855590820313 205.5651092529297 590.554931640625 C 205.5325317382813 590.5258178710938 205.5016632080078 590.4932250976563 205.4725036621094 590.4623413085938 C 204.9752502441406 589.9273681640625 204.9015197753906 589.1060791015625 204.9392395019531 588.3652954101563 C 205.1107177734375 584.9547729492188 206.8253936767578 581.8323364257813 207.6415863037109 578.517822265625 C 207.9367828369141 577.3193359375 208.1148071289063 576.0950317382813 208.1731567382813 574.8621215820313 C 208.3634796142578 570.7468872070313 208.4406433105469 566.3949584960938 207.2763671875 562.439208984375 C 207.0346069335938 561.6161499023438 206.7482452392578 560.6868286132813 207.1837768554688 559.949462890625 C 207.4581298828125 559.4830932617188 207.9673919677734 559.20703125 208.4714965820313 559.0081176757813 C 210.5484466552734 558.19873046875 212.8639373779297 558.260498046875 214.8947143554688 559.1795654296875 C 214.8964080810547 559.2620239257813 214.8929748535156 559.344482421875 214.8844451904297 559.426513671875 C 214.8407897949219 559.8098754882813 214.8853607177734 560.1981201171875 215.0147552490234 560.5615844726563 C 215.0813446044922 560.7147827148438 215.1207733154297 560.87841796875 215.13134765625 561.045166015625 Z" fill="#303d5c" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-151.12, -635.76)" d="M 176.5625915527344 754.8433227539063 L 176.3448333740234 755.635498046875 C 176.2288360595703 756.112060546875 176.0739898681641 756.5782470703125 175.8818664550781 757.0296020507813 C 175.7176971435547 757.3326416015625 175.5800018310547 757.6492919921875 175.4703369140625 757.97607421875 C 175.4092254638672 758.2423706054688 175.3855438232422 758.5159912109375 175.4000396728516 758.788818359375 C 175.3955383300781 759.0498046875 175.4331665039063 759.3097534179688 175.5114898681641 759.5587158203125 C 175.7190704345703 760.0550537109375 176.1261596679688 760.4410400390625 176.6329040527344 760.621826171875 C 177.1350555419922 760.7984619140625 177.6612396240234 760.8973388671875 178.1932678222656 760.9150390625 C 178.3295135498047 760.9339599609375 178.4679412841797 760.9304809570313 178.6030731201172 760.9047241210938 C 178.7477874755859 760.863037109375 178.8825378417969 760.7925415039063 178.9991607666016 760.697265625 C 179.7227630615234 760.16748046875 180.0948486328125 759.1900634765625 180.1600189208984 758.2966918945313 C 180.1413269042969 758.08837890625 180.1005096435547 757.882568359375 180.0382690429688 757.682861328125 C 179.981689453125 757.607421875 179.4347076416016 757.916015625 179.6696166992188 758.1749877929688 C 180.0125427246094 758.5556030273438 179.0025939941406 758.3583984375 178.4881896972656 758.3258666992188 C 178.2622375488281 758.3064575195313 178.0381011962891 758.269775390625 177.8177337646484 758.216064453125 L 176.9844055175781 758.0446166992188 C 176.7117767333984 757.986328125 176.3979949951172 757.8920288085938 176.2985382080078 757.6314086914063 C 176.1990814208984 757.3707885742188 176.4116973876953 757.0587158203125 176.5763244628906 756.804931640625 C 177.0118408203125 756.1310424804688 177.1250152587891 755.3063354492188 177.2261657714844 754.5106811523438 C 177.2450256347656 754.3546752929688 177.4405059814453 753.3412475585938 177.0375671386719 753.6533203125 C 176.8992309570313 753.80078125 176.8027496337891 753.9825439453125 176.758056640625 754.1797485351563 C 176.6843414306641 754.39404296875 176.6226043701172 754.61865234375 176.5625915527344 754.8433227539063 Z" fill="#303d5c" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-175.54, -549.15)" d="M 211.3614044189453 651.6371459960938 C 211.1247711181641 651.34912109375 211.18994140625 650.923828125 211.2979583740234 650.5654907226563 C 211.3356781005859 650.4317016601563 211.3785400390625 650.2996826171875 211.4231262207031 650.1676635742188 L 208.1515045166016 649.0599975585938 C 208.1395111083984 649.3548583984375 208.1257781982422 649.6463623046875 208.1120758056641 649.9379272460938 C 208.0550231933594 651.17138671875 207.8775634765625 652.3963623046875 207.5822296142578 653.5953369140625 C 206.7643280029297 656.9081420898438 205.0479125976563 660.0305786132813 204.8798828125 663.4393310546875 C 204.8404388427734 664.2247314453125 204.9244689941406 665.1026000976563 205.5057373046875 665.6307373046875 C 205.87255859375 665.9613647460938 206.3754730224609 666.0965576171875 206.8586273193359 665.9942626953125 C 207.3336029052734 665.8896484375 207.9440307617188 665.5467529296875 208.0383453369141 665.0700073242188 C 208.6864929199219 661.7555541992188 209.7753143310547 658.55419921875 210.7406921386719 655.3151245117188 C 211.0413360595703 654.3103637695313 211.312255859375 653.2975463867188 211.5534515380859 652.2767333984375 C 211.5979919433594 652.1460571289063 211.5979919433594 652.00439453125 211.5534515380859 651.873779296875 C 211.499755859375 651.7870483398438 211.4352264404297 651.7075805664063 211.3614044189453 651.6371459960938 Z" fill="#000000" fill-opacity="0.05" stroke="none" stroke-width="1" stroke-opacity="0.05" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-153.64, -617.8)" d="M 180.4199981689453 733.2899169921875 C 180.1610870361328 733.7357177734375 179.7667083740234 734.130126953125 179.7066955566406 734.64111328125 C 179.6706695556641 734.947998046875 179.7649993896484 735.2566528320313 179.7632751464844 735.5670166015625 C 179.7506103515625 735.8238525390625 179.7050933837891 736.0779418945313 179.6278228759766 736.3232421875 C 179.3088836669922 737.4743041992188 178.9419403076172 738.6094970703125 178.5269927978516 739.7285766601563 C 178.4587707519531 739.8729248046875 178.4286651611328 740.0322875976563 178.4395446777344 740.1915283203125 C 178.4806823730469 740.4539184570313 178.7361755371094 740.6270141601563 178.9796600341797 740.7316284179688 C 179.7598419189453 741.0643310546875 180.6377716064453 741.0419921875 181.4848175048828 741.0077514648438 C 181.7311706542969 741.017822265625 181.9753570556641 740.9583740234375 182.1895599365234 740.8362426757813 C 182.4930725097656 740.6287841796875 182.5685119628906 740.218994140625 182.5873718261719 739.8519897460938 C 182.6456756591797 738.7889404296875 182.4656219482422 737.720703125 182.5873718261719 736.6644287109375 C 182.6302490234375 736.2786254882813 182.7108306884766 735.899658203125 182.7708282470703 735.517333984375 C 182.8548583984375 734.9857177734375 182.8977355957031 734.4267578125 182.7228393554688 733.91748046875 C 182.5780334472656 733.552001953125 182.3753814697266 733.212158203125 182.1226806640625 732.9109497070313 C 181.8997344970703 732.5848388671875 181.6176605224609 732.3034057617188 181.2910614013672 732.0811157226563 C 181.1916198730469 732.0227661132813 180.90869140625 731.8409423828125 180.8075103759766 731.9541625976563 C 180.7560729980469 732.012451171875 180.7783660888672 732.16845703125 180.7715148925781 732.240478515625 C 180.7582092285156 732.3512573242188 180.7387542724609 732.461181640625 180.7132110595703 732.5697021484375 C 180.6505432128906 732.8225708007813 180.5517883300781 733.065185546875 180.4199981689453 733.2899169921875 Z" fill="#ee8e9e" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-175.53, -474.03)" d="M 208.5986938476563 562.3308715820313 C 208.4460754394531 562.5383911132813 208.4769592285156 562.826416015625 208.5386810302734 563.0767822265625 C 208.6466979980469 563.5294799804688 208.8284606933594 563.9632568359375 208.9759368896484 564.4039916992188 C 209.2172698974609 565.1951904296875 209.4051513671875 566.0017700195313 209.5383453369141 566.8182373046875 C 209.6755218505859 567.5556030273438 209.9670257568359 568.3768920898438 209.8487091064453 569.119384765625 C 210.7430572509766 570.821533203125 211.3310089111328 572.6677856445313 211.5856781005859 574.5737915039063 C 211.6525573730469 575.0624389648438 210.5671539306641 575.6934814453125 210.5877380371094 576.1856079101563 C 210.6288909912109 577.1663818359375 211.4107818603516 577.2452392578125 210.8346405029297 578.0271606445313 C 210.8054962158203 578.0665893554688 211.0507049560547 578.9427490234375 211.0181121826172 578.9805297851563 C 210.783203125 579.263427734375 210.4848480224609 579.4949340820313 210.2327880859375 579.7538452148438 C 209.9076995849609 580.1221923828125 209.6295166015625 580.5293579101563 209.4045867919922 580.9661865234375 C 207.9128265380859 583.66162109375 205.7557525634766 586.7171630859375 206.4210510253906 589.7265014648438 C 206.4488067626953 589.9484252929688 206.3351440429688 590.1640625 206.1363983154297 590.2666015625 C 205.9394683837891 590.361328125 205.7239379882813 590.4111938476563 205.5053863525391 590.412353515625 L 205.4025268554688 590.412353515625 C 204.9052581787109 589.8773803710938 204.8315277099609 589.0560913085938 204.8692474365234 588.3153076171875 C 205.0407104492188 584.9047241210938 206.7554168701172 581.7822875976563 207.5715942382813 578.4678344726563 C 207.8668060302734 577.2694091796875 208.0447998046875 576.0450439453125 208.1031494140625 574.8121337890625 C 208.2934722900391 570.6968994140625 208.3706359863281 566.344970703125 207.2063751220703 562.3892211914063 C 206.964599609375 561.566162109375 206.6782531738281 560.6367797851563 207.11376953125 559.8994750976563 C 207.3881225585938 559.4330444335938 207.8973999023438 559.1570434570313 208.4015045166016 558.9580688476563 C 210.4784393310547 558.1487426757813 212.7939300537109 558.2105102539063 214.8247528076172 559.1295776367188 C 214.826416015625 559.2119750976563 214.8229675292969 559.2944946289063 214.814453125 559.37646484375 C 214.7707824707031 559.7598266601563 214.8153686523438 560.1480712890625 214.9447631835938 560.5116577148438 C 215.0166320800781 560.6672973632813 215.0601959228516 560.83447265625 215.0733489990234 561.0054321289063 C 215.0733489990234 561.0054321289063 215.1316680908203 560.3418579101563 215.1299591064453 560.3521728515625 C 213.8010559082031 560.54248046875 212.3984527587891 561.4118041992188 211.0575561523438 561.6090698242188 C 210.3623809814453 561.6832275390625 209.6775054931641 561.8338623046875 209.0153656005859 562.0582885742188 C 208.8540344238281 562.1090698242188 208.7098541259766 562.2034301757813 208.5986938476563 562.3308715820313 Z" fill="#000000" fill-opacity="0.05" stroke="none" stroke-width="1" stroke-opacity="0.05" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-145.19, -451.85)" d="M 168.997802734375 532.84375 C 168.8183135986328 533.4153442382813 168.6600036621094 533.9926147460938 168.5228271484375 534.5756225585938 C 168.4617767333984 534.777099609375 168.4454040527344 534.9895629882813 168.4748077392578 535.1980590820313 C 168.5176696777344 535.3935546875 168.6462860107422 535.5684204101563 168.6600036621094 535.767333984375 C 168.6908569335938 536.0759887695313 168.4765167236328 536.3485717773438 168.3582305908203 536.6349487304688 C 168.0564270019531 537.3636474609375 168.3787841796875 538.186767578125 168.7011566162109 538.9086303710938 L 169.6476593017578 541.0519409179688 L 170.4261322021484 542.811279296875 C 170.6576080322266 543.334228515625 170.8873748779297 543.857177734375 171.1119995117188 544.3836669921875 C 172.1237182617188 546.785400390625 172.9497528076172 549.2612915039063 173.5828704833984 551.7893676757813 C 173.6042022705078 551.9039306640625 173.6472778320313 552.0133666992188 173.7097625732422 552.1116943359375 C 173.841796875 552.283203125 174.0801391601563 552.3380737304688 174.2721862792969 552.4443969726563 C 174.8551788330078 552.7633056640625 174.9220581054688 553.7201538085938 174.3887786865234 554.117919921875 C 174.4985198974609 555.4056396484375 173.5314331054688 556.6488037109375 173.035888671875 557.8422241210938 C 171.8904724121094 560.585693359375 172.0979614257813 563.6721801757813 171.7052917480469 566.6213989257813 L 172.1493988037109 566.3607788085938 C 172.5763397216797 566.5562744140625 172.5609130859375 567.1615600585938 172.7906951904297 567.5713500976563 C 173.1336212158203 568.1869506835938 173.9772491455078 568.2726440429688 174.6768493652344 568.2263793945313 C 174.8948516845703 568.225341796875 175.1098785400391 568.1755981445313 175.3061370849609 568.08056640625 C 175.5052642822266 567.978515625 175.6190795898438 567.7625122070313 175.5907745361328 567.5404663085938 C 174.9271850585938 564.53125 177.0825500488281 561.4756469726563 178.5760498046875 558.7801513671875 C 178.8003692626953 558.3433837890625 179.0779876708984 557.9362182617188 179.4025268554688 557.5678100585938 C 179.6562957763672 557.3003540039063 179.9529418945313 557.0757446289063 180.1895751953125 556.7944946289063 C 180.8480072021484 556.0040283203125 180.9320220947266 554.8895263671875 180.887451171875 553.8607177734375 C 180.7828826904297 551.4414672851563 180.1446533203125 549.0753173828125 179.0184478759766 546.931640625 C 179.1384735107422 546.19091796875 178.8469696044922 545.3695678710938 178.7098083496094 544.6322631835938 C 178.5761108398438 543.8159790039063 178.386474609375 543.0099487304688 178.1422271728516 542.2197265625 C 177.9947662353516 541.7755737304688 177.8147277832031 541.343505859375 177.7049865722656 540.8908081054688 C 177.6449737548828 540.6404418945313 177.6123962402344 540.3523559570313 177.7649993896484 540.1448974609375 C 177.8777465820313 540.016845703125 178.0237274169922 539.9224243164063 178.1868133544922 539.8722534179688 C 178.8489532470703 539.6478881835938 179.5338287353516 539.4971923828125 180.22900390625 539.4230346679688 L 184.8295135498047 538.7628784179688 C 184.9769897460938 537.8180541992188 185.1278686523438 536.7652587890625 185.0250091552734 535.8153076171875 C 184.7990112304688 534.0159912109375 183.5221252441406 532.5245971679688 181.7790832519531 532.0241088867188 C 181.5784606933594 531.9710083007813 181.3435516357422 531.9367065429688 181.178955078125 532.0635986328125 C 177.1193695068359 531.2666015625 172.9225463867188 531.535400390625 168.997802734375 532.84375 Z" fill="#303d5c" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-153.08, -326.97)" d="M 181.0595397949219 383.1225280761719 C 181.1266021728516 383.5716552734375 181.0566864013672 384.0305786132813 180.8589172363281 384.4393920898438 C 180.7253265380859 384.6626586914063 180.5508117675781 384.8586730957031 180.3445281982422 385.0172424316406 C 179.8996734619141 385.3749084472656 179.3825225830078 385.6317138671875 178.8287353515625 385.7699890136719 C 178.5029449462891 385.852294921875 178.1428680419922 385.9071350097656 177.9216613769531 386.1660766601563 C 177.5993041992188 386.5553283691406 177.8153533935547 387.1451721191406 178.0931243896484 387.5704040527344 C 178.5698089599609 388.3111572265625 179.231689453125 388.9815979003906 180.0804595947266 389.2130737304688 C 180.7663269042969 389.3982543945313 181.4813690185547 389.2850952148438 182.1740875244141 389.4051208496094 C 182.6764984130859 389.4925842285156 183.1497497558594 389.7000732421875 183.6452941894531 389.818359375 C 185.0779418945313 390.1461181640625 186.5791473388672 389.7273864746094 187.6353759765625 388.7055358886719 C 186.8980712890625 388.1397094726563 186.13330078125 387.537841796875 185.7492218017578 386.6907653808594 C 185.4788818359375 386.0845336914063 185.427978515625 385.4031372070313 185.6051940917969 384.7634582519531 C 185.7766571044922 384.1358947753906 186.1796112060547 383.5254516601563 186.05615234375 382.8773193359375 C 185.9326934814453 382.2291564941406 185.3016967773438 381.7953491210938 184.6844024658203 381.5792846679688 C 184.11767578125 381.4071655273438 183.5352325439453 381.2916870117188 182.9457092285156 381.2346496582031 C 182.6216278076172 381.1900634765625 180.5639953613281 380.7356567382813 180.4353942871094 380.9602661132813 C 180.3633728027344 381.087158203125 180.7903442382813 381.8381958007813 180.8434906005859 382.0045166015625 C 180.9688415527344 382.3648681640625 181.0415954589844 382.7413940429688 181.0595397949219 383.1225280761719 Z" fill="#ee8e9e" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_dlmjp =
    '<svg viewBox="0.0 0.0 14.5 24.8" ><path transform="translate(-149.4, -339.31)" d="M 149.8904113769531 362.5787658691406 C 151.0519561767578 360.1013488769531 151.6626892089844 357.401611328125 151.6805572509766 354.6654968261719 C 151.6891174316406 353.3280334472656 151.64453125 351.7745056152344 152.6750640869141 350.9223022460938 C 152.9494171142578 350.6942443847656 153.3232269287109 350.4679260253906 153.3060760498047 350.1112670898438 C 153.2790985107422 349.9479064941406 153.2208709716797 349.7913208007813 153.1345977783203 349.6500244140625 C 152.8791046142578 349.104736328125 152.963134765625 348.4497375488281 153.2031860351563 347.9010314941406 C 153.4762573242188 347.3630981445313 153.8288879394531 346.8694458007813 154.2491455078125 346.4366760253906 C 154.5492248535156 346.09375 154.8630065917969 345.7388000488281 154.9744567871094 345.2981262207031 C 155.0319366455078 345.0258483886719 155.0423736572266 344.7457275390625 155.0053253173828 344.4699401855469 C 154.9024505615234 343.4256896972656 154.5972290039063 342.3317260742188 154.9933166503906 341.3594970703125 C 155.5077209472656 340.1146240234375 156.9463500976563 339.5813598632813 158.2838134765625 339.34814453125 C 158.1674957275391 339.3110656738281 158.0439300537109 339.3028259277344 157.9237213134766 339.3241577148438 C 156.5519714355469 339.5453491210938 155.0259094238281 340.073486328125 154.4943542480469 341.3594970703125 C 154.0982513427734 342.3317260742188 154.4051818847656 343.4256896972656 154.50634765625 344.4699096679688 C 154.5447082519531 344.7455749511719 154.5348663330078 345.0258483886719 154.4772033691406 345.2981262207031 C 154.3640289306641 345.7388000488281 154.0519561767578 346.095458984375 153.7501831054688 346.4366760253906 C 153.3309326171875 346.8699035644531 152.9789428710938 347.3634948730469 152.7059326171875 347.9010314941406 C 152.4589996337891 348.4497375488281 152.3801422119141 349.1012878417969 152.6356353759766 349.6499938964844 C 152.7225341796875 349.7909851074219 152.7808074951172 349.9477233886719 152.8070983886719 350.1112670898438 C 152.8242340087891 350.4679260253906 152.450439453125 350.6942443847656 152.1760864257813 350.9223022460938 C 151.1472778320313 351.7796325683594 151.1901397705078 353.3228759765625 151.1815643310547 354.6654663085938 C 151.1647796630859 357.4007873535156 150.5570526123047 360.1001892089844 149.4000091552734 362.5787658691406 C 149.8079681396484 362.7896118164063 150.2688293457031 362.8760375976563 150.7254638671875 362.827392578125 C 150.4336242675781 362.7993774414063 150.1500396728516 362.7149047851563 149.8904113769531 362.5787353515625 Z" fill="#000000" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-159.46, -449.99)" d="M 162.0389556884766 474.6695251464844 C 162.3027191162109 474.1023864746094 162.5067291259766 473.5093383789063 162.6476745605469 472.8999633789063 C 162.4715881347656 473.0609741210938 162.2714233398438 473.1934814453125 162.0543823242188 473.2926025390625 C 161.9205932617188 473.7631225585938 161.7485656738281 474.2218933105469 161.5399780273438 474.6643676757813 C 161.7907867431641 474.7836608886719 162.0731353759766 474.8197021484375 162.3458862304688 474.7672424316406 C 162.2398681640625 474.7477111816406 162.1367340087891 474.7148742675781 162.0389556884766 474.6695251464844 Z" fill="#000000" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-198.0, -347.34)" d="M 208.0634460449219 349.1872253417969 C 208.3184967041016 349.0879516601563 208.5863952636719 349.0255737304688 208.8590545654297 349.0020446777344 L 208.7647552490234 349.0020446777344 C 208.5285339355469 348.9898681640625 208.2917327880859 349.0077209472656 208.0600280761719 349.0552062988281 C 208.0617370605469 349.0928955078125 208.0634460449219 349.1392211914063 208.0634460449219 349.1872253417969 Z" fill="#000000" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-201.97, -364.9)" d="M 214.8733367919922 371.0057067871094 C 214.4362335205078 370.8214416503906 214.0137634277344 370.6042175292969 213.609619140625 370.3558349609375 C 213.4959259033203 370.2831115722656 213.3697814941406 370.2319641113281 213.2375335693359 370.2049560546875 C 213.1078948974609 370.1932983398438 212.9772186279297 370.2013854980469 212.8500061035156 370.2289428710938 C 212.9429321289063 370.2628479003906 213.0324859619141 370.3053283691406 213.1175079345703 370.3558349609375 C 213.5222625732422 370.6042175292969 213.9452972412109 370.8214721679688 214.3829498291016 371.0057067871094 C 215.0644836425781 371.2305297851563 215.7825469970703 371.3236389160156 216.4988708496094 371.2800903320313 C 215.9455261230469 371.2799072265625 215.3961029052734 371.1871643066406 214.8733367919922 371.0057067871094 Z" fill="#000000" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-195.94, -364.5)" d="M 205.5940246582031 369.7099914550781 C 205.5940246582031 369.7477111816406 205.5785980224609 369.7854309082031 205.5700073242188 369.8231811523438 C 205.7754974365234 369.8537292480469 205.98388671875 369.8594665527344 206.1907196044922 369.84033203125 C 205.9875946044922 369.8192138671875 205.7874603271484 369.7755126953125 205.5940246582031 369.7099914550781 Z" fill="#000000" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_m0dg8c =
    '<svg viewBox="19.8 46.8 23.6 35.3" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-130.45, -351.4)" d="M 158.8203735351563 411.7725830078125 L 161.6513214111328 412.249267578125 C 162.3471527099609 412.3908386230469 163.0554504394531 412.4620666503906 163.7655334472656 412.4618835449219 C 164.1532440185547 412.42333984375 164.5438232421875 412.42333984375 164.9315185546875 412.4618835449219 C 165.1990203857422 412.5064697265625 165.4545135498047 412.6076049804688 165.7220001220703 412.6419372558594 C 166.0529327392578 412.6830749511719 166.3890075683594 412.61962890625 166.7199401855469 412.6625061035156 C 167.3338012695313 412.7413635253906 167.8396301269531 413.1666259765625 168.3060302734375 413.572998046875 C 168.8530120849609 414.0496826171875 169.441162109375 414.6018371582031 169.4840240478516 415.33056640625 C 169.4917144775391 415.4132690429688 169.47998046875 415.4966735839844 169.4497375488281 415.5740356445313 C 169.3959808349609 415.6614685058594 169.3240661621094 415.736328125 169.2388153076172 415.7935180664063 C 168.7244110107422 416.220458984375 168.4277801513672 416.8566284179688 168.0574035644531 417.4190673828125 C 167.6760711669922 417.9993286132813 167.2008972167969 418.5121459960938 166.6513671875 418.9365539550781 C 166.5278930664063 418.857666015625 166.2929840087891 419.0651550292969 166.3461456298828 419.2023315429688 C 166.3993072509766 419.3394775390625 166.5347595214844 419.4338073730469 166.5793304443359 419.5726928710938 C 166.6804962158203 419.893310546875 166.284423828125 420.1299438476563 166.1198120117188 420.4300537109375 C 165.9551849365234 420.7301025390625 166.0392150878906 421.0953369140625 166.0220642089844 421.4365539550781 C 166.0014953613281 421.8121032714844 165.8506011962891 422.1704406738281 165.8043060302734 422.5425415039063 C 165.6894226074219 423.4118957519531 166.1198120117188 424.3275451660156 165.8163146972656 425.1488647460938 C 166.1883850097656 425.1025695800781 166.5244598388672 425.4232177734375 166.6290740966797 425.7815856933594 C 166.7336730957031 426.1399536132813 166.6667938232422 426.5257873535156 166.5964965820313 426.8927001953125 C 167.0835113525391 427.1842346191406 167.3687744140625 427.7217407226563 167.3372344970703 428.2884521484375 C 167.3077087402344 428.3549499511719 167.3099212646484 428.4312133789063 167.3432464599609 428.4958801269531 C 167.3765869140625 428.5605163574219 167.4374237060547 428.6065979003906 167.5086975097656 428.6211242675781 C 168.0365447998047 428.8410949707031 168.3797302246094 429.3576049804688 168.3780517578125 429.929443359375 C 168.3665771484375 430.0227966308594 168.3753356933594 430.1175537109375 168.4037780761719 430.2072143554688 C 168.4537506103516 430.29296875 168.5237579345703 430.3653259277344 168.6078186035156 430.4180908203125 C 168.9930877685547 430.7278442382813 169.2164764404297 431.1960754394531 169.2148132324219 431.6903991699219 C 169.2148132324219 432.0213317871094 169.07763671875 432.3762817382813 168.7844390869141 432.5254516601563 C 168.1842803955078 432.8306884765625 167.5412902832031 432.9490051269531 166.8828430175781 433.09130859375 C 166.2761383056641 433.2346496582031 165.6618804931641 433.343994140625 165.0429840087891 433.4188232421875 C 164.4726715087891 433.4654541015625 163.900390625 433.4831848144531 163.3282928466797 433.4719543457031 L 159.5422668457031 433.4565124511719 C 158.4774475097656 433.4565124511719 157.4126129150391 433.4565124511719 156.3512115478516 433.3759155273438 C 155.3601379394531 433.3090515136719 154.3467407226563 433.1856384277344 153.3865356445313 433.4462280273438 C 153.2665100097656 433.2421875 153.4585418701172 433.0072937011719 153.5768585205078 432.80322265625 C 153.7124938964844 432.525146484375 153.7861938476563 432.2209167480469 153.7929077148438 431.9115905761719 L 154.032958984375 429.3892822265625 C 154.0786437988281 429.0424499511719 154.0849761962891 428.6915893554688 154.0518341064453 428.3433227539063 C 154.0003814697266 427.9712219238281 153.8597717285156 427.6197204589844 153.7877655029297 427.2510375976563 C 153.6505889892578 426.5445861816406 153.7757720947266 425.8141479492188 153.7431793212891 425.093994140625 C 153.6942291259766 424.4560241699219 153.5833892822266 423.8243408203125 153.4122467041016 423.2078247070313 L 152.6612243652344 420.1213684082031 C 152.5411834716797 419.6258544921875 152.4777374267578 419.0497131347656 152.2925567626953 418.5781860351563 C 151.7152709960938 417.0921020507813 151.1099853515625 415.6220397949219 150.4766998291016 414.16796875 C 150.4303283691406 414.0389404296875 150.4428558349609 413.8960571289063 150.510986328125 413.7770385742188 L 151.1368560791016 412.6556396484375 C 151.3043060302734 412.3369140625 151.4957427978516 412.0313720703125 151.7095642089844 411.74169921875 C 152.2381439208984 411.0732421875 152.9866790771484 410.6138916015625 153.8220672607422 410.4454040527344 C 154.6585693359375 410.2818298339844 155.52587890625 410.4101257324219 156.2792053222656 410.8088989257813 C 156.5707092285156 410.9649353027344 156.8416290283203 411.15185546875 157.1365509033203 411.30615234375 C 157.6423797607422 411.5462646484375 158.2596740722656 411.810302734375 158.8203735351563 411.7725830078125 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-209.49, -371.43)" d="M 247.9071502685547 434.5500183105469 L 248.8931121826172 435.8651428222656 C 248.9837188720703 435.9768676757813 249.0608367919922 436.0989074707031 249.1228790283203 436.2286682128906 C 249.2703247070313 436.5715942382813 249.1897430419922 436.9762878417969 249.2686157226563 437.3449096679688 C 249.3300628662109 437.5809326171875 249.4278259277344 437.8059692382813 249.5584106445313 438.0119323730469 C 249.9290466308594 438.6636962890625 250.3480377197266 439.2867431640625 250.8118438720703 439.8758239746094 C 251.026123046875 440.1750183105469 251.2899932861328 440.4354248046875 251.5920257568359 440.6456909179688 C 251.8981323242188 440.8572998046875 252.2810668945313 440.9254760742188 252.6414031982422 440.8326110839844 C 252.492431640625 440.890625 252.3702545166016 441.0018310546875 252.2984771728516 441.1447143554688 C 251.9229583740234 441.8888549804688 251.8955078125 442.7702026367188 252.0549774169922 443.5863952636719 C 252.0998382568359 443.8665466308594 252.1926574707031 444.1368408203125 252.3293304443359 444.3854675292969 C 252.4662475585938 444.6362915039063 252.6890869140625 444.8293151855469 252.9569091796875 444.9290161132813 C 252.9228515625 445.1802978515625 252.7868347167969 445.406494140625 252.5808563232422 445.5544128417969 C 252.3748626708984 445.7023315429688 252.1170806884766 445.7589111328125 251.8680877685547 445.7109069824219 C 251.6739654541016 445.6527099609375 251.4912719726563 445.5616760253906 251.3279571533203 445.4417114257813 L 249.7435913085938 444.4128723144531 C 249.4791107177734 444.2545471191406 249.2319946289063 444.0689392089844 249.0062713623047 443.8590393066406 C 248.7096252441406 443.5641174316406 248.5038757324219 443.1903076171875 248.2157897949219 442.8868103027344 C 247.7254180908203 442.3724060058594 247.0052337646484 442.056884765625 246.6588745117188 441.4327392578125 C 246.4411010742188 441.0418090820313 246.4033813476563 440.5754089355469 246.2696380615234 440.1535949707031 C 246.1821746826172 439.8741149902344 246.0535888671875 439.6100158691406 245.9695587158203 439.3288269042969 C 245.7089233398438 438.4612121582031 245.8975372314453 437.5095520019531 246.2936248779297 436.695068359375 C 246.6897277832031 435.8805847167969 247.3207397460938 435.2427368164063 247.9071502685547 434.5500183105469 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-129.58, -292.48)" d="M 164.2800750732422 343.5819091796875 C 163.8938293457031 342.9828186035156 163.3954162597656 342.4640197753906 162.8123016357422 342.0540771484375 C 162.0321197509766 341.4728088378906 161.1353302001953 340.9892883300781 160.1631011962891 340.9344177246094 C 159.7566223144531 340.9136657714844 159.3503723144531 340.979736328125 158.9713897705078 341.128173828125 C 158.9525299072266 339.9501647949219 158.6610412597656 339.1648254394531 157.9237213134766 339.2831420898438 C 156.5519714355469 339.5043334960938 155.0259094238281 340.032470703125 154.4943389892578 341.3184814453125 C 154.0982513427734 342.2907104492188 154.4051818847656 343.3846740722656 154.50634765625 344.428955078125 C 154.5447082519531 344.7046203613281 154.5348510742188 344.9848327636719 154.4772033691406 345.2571105957031 C 154.3640289306641 345.6977844238281 154.0519561767578 346.054443359375 153.7501678466797 346.3956909179688 C 153.3309326171875 346.8289184570313 152.9789428710938 347.322509765625 152.7059326171875 347.8600158691406 C 152.4589996337891 348.4087219238281 152.380126953125 349.0603332519531 152.6356201171875 349.6090087890625 C 152.7225341796875 349.75 152.7808074951172 349.90673828125 152.8070983886719 350.0702514648438 C 152.8242340087891 350.4269104003906 152.450439453125 350.6532592773438 152.1760864257813 350.8813171386719 C 151.1472625732422 351.7386779785156 151.1901397705078 353.2818908691406 151.1815643310547 354.6244812011719 C 151.1657562255859 357.3620910644531 150.5580139160156 360.0639343261719 149.3999938964844 362.5446472167969 C 150.2881774902344 362.9944763183594 151.3612518310547 362.8542785644531 152.1040649414063 362.19140625 C 151.9614715576172 362.8009948730469 151.7557525634766 363.39404296875 151.4902191162109 363.9609680175781 C 152.3612670898438 364.3827819824219 153.4123840332031 363.6900634765625 153.849609375 362.8258361816406 C 154.286865234375 361.9616394042969 154.3383026123047 360.9568176269531 154.6486511230469 360.0394897460938 C 154.9590301513672 359.1221008300781 155.5060119628906 358.3247985839844 155.7477722167969 357.4005737304688 C 155.824951171875 357.0953369140625 155.8729553222656 356.7695617675781 156.0598602294922 356.5158081054688 C 156.2173309326172 356.3321838378906 156.4024505615234 356.1742858886719 156.6085662841797 356.0476989746094 C 157.5070495605469 355.4029541015625 156.1833038330078 350.5177917480469 156.5348205566406 349.4684143066406 C 157.0492248535156 349.5832824707031 158.0180358886719 347.0678405761719 158.5650177001953 344.4958190917969 C 158.9464874267578 344.6272888183594 159.3533935546875 344.6678161621094 159.7532958984375 344.6141357421875 C 159.8923187255859 344.5839538574219 160.0349731445313 344.5741577148438 160.1768341064453 344.5849914550781 C 160.3085327148438 344.6119995117188 160.4340972900391 344.6631774902344 160.5471954345703 344.7358703613281 C 160.9519500732422 344.9842224121094 161.3749694824219 345.2014770507813 161.8126525878906 345.3857116699219 C 162.7179870605469 345.7286682128906 163.7125091552734 345.678955078125 164.6778869628906 345.6309204101563 C 164.8086700439453 344.9221801757813 164.6665496826172 344.190185546875 164.2800903320313 343.5819091796875 Z" fill="#303d5c" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_i788q8 =
    '<svg viewBox="15.2 56.4 8.4 16.9" ><path transform="translate(-107.35, -338.73)" d="M 128.1393280029297 410.0963134765625 C 128.1876068115234 410.5433654785156 128.0371551513672 410.9890747070313 127.7278137207031 411.3154296875 C 127.5539855957031 411.4831237792969 127.3584976196289 411.626708984375 127.1465301513672 411.742431640625 C 126.942024230957 411.8825378417969 126.7067565917969 411.9713439941406 126.4606552124023 412.0013122558594 C 126.1289291381836 411.9905700683594 125.8137741088867 411.8538513183594 125.5792999267578 411.6189270019531 C 124.8522720336914 410.9810791015625 124.4887619018555 410.0362854003906 124.1526870727539 409.1292114257813 C 123.7085800170898 407.928955078125 123.2661972045898 406.7166442871094 123.0758590698242 405.4494934082031 C 122.8718185424805 404.0914611816406 122.9592666625977 402.6853942871094 122.5700225830078 401.3668212890625 C 122.912971496582 400.6809692382813 123.1358795166016 399.9161987304688 123.5285339355469 399.2508850097656 C 123.7777252197266 398.8544311523438 123.9983444213867 398.4407043457031 124.1886978149414 398.0129089355469 C 124.5533142089844 397.10205078125 124.5944747924805 396.0937194824219 124.305290222168 395.1561889648438 C 124.4463958740234 395.0642700195313 124.630729675293 395.0739440917969 124.7613906860352 395.1802368164063 C 124.8860321044922 395.2872924804688 124.9805908203125 395.4250183105469 125.035758972168 395.5797424316406 C 125.2621841430664 396.1087341308594 125.3563385009766 396.6849060058594 125.3101119995117 397.2584228515625 C 125.28076171875 397.3964538574219 125.2970123291016 397.5402526855469 125.3563919067383 397.6682434082031 C 125.4642944335938 397.8014526367188 125.631462097168 397.8721923828125 125.8022155761719 397.8568725585938 C 126.1518249511719 397.8395690917969 126.497688293457 397.7767333984375 126.8310317993164 397.6699829101563 C 127.8668823242188 397.4056701660156 128.9397430419922 397.3169860839844 130.0049133300781 397.4075927734375 C 130.2195434570313 397.4139404296875 130.4304504394531 397.4653625488281 130.6239318847656 397.5585327148438 C 130.8189849853516 397.6558532714844 130.9424285888672 397.8548889160156 130.9428558349609 398.0729064941406 L 128.4051208496094 398.4450073242188 C 128.2140808105469 398.4556579589844 128.0296325683594 398.5185241699219 127.8718414306641 398.6267395019531 C 127.7138214111328 398.7459411621094 127.6816558837891 398.9703674316406 127.7998352050781 399.1291809082031 C 127.8534545898438 399.1730041503906 127.9108276367188 399.2120056152344 127.9712982177734 399.2457885742188 C 128.1033020019531 399.345703125 128.1791229248047 399.5030517578125 128.175048828125 399.6685485839844 C 128.1709747314453 399.8340759277344 128.0874938964844 399.9874877929688 127.9507293701172 400.080810546875 C 127.8868713378906 400.1102905273438 127.8287963867188 400.1509094238281 127.7792663574219 400.2008361816406 C 127.6763763427734 400.3397216796875 127.8135528564453 400.523193359375 127.8581390380859 400.6912536621094 C 127.8975067138672 400.9450378417969 127.7760620117188 401.1968078613281 127.5529174804688 401.323974609375 C 127.3328323364258 401.4446716308594 127.0930480957031 401.525390625 126.8447494506836 401.5623168945313 C 126.3464431762695 401.6771850585938 125.8610153198242 401.842041015625 125.3958435058594 402.0544128417969 C 125.2443923950195 402.1084594726563 125.1128692626953 402.2070922851563 125.0186080932617 402.3373413085938 C 124.8934326171875 402.5499572753906 124.9757461547852 402.8174438476563 125.0614776611328 403.0489501953125 L 125.7233505249023 404.8287963867188 C 125.8262252807617 405.1082763671875 125.9308242797852 405.3877868652344 126.066276550293 405.656982421875 C 126.2377548217773 405.9999084472656 126.4418029785156 406.3325805664063 126.6149826049805 406.685791015625 C 126.7881698608398 407.0390319824219 126.9013366699219 407.345947265625 127.0282211303711 407.6820068359375 C 127.3591537475586 408.5890808105469 128.0261688232422 409.1377868652344 128.1393280029297 410.0963134765625 Z" fill="#ee8e9e" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lf2h9g =
    '<svg viewBox="49.8 58.9 2.1 1.8" ><path transform="translate(-274.65, -351.14)" d="M 324.7828369140625 410.5073547363281 C 324.6417541503906 410.6122741699219 324.5397644042969 410.7613220214844 324.4930725097656 410.9308776855469 C 324.4709167480469 411.0025939941406 324.4979858398438 411.0804443359375 324.5599365234375 411.1229248046875 C 324.5978698730469 411.1349792480469 324.6386108398438 411.1349792480469 324.676513671875 411.1229248046875 C 324.8663635253906 411.0892639160156 325.0439147949219 411.005859375 325.1909484863281 410.8811340332031 C 325.1325988769531 410.912109375 325.080810546875 410.9540405273438 325.038330078125 411.0046081542969 C 324.99560546875 411.056884765625 324.987548828125 411.1293640136719 325.0177307128906 411.1897888183594 C 325.0603332519531 411.2413940429688 325.1224060058594 411.2730712890625 325.189208984375 411.2772216796875 C 325.433837890625 411.3216552734375 325.6853942871094 411.3099670410156 325.9248046875 411.2429504394531 C 325.8132629394531 411.2844848632813 325.7099304199219 411.3454284667969 325.6195983886719 411.4229736328125 C 325.5287170410156 411.5030212402344 325.4778747558594 411.6191101074219 325.4807434082031 411.7402038574219 C 325.4811096191406 411.7857055664063 325.5010986328125 411.8287963867188 325.5355834960938 411.8584899902344 C 325.5604858398438 411.874267578125 325.588623046875 411.8842163085938 325.617919921875 411.8876342773438 C 325.8447875976563 411.9275207519531 326.076904296875 411.9275207519531 326.3037719726563 411.8876342773438 C 326.422607421875 411.8829345703125 326.531005859375 411.8183898925781 326.5918273925781 411.7161865234375 C 326.6153564453125 411.6013793945313 326.5912170410156 411.48193359375 326.5249633789063 411.38525390625 C 326.4033203125 411.12353515625 326.3446044921875 410.8369445800781 326.3534851074219 410.5484924316406 C 326.3609313964844 410.4902038574219 326.3526611328125 410.4309997558594 326.3294982910156 410.3770141601563 C 326.2916870117188 410.3246459960938 326.2382507324219 410.28564453125 326.1768798828125 410.2655639648438 C 325.9351196289063 410.1592407226563 325.6058654785156 410.0117797851563 325.336669921875 410.0940856933594 C 325.1266784667969 410.1940612792969 324.9384765625 410.33447265625 324.7828674316406 410.5073547363281 Z" fill="#ee8e9e" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_n6g982 =
    '<svg viewBox="144.0 505.5 227.0 142.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(144.04, 505.52)" d="M 15 0 L 212 0 C 220.2842712402344 0 227 6.531735897064209 227 14.58904075622559 L 227 142 L 0 142 L 0 14.58904075622559 C 0 6.531735897064209 6.715728759765625 0 15 0 Z" fill="#ffffff" fill-opacity="0.96" stroke="none" stroke-width="1" stroke-opacity="0.96" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_t9y3dt =
    '<svg viewBox="0.0 0.0 145.4 93.7" ><path transform="translate(-197.18, -153.62)" d="M 339.0420227050781 247.36572265625 L 200.7876892089844 247.36572265625 C 198.8226623535156 247.3634948730469 197.230224609375 245.7710571289063 197.2279968261719 243.8060302734375 L 197.2279968261719 158.5555419921875 C 197.2295837402344 157.1159057617188 198.3962097167969 155.9492492675781 199.8358459472656 155.9476013183594 L 339.9488220214844 155.9476013183594 C 341.4132995605469 155.9492492675781 342.6001281738281 157.1360778808594 342.6017761230469 158.6006469726563 L 342.6017761230469 243.8060302734375 C 342.5995178222656 245.7710876464844 341.0071105957031 247.363525390625 339.0420837402344 247.36572265625 Z" fill="#f2f2f2" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-215.61, -179.43)" d="M 352.9992370605469 268.6817016601563 L 224.1498413085938 268.6817016601563 C 222.2610473632813 268.6817016601563 220.7244262695313 267.2427368164063 220.7244262695313 265.4740600585938 L 220.7244262695313 191.2368621826172 C 220.7244262695313 189.9251251220703 221.8630981445313 188.8579254150391 223.2627258300781 188.8579254150391 L 353.844482421875 188.8579254150391 C 355.2673034667969 188.8579254150391 356.4248657226563 189.9427490234375 356.4248657226563 191.2760620117188 L 356.4248657226563 265.47412109375 C 356.4246826171875 267.2427368164063 354.8880310058594 268.6817016601563 352.9992370605469 268.6817016601563 Z" fill="#ffffff" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-197.0, -145.14)" d="M 342.3703918457031 150.5248565673828 L 196.9959869384766 150.5248565673828 L 196.9959869384766 148.7126312255859 C 196.9988555908203 146.7410583496094 198.5970611572266 145.1438140869141 200.5686798095703 145.1421966552734 L 338.7977294921875 145.1421966552734 C 340.7693176269531 145.1438140869141 342.3675231933594 146.7410583496094 342.370361328125 148.7126312255859 L 342.3703918457031 150.5248565673828 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ll8npt =
    '<svg viewBox="15.3 21.1 114.2 56.7" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-252.52, -221.82)" d="M 294.0171813964844 242.9080200195313 L 271.2458190917969 242.9080200195313 C 269.3392028808594 242.9075012207031 267.7935180664063 244.4532470703125 267.7940063476563 246.35986328125 L 267.7940063476563 261.8564453125 C 267.7935180664063 263.7630615234375 269.3392028808594 265.3088073730469 271.2458190917969 265.3082885742188 L 294.0171813964844 265.3082885742188 C 295.9230346679688 265.3082885742188 297.4685363769531 263.76318359375 297.4690246582031 261.8568725585938 L 297.4690246582031 246.35986328125 C 297.4690246582031 244.4539794921875 295.9239196777344 242.9084777832031 294.0176086425781 242.9080200195313 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-406.23, -221.81)" d="M 463.79296875 246.3558197021484 L 463.79296875 261.854248046875 C 463.79296875 263.7606811523438 465.3384399414063 265.3060913085938 467.2448120117188 265.3060913085938 L 490.0156860351563 265.3060913085938 C 491.922119140625 265.3060913085938 493.467529296875 263.7606811523438 493.467529296875 261.854248046875 L 493.467529296875 246.3558197021484 C 493.467529296875 244.4494171142578 491.922119140625 242.9039764404297 490.0156860351563 242.9039764404297 L 467.2448120117188 242.9039764404297 C 465.3384399414063 242.9039764404297 463.79296875 244.4494476318359 463.79296875 246.3558197021484 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-559.95, -221.81)" d="M 659.79296875 246.3558197021484 L 659.79296875 261.854248046875 C 659.79296875 263.7606811523438 661.3384399414063 265.3060913085938 663.244873046875 265.3060913085938 L 686.0157470703125 265.3060913085938 C 687.922119140625 265.3060913085938 689.4675903320313 263.7606811523438 689.4675903320313 261.854248046875 L 689.4675903320313 246.3558197021484 C 689.4675903320313 244.4494171142578 687.922119140625 242.9039764404297 686.0157470703125 242.9039764404297 L 663.244873046875 242.9039764404297 C 661.3384399414063 242.9039764404297 659.79296875 244.4494476318359 659.79296875 246.3558197021484 Z" fill="#e6e6e6" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-252.52, -346.51)" d="M 267.79296875 405.3558349609375 L 267.79296875 420.8543090820313 C 267.79296875 422.7606811523438 269.33837890625 424.3060913085938 271.2448120117188 424.3060913085938 L 294.0157470703125 424.3060913085938 C 295.9221801757813 424.3060913085938 297.4675903320313 422.7606811523438 297.4675903320313 420.8543090820313 L 297.4675903320313 405.3558349609375 C 297.4675903320313 403.449462890625 295.9221801757813 401.9039916992188 294.0157470703125 401.9039916992188 L 271.2448120117188 401.9039916992188 C 269.33837890625 401.9039916992188 267.79296875 403.449462890625 267.79296875 405.3558349609375 Z" fill="#e6e6e6" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-406.23, -346.51)" d="M 463.79296875 405.3558349609375 L 463.79296875 420.8543090820313 C 463.79296875 422.7606811523438 465.3384399414063 424.3060913085938 467.2448120117188 424.3060913085938 L 490.0156860351563 424.3060913085938 C 491.922119140625 424.3060913085938 493.467529296875 422.7606811523438 493.467529296875 420.8543090820313 L 493.467529296875 405.3558349609375 C 493.467529296875 403.449462890625 491.922119140625 401.9039916992188 490.0156860351563 401.9039916992188 L 467.2448120117188 401.9039916992188 C 465.3384399414063 401.9039916992188 463.79296875 403.449462890625 463.79296875 405.3558349609375 Z" fill="#e6e6e6" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-559.95, -346.51)" d="M 659.79296875 405.3558349609375 L 659.79296875 420.8543090820313 C 659.79296875 422.7606811523438 661.3384399414063 424.3060913085938 663.244873046875 424.3060913085938 L 686.0157470703125 424.3060913085938 C 687.922119140625 424.3060913085938 689.4675903320313 422.7606811523438 689.4675903320313 420.8543090820313 L 689.4675903320313 405.3558349609375 C 689.4675903320313 403.449462890625 687.922119140625 401.9039916992188 686.0157470703125 401.9039916992188 L 663.244873046875 401.9039916992188 C 661.3384399414063 401.9039916992188 659.79296875 403.449462890625 659.79296875 405.3558349609375 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xfmgpr =
    '<svg viewBox="22.9 40.1 14.5 3.9" ><path transform="translate(-280.09, -290.79)" d="M 317.4503784179688 334.7153930664063 L 302.9439697265625 334.7153930664063 C 303.2828979492188 334.0614624023438 303.72021484375 333.4633178710938 304.2405395507813 332.9420166015625 C 305.5741577148438 331.6053466796875 307.3856201171875 330.8553466796875 309.2738037109375 330.8579711914063 L 311.1205444335938 330.8579711914063 C 313.786376953125 330.8567504882813 316.2294311523438 332.3455810546875 317.4503173828125 334.7153930664063 Z" fill="#ffffff" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_girgtz =
    '<svg viewBox="65.1 40.1 14.5 3.9" ><path transform="translate(-433.8, -290.79)" d="M 513.4503784179688 334.7153930664063 L 498.9439697265625 334.7153930664063 C 499.2828979492188 334.0614624023438 499.72021484375 333.4633178710938 500.2405395507813 332.9420166015625 C 501.57421875 331.6053466796875 503.3856201171875 330.8553466796875 505.2738037109375 330.8579711914063 L 507.1205444335938 330.8579711914063 C 509.7864379882813 330.8567504882813 512.2294311523438 332.3455810546875 513.4503784179688 334.7153930664063 Z" fill="#ffffff" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3c53hp =
    '<svg viewBox="107.4 40.1 14.5 3.9" ><path transform="translate(-587.52, -290.79)" d="M 709.4502563476563 334.7153930664063 L 694.9439697265625 334.7153930664063 C 695.2828979492188 334.0614624023438 695.7201538085938 333.4633178710938 696.240478515625 332.9420166015625 C 697.5741577148438 331.6053466796875 699.385498046875 330.8553466796875 701.2737426757813 330.8579711914063 L 703.1204833984375 330.8579711914063 C 705.786376953125 330.8567504882813 708.2293701171875 332.3455200195313 709.4502563476563 334.7153930664063 Z" fill="#ffffff" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_g3624k =
    '<svg viewBox="22.9 74.4 14.5 3.9" ><path transform="translate(-280.09, -415.49)" d="M 317.4503784179688 493.7154541015625 L 302.9439697265625 493.7154541015625 C 303.2828979492188 493.0614624023438 303.72021484375 492.46337890625 304.2405395507813 491.9420166015625 C 305.5741577148438 490.6054077148438 307.3856201171875 489.8554077148438 309.2738037109375 489.8580322265625 L 311.1205444335938 489.8579711914063 C 313.786376953125 489.8568115234375 316.2294311523438 491.3455810546875 317.4503784179688 493.7154541015625 Z" fill="#ffffff" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ex7dgl =
    '<svg viewBox="65.1 74.4 14.5 3.9" ><path transform="translate(-433.8, -415.49)" d="M 513.4503784179688 493.7154541015625 L 498.9439697265625 493.7154541015625 C 499.2828979492188 493.0614624023438 499.72021484375 492.46337890625 500.2405395507813 491.9420166015625 C 501.57421875 490.6054077148438 503.3856201171875 489.8554077148438 505.2738037109375 489.8580322265625 L 507.1205444335938 489.8579711914063 C 509.7864379882813 489.8568115234375 512.2294311523438 491.3455810546875 513.4503784179688 493.7154541015625 Z" fill="#ffffff" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_w2w599 =
    '<svg viewBox="107.4 64.9 66.5 66.6" ><path transform="translate(-587.52, -415.49)" d="M 709.4502563476563 493.71533203125 L 694.9439697265625 493.71533203125 C 695.2828979492188 493.0614013671875 695.7201538085938 492.4633178710938 696.240478515625 491.9419555664063 C 697.5741577148438 490.6052856445313 699.385498046875 489.8552856445313 701.2737426757813 489.85791015625 L 703.1204833984375 489.85791015625 C 705.786376953125 489.856689453125 708.2293701171875 491.345458984375 709.4502563476563 493.71533203125 Z" fill="#ffffff" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-622.85, -621.75)" d="M 796.5238647460938 753.2893676757813 L 740.2156982421875 753.2893676757813 C 740.0965576171875 753.2893676757813 739.9999389648438 753.1928100585938 739.9999389648438 753.0736694335938 C 739.9999389648438 752.9545288085938 740.0965576171875 752.85791015625 740.2156982421875 752.85791015625 L 796.5238647460938 752.85791015625 C 796.6430053710938 752.85791015625 796.7395629882813 752.9545288085938 796.7395629882813 753.0736694335938 C 796.7395629882813 753.1928100585938 796.6430053710938 753.2893676757813 796.5238647460938 753.2893676757813 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-511.83, -431.53)" d="M 656.5271606445313 560.43505859375 L 653.8823852539063 560.4348754882813 L 652.6239624023438 550.2329711914063 L 656.5275268554688 550.2332153320313 L 656.5271606445313 560.43505859375 Z" fill="#a0616a" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-497.86, -465.86)" d="M 638.0244750976563 594.0180053710938 L 643.1254272460938 594.0180053710938 L 643.1254272460938 597.2296752929688 L 634.81298828125 597.2296752929688 L 634.81298828125 597.2296752929688 C 634.81298828125 595.4559936523438 636.2507934570313 594.01806640625 638.0244750976563 594.0180053710938 Z" fill="#2f2e41" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-547.9, -431.53)" d="M 702.5271606445313 560.43505859375 L 699.8823852539063 560.4348754882813 L 698.6239624023438 550.2329711914063 L 702.5275268554688 550.2332153320313 L 702.5271606445313 560.43505859375 Z" fill="#a0616a" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-533.93, -465.86)" d="M 684.0244750976563 594.0180053710938 L 689.1254272460938 594.0180053710938 L 689.1254272460938 597.2296752929688 L 680.8129272460938 597.2296752929688 L 680.8129272460938 597.2296752929688 C 680.8129272460938 595.4559936523438 682.2507934570313 594.01806640625 684.0244750976563 594.0180053710938 Z" fill="#2f2e41" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-749.97, -400.64)" d="M 904.266845703125 499.1655578613281 C 903.68994140625 498.7945251464844 903.30712890625 498.1869812011719 903.22119140625 497.5065002441406 C 903.1353759765625 496.8260192871094 903.3553466796875 496.1424255371094 903.8218994140625 495.6396789550781 L 902.080322265625 470.9249572753906 L 907.096923828125 471.4114685058594 L 907.2347412109375 495.6147155761719 C 908.0450439453125 496.4733581542969 908.0850830078125 497.8024597167969 907.327880859375 498.7084045410156 C 906.57080078125 499.6143493652344 905.255615234375 499.8107604980469 904.266845703125 499.1656188964844 Z" fill="#a0616a" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-704.77, -480.42)" d="M 849.3450927734375 604.1862182617188 L 846.43359375 604.0474853515625 C 845.9185791015625 604.0230712890625 845.512451171875 603.6002807617188 845.5089111328125 603.0846557617188 C 844.7413330078125 591.2363891601563 843.67822265625 578.531982421875 845.3056640625 573.6238403320313 C 845.3038330078125 573.3408203125 845.4254150390625 573.0711059570313 845.6387939453125 572.8851318359375 C 845.85205078125 572.69921875 846.135986328125 572.6156005859375 846.416015625 572.6561889648438 L 858.064697265625 574.34716796875 C 858.5404052734375 574.4137573242188 858.894775390625 574.8201904296875 858.89599609375 575.3007202148438 C 860.3831787109375 581.1119384765625 860.450439453125 591.64990234375 860.3941650390625 602.59912109375 C 860.3961181640625 602.8578491210938 860.294677734375 603.106689453125 860.1124267578125 603.2903442382813 C 859.9300537109375 603.4739990234375 859.68212890625 603.5773315429688 859.42333984375 603.5773315429688 L 856.2841796875 603.5773315429688 C 855.8055419921875 603.5792236328125 855.397705078125 603.23046875 855.3251953125 602.7573852539063 L 853.388427734375 590.4456176757813 C 853.330078125 590.0731811523438 853.0057373046875 589.8009643554688 852.628662109375 589.8079223632813 C 852.2515869140625 589.8148193359375 851.9376220703125 590.098876953125 851.892822265625 590.4732666015625 L 850.3553466796875 603.3319091796875 C 850.2955322265625 603.8192138671875 849.88232421875 604.1858520507813 849.391357421875 604.1875 C 849.3760986328125 604.1875 849.3607177734375 604.1870727539063 849.3450927734375 604.1862182617188 Z" fill="#2f2e41" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-706.71, -381.19)" d="M 853.3359985351563 476.0764465332031 C 850.7688598632813 474.6501159667969 848.7631225585938 474.2752990722656 847.7958374023438 474.1788024902344 C 847.5361938476563 474.1537780761719 847.2980346679688 474.0233459472656 847.1371459960938 473.8179016113281 C 846.9725952148438 473.6111145019531 846.8999633789063 473.3458557128906 846.9362182617188 473.0841369628906 L 849.7273559570313 452.3620910644531 C 850.0541381835938 449.8971862792969 851.6351928710938 447.7776794433594 853.9048461914063 446.7621154785156 C 856.1018676757813 445.7522277832031 858.6653442382813 445.9531555175781 860.6780395507813 447.2931213378906 C 860.7737426757813 447.3567199707031 860.8676147460938 447.4216613769531 860.9597778320313 447.4879455566406 C 863.2908325195313 449.1959533691406 864.3662719726563 452.1382141113281 863.6859741210938 454.9468688964844 C 861.9744262695313 461.9487609863281 861.3864135742188 473.4276428222656 861.2859497070313 475.6576843261719 C 861.2698364257813 476.0463562011719 861.0214233398438 476.3872375488281 860.6564331054688 476.5216979980469 C 859.6034545898438 476.9043884277344 858.4921264648438 477.1022644042969 857.3716430664063 477.1065368652344 C 855.9603881835938 477.1150817871094 854.5706176757813 476.7603454589844 853.3359985351563 476.0764465332031 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-751.28, -393.69)" d="M 904.5350341796875 472.275146484375 C 904.297119140625 472.10400390625 904.1495361328125 471.8341674804688 904.134033203125 471.54150390625 L 903.7664794921875 464.8803100585938 C 903.6910400390625 463.5133666992188 904.6597900390625 462.31005859375 906.01123046875 462.092041015625 C 907.36279296875 461.8740844726563 908.660888671875 462.711669921875 909.0189208984375 464.0330200195313 L 910.6336669921875 469.988525390625 C 910.7733154296875 470.5059204101563 910.4678955078125 471.0386962890625 909.95068359375 471.1795654296875 L 905.3575439453125 472.4249267578125 C 905.0748291015625 472.502197265625 904.7723388671875 472.4471435546875 904.534912109375 472.275146484375 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_r0qjcu =
    '<svg viewBox="125.3 49.8 30.0 29.0" ><path transform="translate(-652.45, -385.51)" d="M 782.2068481445313 453.3789367675781 C 782.2333374023438 453.4953308105469 782.2506713867188 453.6136779785156 782.2584838867188 453.7327575683594 L 791.5261840820313 459.0792541503906 L 793.7787475585938 457.7824401855469 L 796.1802368164063 460.9262390136719 L 791.3611450195313 464.3609313964844 L 780.7882690429688 456.0199279785156 C 779.9054565429688 456.3466491699219 778.9122924804688 456.0929260253906 778.2943115234375 455.3827819824219 C 777.67626953125 454.6725769042969 777.5621948242188 453.6540832519531 778.0076904296875 452.8247375488281 C 778.4531860351563 451.9953308105469 779.3654174804688 451.5281677246094 780.2987670898438 451.6513977050781 C 781.2321166992188 451.7745666503906 781.9918823242188 452.4624328613281 782.2069702148438 453.3789367675781 Z" fill="#a0616a" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-703.75, -388.07)" d="M 843.162841796875 461.1806030273438 C 843.1317138671875 460.88916015625 843.2342529296875 460.5993041992188 843.44189453125 460.3923950195313 L 848.15869140625 455.6744995117188 C 849.1265869140625 454.7064819335938 850.669189453125 454.6254272460938 851.7332763671875 455.4866943359375 C 852.7972412109375 456.3480224609375 853.0391845703125 457.8737182617188 852.2940673828125 459.02197265625 L 848.9349365234375 464.1980590820313 C 848.6427001953125 464.6472778320313 848.0419921875 464.775146484375 847.592041015625 464.4839477539063 L 843.5999755859375 461.8931884765625 C 843.3538818359375 461.734130859375 843.193115234375 461.4721069335938 843.162841796875 461.1806030273438 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-716.31, -326.23)" d="M 869.018798828125 387.881103515625 C 868.0302734375 388.9341430664063 866.1944580078125 388.3688354492188 866.065673828125 386.9302978515625 C 866.0555419921875 386.818603515625 866.056396484375 386.7062377929688 866.06787109375 386.5946655273438 C 866.1343994140625 385.9574584960938 866.5025634765625 385.3789672851563 866.414306640625 384.7061767578125 C 866.3944091796875 384.5386962890625 866.33203125 384.379150390625 866.233154296875 384.2425537109375 C 865.4454345703125 383.187744140625 863.59619140625 384.71435546875 862.852783203125 383.7594604492188 C 862.39697265625 383.1739501953125 862.932861328125 382.2520751953125 862.5830078125 381.59765625 C 862.121337890625 380.73388671875 860.7537841796875 381.1600341796875 859.896240234375 380.6869506835938 C 858.942138671875 380.16064453125 858.9991455078125 378.6967163085938 859.627197265625 377.8062744140625 C 860.3931884765625 376.7203369140625 861.7362060546875 376.140869140625 863.0625 376.0573120117188 C 864.3887939453125 375.9738159179688 865.7060546875 376.3323364257813 866.9442138671875 376.81494140625 C 868.35107421875 377.3631591796875 869.74609375 378.1209106445313 870.6119384765625 379.3579711914063 C 871.664794921875 380.8623657226563 871.76611328125 382.8848266601563 871.239501953125 384.6439208984375 C 870.9190673828125 385.7139892578125 869.825927734375 387.0213623046875 869.018798828125 387.881103515625 Z" fill="#2f2e41" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_emp5xq =
    '<svg viewBox="144.0 503.5 227.0 142.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(144.04, 503.52)" d="M 15 0 L 212 0 C 220.2842712402344 0 227 6.531735897064209 227 14.58904075622559 L 227 142 L 0 142 L 0 14.58904075622559 C 0 6.531735897064209 6.715728759765625 0 15 0 Z" fill="#ffffff" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_u19fij =
    '<svg viewBox="7.6 7.8 19.3 19.3" ><path transform="translate(7.6, 7.76)" d="M 18.96314811706543 7.42041540145874 C 18.70656967163086 7.163883209228516 18.39493179321289 7.035665512084961 18.02861213684082 7.035665512084961 L 12.31213760375977 7.035665512084961 L 12.31213760375977 1.319045782089233 C 12.31213760375977 0.9527298212051392 12.18382453918457 0.641185462474823 11.92738723754883 0.3846535682678223 C 11.67090511322021 0.1283141076564789 11.35960006713867 0 10.99275398254395 0 L 8.354663848876953 0 C 7.988298892974854 0 7.676802635192871 0.1281697154045105 7.420271396636963 0.3847016990184784 C 7.163739204406738 0.6412336826324463 7.035521030426025 0.9527779817581177 7.035521030426025 1.319093823432922 L 7.035521030426025 7.035714626312256 L 1.319093823432922 7.035714626312256 C 0.9527779817581177 7.035714626312256 0.6412336826324463 7.163932800292969 0.3847016990184784 7.420463562011719 C 0.1281697303056717 7.676995754241943 9.665086508903187e-09 7.988250732421875 9.665086508903187e-09 8.35480785369873 L 9.665086508903187e-09 10.99323749542236 C 9.665086508903187e-09 11.35988903045654 0.1281215995550156 11.67119407653809 0.3846535682678223 11.92748546600342 C 0.641185462474823 12.18411350250244 0.9527298212051392 12.31223583221436 1.319045782089233 12.31223583221436 L 7.035472869873047 12.31223583221436 L 7.035472869873047 18.0289478302002 C 7.035472869873047 18.395263671875 7.163690567016602 18.7070484161377 7.420223236083984 18.96348571777344 C 7.676754951477051 19.21977996826172 7.988250732421875 19.347900390625 8.354616165161133 19.347900390625 L 10.99289894104004 19.347900390625 C 11.35950469970703 19.347900390625 11.67085552215576 19.21977996826172 11.92743587493896 18.96348571777344 C 12.18406200408936 18.7069091796875 12.3121862411499 18.395263671875 12.3121862411499 18.0289478302002 L 12.3121862411499 12.31223583221436 L 18.02856636047363 12.31223583221436 C 18.39521789550781 12.31223583221436 18.70666694641113 12.18411350250244 18.96310234069824 11.92748546600342 C 19.21958541870117 11.67119407653809 19.34785079956055 11.35988903045654 19.34785079956055 10.99323749542236 L 19.34785079956055 8.35480785369873 C 19.34775733947754 7.988250732421875 19.21977996826172 7.676802635192871 18.96314811706543 7.42041540145874 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_t3qb8j =
    '<svg viewBox="335.0 43.2 27.0 29.3" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(335.0, 43.2)" d="M 13.49995136260986 29.3478889465332 C 15.62860679626465 29.3478889465332 17.35527610778809 27.70566558837891 17.35527610778809 25.67939949035645 L 9.644627571105957 25.67939949035645 C 9.644627571105957 27.70566558837891 11.37129783630371 29.3478889465332 13.49995136260986 29.3478889465332 Z M 26.48100471496582 20.7664966583252 C 25.31663513183594 19.57652854919434 23.13795471191406 17.78642463684082 23.13795471191406 11.92257690429688 C 23.13795471191406 7.468807697296143 19.85457420349121 3.903497219085693 15.42731475830078 3.028792858123779 L 15.42731475830078 1.834243059158325 C 15.42731475830078 0.8213969469070435 14.56427955627441 0 13.49995136260986 0 C 12.43562602996826 0 11.57258987426758 0.8213969469070435 11.57258987426758 1.834243059158325 L 11.57258987426758 3.028793573379517 C 7.145328998565674 3.903498649597168 3.861944437026978 7.468807697296143 3.861944437026978 11.92257785797119 C 3.861944437026978 17.78642463684082 1.683268070220947 19.5765323638916 0.5188963413238525 20.7664966583252 C 0.1572903245687485 21.13621139526367 -0.003021733835339546 21.57814598083496 -8.31964825920295e-06 22.01091003417969 C 0.006621124688535929 22.95096206665039 0.7822661995887756 23.84515380859375 1.934584259986877 23.84515380859375 L 25.06531524658203 23.84515380859375 C 26.2176342010498 23.84515380859375 26.99388313293457 22.95096206665039 26.99990844726563 22.01091003417969 C 27.00292015075684 21.57814598083496 26.84260940551758 21.13563537597656 26.48100471496582 20.7664966583252 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
