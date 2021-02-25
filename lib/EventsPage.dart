import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './Homepage.dart';
import 'package:adobe_xd/page_link.dart';
import './ProfilePage.dart';
import './EventDetails1.dart';
import './Filters.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EventsPage extends StatelessWidget {
  EventsPage({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            top: 743,
            child: SizedBox(
              width: 412.0,
              height: 78.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 28.4, 375.0, 49.8),
                    size: Size(375.0, 78.1),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child:
                    // Adobe XD layer: 'Bottom Bar' (shape)
                    SvgPicture.string(
                      _svg_11kh35,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(279.0, 0.0, 60.0, 60.0),
                    size: Size(375.0, 78.1),
                    child:
                    // Adobe XD layer: 'Calendar Button' (group)
                    Stack(
                      children: <Widget>[
                        // Adobe XD layer: 'Calendar Circle' (shape)
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
                          offset: Offset(13.2, 13.0),
                          child:
                          // Adobe XD layer: 'Calendar Icon' (group)
                          SizedBox(
                            width: 33.0,
                            height: 33.0,
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(22.4, 0.0, 3.9, 7.8),
                                  size: Size(33.2, 33.2),
                                  child: SvgPicture.string(
                                    _svg_3xt7jb,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 3.9, 33.2, 7.9),
                                  size: Size(33.2, 33.2),
                                  child: SvgPicture.string(
                                    _svg_nil5yt,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(6.9, 0.0, 3.9, 7.8),
                                  size: Size(33.2, 33.2),
                                  child: SvgPicture.string(
                                    _svg_3lgccj,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 13.8, 33.2, 19.5),
                                  size: Size(33.2, 33.2),
                                  child: SvgPicture.string(
                                    _svg_6bgj4g,
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(167.5, 32.0, 40.0, 40.0),
                    size: Size(375.0, 78.1),
                    child:
                    // Adobe XD layer: 'Home Button' (group)
                    PageLink(
                      links: [
                        PageLinkInfo(
                          transition: LinkTransition.Fade,
                          ease: Curves.easeOut,
                          duration: 0.3,
                          pageBuilder: () => Homepage(),
                        ),
                      ],
                      child: Stack(
                        children: <Widget>[
                          SvgPicture.string(
                            _svg_cyebqd,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(38.0, 32.0, 40.0, 40.0),
                    size: Size(375.0, 78.1),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                    // Adobe XD layer: 'Profile Button' (group)
                    PageLink(
                      links: [
                        PageLinkInfo(
                          transition: LinkTransition.Fade,
                          ease: Curves.easeOut,
                          duration: 0.3,
                          pageBuilder: () => ProfilePage(),
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
                            // Adobe XD layer: 'Profile Circle' (shape)
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
                            bounds: Rect.fromLTWH(10.0, 9.0, 20.1, 22.0),
                            size: Size(40.0, 40.0),
                            child:
                            // Adobe XD layer: 'Profile Icon' (group)
                            Stack(
                              children: <Widget>[
                                Transform.translate(
                                  offset: Offset(5.0, 0.0),
                                  child: Container(
                                    width: 10.0,
                                    height: 10.0,
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
                                ),
                                Transform.translate(
                                  offset: Offset(0.0, 12.5),
                                  child: SvgPicture.string(
                                    _svg_gfhvpx,
                                    allowDrawingOutsideViewBox: true,
                                  ),
                                ),
                              ],
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
          Positioned(
            left: 30,
            top: 557,
            child: SizedBox(
              width: 349.0,
              height: 76.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(11.0, 0.0, 338.0, 67.2),
                    size: Size(349.0, 76.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                    // Adobe XD layer: 'Fest Background' (group)
                    Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 338.0, 67.2),
                          size: Size(338.0, 67.2),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child:
                          // Adobe XD layer: 'Background Image' (shape)
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: const AssetImage('assets/Background Image1.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(304.0, 24.6, 18.0, 18.0),
                          size: Size(338.0, 67.2),
                          child:
                          // Adobe XD layer: 'Next Button' (shape)
                          PageLink(
                            links: [
                              PageLinkInfo(
                                transition: LinkTransition.Fade,
                                ease: Curves.easeOut,
                                duration: 0.3,
                                pageBuilder: () => EventDetails1(),
                              ),
                            ],
                            child: SvgPicture.string(
                              _svg_pwr9hu,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 16.0, 242.0, 60.0),
                    size: Size(349.0, 76.0),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                    // Adobe XD layer: 'Gradient Background' (shape)
                    SvgPicture.string(
                      _svg_7u199j,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(177.5, 20.0, 67.5, 53.0),
                    size: Size(349.0, 76.0),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                    // Adobe XD layer: 'Club Info' (group)
                    Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 14.0, 67.5, 24.0),
                          size: Size(67.5, 53.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child:
                          // Adobe XD layer: 'Logo Background' (shape)
                          SvgPicture.string(
                            _svg_e0lvmc,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(1.5, 0.0, 64.0, 53.0),
                          size: Size(67.5, 53.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child:
                          // Adobe XD layer: 'Club Logo' (shape)
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: const AssetImage('assets/Montage Logo1.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(11.0, 50.0, 190.0, 15.0),
                    size: Size(349.0, 76.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'May 09th, 2021  |  05:00 PM',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(11.0, 25.0, 200.0, 21.0),
                    size: Size(349.0, 76.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Dance Competition',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 644,
            child: SizedBox(
              width: 349.0,
              height: 76.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(11.0, 0.0, 338.0, 67.2),
                    size: Size(349.0, 76.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                    // Adobe XD layer: 'Fest Background' (group)
                    Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 338.0, 67.2),
                          size: Size(338.0, 67.2),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child:
                          // Adobe XD layer: 'Background Image' (shape)
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: const AssetImage('assets/Background Image1.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(304.0, 24.6, 18.0, 18.0),
                          size: Size(338.0, 67.2),
                          child:
                          // Adobe XD layer: 'Next Button' (shape)
                          PageLink(
                            links: [
                              PageLinkInfo(
                                transition: LinkTransition.Fade,
                                ease: Curves.linear,
                                duration: 0.3,
                                pageBuilder: () => EventDetails1(),
                              ),
                            ],
                            child: SvgPicture.string(
                              _svg_pwr9hu,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 16.0, 242.0, 60.0),
                    size: Size(349.0, 76.0),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                    // Adobe XD layer: 'Gradient Background' (shape)
                    SvgPicture.string(
                      _svg_7u199j,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(177.5, 20.0, 67.5, 53.0),
                    size: Size(349.0, 76.0),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                    // Adobe XD layer: 'Club Info' (group)
                    Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 14.0, 67.5, 24.0),
                          size: Size(67.5, 53.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child:
                          // Adobe XD layer: 'Logo Background' (shape)
                          SvgPicture.string(
                            _svg_e0lvmc,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(1.5, 0.0, 64.0, 53.0),
                          size: Size(67.5, 53.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child:
                          // Adobe XD layer: 'Club Logo' (shape)
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: const AssetImage('assets/Montage Logo1.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(11.0, 50.0, 190.0, 15.0),
                    size: Size(349.0, 76.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'May 09th, 2021  |  05:00 PM',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(11.0, 25.0, 200.0, 21.0),
                    size: Size(349.0, 76.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Dance Competition',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 466,
            child: SizedBox(
              width: 349.0,
              height: 76.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(11.0, 0.0, 338.0, 67.2),
                    size: Size(349.0, 76.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                    // Adobe XD layer: 'Fest Background' (group)
                    Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 338.0, 67.2),
                          size: Size(338.0, 67.2),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child:
                          // Adobe XD layer: 'Background Image' (shape)
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: const AssetImage('assets/Background Image1.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(304.0, 24.6, 18.0, 18.0),
                          size: Size(338.0, 67.2),
                          child:
                          // Adobe XD layer: 'Next Button' (shape)
                          PageLink(
                            links: [
                              PageLinkInfo(
                                transition: LinkTransition.Fade,
                                ease: Curves.easeOut,
                                duration: 0.3,
                                pageBuilder: () => EventDetails1(),
                              ),
                            ],
                            child: SvgPicture.string(
                              _svg_pwr9hu,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 16.0, 242.0, 60.0),
                    size: Size(349.0, 76.0),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                    // Adobe XD layer: 'Gradient Background' (shape)
                    SvgPicture.string(
                      _svg_7u199j,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(177.5, 20.0, 67.5, 53.0),
                    size: Size(349.0, 76.0),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                    // Adobe XD layer: 'Club Info' (group)
                    Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 14.0, 67.5, 24.0),
                          size: Size(67.5, 53.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child:
                          // Adobe XD layer: 'Logo Background' (shape)
                          SvgPicture.string(
                            _svg_e0lvmc,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(1.5, 0.0, 64.0, 53.0),
                          size: Size(67.5, 53.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child:
                          // Adobe XD layer: 'Club Logo' (shape)
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: const AssetImage('assets/Montage Logo1.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(11.0, 50.0, 190.0, 15.0),
                    size: Size(349.0, 76.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'May 09th, 2021  |  05:00 PM',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(11.0, 25.0, 155.0, 21.0),
                    size: Size(349.0, 76.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'WTF Days',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 13,
            top: 426,
            child: Text(
              'Upcoming Events',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                color: const Color(0xff404040),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Positioned(
            left: 46,
            top: 137,
            child: SizedBox(
              width: 308.0,
              height: 266.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(298.2, 250.1, 6.0, 16.0),
                    size: Size(308.2, 266.1),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'S',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 11,
                        color: const Color(0xffbfbfbf),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(250.8, 250.1, 6.0, 16.0),
                    size: Size(308.2, 266.1),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'F',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 11,
                        color: const Color(0xffbfbfbf),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(201.9, 250.1, 6.0, 16.0),
                    size: Size(308.2, 266.1),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'T',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 11,
                        color: const Color(0xffbfbfbf),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(151.8, 249.1, 10.0, 15.0),
                    size: Size(308.2, 266.1),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'W',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        color: const Color(0xffbfbfbf),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(105.4, 250.1, 6.0, 16.0),
                    size: Size(308.2, 266.1),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'T',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 11,
                        color: const Color(0xffbfbfbf),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(55.3, 249.1, 8.0, 15.0),
                    size: Size(308.2, 266.1),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'M',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        color: const Color(0xffbfbfbf),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(8.5, 250.1, 6.0, 16.0),
                    size: Size(308.2, 266.1),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'S',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 11,
                        color: const Color(0xffbfbfbf),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(292.2, 213.1, 16.0, 19.0),
                    size: Size(308.2, 266.1),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '30',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(244.0, 233.2, 16.7, 4.7),
                    size: Size(308.2, 266.1),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                    // Adobe XD layer: '29 Dots' (group)
                    Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.0, 0.0, 4.7, 4.7),
                          size: Size(16.7, 4.7),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xfffe4f70),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x4dfe4f70),
                                  offset: Offset(0, 0),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 4.7, 4.7),
                          size: Size(16.7, 4.7),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xfffe4f70),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x4dfe4f70),
                                  offset: Offset(0, 0),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(12.0, 0.0, 4.7, 4.7),
                          size: Size(16.7, 4.7),
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xfffe4f70),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x4dfe4f70),
                                  offset: Offset(0, 0),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(244.0, 213.1, 16.0, 19.0),
                    size: Size(308.2, 266.1),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '29',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(202.0, 233.2, 4.7, 4.7),
                    size: Size(308.2, 266.1),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                    // Adobe XD layer: '28 Dots' (shape)
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xfffe4f70),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x4dfe4f70),
                            offset: Offset(0, 0),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(196.0, 213.1, 16.0, 19.0),
                    size: Size(308.2, 266.1),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '28',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(149.2, 213.1, 16.0, 19.0),
                    size: Size(308.2, 266.1),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '27',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(99.4, 213.1, 16.0, 19.0),
                    size: Size(308.2, 266.1),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '26',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(50.7, 213.1, 16.0, 19.0),
                    size: Size(308.2, 266.1),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '25',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(2.5, 213.1, 16.0, 19.0),
                    size: Size(308.2, 266.1),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '24',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(292.2, 168.6, 16.0, 19.0),
                    size: Size(308.2, 266.1),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '23',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(251.0, 188.1, 4.7, 4.7),
                    size: Size(308.2, 266.1),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                    // Adobe XD layer: '22 Dots' (shape)
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xfffe4f70),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x4dfe4f70),
                            offset: Offset(0, 0),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(245.0, 168.6, 16.0, 19.0),
                    size: Size(308.2, 266.1),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '22',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(202.0, 188.1, 4.7, 4.7),
                    size: Size(308.2, 266.1),
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                    // Adobe XD layer: '21 Dots' (shape)
                    SvgPicture.string(
                      _svg_jveg10,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(198.0, 168.6, 16.0, 19.0),
                    size: Size(308.2, 266.1),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '21',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(148.2, 168.6, 16.0, 19.0),
                    size: Size(308.2, 266.1),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '20',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(101.4, 168.6, 16.0, 19.0),
                    size: Size(308.2, 266.1),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '19',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(52.7, 168.6, 16.0, 19.0),
                    size: Size(308.2, 266.1),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '18',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(4.5, 168.6, 16.0, 19.0),
                    size: Size(308.2, 266.1),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '17',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(294.2, 124.1, 16.0, 19.0),
                    size: Size(308.2, 266.1),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '16',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(246.6, 124.1, 16.0, 19.0),
                    size: Size(308.2, 266.1),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '15',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(199.0, 142.8, 10.7, 4.7),
                    size: Size(308.2, 266.1),
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                    // Adobe XD layer: '14 Dots' (group)
                    Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 4.7, 4.7),
                          size: Size(10.7, 4.7),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xfffe4f70),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x4dfe4f70),
                                  offset: Offset(0, 0),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.0, 0.0, 4.7, 4.7),
                          size: Size(10.7, 4.7),
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xfffe4f70),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x4dfe4f70),
                                  offset: Offset(0, 0),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(198.0, 124.1, 16.0, 19.0),
                    size: Size(308.2, 266.1),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '14',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(154.0, 142.8, 4.7, 4.7),
                    size: Size(308.2, 266.1),
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                    // Adobe XD layer: '13 Dots' (shape)
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xfffe4f70),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x4dfe4f70),
                            offset: Offset(0, 0),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(150.0, 124.1, 16.0, 19.0),
                    size: Size(308.2, 266.1),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '13',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(82.5, 110.1, 52.6, 52.6),
                    size: Size(308.2, 266.1),
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                    // Adobe XD layer: 'Selector' (shape)
                    SvgPicture.string(
                      _svg_cl2nvh,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(97.1, 117.1, 22.0, 34.8),
                    size: Size(308.2, 266.1),
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                    // Adobe XD layer: 'Selected Date' (group)
                    Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 18.8, 22.0, 16.0),
                          size: Size(22.0, 34.8),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: Text(
                            'TUE',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(2.3, 0.0, 19.0, 21.0),
                          size: Size(22.0, 34.8),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child: Text(
                            '12',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(53.7, 124.1, 15.0, 19.0),
                    size: Size(308.2, 266.1),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '11',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(9.0, 142.8, 4.7, 4.7),
                    size: Size(308.2, 266.1),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                    // Adobe XD layer: '10 Dots' (shape)
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xfffe4f70),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x4dfe4f70),
                            offset: Offset(0, 0),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(5.0, 124.1, 15.0, 19.0),
                    size: Size(308.2, 266.1),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '10',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(296.2, 79.6, 15.0, 19.0),
                    size: Size(308.2, 266.1),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '09',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(247.6, 79.6, 16.0, 19.0),
                    size: Size(308.2, 266.1),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '08',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(198.8, 79.6, 16.0, 19.0),
                    size: Size(308.2, 266.1),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '07',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(151.2, 79.6, 16.0, 19.0),
                    size: Size(308.2, 266.1),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '06',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(102.4, 79.6, 16.0, 19.0),
                    size: Size(308.2, 266.1),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '05',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(53.7, 79.6, 16.0, 19.0),
                    size: Size(308.2, 266.1),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '04',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(5.5, 79.6, 16.0, 19.0),
                    size: Size(308.2, 266.1),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '03',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(295.2, 35.1, 16.0, 19.0),
                    size: Size(308.2, 266.1),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '02',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(249.6, 35.1, 15.0, 19.0),
                    size: Size(308.2, 266.1),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '01',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 82.0, 25.0),
                    size: Size(308.2, 266.1),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'May 2021',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: const Color(0xff2e2e2e),
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 331,
            top: 100,
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.linear,
                  duration: 0.3,
                  pageBuilder: () => Filters(),
                ),
              ],
              child: SizedBox(
                width: 37.0,
                height: 37.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 37.0, 37.0),
                      size: Size(37.0, 37.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19.0),
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
                              color: const Color(0x1a000000),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(8.8, 10.9, 19.4, 15.2),
                      size: Size(37.0, 37.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child:
                      // Adobe XD layer: 'Filter Icon' (group)
                      Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(8.9, 1.7, 10.6, 1.7),
                            size: Size(19.4, 15.2),
                            child: SvgPicture.string(
                              _svg_apf3b6,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 8.0, 5.1),
                            size: Size(19.4, 15.2),
                            child: SvgPicture.string(
                              _svg_2ln8c3,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(10.6, 5.1, 8.9, 5.1),
                            size: Size(19.4, 15.2),
                            child: SvgPicture.string(
                              _svg_hr4vl4,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 6.8, 9.7, 1.7),
                            size: Size(19.4, 15.2),
                            child: SvgPicture.string(
                              _svg_ri8ooj,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(10.6, 11.8, 8.9, 1.7),
                            size: Size(19.4, 15.2),
                            child: SvgPicture.string(
                              _svg_q90pw0,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 10.1, 9.7, 5.1),
                            size: Size(19.4, 15.2),
                            child: SvgPicture.string(
                              _svg_h5ay6j,
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
          Positioned(
            left: 13,
            top: 103,
            child: Text(
              'Our Events',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                color: const Color(0xff404040),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Positioned(
            left: 322,
            top: 35,
            child: FlatButton(
              onPressed: () async{
                dynamic result = await Navigator.pushNamed(context, '/Notifications');
              },
              child: SvgPicture.string(
                _svg_t3qb8j,
                allowDrawingOutsideViewBox: true,
              ),
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
          Positioned(
            left: 0,
            top: 35,
            child: FlatButton(
              onPressed: () async{
                dynamic result = await Navigator.pushNamed(context, '/NavBar');
              },
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

const String _svg_3xt7jb =
    '<svg viewBox="274.8 708.4 3.9 7.8" ><path transform="translate(-71.18, 708.4)" d="M 347.9465026855469 7.786113739013672 C 346.8714904785156 7.786113739013672 346.0000305175781 6.914653301239014 346.0000305175781 5.839585304260254 L 346.0000305175781 1.946528434753418 C 346.0000305175781 0.8714607954025269 346.8714904785156 0 347.9465026855469 0 C 349.0215759277344 0 349.8930358886719 0.8714607954025269 349.8930358886719 1.946528434753418 L 349.8930358886719 5.839585304260254 C 349.8930358886719 6.914653301239014 349.0215759277344 7.786113739013672 347.9465026855469 7.786113739013672 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nil5yt =
    '<svg viewBox="252.4 712.3 33.2 7.9" ><path transform="translate(252.38, 652.3)" d="M 29.6521167755127 60 L 28.28954696655273 60 L 28.28954696655273 61.946533203125 C 28.28954696655273 64.09316253662109 26.54312133789063 65.83958435058594 24.3964900970459 65.83958435058594 C 22.24985885620117 65.83958435058594 20.50343322753906 64.09316253662109 20.50343322753906 61.946533203125 L 20.50343322753906 60 L 12.71731948852539 60 L 12.71731948852539 61.946533203125 C 12.71731948852539 64.09316253662109 10.97089385986328 65.83958435058594 8.824262619018555 65.83958435058594 C 6.67763090133667 65.83958435058594 4.931205272674561 64.09316253662109 4.931205272674561 61.946533203125 L 4.931205272674561 60 L 3.5686354637146 60 C 1.600890040397644 60 0 61.60089111328125 0 63.56863403320313 L 0 67.91588592529297 L 33.22075271606445 67.91588592529297 L 33.22075271606445 63.56863403320313 C 33.22075271606445 61.60089111328125 31.61986351013184 60 29.6521167755127 60 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3lgccj =
    '<svg viewBox="259.3 708.4 3.9 7.8" ><path transform="translate(153.25, 708.4)" d="M 107.9465255737305 7.786113739013672 C 106.871467590332 7.786113739013672 106.0000076293945 6.914653301239014 106.0000076293945 5.839585304260254 L 106.0000076293945 1.946528434753418 C 106.0000076293945 0.8714607954025269 106.871467590332 0 107.9465255737305 0 C 109.021598815918 0 109.8930587768555 0.8714607954025269 109.8930587768555 1.946528434753418 L 109.8930587768555 5.839585304260254 C 109.8930587768555 6.914653301239014 109.021598815918 7.786113739013672 107.9465255737305 7.786113739013672 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6bgj4g =
    '<svg viewBox="252.4 722.2 33.2 19.5" ><path transform="translate(252.38, 510.16)" d="M 0 212.0000152587891 L 0 227.8966522216797 C 0 229.8643951416016 1.600890040397644 231.4652862548828 3.5686354637146 231.4652862548828 L 29.6521167755127 231.4652862548828 C 31.61986351013184 231.4652862548828 33.22075271606445 229.8643951416016 33.22075271606445 227.8966522216797 L 33.22075271606445 212.0000152587891 L 0 212.0000152587891 Z M 17.63321304321289 224.6524505615234 C 17.63321304321289 226.7990570068359 15.88678741455078 228.5454864501953 13.74015522003174 228.5454864501953 C 11.80868053436279 228.5454864501953 10.15121078491211 227.1047515869141 9.884536743164063 225.1942291259766 C 9.859685897827148 225.0159759521484 9.847098350524902 224.8337249755859 9.847098350524902 224.6524505615234 C 9.847098350524902 224.1149444580078 10.28286170959473 223.6791839599609 10.82036304473877 223.6791839599609 C 11.35786437988281 223.6791839599609 11.79362678527832 224.1149444580078 11.79362678527832 224.6524505615234 C 11.79362678527832 224.7440643310547 11.79998683929443 224.8358001708984 11.81244277954102 224.9252166748047 C 11.94552040100098 225.8794097900391 12.77428722381592 226.5989837646484 13.74015522003174 226.5989837646484 C 14.8134708404541 226.5989837646484 15.68668365478516 225.7257537841797 15.68668365478516 224.6524505615234 C 15.68668365478516 223.5791473388672 14.8134708404541 222.7059173583984 13.74015522003174 222.7059173583984 C 13.2026538848877 222.7059173583984 12.76689147949219 222.2701568603516 12.76689147949219 221.7326507568359 C 12.76689147949219 221.1951446533203 13.2026538848877 220.7593841552734 13.74015522003174 220.7593841552734 C 14.8134708404541 220.7593841552734 15.68668365478516 219.8861541748047 15.68668365478516 218.8128509521484 C 15.68668365478516 217.7395477294922 14.8134708404541 216.8663177490234 13.74015522003174 216.8663177490234 C 12.81192111968994 216.8663177490234 12.00865364074707 217.5258941650391 11.83015727996826 218.4345245361328 C 11.72647190093994 218.9619598388672 11.21447086334229 219.3054656982422 10.6876106262207 219.2019805908203 C 10.16016674041748 219.0983428955078 9.81653881072998 218.5868072509766 9.920158386230469 218.0593719482422 C 10.27741146087646 216.2402191162109 11.88394641876221 214.9198150634766 13.74015522003174 214.9198150634766 C 15.88678741455078 214.9198150634766 17.63321304321289 216.6662445068359 17.63321304321289 218.8128509521484 C 17.63321304321289 219.9748077392578 17.12088584899902 221.0187530517578 16.31106567382813 221.7326507568359 C 17.12088584899902 222.4465484619141 17.63321304321289 223.4904937744141 17.63321304321289 224.6524505615234 Z M 23.37365531921387 227.5722503662109 C 23.37365531921387 228.1097564697266 22.93789291381836 228.5454864501953 22.400390625 228.5454864501953 C 21.86289024353027 228.5454864501953 21.42712783813477 228.1097564697266 21.42712783813477 227.5722503662109 L 21.42712783813477 216.8663177490234 L 19.90409851074219 216.8663177490234 C 19.36659812927246 216.8663177490234 18.93083381652832 216.4305572509766 18.93083381652832 215.8930511474609 C 18.93083381652832 215.3555450439453 19.36659812927246 214.9198150634766 19.90409851074219 214.9198150634766 L 22.400390625 214.9198150634766 C 22.93789291381836 214.9198150634766 23.37365531921387 215.3555450439453 23.37365531921387 215.8930511474609 L 23.37365531921387 227.5722503662109 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_11kh35 =
    '<svg viewBox="-0.2 762.4 375.0 49.8" ><defs><filter id="shadow"><feDropShadow dx="0" dy="-3" stdDeviation="6"/></filter><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(13631.0, -7716.43)" d="M -13631.212890625 8528.576171875 L -13256.212890625 8528.36328125 L -13256.212890625 8479.013671875 C -13256.212890625 8479.013671875 -13263.8671875 8478.6826171875 -13277.1103515625 8479.013671875 C -13290.353515625 8479.3447265625 -13289.595703125 8515.310546875 -13325.1611328125 8515.310546875 C -13360.7265625 8515.310546875 -13355.052734375 8479.3447265625 -13375.8623046875 8479.013671875 C -13396.671875 8478.6826171875 -13631.212890625 8478.8486328125 -13631.212890625 8478.8486328125 L -13631.212890625 8528.576171875 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_cyebqd =
    '<svg viewBox="158.0 753.0 40.0 40.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(158.0, 753.0)" d="M 20 0 C 31.04569625854492 0 40 8.954306602478027 40 20 C 40 31.04569625854492 31.04569625854492 40 20 40 C 8.954306602478027 40 0 31.04569625854492 0 20 C 0 8.954306602478027 8.954306602478027 0 20 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(165.21, 760.0)" d="M 24.45757102966309 13.4313497543335 C 24.19749069213867 14.12438106536865 23.55317306518555 14.57225799560547 22.81535720825195 14.57225799560547 L 22.21504211425781 14.57225799560547 L 22.21504211425781 23.21549987792969 C 22.21504211425781 23.64923477172852 21.86302757263184 24.00125122070313 21.42929458618164 24.00125122070313 L 16.71479797363281 24.00125122070313 L 16.71479797363281 18.50100517272949 C 16.71479797363281 16.33469390869141 14.95236110687256 14.57225799560547 12.78605079650879 14.57225799560547 C 10.6197395324707 14.57225799560547 8.857303619384766 16.33469390869141 8.857303619384766 18.50100517272949 L 8.857303619384766 24.00125122070313 L 4.142808437347412 24.00125122070313 C 3.709074974060059 24.00125122070313 3.357059240341187 23.64923477172852 3.357059240341187 23.21549987792969 L 3.357059240341187 14.57225799560547 L 2.755960702896118 14.57225799560547 C 2.018142461776733 14.57225799560547 1.373827934265137 14.12516689300537 1.113744854927063 13.43213558197021 C 0.8536618947982788 12.73910427093506 1.044598937034607 11.97692775726318 1.60090959072113 11.49133491516113 L 10.77767562866211 2.800946712493896 C 11.90443992614746 1.734684705734253 13.66844844818115 1.734684705734253 14.79442501068115 2.800946712493896 L 23.99319458007813 11.51176452636719 C 24.52593231201172 11.97614192962646 24.71765518188477 12.73831939697266 24.45757102966309 13.4313497543335 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_gfhvpx =
    '<svg viewBox="-3465.0 6100.7 20.1 9.5" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-3465.0, 6090.7)" d="M 10.04962348937988 10.00000190734863 C 4.522334575653076 10.00000190734863 8.635443009552546e-06 12.28522682189941 8.635443009552546e-06 15.07828044891357 C 8.635443009552546e-06 15.07828044891357 -0.003917044494301081 15.08375549316406 8.635443009552546e-06 17.6174201965332 C 0.00393431494012475 20.15108299255371 20.0989875793457 20.15108299255371 20.09923934936523 17.6174201965332 C 20.09948921203613 15.08375549316406 20.09923934936523 15.07828044891357 20.09923934936523 15.07828044891357 C 20.09923934936523 12.28522682189941 15.57690906524658 10.00000190734863 10.04962348937988 10.00000190734863 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nu5sro =
    '<svg viewBox="24.0 652.0 338.0 67.2" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter><pattern id="image" patternUnits="userSpaceOnUse" width="6000.0" height="4000.0"><image xlink:href="null" x="0" y="0" width="6000.0" height="4000.0" /></pattern></defs><path transform="translate(24.0, 652.0)" d="M 326.5423583984375 0 L 11.4576416015625 0 C 5.129791259765625 0 0 6.015822410583496 0 13.43671703338623 L 0 53.74686813354492 C 0 61.16776275634766 5.129791259765625 67.18359375 11.4576416015625 67.18359375 L 326.5423583984375 67.18359375 C 332.8702392578125 67.18359375 338 61.16776275634766 338 53.74686813354492 L 338 13.43671703338623 C 338 6.015822410583496 332.8702392578125 0 326.5423583984375 0 Z" fill="url(#image)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_pwr9hu =
    '<svg viewBox="328.0 676.6 18.0 18.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(328.0, 676.56)" d="M 17.55813217163086 7.965863227844238 L 10.06999397277832 0.4776996076107025 C 9.479395866394043 -0.11289993673563 8.52153491973877 -0.11289993673563 7.930935859680176 0.4776996076107025 C 7.340336322784424 1.068299174308777 7.340336322784424 2.026159048080444 7.930935859680176 2.616758823394775 L 14.34884929656982 9.034642219543457 L 7.930935382843018 15.4524974822998 C 7.340335369110107 16.04309463500977 7.340335369110107 17.00095748901367 7.930935382843018 17.5915584564209 C 8.52153491973877 18.18215942382813 9.479395866394043 18.18215751647949 10.069993019104 17.5915584564209 L 17.55813217163086 10.10342216491699 C 18.14872932434082 9.51429271697998 18.14872932434082 8.556462287902832 17.55813217163086 7.965863227844238 Z M 8.554507255554199 7.512419700622559 L 2.609569311141968 1.246693730354309 C 2.01220440864563 0.6178856492042542 1.04463791847229 0.6178856492042542 0.4472730755805969 1.246693730354309 C -0.1500916630029678 1.875501990318298 -0.1500916182994843 2.895571947097778 0.4472730755805969 3.525144100189209 L 5.311461448669434 8.651646614074707 L 0.447272926568985 13.77814674377441 C -0.1500916928052902 14.406982421875 -0.1500916928052902 15.42776107788086 0.447272926568985 16.05659675598145 C 1.044637799263 16.68543434143066 2.012204170227051 16.68543434143066 2.609569311141968 16.05659675598145 L 8.554507255554199 9.790870666503906 C 9.151872634887695 9.162062644958496 9.151872634887695 8.141992568969727 8.554507255554199 7.512419700622559 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_e0lvmc =
    '<svg viewBox="190.5 690.0 67.5 24.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(190.5, 690.0)" d="M 2.288132667541504 0 L 65.21178436279297 0 C 66.47548675537109 0 67.49992370605469 2.149032831192017 67.49992370605469 4.799999713897705 L 67.49992370605469 19.19999885559082 C 67.49992370605469 21.85096740722656 66.47548675537109 23.99999809265137 65.21178436279297 23.99999809265137 L 2.288132667541504 23.99999809265137 C 1.024431943893433 23.99999809265137 0 21.85096740722656 0 19.19999885559082 L 0 4.799999713897705 C 0 2.149032831192017 1.024431943893433 0 2.288132667541504 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_7u199j =
    '<svg viewBox="13.0 668.0 242.0 60.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(13.0, 668.0)" d="M 8.203389167785645 0 L 233.7966003417969 0 C 238.3272094726563 0 242 5.372581958770752 242 12 L 242 48 C 242 54.62741851806641 238.3272094726563 60 233.7966003417969 60 L 8.203389167785645 60 C 3.672782421112061 60 0 54.62741851806641 0 48 L 0 12 C 0 5.372581958770752 3.672782421112061 0 8.203389167785645 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_qo5lve =
    '<svg viewBox="24.0 652.0 338.0 67.2" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter><pattern id="image" patternUnits="userSpaceOnUse" width="7952.0" height="5304.0"><image xlink:href="null" x="0" y="0" width="7952.0" height="5304.0" /></pattern></defs><path transform="translate(24.0, 652.0)" d="M 326.5423583984375 0 L 11.4576416015625 0 C 5.129791259765625 0 0 6.015822410583496 0 13.43671703338623 L 0 53.74686813354492 C 0 61.16776275634766 5.129791259765625 67.18359375 11.4576416015625 67.18359375 L 326.5423583984375 67.18359375 C 332.8702392578125 67.18359375 338 61.16776275634766 338 53.74686813354492 L 338 13.43671703338623 C 338 6.015822410583496 332.8702392578125 0 326.5423583984375 0 Z" fill="url(#image)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_jveg10 =
    '<svg viewBox="228.0 326.1 4.7 4.7" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="6"/></filter></defs><path transform="translate(228.0, 326.06)" d="M 2.338762044906616 0 C 3.630424499511719 0 4.677524089813232 1.047098994255066 4.677524089813232 2.338760852813721 C 4.677524089813232 3.630422592163086 3.630424499511719 4.677521705627441 2.338762044906616 4.677521705627441 C 1.047099471092224 4.677521705627441 0 3.630422592163086 0 2.338760852813721 C 0 1.047098994255066 1.047099471092224 0 2.338762044906616 0 Z" fill="#fe4f70" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_cl2nvh =
    '<svg viewBox="108.5 248.1 52.6 52.6" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(108.53, 248.13)" d="M 3 0 L 49.62215042114258 0 C 51.27900314331055 0 52.62215042114258 1.343145608901978 52.62215042114258 3 L 52.62215042114258 49.62211990356445 C 52.62215042114258 51.27897262573242 51.27900314331055 52.62211990356445 49.62215042114258 52.62211990356445 L 3 52.62211990356445 C 1.343145608901978 52.62211990356445 0 51.27897262573242 0 49.62211990356445 L 0 3 C 0 1.343145608901978 1.343145608901978 0 3 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_apf3b6 =
    '<svg viewBox="-22456.3 -24609.4 10.6 1.7" ><path transform="translate(-22478.34, -24619.41)" d="M 32.55748748779297 10.84459972381592 C 32.55748748779297 10.37814044952393 32.17934417724609 10.00000095367432 31.71288871765137 10.00000095367432 L 22.8445987701416 10.00000095367432 C 22.37814140319824 10.00000095367432 22 10.37814044952393 22 10.84459972381592 C 22 11.31105899810791 22.37814140319824 11.68919849395752 22.8445987701416 11.68919849395752 L 31.71288871765137 11.68919849395752 C 32.17934417724609 11.68919849395752 32.55748748779297 11.31105899810791 32.55748748779297 10.84459972381592 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2ln8c3 =
    '<svg viewBox="-22465.2 -24611.1 8.0 5.1" ><path transform="translate(-22466.21, -24617.1)" d="M 1.844599008560181 9.378070831298828 L 4.103901863098145 9.378070831298828 C 4.515253067016602 10.54154777526855 5.704981327056885 11.23945999145508 6.921259880065918 11.0307788848877 C 8.137537956237793 10.82209777832031 9.026585578918457 9.767522811889648 9.026585578918457 8.533472061157227 C 9.026585578918457 7.299421310424805 8.137537002563477 6.244846343994141 6.921258449554443 6.036166191101074 C 5.704979419708252 5.82748556137085 4.515251636505127 6.525399684906006 4.103901863098145 7.688875198364258 L 1.844599008560181 7.688873291015625 C 1.378139853477478 7.688873291015625 1 8.067012786865234 1 8.533472061157227 C 1 8.999931335449219 1.378139853477478 9.378070831298828 1.844599008560181 9.378070831298828 Z M 6.489894390106201 7.688873291015625 C 6.956353187561035 7.688873291015625 7.334493160247803 8.067012786865234 7.334493160247803 8.533472061157227 C 7.334493160247803 8.999931335449219 6.956353187561035 9.378070831298828 6.489894390106201 9.378070831298828 C 6.023435115814209 9.378070831298828 5.645294666290283 8.999931335449219 5.645294666290283 8.533472061157227 C 5.645294666290283 8.067012786865234 6.023435115814209 7.688873291015625 6.489894390106201 7.688873291015625 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hr4vl4 =
    '<svg viewBox="-22454.7 -24606.0 8.9 5.1" ><path transform="translate(-22480.65, -24624.03)" d="M 34.01972961425781 19.68887329101563 L 30.91583442687988 19.68887329101563 C 30.50448417663574 18.52539825439453 29.31475639343262 17.82748413085938 28.09847450256348 18.03616714477539 C 26.8821964263916 18.24484634399414 25.99315071105957 19.29941940307617 25.99315071105957 20.53347396850586 C 25.99315071105957 21.76752471923828 26.8821964263916 22.82210159301758 28.09847450256348 23.03078079223633 C 29.31475639343262 23.23945999145508 30.50448417663574 22.54154586791992 30.91583442687988 21.37807083129883 L 34.01972961425781 21.37807083129883 C 34.48619079589844 21.37807083129883 34.86433410644531 20.99993133544922 34.86433410644531 20.53347396850586 C 34.86433410644531 20.06701278686523 34.48619079589844 19.68887329101563 34.01972961425781 19.68887329101563 Z M 28.52984046936035 21.37807083129883 C 28.06337928771973 21.37807083129883 27.68524360656738 20.99993133544922 27.68524360656738 20.53347396850586 C 27.68524360656738 20.06701278686523 28.06337928771973 19.68887329101563 28.52984046936035 19.68887329101563 C 28.99629783630371 19.68887329101563 29.37444114685059 20.06701278686523 29.37444114685059 20.53347396850586 C 29.37444114685059 20.99993133544922 28.99629783630371 21.37807083129883 28.52984046936035 21.37807083129883 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ri8ooj =
    '<svg viewBox="-22465.2 -24604.3 9.7 1.7" ><path transform="translate(-22466.21, -24626.35)" d="M 9.868289947509766 22 L 1.844599008560181 22 C 1.378139853477478 22 1 22.37814140319824 1 22.8445987701416 C 1 23.31105804443359 1.378139853477478 23.6891975402832 1.844599008560181 23.6891975402832 L 9.868289947509766 23.6891975402832 C 10.33474922180176 23.6891975402832 10.71288871765137 23.31105804443359 10.71288871765137 22.8445987701416 C 10.71288871765137 22.37814140319824 10.33474922180176 22 9.868289947509766 22 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_q90pw0 =
    '<svg viewBox="-22454.7 -24599.3 8.9 1.7" ><path transform="translate(-22480.66, -24633.28)" d="M 34.0236930847168 34 L 26.84460067749023 34 C 26.37813949584961 34 26 34.37813949584961 26 34.84459686279297 C 26 35.31105804443359 26.37813949584961 35.6891975402832 26.84460067749023 35.6891975402832 L 34.0236930847168 35.6891975402832 C 34.49015045166016 35.6891975402832 34.86828994750977 35.31105804443359 34.86828994750977 34.84459686279297 C 34.86828994750977 34.37813949584961 34.49015045166016 34 34.0236930847168 34 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_h5ay6j =
    '<svg viewBox="-22465.2 -24601.0 9.7 5.1" ><path transform="translate(-22466.21, -24630.97)" d="M 8.179091453552246 29.99999809265137 C 7.106374263763428 30.0012264251709 6.150672435760498 30.67782783508301 5.793099880218506 31.68919563293457 L 1.844599008560181 31.68919563293457 C 1.378139853477478 31.68919563293457 1 32.06733322143555 1 32.53379058837891 C 1 33.0002555847168 1.378139853477478 33.37839508056641 1.844599008560181 33.37839508056641 L 5.793099880218506 33.37839508056641 C 6.222742557525635 34.59360122680664 7.496204853057861 35.29262542724609 8.752081871032715 35.00262451171875 C 10.00795745849609 34.71261978149414 10.84599685668945 33.52601623535156 10.6993236541748 32.24546051025391 C 10.55265235900879 30.96490669250488 9.468014717102051 29.99852561950684 8.17909049987793 29.99999809265137 Z M 8.179091453552246 33.37839508056641 C 7.712632656097412 33.37839508056641 7.334493160247803 33.0002555847168 7.334493160247803 32.53379058837891 C 7.334493160247803 32.06733322143555 7.71263313293457 31.68919563293457 8.179091453552246 31.68919563293457 C 8.645551681518555 31.68919563293457 9.023691177368164 32.06733322143555 9.023691177368164 32.53379058837891 C 9.023691177368164 33.0002555847168 8.645549774169922 33.37839508056641 8.179091453552246 33.37839508056641 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_t3qb8j =
    '<svg viewBox="335.0 43.2 27.0 29.3" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(335.0, 43.2)" d="M 13.49995136260986 29.3478889465332 C 15.62860679626465 29.3478889465332 17.35527610778809 27.70566558837891 17.35527610778809 25.67939949035645 L 9.644627571105957 25.67939949035645 C 9.644627571105957 27.70566558837891 11.37129783630371 29.3478889465332 13.49995136260986 29.3478889465332 Z M 26.48100471496582 20.7664966583252 C 25.31663513183594 19.57652854919434 23.13795471191406 17.78642463684082 23.13795471191406 11.92257690429688 C 23.13795471191406 7.468807697296143 19.85457420349121 3.903497219085693 15.42731475830078 3.028792858123779 L 15.42731475830078 1.834243059158325 C 15.42731475830078 0.8213969469070435 14.56427955627441 0 13.49995136260986 0 C 12.43562602996826 0 11.57258987426758 0.8213969469070435 11.57258987426758 1.834243059158325 L 11.57258987426758 3.028793573379517 C 7.145328998565674 3.903498649597168 3.861944437026978 7.468807697296143 3.861944437026978 11.92257785797119 C 3.861944437026978 17.78642463684082 1.683268070220947 19.5765323638916 0.5188963413238525 20.7664966583252 C 0.1572903245687485 21.13621139526367 -0.003021733835339546 21.57814598083496 -8.31964825920295e-06 22.01091003417969 C 0.006621124688535929 22.95096206665039 0.7822661995887756 23.84515380859375 1.934584259986877 23.84515380859375 L 25.06531524658203 23.84515380859375 C 26.2176342010498 23.84515380859375 26.99388313293457 22.95096206665039 26.99990844726563 22.01091003417969 C 27.00292015075684 21.57814598083496 26.84260940551758 21.13563537597656 26.48100471496582 20.7664966583252 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
