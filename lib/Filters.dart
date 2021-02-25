import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './Categories.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Filters extends StatelessWidget {
  Filters({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 90,
            top: 293,
            child: SizedBox(
              height: 52.62,
              width: 52.62,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.all(
                      Radius.elliptical(99.0, 9999.0)),
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
          ),
          Positioned(
            left: 157,
            top: 293,
            child: SizedBox(
              height: 52.62,
              width: 52.62,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.all(
                      Radius.elliptical(99.0, 9999.0)),
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
          ),
          Positioned(
            left: 223,
            top: 293,
            child: SizedBox(
              height: 52.62,
              width: 52.62,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.all(
                      Radius.elliptical(99.0, 9999.0)),
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
          ),
          Positioned(
            left: 290,
            top: 293,
            child: SizedBox(
              height: 52.62,
              width: 52.62,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.all(
                      Radius.elliptical(99.0, 9999.0)),
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
          ),
          Positioned(
            left: 354,
            top: 293,
            child: SizedBox(
              height: 52.62,
              width: 52.62,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.all(
                      Radius.elliptical(99.0, 9999.0)),
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
          ),
          Positioned(
            left: 25,
            top: 744,
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
            width: 360.0,
            height: 48.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 333.0, 48.0),
                  size: Size(333.0, 48.0),
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
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(145.0, 12.0, 54.0, 21.0),
                  size: Size(333.0, 48.0),
                  child: Text(
                    'Apply',
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
            left: 25,
            top: 596,
            child: SizedBox(
                width: 399.0,
                height: 113.0,
                child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 44.0, 25.0),
                size: Size(399.0, 113.0),
                fixedWidth: true,
                fixedHeight: true,
                child: Text(
                  'Tags',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    color: const Color(0xff404040),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 35.0, 91.0, 34.0),
                size: Size(399.0, 113.0),
                pinLeft: true,
                fixedWidth: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Gaming tag' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 91.0, 34.0),
                      size: Size(91.0, 34.0),
                      child:
                          // Adobe XD layer: 'Tag box' (shape)
                          Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17.0),
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
                      bounds: Rect.fromLTWH(17.0, 7.0, 57.0, 20.0),
                      size: Size(91.0, 34.0),
                      child: Text(
                        'Gaming',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: const Color(0xffffffff),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(101.0, 35.0, 89.0, 34.0),
                size: Size(399.0, 113.0),
                fixedWidth: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Finance tag' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 89.0, 34.0),
                      size: Size(89.0, 34.0),
                      child:
                          // Adobe XD layer: 'Tag box' (shape)
                          Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17.0),
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
                      bounds: Rect.fromLTWH(17.0, 7.0, 65.0, 20.0),
                      size: Size(89.0, 34.0),
                      child: Text(
                        'Finance',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: const Color(0xff9d9d9d),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(200.0, 35.0, 104.0, 34.0),
                size: Size(399.0, 113.0),
                fixedWidth: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Marketing tag' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 104.0, 34.0),
                      size: Size(104.0, 34.0),
                      child:
                          // Adobe XD layer: 'Tag box' (shape)
                          Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17.0),
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
                      bounds: Rect.fromLTWH(17.0, 7.0, 78.0, 20.0),
                      size: Size(104.0, 34.0),
                      child: Text(
                        'Marketing',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: const Color(0xff9d9d9d),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(314.0, 35.0, 85.0, 34.0),
                size: Size(399.0, 113.0),
                pinRight: true,
                fixedWidth: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Debate tag' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 85.0, 34.0),
                      size: Size(85.0, 34.0),
                      child:
                          // Adobe XD layer: 'Tag box' (shape)
                          Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17.0),
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
                      bounds: Rect.fromLTWH(17.0, 7.0, 61.0, 20.0),
                      size: Size(85.0, 34.0),
                      child: Text(
                        'Debate',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: const Color(0xff9d9d9d),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(274.0, 79.0, 99.0, 34.0),
                size: Size(399.0, 113.0),
                pinRight: true,
                pinBottom: true,
                fixedWidth: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Seminars tag' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 99.0, 34.0),
                      size: Size(99.0, 34.0),
                      child:
                          // Adobe XD layer: 'Tag box' (shape)
                          Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17.0),
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
                      bounds: Rect.fromLTWH(17.0, 7.0, 75.0, 20.0),
                      size: Size(99.0, 34.0),
                      child: Text(
                        'Seminars',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: const Color(0xff9d9d9d),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 79.0, 92.0, 34.0),
                size: Size(399.0, 113.0),
                pinLeft: true,
                pinBottom: true,
                fixedWidth: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Trekking Tag' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 92.0, 34.0),
                      size: Size(92.0, 34.0),
                      child:
                          // Adobe XD layer: 'Tag box' (shape)
                          Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17.0),
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
                      bounds: Rect.fromLTWH(17.0, 7.0, 66.0, 20.0),
                      size: Size(92.0, 34.0),
                      child: Text(
                        'Trekking',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: const Color(0xff9d9d9d),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(102.0, 79.0, 78.0, 34.0),
                size: Size(399.0, 113.0),
                pinBottom: true,
                fixedWidth: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Sports tag' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 78.0, 34.0),
                      size: Size(78.0, 34.0),
                      child:
                          // Adobe XD layer: 'Tag box' (shape)
                          Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17.0),
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
                      bounds: Rect.fromLTWH(17.0, 7.0, 54.0, 20.0),
                      size: Size(78.0, 34.0),
                      child: Text(
                        'Sports',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: const Color(0xff9d9d9d),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(190.0, 79.0, 74.0, 34.0),
                size: Size(399.0, 113.0),
                pinBottom: true,
                fixedWidth: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Music tag' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 74.0, 34.0),
                      size: Size(74.0, 34.0),
                      child:
                          // Adobe XD layer: 'Tag box' (shape)
                          Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17.0),
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
                      bounds: Rect.fromLTWH(17.0, 7.0, 50.0, 20.0),
                      size: Size(74.0, 34.0),
                      child: Text(
                        'Music',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: const Color(0xff9d9d9d),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ],
                ),
              ),
          ),
          Positioned(
            left: 25,
            top: 366,
            child: SizedBox(
                width: 330.0,
                height: 210.0,
                child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 152.0, 25.0),
                size: Size(330.0, 210.0),
                fixedWidth: true,
                fixedHeight: true,
                child: Text(
                  'Preferred Time',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    color: const Color(0xff404040),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 35.0, 330.0, 40.0),
                size: Size(330.0, 210.0),
                pinLeft: true,
                pinRight: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Morning' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 11.0, 20.0, 19.2),
                      size: Size(330.0, 40.0),
                      pinLeft: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child:
                          // Adobe XD layer: 'Cloud icon' (group)
                          Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 8.9, 15.1, 10.4),
                            size: Size(20.0, 19.2),
                            child: SvgPicture.string(
                              _svg_5k2qjp,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(6.3, 4.1, 13.7, 10.7),
                            size: Size(20.0, 19.2),
                            child: SvgPicture.string(
                              _svg_8wfb7x,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(9.5, 0.0, 1.3, 2.8),
                            size: Size(20.0, 19.2),
                            child: SvgPicture.string(
                              _svg_j3vz3q,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(2.1, 7.4, 2.8, 1.3),
                            size: Size(20.0, 19.2),
                            child: SvgPicture.string(
                              _svg_4z4jwi,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(13.7, 2.1, 2.3, 2.3),
                            size: Size(20.0, 19.2),
                            child: SvgPicture.string(
                              _svg_1qbi84,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(4.3, 2.1, 2.3, 2.3),
                            size: Size(20.0, 19.2),
                            child: SvgPicture.string(
                              _svg_s6n209,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(32.0, 23.0, 132.0, 17.0),
                      size: Size(330.0, 40.0),
                      pinLeft: true,
                      pinBottom: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        '00:00 AM - 11:59 AM',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 13,
                          color: const Color(0xff9d9d9d),
                          fontWeight: FontWeight.w300,
                          height: 1.1666666666666667,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(32.0, 0.0, 76.0, 23.0),
                      size: Size(330.0, 40.0),
                      pinLeft: true,
                      pinTop: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        'Morning',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 17,
                          color: const Color(0xff404040),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(310.0, 10.0, 20.0, 20.0),
                      size: Size(330.0, 40.0),
                      pinRight: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child:
                          // Adobe XD layer: 'Tick circle' (shape)
                          Container(
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
                      bounds: Rect.fromLTWH(315.0, 17.0, 10.3, 6.8),
                      size: Size(330.0, 40.0),
                      child:
                          // Adobe XD layer: 'Selected circle' (group)
                          Stack(
                        children: <Widget>[
                          SvgPicture.string(
                            _svg_dko6b1,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 80.0, 330.0, 40.0),
                size: Size(330.0, 210.0),
                pinLeft: true,
                pinRight: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Afternoon' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 12.0, 20.0, 20.0),
                      size: Size(330.0, 40.0),
                      child:
                          // Adobe XD layer: 'Sunny icon' (shape)
                          SvgPicture.string(
                        _svg_nahds6,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(31.0, 23.0, 132.0, 17.0),
                      size: Size(330.0, 40.0),
                      pinLeft: true,
                      pinBottom: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        '12:00 PM - 03:59 PM',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 13,
                          color: const Color(0xff9d9d9d),
                          fontWeight: FontWeight.w300,
                          height: 1.1666666666666667,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(32.0, 0.0, 88.0, 23.0),
                      size: Size(330.0, 40.0),
                      pinLeft: true,
                      pinTop: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        'Afternoon',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 17,
                          color: const Color(0xff404040),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(310.0, 12.0, 20.0, 20.0),
                      size: Size(330.0, 40.0),
                      pinRight: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child:
                          // Adobe XD layer: 'Tick circle' (shape)
                          Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(9999.0, 9999.0)),
                          color: const Color(0xffffffff),
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
                  ],
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 125.0, 330.0, 40.0),
                size: Size(330.0, 210.0),
                pinLeft: true,
                pinRight: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Evening' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 11.0, 20.0, 18.6),
                      size: Size(330.0, 40.0),
                      pinLeft: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child:
                          // Adobe XD layer: 'Evening icon' (group)
                          Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(12.1, 3.1, 4.9, 4.7),
                            size: Size(20.0, 18.6),
                            child: SvgPicture.string(
                              _svg_w13sqh,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(13.4, 0.0, 1.2, 2.3),
                            size: Size(20.0, 18.6),
                            child: SvgPicture.string(
                              _svg_qr3gax,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(17.7, 5.4, 2.3, 1.2),
                            size: Size(20.0, 18.6),
                            child: SvgPicture.string(
                              _svg_nf7fvw,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(16.4, 1.6, 2.0, 2.0),
                            size: Size(20.0, 18.6),
                            child: SvgPicture.string(
                              _svg_4couuz,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(16.4, 8.5, 2.0, 2.0),
                            size: Size(20.0, 18.6),
                            child: SvgPicture.string(
                              _svg_8uxxuf,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(9.5, 1.6, 2.0, 2.0),
                            size: Size(20.0, 18.6),
                            child: SvgPicture.string(
                              _svg_rf6x39,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 8.6, 11.1, 4.5),
                            size: Size(20.0, 18.6),
                            child: SvgPicture.string(
                              _svg_ihtpka,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 14.1, 8.3, 4.5),
                            size: Size(20.0, 18.6),
                            child: SvgPicture.string(
                              _svg_329wgx,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(3.1, 4.2, 12.7, 8.8),
                            size: Size(20.0, 18.6),
                            child: SvgPicture.string(
                              _svg_fde8v2,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(33.0, 23.0, 126.0, 17.0),
                      size: Size(330.0, 40.0),
                      pinLeft: true,
                      pinBottom: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        '04:00 PM - 06:59 PM',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 13,
                          color: const Color(0xff9d9d9d),
                          fontWeight: FontWeight.w300,
                          height: 1.1666666666666667,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(32.0, 0.0, 72.0, 23.0),
                      size: Size(330.0, 40.0),
                      pinLeft: true,
                      pinTop: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        'Evening',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 17,
                          color: const Color(0xff404040),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(310.0, 10.0, 20.0, 20.0),
                      size: Size(330.0, 40.0),
                      pinRight: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child:
                          // Adobe XD layer: 'Tick circle' (shape)
                          Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(9999.0, 9999.0)),
                          color: const Color(0xffffffff),
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
                  ],
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 170.0, 330.0, 40.0),
                size: Size(330.0, 210.0),
                pinLeft: true,
                pinRight: true,
                pinBottom: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Night' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 10.0, 20.0, 19.4),
                      size: Size(330.0, 40.0),
                      pinLeft: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child:
                          // Adobe XD layer: 'Moon icon' (group)
                          Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(2.8, 0.0, 16.2, 16.2),
                            size: Size(20.0, 19.4),
                            child: SvgPicture.string(
                              _svg_sa4y9,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(9.8, 0.7, 10.2, 5.9),
                            size: Size(20.0, 19.4),
                            child: SvgPicture.string(
                              _svg_42wufd,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 14.6, 8.3, 4.9),
                            size: Size(20.0, 19.4),
                            child: SvgPicture.string(
                              _svg_sgdtsw,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(1.5, 0.7, 2.1, 2.1),
                            size: Size(20.0, 19.4),
                            child: SvgPicture.string(
                              _svg_ugkkv4,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.9, 10.4, 1.3, 1.3),
                            size: Size(20.0, 19.4),
                            child: SvgPicture.string(
                              _svg_f6fu34,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(16.4, 15.0, 1.3, 1.3),
                            size: Size(20.0, 19.4),
                            child: SvgPicture.string(
                              _svg_scoudi,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(14.9, 7.8, 1.3, 1.3),
                            size: Size(20.0, 19.4),
                            child: Container(
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
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(10.3, 17.0, 1.3, 1.3),
                            size: Size(20.0, 19.4),
                            child: SvgPicture.string(
                              _svg_tydvu3,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(27.0, 23.0, 138.0, 17.0),
                      size: Size(330.0, 40.0),
                      pinLeft: true,
                      pinBottom: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        '07:00 PM - 11:59 PM',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 13,
                          color: const Color(0xff9d9d9d),
                          fontWeight: FontWeight.w300,
                          height: 1.1666666666666667,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(32.0, 0.0, 52.0, 23.0),
                      size: Size(330.0, 40.0),
                      pinLeft: true,
                      pinTop: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        'Night',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 17,
                          color: const Color(0xff404040),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(310.0, 10.0, 20.0, 20.0),
                      size: Size(330.0, 40.0),
                      pinRight: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child:
                          // Adobe XD layer: 'Tick circle' (shape)
                          Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(9999.0, 9999.0)),
                          color: const Color(0xffffffff),
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
                  ],
                ),
              ),
            ],
                ),
              ),
          ),
          Positioned(
            left: 25,
            top: 258,
            child: SizedBox(
                width: 383.0,
                height: 88.0,
                child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 150.0, 25.0),
                size: Size(382.6, 87.6),
                fixedWidth: true,
                fixedHeight: true,
                child: Text(
                  'Preferred Date',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    color: const Color(0xff404040),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 35.0, 52.6, 52.6),
                size: Size(382.6, 87.6),
                pinLeft: true,
                pinBottom: true,
                fixedWidth: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Date-1' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 52.6, 52.6),
                      size: Size(52.6, 52.6),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                          // Adobe XD layer: 'Selector' (shape)
                          SvgPicture.string(
                        _svg_gocf2o,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(16.0, 8.0, 20.0, 35.8),
                      size: Size(52.6, 52.6),
                      fixedWidth: true,
                      fixedHeight: true,
                      child:
                          // Adobe XD layer: 'Selected Date' (group)
                          Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 18.8, 22.0, 17.0),
                            size: Size(20.0, 35.8),
                            pinLeft: true,
                            pinRight: true,
                            pinBottom: true,
                            fixedHeight: true,
                            child: Text(
                              'TUE',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                color: const Color(0xffffffff),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(1.3, 0.0, 19.0, 23.0),
                            size: Size(20.0, 35.8),
                            pinRight: true,
                            pinTop: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: Text(
                              '12',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                color: const Color(0xffffffff),
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(66.0, 35.0, 52.6, 52.6),
                size: Size(382.6, 87.6),
                pinBottom: true,
                fixedWidth: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Date-2' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 52.6, 52.6),
                      size: Size(52.6, 52.6),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                          // Adobe XD layer: 'Selector' (shape)
                          SvgPicture.string(
                        _svg_bj0p7m,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(13.0, 26.8, 26.0, 17.0),
                      size: Size(52.6, 52.6),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        'WED',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: const Color(0xff404040),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(17.0, 8.0, 18.0, 23.0),
                      size: Size(52.6, 52.6),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        '13',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: const Color(0xff404040),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(132.0, 35.0, 52.6, 52.6),
                size: Size(382.6, 87.6),
                pinBottom: true,
                fixedWidth: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Date-3' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 52.6, 52.6),
                      size: Size(52.6, 52.6),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                          // Adobe XD layer: 'Selector' (shape)
                          SvgPicture.string(
                        _svg_bj0p7m,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(15.0, 26.8, 24.0, 17.0),
                      size: Size(52.6, 52.6),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        'THU',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: const Color(0xff404040),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(18.0, 8.0, 18.0, 23.0),
                      size: Size(52.6, 52.6),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        '14',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: const Color(0xff404040),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(198.0, 35.0, 52.6, 52.6),
                size: Size(382.6, 87.6),
                pinBottom: true,
                fixedWidth: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Date-4' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 52.6, 52.6),
                      size: Size(52.6, 52.6),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                          // Adobe XD layer: 'Selector' (shape)
                          SvgPicture.string(
                        _svg_bj0p7m,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(18.0, 26.8, 18.0, 17.0),
                      size: Size(52.6, 52.6),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        'FRI',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: const Color(0xff404040),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(16.0, 8.0, 18.0, 23.0),
                      size: Size(52.6, 52.6),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        '15',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: const Color(0xff404040),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(264.0, 35.0, 52.6, 52.6),
                size: Size(382.6, 87.6),
                pinBottom: true,
                fixedWidth: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Date-5' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 52.6, 52.6),
                      size: Size(52.6, 52.6),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                          // Adobe XD layer: 'Selector' (shape)
                          SvgPicture.string(
                        _svg_bj0p7m,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(16.0, 26.8, 22.0, 17.0),
                      size: Size(52.6, 52.6),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        'SAT',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: const Color(0xff404040),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(16.0, 8.0, 18.0, 23.0),
                      size: Size(52.6, 52.6),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        '16',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: const Color(0xff404040),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(330.0, 35.0, 52.6, 52.6),
                size: Size(382.6, 87.6),
                pinRight: true,
                pinBottom: true,
                fixedWidth: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Date-6' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 52.6, 52.6),
                      size: Size(52.6, 52.6),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                          // Adobe XD layer: 'Selector' (shape)
                          SvgPicture.string(
                        _svg_bj0p7m,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(14.0, 26.8, 24.0, 17.0),
                      size: Size(52.6, 52.6),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        'SUN',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: const Color(0xff404040),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(17.0, 8.0, 18.0, 23.0),
                      size: Size(52.6, 52.6),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        '17',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: const Color(0xff404040),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
                ),
              ),
          ),
          Positioned(
            left: 25,
            top: 190,
            child: SizedBox(
                width: 363.0,
                height: 48.0,
                child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 333.0, 48.0),
                size: Size(333.0, 48.0),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child:
                    // Adobe XD layer: 'Dropdown' (shape)
                    Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    color: const Color(0x1a9d9d9d),
                  ),
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(330.0, 21.0, -18.4, 6.1),
                size: Size(333.0, 48.0),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child:
                    // Adobe XD layer: 'Dropdown Arrow' (shape)
                    SvgPicture.string(
                  _svg_2a2k3i,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(19.0, 14.0, 105.0, 20.0),
                size: Size(333.0, 48.0),
                pinLeft: true,
                fixedWidth: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Query Placeholder' (text)
                    Text(
                  'Select Clubs',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
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
            left: 25,
            top: 155,
            child: Text(
              'Clubs',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                color: const Color(0xff404040),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Positioned(
            left: 315,
            top: 113,
            child: Text(
              'Clear all',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                color: const Color(0xff9d9d9d),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Positioned(
            left: 10,
            top: 110,
            child: Text(
              'Set Filters',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 22,
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
          Positioned(
            left: 0,
            top: 35,
            child: FlatButton(
              onPressed: () async{
                dynamic result = await Navigator.pushNamed(context, '/EventsPage');
              },
              child: SvgPicture.string(
              _svg_ah28f4,
              allowDrawingOutsideViewBox: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_5k2qjp =
    '<svg viewBox="21.0 380.9 15.1 10.4" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(20.8, 338.76)" d="M 11.56051349639893 45.39964294433594 L 11.31691551208496 45.39964294433594 C 11.22833442687988 45.04531860351563 11.09546375274658 44.64670562744141 10.87401008605957 44.22594451904297 C 10.14321708679199 42.85293960571289 8.836647987365723 42.09999847412109 7.220044612884521 42.09999847412109 C 5.581295967102051 42.09999847412109 4.274726867675781 42.85293960571289 3.566078424453735 44.22594451904297 C 3.344625949859619 44.66884613037109 3.211754083633423 45.11175155639648 3.123173236846924 45.4660758972168 C 1.395843386650085 45.7761116027832 0.2000000029802322 47.12697219848633 0.2000000029802322 48.92073822021484 C 0.2000000029802322 50.73664474487305 1.484424471855164 52.1539421081543 3.256044387817383 52.41968536376953 C 3.344625473022461 52.44182968139648 3.455351829528809 52.46397399902344 3.543932914733887 52.46397399902344 L 11.56051349639893 52.46397399902344 C 13.66431140899658 52.46397399902344 15.25876808166504 50.93595504760742 15.25876808166504 48.92073440551758 C 15.25876808166504 46.88337326049805 13.70860195159912 45.39964294433594 11.56051349639893 45.39964294433594 Z M 11.56051349639893 50.69235992431641 L 3.898256778717041 50.69235992431641 C 2.569541692733765 50.69235992431641 1.971619963645935 49.78440093994141 1.971619963645935 48.92073822021484 C 1.971619963645935 47.85776519775391 2.746703624725342 47.14911651611328 3.898256778717041 47.14911651611328 C 4.363306999206543 47.14911651611328 4.761921405792236 46.77264785766602 4.784066677093506 46.28545379638672 C 4.784066677093506 46.28545379638672 4.806211948394775 45.59894943237305 5.160536289215088 44.95673751831055 C 5.559150695800781 44.20379638671875 6.24565315246582 43.82733154296875 7.197898387908936 43.82733154296875 C 8.172289848327637 43.82733154296875 8.858792304992676 44.20380020141602 9.27955150604248 44.95673751831055 C 9.633874893188477 45.59894943237305 9.678166389465332 46.28545379638672 9.678166389465332 46.28545379638672 C 9.700311660766602 46.7504997253418 10.09892654418945 47.12697219848633 10.5639762878418 47.12697219848633 L 11.56051254272461 47.12697219848633 C 12.71206569671631 47.12697219848633 13.48714733123779 47.83562088012695 13.48714733123779 48.89859008789063 C 13.48714923858643 49.78440093994141 12.88922786712646 50.69235992431641 11.56051349639893 50.69235992431641 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_8wfb7x =
    '<svg viewBox="27.3 376.1 13.7 10.7" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-1.47, 355.34)" d="M 39.90396118164063 26.44703674316406 L 39.77109146118164 26.44703674316406 C 39.70465469360352 26.20343780517578 39.61607360839844 25.93769645690918 39.46105575561523 25.64980888366699 C 38.95171356201172 24.67541694641113 38.02161407470703 24.1439323425293 36.87005996704102 24.1439323425293 C 36.71504592895508 24.1439323425293 36.58217239379883 24.1439323425293 36.42715454101563 24.16607666015625 C 36.18355941772461 22.2615852355957 34.56695556640625 20.79999923706055 32.59602737426758 20.79999923706055 C 30.8022632598877 20.79999923706055 29.25209617614746 22.01798820495605 28.83133697509766 23.7674617767334 C 28.74275588989258 24.12178611755371 28.96420860290527 24.47611045837402 29.31853294372559 24.56468963623047 C 29.6728572845459 24.65327072143555 30.02718162536621 24.43181800842285 30.11576080322266 24.07749366760254 C 30.38150405883789 22.92594146728516 31.40018463134766 22.12871360778809 32.57388305664063 22.12871360778809 C 33.96903228759766 22.12871360778809 35.09843826293945 23.25811958312988 35.09843826293945 24.65327072143555 C 34.74411773681641 24.8968677520752 34.45622634887695 25.22904777526855 34.25692367553711 25.64980697631836 C 33.9025993347168 26.3363094329834 33.88045120239258 27.00066757202148 33.88045120239258 27.08924865722656 C 33.88045120239258 27.44357299804688 34.14619445800781 27.75360679626465 34.52266311645508 27.7757511138916 C 34.87698745727539 27.79789733886719 35.1870231628418 27.51000785827637 35.20916748046875 27.13353729248047 C 35.2313117980957 26.84564971923828 35.36418533325195 25.4726448059082 36.84791564941406 25.4726448059082 C 38.35379409790039 25.4726448059082 38.50881195068359 26.86779403686523 38.50881195068359 27.13353729248047 C 38.53095245361328 27.48786163330078 38.81884384155273 27.7757511138916 39.17316818237305 27.7757511138916 L 39.85967254638672 27.7757511138916 C 40.63475799560547 27.7757511138916 41.14409637451172 28.24080085754395 41.14409637451172 28.94944953918457 C 41.14409637451172 29.52522468566895 40.74547958374023 30.12314796447754 39.85967254638672 30.12314796447754 L 39.06244277954102 30.12314796447754 C 38.68597412109375 30.12314796447754 38.39808654785156 30.41103744506836 38.39808654785156 30.78750228881836 C 38.39808654785156 31.16397285461426 38.68597412109375 31.45186042785645 39.06244277954102 31.45186042785645 L 39.85967254638672 31.45186042785645 C 41.34340286254883 31.45186042785645 42.47281265258789 30.36674499511719 42.47281265258789 28.94944953918457 C 42.53924560546875 27.510009765625 41.43198394775391 26.44703674316406 39.90396118164063 26.44703674316406 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_j3vz3q =
    '<svg viewBox="30.5 372.0 1.3 2.8" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-12.52, 369.9)" d="M 43.66436004638672 4.868156433105469 C 44.04082870483398 4.868156433105469 44.32871627807617 4.580267906188965 44.32871627807617 4.203798770904541 L 44.32871627807617 2.764357328414917 C 44.32871627807617 2.387887954711914 44.04082870483398 2.099999904632568 43.66436004638672 2.099999904632568 C 43.28788757324219 2.099999904632568 43 2.387887954711914 43 2.764357328414917 L 43 4.203798770904541 C 43 4.580267906188965 43.28788757324219 4.868156433105469 43.66436004638672 4.868156433105469 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_4z4jwi =
    '<svg viewBox="23.1 379.4 2.8 1.3" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(13.33, 344.05)" d="M 10.46435642242432 36.62871551513672 L 11.9037971496582 36.62871551513672 C 12.28026676177979 36.62871551513672 12.56815528869629 36.34082794189453 12.56815528869629 35.96435546875 C 12.56815528869629 35.58788681030273 12.28026676177979 35.29999923706055 11.9037971496582 35.29999923706055 L 10.46435642242432 35.29999923706055 C 10.08788681030273 35.29999923706055 9.799999237060547 35.58788681030273 9.799999237060547 35.96435546875 C 9.799999237060547 36.34082794189453 10.08788776397705 36.62871551513672 10.46435642242432 36.62871551513672 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_1qbi84 =
    '<svg viewBox="34.7 374.1 2.3 2.3" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-27.24, 362.35)" d="M 62.56435775756836 14.1473970413208 C 62.74152374267578 14.1473970413208 62.89653778076172 14.08096122741699 63.02941131591797 13.94808959960938 L 64.04808807373047 12.92940807342529 C 64.31383514404297 12.66366577148438 64.31383514404297 12.24290561676025 64.04808807373047 11.99930763244629 C 63.78234481811523 11.73356437683105 63.36158752441406 11.73356437683105 63.11798858642578 11.99930763244629 L 62.09930801391602 13.01798820495605 C 61.83356475830078 13.28373241424561 61.83356475830078 13.70449256896973 62.09930801391602 13.94808959960938 C 62.21003341674805 14.08096122741699 62.38719940185547 14.1473970413208 62.56435775756836 14.1473970413208 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_s6n209 =
    '<svg viewBox="25.3 374.1 2.3 2.3" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(5.78, 362.35)" d="M 20.71798896789551 13.94808769226074 C 20.85086250305176 14.08095932006836 21.02802276611328 14.14739608764648 21.18303871154785 14.14739608764648 C 21.36020088195801 14.14739608764648 21.51521873474121 14.08095932006836 21.64809036254883 13.94808769226074 C 21.91383361816406 13.68234443664551 21.91383361816406 13.2615852355957 21.64809036254883 13.01798820495605 L 20.62940788269043 11.99930763244629 C 20.3636646270752 11.73356246948242 19.94290542602539 11.73356246948242 19.69930839538574 11.99930763244629 C 19.43356323242188 12.26504898071289 19.43356323242188 12.6858081817627 19.69930839538574 12.92940711975098 L 20.71798896789551 13.94808769226074 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_dko6b1 =
    '<svg viewBox="289.0 414.0 10.3 6.8" ><path transform="translate(289.0, 411.42)" d="M 0 6 L 3.41796875 9.41796875" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(286.42, 414.0)" d="M 6 6.8359375 L 12.8359375 0" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_nahds6 =
    '<svg viewBox="21.0 422.0 20.0 20.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(21.0, 422.0)" d="M 2.5 9.375 L 0.625 9.375 C 0.2800000011920929 9.375 0 9.655000686645508 0 10 C 0 10.34500026702881 0.2800000011920929 10.625 0.625 10.625 L 2.5 10.625 C 2.845000028610229 10.625 3.125000238418579 10.34500026702881 3.125000238418579 10 C 3.125000238418579 9.655000686645508 2.845000028610229 9.375 2.5 9.375 Z M 10 3.125000238418579 C 10.34500026702881 3.125000238418579 10.625 2.845000028610229 10.625 2.5 L 10.625 0.625 C 10.625 0.2800000011920929 10.34500026702881 0 10 0 C 9.655000686645508 0 9.375 0.2800000011920929 9.375 0.625 L 9.375 2.5 C 9.375 2.845000028610229 9.655000686645508 3.125000238418579 10 3.125000238418579 Z M 16.01313781738281 4.862483978271484 L 17.3262767791748 3.549346923828125 C 17.56813812255859 3.307484149932861 17.56813812255859 2.915588855743408 17.3262767791748 2.673725843429565 C 17.08441352844238 2.431863069534302 16.69248580932617 2.431863069534302 16.45062065124512 2.673725843429565 L 15.13748455047607 3.986863374710083 C 14.89562129974365 4.228725910186768 14.89562129974365 4.620621204376221 15.13748455047607 4.862483978271484 C 15.37937927246094 5.104379177093506 15.77127552032471 5.104379177093506 16.01313781738281 4.862483978271484 Z M 4.631242275238037 14.49375915527344 L 3.318104982376099 15.80689716339111 C 3.076242208480835 16.04875946044922 3.076242208480835 16.44065475463867 3.318104982376099 16.68251800537109 C 3.559967517852783 16.92437934875488 3.951863050460815 16.92437934875488 4.1937255859375 16.68251800537109 L 5.506863594055176 15.36937999725342 C 5.748725891113281 15.12751770019531 5.748725891113281 14.73562145233154 5.506863594055176 14.49375915527344 C 5.265000820159912 14.25189685821533 4.873137474060059 14.25186347961426 4.631242275238037 14.49375915527344 Z M 4.255000591278076 5.138758659362793 C 4.499379634857178 5.383137702941895 4.894999980926514 5.383137702941895 5.138725757598877 5.138758659362793 C 5.382483959197998 4.894379615783691 5.382483959197998 4.498758316040039 5.138725757598877 4.255033016204834 L 3.813137531280518 2.928758382797241 C 3.568758487701416 2.68437933921814 3.173137426376343 2.68437933921814 2.929379224777222 2.928758382797241 C 2.68500018119812 3.173137426376343 2.68500018119812 3.568758487701416 2.929379224777222 3.812516450881958 L 4.255000591278076 5.138758659362793 Z M 10 16.875 C 9.655000686645508 16.875 9.375 17.15500068664551 9.375 17.5 L 9.375 19.375 C 9.375 19.72000122070313 9.655000686645508 20 10 20 C 10.34500026702881 20 10.625 19.72000122070313 10.625 19.375 L 10.625 17.5 C 10.625 17.15500068664551 10.34500026702881 16.875 10 16.875 Z M 15.74499988555908 14.86124324798584 C 15.50062084197998 14.61686229705811 15.10500049591064 14.61686229705811 14.86124324798584 14.86124324798584 C 14.61686229705811 15.10565376281738 14.61686229705811 15.50124263763428 14.86124324798584 15.74499988555908 L 16.18686485290527 17.07062339782715 C 16.43124198913574 17.31500244140625 16.82686424255371 17.31500244140625 17.07062149047852 17.07062339782715 C 17.31437873840332 16.82621002197266 17.31500053405762 16.43062400817871 17.07062149047852 16.18686485290527 L 15.74499988555908 14.86124324798584 Z M 19.375 9.375 L 17.5 9.375 C 17.15500068664551 9.375 16.875 9.655000686645508 16.875 10 C 16.875 10.34500026702881 17.15500068664551 10.625 17.5 10.625 L 19.375 10.625 C 19.72000122070313 10.625 20 10.34500026702881 20 10 C 20 9.655000686645508 19.72000122070313 9.375 19.375 9.375 Z M 10 4.371242046356201 C 6.891242504119873 4.371242046356201 4.371242046356201 6.891242504119873 4.371242046356201 10 C 4.371242046356201 13.1087589263916 6.891242504119873 15.62875843048096 10 15.62875843048096 C 13.1087589263916 15.62875843048096 15.62875843048096 13.1087589263916 15.62875843048096 10 C 15.62875843048096 6.891242504119873 13.1087589263916 4.371242046356201 10 4.371242046356201 Z M 10 14.37375926971436 C 7.58437967300415 14.37375926971436 5.626241683959961 12.41562175750732 5.626241683959961 10 C 5.626241683959961 7.58437967300415 7.58437967300415 5.626241683959961 10 5.626241683959961 C 12.41562175750732 5.626241683959961 14.37375926971436 7.58437967300415 14.37375926971436 10 C 14.37375926971436 12.41562175750732 12.41562175750732 14.37375926971436 10 14.37375926971436 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_w13sqh =
    '<svg viewBox="33.1 471.1 4.9 4.7" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-21.71, 453.55)" d="M 59.32995986938477 21.82071304321289 C 59.55267715454102 21.39754867553711 59.66403579711914 20.92984390258789 59.66403579711914 20.46213912963867 C 59.66403579711914 18.8363037109375 58.32773208618164 17.5 56.70190048217773 17.5 C 56.10056304931641 17.5 55.54376983642578 17.67817306518555 55.05379104614258 18.01224899291992 C 54.76425933837891 18.21269607543945 54.69744491577148 18.59131240844727 54.89788818359375 18.85857391357422 C 55.09833526611328 19.14810562133789 55.47695541381836 19.21492195129395 55.74421691894531 19.01447677612305 C 56.03374481201172 18.81402969360352 56.36782073974609 18.72494506835938 56.72416687011719 18.72494506835938 C 57.68185424804688 18.72494506835938 58.46136474609375 19.50445556640625 58.46136474609375 20.46213912963867 C 58.46136474609375 20.75167083740234 58.39455032348633 21.0189323425293 58.26091766357422 21.26391983032227 C 58.10501480102539 21.55345153808594 58.21637344360352 21.93207168579102 58.52817916870117 22.08797454833984 C 58.61726760864258 22.13251876831055 58.70635223388672 22.15478897094727 58.81771087646484 22.15478897094727 C 58.99588394165039 22.15478897094727 59.21860122680664 22.04343032836914 59.32995986938477 21.82071304321289 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qr3gax =
    '<svg viewBox="34.4 468.0 1.2 2.3" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-26.24, 464.2)" d="M 61.22361373901367 6.093986988067627 C 61.55768966674805 6.093986988067627 61.84722137451172 5.826725959777832 61.84722137451172 5.470378875732422 L 61.84722137451172 4.42360782623291 C 61.84722137451172 4.089532375335693 61.57996368408203 3.799999952316284 61.22361755371094 3.799999952316284 C 60.88954162597656 3.799999952316284 60.60000991821289 4.0672607421875 60.60000991821289 4.42360782623291 L 60.60000991821289 5.492650032043457 C 60.60000610351563 5.826725959777832 60.8895378112793 6.093986988067627 61.22361373901367 6.093986988067627 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nf7fvw =
    '<svg viewBox="38.7 473.4 2.3 1.2" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-41.32, 445.31)" d="M 81.69264221191406 28.10000228881836 L 80.62360382080078 28.10000228881836 C 80.28952789306641 28.10000228881836 79.99999237060547 28.36726379394531 79.99999237060547 28.72360992431641 C 79.99999237060547 29.05768585205078 80.26725006103516 29.34721755981445 80.62360382080078 29.34721755981445 L 81.69264221191406 29.34721755981445 C 82.02671813964844 29.34721755981445 82.31625366210938 29.07995796203613 82.31625366210938 28.72361183166504 C 82.31625366210938 28.36726188659668 82.04898834228516 28.10000228881836 81.69264221191406 28.10000228881836 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_4couuz =
    '<svg viewBox="37.4 469.6 2.0 2.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-36.94, 458.7)" d="M 75.00417327880859 12.86275005340576 C 75.16007995605469 12.86275005340576 75.31597900390625 12.79593563079834 75.42733764648438 12.68457698822021 L 76.18457794189453 11.92733860015869 C 76.4295654296875 11.68235015869141 76.4295654296875 11.30373096466064 76.18457794189453 11.05874156951904 C 75.93959045410156 10.81375312805176 75.56096649169922 10.81375312805176 75.31597900390625 11.05874156951904 L 74.55873870849609 11.81598091125488 C 74.31375122070313 12.06096935272217 74.31375122070313 12.43958759307861 74.55873870849609 12.68457698822021 C 74.69236755371094 12.79593563079834 74.84827423095703 12.86275005340576 75.00417327880859 12.86275005340576 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_8uxxuf =
    '<svg viewBox="37.4 476.5 2.0 2.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-36.94, 434.68)" d="M 75.42733764648438 41.958740234375 C 75.18235015869141 41.71375274658203 74.80372619628906 41.71375274658203 74.55873870849609 41.958740234375 C 74.31375122070313 42.20372772216797 74.31375122070313 42.58235168457031 74.55873870849609 42.82733917236328 L 75.31597900390625 43.58457946777344 C 75.42733764648438 43.69593811035156 75.58323669433594 43.76274871826172 75.73914337158203 43.76274871826172 C 75.89504241943359 43.76274871826172 76.05094909667969 43.69593811035156 76.16230773925781 43.58457946777344 C 76.40729522705078 43.33959197998047 76.40729522705078 42.96096801757813 76.16230773925781 42.71598052978516 L 75.42733764648438 41.958740234375 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rf6x39 =
    '<svg viewBox="30.5 469.6 2.0 2.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-12.85, 458.7)" d="M 44.33824920654297 12.68457698822021 C 44.44960784912109 12.79593563079834 44.60551452636719 12.86275005340576 44.76141357421875 12.86275005340576 C 44.91731262207031 12.86275005340576 45.07321929931641 12.79593563079834 45.18457794189453 12.68457698822021 C 45.4295654296875 12.43958759307861 45.4295654296875 12.06096935272217 45.18457794189453 11.81598091125488 L 44.42733764648438 11.05874156951904 C 44.18235015869141 10.81375312805176 43.80372619628906 10.81375312805176 43.55873870849609 11.05874156951904 C 43.31375122070313 11.30373096466064 43.31375122070313 11.68235015869141 43.55873870849609 11.92733860015869 L 44.33824920654297 12.68457698822021 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ihtpka =
    '<svg viewBox="21.0 476.6 11.1 4.5" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(20.4, 434.27)" d="M 9.486414909362793 42.30000305175781 C 8.885078430175781 42.30000305175781 8.28374195098877 42.5672607421875 7.860579967498779 43.0126953125 C 7.571047306060791 43.32450103759766 7.593318939208984 43.81447601318359 7.905123233795166 44.10401153564453 C 8.216927528381348 44.39353942871094 8.706904411315918 44.37126922607422 8.996438026428223 44.05946350097656 C 9.130067825317383 43.92583465576172 9.285969734191895 43.85902404785156 9.486415863037109 43.85902404785156 C 9.84276294708252 43.85902404785156 10.15456771850586 44.14855194091797 10.15456771850586 44.52716827392578 C 10.15456771850586 44.88351440429688 9.865035057067871 45.19532012939453 9.486415863037109 45.19532012939453 L 1.379509925842285 45.19532012939453 C 0.9563474059104919 45.19532012939453 0.5999999046325684 45.55166625976563 0.5999999046325684 45.97483062744141 C 0.5999999046325684 46.39799499511719 0.9563474059104919 46.75434112548828 1.379509925842285 46.75434112548828 L 9.464142799377441 46.75434112548828 C 10.6890869140625 46.75434112548828 11.69131469726563 45.75211334228516 11.69131469726563 44.52716827392578 C 11.69131469726563 43.30223083496094 10.71135902404785 42.30000305175781 9.486414909362793 42.30000305175781 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_329wgx =
    '<svg viewBox="21.0 482.1 8.3 4.5" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(20.4, 414.92)" d="M 6.657906532287598 67.19999694824219 L 1.379509925842285 67.19999694824219 C 0.9563474059104919 67.19999694824219 0.5999999046325684 67.55634307861328 0.5999999046325684 67.97950744628906 C 0.5999999046325684 68.40267181396484 0.9563474059104919 68.75901794433594 1.379509925842285 68.75901794433594 L 6.657907009124756 68.75901794433594 C 7.014254570007324 68.75901794433594 7.326058864593506 69.04855346679688 7.326058864593506 69.42716979980469 C 7.326058864593506 69.78352355957031 7.036526679992676 70.09532165527344 6.657907009124756 70.09532165527344 C 6.479733467102051 70.09532165527344 6.301559448242188 70.02850341796875 6.167929172515869 69.89486694335938 C 5.878396987915039 69.58306884765625 5.388418674468994 69.56080627441406 5.076614856719971 69.85032653808594 C 4.764810562133789 70.13986206054688 4.742538928985596 70.62984466552734 5.032071113586426 70.941650390625 C 5.455233573913574 71.3870849609375 6.034298896789551 71.65434265136719 6.657906532287598 71.65434265136719 C 7.882851600646973 71.65434265136719 8.885078430175781 70.65211486816406 8.885078430175781 69.42716979980469 C 8.885078430175781 68.20222473144531 7.882851600646973 67.19999694824219 6.657906532287598 67.19999694824219 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fde8v2 =
    '<svg viewBox="24.1 472.2 12.7 8.8" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(9.68, 449.51)" d="M 23.97292327880859 25.48396682739258 L 23.79475021362305 25.48396682739258 C 23.72793579101563 25.19443321228027 23.6165771484375 24.8603572845459 23.41613006591797 24.5040111541748 C 22.79252243041992 23.34588050842285 21.70120811462402 22.70000076293945 20.32036018371582 22.70000076293945 C 18.93951416015625 22.70000076293945 17.82592964172363 23.34588050842285 17.2245922088623 24.5040111541748 C 17.04641914367676 24.8603572845459 16.91278839111328 25.23897743225098 16.84597206115723 25.52850914001465 C 15.46512699127197 25.7957706451416 14.50744247436523 26.82026863098145 14.39608383178711 28.24565887451172 C 14.37381172180176 28.66882133483887 14.6856164932251 29.04744148254395 15.10877895355225 29.0697135925293 C 15.53194141387939 29.09198570251465 15.91055965423584 28.78017997741699 15.93283271789551 28.35701751708984 C 15.99964618682861 27.55523490905762 16.60098457336426 27.0429859161377 17.51412391662598 27.0429859161377 C 17.93728828430176 27.0429859161377 18.27136421203613 26.70890998840332 18.29363441467285 26.28574752807617 C 18.29363441467285 26.28574752807617 18.3159065246582 25.75122451782227 18.58316802978516 25.23897552490234 C 18.91724395751953 24.59309768676758 19.47403526306152 24.28129196166992 20.2980899810791 24.28129196166992 C 21.0998706817627 24.28129196166992 21.65666389465332 24.59309768676758 22.01301193237305 25.21670532226563 C 22.30254364013672 25.7512264251709 22.34708786010742 26.30801773071289 22.34708786010742 26.30801773071289 C 22.36935997009277 26.73118209838867 22.70343589782715 27.0429859161377 23.1265983581543 27.0429859161377 L 23.97292327880859 27.0429859161377 C 24.93060493469238 27.0429859161377 25.55421447753906 27.62205123901367 25.55421447753906 28.49064826965332 C 25.55421447753906 29.18107032775879 25.06423568725586 29.93830871582031 23.97292327880859 29.93830871582031 C 23.54976081848145 29.93830871582031 23.19341278076172 30.29465484619141 23.19341278076172 30.71782112121582 C 23.19341278076172 31.14098358154297 23.54976081848145 31.49732780456543 23.97292327880859 31.49732780456543 C 25.75465965270996 31.49732780456543 27.11323547363281 30.2055721282959 27.11323547363281 28.49064826965332 C 27.11323547363281 26.75345230102539 25.79920196533203 25.48396682739258 23.97292327880859 25.48396682739258 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sa4y9 =
    '<svg viewBox="23.8 514.2 16.2 16.2" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-119.78, 460.78)" d="M 159.6363983154297 63.537109375 C 159.491943359375 63.39249038696289 159.277099609375 63.34374618530273 159.0843811035156 63.41177749633789 C 158.3067626953125 63.68570327758789 157.4927978515625 63.82465744018555 156.6649475097656 63.82465744018555 C 154.7249755859375 63.82465744018555 152.9011383056641 63.06923675537109 151.5295715332031 61.69750213623047 C 149.5638275146484 59.73181915283203 148.8909912109375 56.76637649536133 149.8153991699219 54.14268493652344 C 149.8832702636719 53.94994735717773 149.8345642089844 53.73516464233398 149.6899566650391 53.5906867980957 C 149.5454559326172 53.44607162475586 149.3306732177734 53.3973274230957 149.1379699707031 53.46521759033203 C 147.9601440429688 53.88023376464844 146.9121398925781 54.54143142700195 146.0232849121094 55.43029022216797 C 144.4508514404297 57.00271987915039 143.5849914550781 59.09328079223633 143.5849914550781 61.31710052490234 C 143.5849914550781 63.5407829284668 144.4508514404297 65.63130950927734 146.0232849121094 67.20377349853516 C 147.595703125 68.77617645263672 149.6862640380859 69.64220428466797 151.9101104736328 69.64220428466797 C 154.1338195800781 69.64220428466797 156.2245330810547 68.77617645263672 157.7967987060547 67.20377349853516 C 158.685791015625 66.31491851806641 159.3468322753906 65.26702880859375 159.7618713378906 64.089111328125 C 159.8296813964844 63.8963737487793 159.7809753417969 63.68159103393555 159.6363983154297 63.537109375 Z M 157.0456237792969 66.45263671875 C 155.6738739013672 67.82450103759766 153.85009765625 68.57993316650391 151.9100952148438 68.57993316650391 C 149.9700775146484 68.57993316650391 148.1461486816406 67.82450103759766 146.7743988037109 66.45263671875 C 143.9425354003906 63.62089538574219 143.9425354003906 59.01316070556641 146.7743988037109 56.18144226074219 C 147.2928161621094 55.66300964355469 147.8728332519531 55.23345184326172 148.507080078125 54.89763641357422 C 148.2769622802734 56.0286979675293 148.2834167480469 57.19974899291992 148.5309906005859 58.33829879760742 C 148.8695678710938 59.89556503295898 149.6467132568359 61.31678771972656 150.7784423828125 62.44864273071289 C 152.3507385253906 64.02090454101563 154.4412841796875 64.88678741455078 156.6649780273438 64.88678741455078 C 157.2270202636719 64.88678741455078 157.7836608886719 64.83087158203125 158.3294677734375 64.71995544433594 C 157.9936218261719 65.35418701171875 157.5640411376953 65.93433380126953 157.0456237792969 66.45263671875 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_42wufd =
    '<svg viewBox="30.8 515.0 10.2 5.9" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-363.33, 435.01)" d="M 402.8235168457031 82.55209350585938 C 402.4849548339844 82.05223083496094 401.9444274902344 81.71947479248047 401.3422241210938 81.64502716064453 C 401.1380310058594 81.20519256591797 400.8283996582031 80.82419586181641 400.4328308105469 80.52912139892578 C 399.9221801757813 80.14826965332031 399.3149719238281 79.94697570800781 398.6765441894531 79.94697570800781 C 398.0380249023438 79.94697570800781 397.4306945800781 80.14829254150391 396.9201965332031 80.52912139892578 C 396.5246276855469 80.82419586181641 396.2149658203125 81.20519256591797 396.0107116699219 81.64488220214844 C 394.9741516113281 81.77204895019531 394.1689758300781 82.65768432617188 394.1689758300781 83.72805786132813 C 394.1689758300781 84.88533782958984 395.1103820800781 85.82672882080078 396.2676391601563 85.82672882080078 L 402.6924133300781 85.82672882080078 C 403.5967712402344 85.82672882080078 404.3323974609375 85.09107208251953 404.3323974609375 84.18687438964844 C 404.3325500488281 83.32668304443359 403.6667175292969 82.61892700195313 402.8235168457031 82.55209350585938 Z M 402.6924743652344 84.76461791992188 L 396.2677001953125 84.76461791992188 C 395.6960754394531 84.76461791992188 395.2311706542969 84.29949951171875 395.2311706542969 83.72805786132813 C 395.2311706542969 83.15648651123047 395.6960754394531 82.69153594970703 396.2677001953125 82.69153594970703 C 396.2883605957031 82.69153594970703 396.3117065429688 82.69245147705078 396.3412475585938 82.69458770751953 C 396.5871887207031 82.71143341064453 396.8110656738281 82.55809783935547 396.8845825195313 82.32368469238281 C 397.1314086914063 81.53746795654297 397.8515014648438 81.00908660888672 398.6765441894531 81.00908660888672 C 399.5015258789063 81.00908660888672 400.2216186523438 81.53746795654297 400.4683837890625 82.32368469238281 C 400.5419311523438 82.55807495117188 400.7665405273438 82.71143341064453 401.0119934082031 82.69458770751953 C 401.0413818359375 82.69245147705078 401.0646667480469 82.69153594970703 401.0853271484375 82.69153594970703 C 401.4944152832031 82.69153594970703 401.8662414550781 82.93329620361328 402.0326843261719 83.30768585205078 C 402.1303100585938 83.52738952636719 402.3634643554688 83.65391540527344 402.6009216308594 83.61640167236328 C 402.6313781738281 83.61165618896484 402.6623229980469 83.60918426513672 402.6925659179688 83.60918426513672 C 403.0110168457031 83.60918426513672 403.2702941894531 83.86824798583984 403.2702941894531 84.18689727783203 C 403.2702331542969 84.50537872314453 403.0110168457031 84.76461791992188 402.6924743652344 84.76461791992188 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sgdtsw =
    '<svg viewBox="21.0 528.8 8.3 4.9" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-22.4, -44.19)" d="M 50.41292190551758 575.0405883789063 C 50.13824081420898 574.6600341796875 49.72137451171875 574.4022216796875 49.25597381591797 574.328125 C 48.85074996948242 573.5068359375 48.0155143737793 572.9769287109375 47.07517242431641 572.9769287109375 C 46.54664611816406 572.9769287109375 46.04385375976563 573.1436157226563 45.62116241455078 573.4590454101563 C 45.31033325195313 573.69091796875 45.06350326538086 573.9869995117188 44.89467620849609 574.3276977539063 C 44.05040740966797 574.4613037109375 43.40297698974609 575.1942138671875 43.40297698974609 576.075439453125 C 43.40297698974609 577.051025390625 44.19670867919922 577.8449096679688 45.17242050170898 577.8449096679688 L 50.24740600585938 577.8449096679688 C 51.02336502075195 577.8449096679688 51.65456008911133 577.2137451171875 51.65456008911133 576.437744140625 C 51.65458679199219 575.7179565429688 51.1111946105957 575.12255859375 50.41292190551758 575.0405883789063 Z M 50.24746704101563 576.7825927734375 L 45.17245101928711 576.7825927734375 C 44.78242111206055 576.7825927734375 44.46528244018555 576.4653930664063 44.46528244018555 576.0755615234375 C 44.46528244018555 575.6854248046875 44.78242111206055 575.3683471679688 45.17245101928711 575.3683471679688 C 45.18638229370117 575.3683471679688 45.20248031616211 575.368896484375 45.22314453125 575.3703002929688 C 45.46810531616211 575.3873901367188 45.69270324707031 575.2337646484375 45.76623153686523 574.99951171875 C 45.94640731811523 574.4251708984375 46.47249984741211 574.039306640625 47.07517242431641 574.039306640625 C 47.67784881591797 574.039306640625 48.20379638671875 574.4251708984375 48.38411712646484 574.99951171875 C 48.4576416015625 575.2337646484375 48.68221282958984 575.386962890625 48.92703247070313 575.3703002929688 C 48.9478645324707 575.368896484375 48.96410369873047 575.3683471679688 48.97787475585938 575.3683471679688 C 49.25701141357422 575.3683471679688 49.51068878173828 575.5332641601563 49.6243782043457 575.7886352539063 C 49.72196578979492 576.0083618164063 49.95497894287109 576.1351318359375 50.1926155090332 576.0975341796875 C 50.21097946166992 576.0946044921875 50.22937774658203 576.0931396484375 50.2474365234375 576.0931396484375 C 50.43774032592773 576.0931396484375 50.59231567382813 576.2479248046875 50.59231567382813 576.437744140625 C 50.59234237670898 576.6281127929688 50.437744140625 576.7825927734375 50.24746704101563 576.7825927734375 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ugkkv4 =
    '<svg viewBox="22.5 514.9 2.1 2.1" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-74.93, 435.55)" d="M 99.57440185546875 80.45713806152344 C 99.57440185546875 79.87052917480469 99.09884643554688 79.39500427246094 98.51213073730469 79.39500427246094 C 97.92550659179688 79.39500427246094 97.44998168945313 79.87052917480469 97.44998168945313 80.45713806152344 C 97.44998168945313 81.04386901855469 97.92550659179688 81.5194091796875 98.51213073730469 81.5194091796875 C 99.09884643554688 81.5194091796875 99.57440185546875 81.04386901855469 99.57440185546875 80.45713806152344 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_f6fu34 =
    '<svg viewBox="21.9 524.7 1.3 1.3" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-52.84, 98.69)" d="M 75.99275207519531 426.6123657226563 C 75.99275207519531 426.2604064941406 75.70733642578125 425.9749450683594 75.35543823242188 425.9749450683594 C 75.00338745117188 425.9749450683594 74.71800231933594 426.2604064941406 74.71800231933594 426.6123657226563 C 74.71800231933594 426.9644165039063 75.00342559814453 427.2496948242188 75.35543823242188 427.2496948242188 C 75.70735931396484 427.2498168945313 75.99275207519531 426.9644165039063 75.99275207519531 426.6123657226563 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_scoudi =
    '<svg viewBox="37.4 529.3 1.3 1.3" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-590.35, -60.45)" d="M 629.0126953125 590.34423828125 C 629.0126953125 589.9921875 628.7273559570313 589.7069091796875 628.3753051757813 589.7069091796875 C 628.0232543945313 589.7069091796875 627.7379150390625 589.9921875 627.7379150390625 590.34423828125 C 627.7379150390625 590.6963500976563 628.0232543945313 590.9816284179688 628.3753051757813 590.9816284179688 C 628.7274169921875 590.9815063476563 629.0126953125 590.6962890625 629.0126953125 590.34423828125 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tydvu3 =
    '<svg viewBox="31.3 531.2 1.3 1.3" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-378.54, -128.55)" d="M 411.0936584472656 660.4112548828125 C 411.0936584472656 660.0592041015625 410.8084106445313 659.77392578125 410.4563598632813 659.77392578125 C 410.104248046875 659.77392578125 409.8190002441406 660.0592041015625 409.8190002441406 660.4112548828125 C 409.8190002441406 660.7631225585938 410.104248046875 661.0485229492188 410.4563598632813 661.0485229492188 C 410.8084716796875 661.0485229492188 411.0936584472656 660.7631225585938 411.0936584472656 660.4112548828125 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gocf2o =
    '<svg viewBox="21.0 293.0 52.6 52.6" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(21.0, 293.0)" d="M 3 0 L 49.62215042114258 0 C 51.27900314331055 0 52.62215042114258 1.343145608901978 52.62215042114258 3 L 52.62215042114258 49.62211990356445 C 52.62215042114258 51.27897262573242 51.27900314331055 52.62211990356445 49.62215042114258 52.62211990356445 L 3 52.62211990356445 C 1.343145608901978 52.62211990356445 0 51.27897262573242 0 49.62211990356445 L 0 3 C 0 1.343145608901978 1.343145608901978 0 3 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_bj0p7m =
    '<svg viewBox="81.0 351.0 52.6 52.6" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(81.0, 351.0)" d="M 3 0 L 49.62215042114258 0 C 51.27900314331055 0 52.62215042114258 1.343145608901978 52.62215042114258 3 L 52.62215042114258 49.62211990356445 C 52.62215042114258 51.27897262573242 51.27900314331055 52.62211990356445 49.62215042114258 52.62211990356445 L 3 52.62211990356445 C 1.343145608901978 52.62211990356445 0 51.27897262573242 0 49.62211990356445 L 0 3 C 0 1.343145608901978 1.343145608901978 0 3 0 Z" fill="#fcfcfc" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_2a2k3i =
    '<svg viewBox="360.0 363.0 9.4 6.1" ><path transform="translate(358.0, 361.0)" d="M 6.699999809265137 8.100000381469727 L 2 3.400000095367432 L 3.400000095367432 2 L 6.699999809265137 5.300000190734863 L 10 2 L 11.39999961853027 3.400000095367432 L 6.699999809265137 8.100000381469727 Z" fill="#9d9d9d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ah28f4 =
    '<svg viewBox="32.0 48.0 12.6 18.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="matrix(0.0, 1.0, -1.0, 0.0, 44.56, 48.0)" d="M 8.999999046325684 12.56341361999512 L 0 2.883406400680542 L 2.680851221084595 0 L 8.999999046325684 6.796600818634033 L 15.31914710998535 0 L 18 2.883406400680542 L 8.999999046325684 12.56341361999512 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
