import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './Intro2.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Intro1 extends StatelessWidget {
  Intro1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[ //156, 39
          Positioned(
            left: 188,
            top: 730,
            child: Text(
                '(1/5)',
                style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            color: const Color(0xffb6b6b6),
            fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.left,
              ),
          ),
          Positioned(
            left: 68,
            top: 667,
            child: PageLink(
                links: [
            PageLinkInfo(
              transition: LinkTransition.Fade,
              ease: Curves.easeOut,
              duration: 0.3,
              pageBuilder: () => Intro2(),
            ),
                ],
                child: SizedBox(
            width: 273.0,
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
                  bounds: Rect.fromLTWH(117.0, 12.0, 44.0, 21.0),
                  size: Size(273.0, 48.0),
                  child: Text(
                    'Next',
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
            left: 55,
            top: 540,
            child: Text(
              'Lorem ipsum dolor sit amet, consetetur \nsadipscing elitr, sed diam nonumy \neirmod tempor invidunt ut labore et',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 17,
                color: const Color(0xff9d9d9d),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Positioned(
            left: 90,
            top: 497,
            child: Text(
              'Never miss an event!',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 24,
                color: const Color(0xff404040),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Positioned(
            left: 61,
            top: 206.6,
            child: SizedBox(
                width: 273.0,
                height: 226.0,
                child: Stack(
            children: <Widget>[
              SvgPicture.string(
                _svg_ssd345,
                allowDrawingOutsideViewBox: true,
              ),
              Transform.translate(
                offset: Offset(236.0, 27.7),
                child: Transform.rotate(
                  angle: -1.2649,
                  child: Container(
                    width: 5.3,
                    height: 5.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xffffd037),
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(231.8, 25.0),
                child: Transform.rotate(
                  angle: -1.2649,
                  child: Container(
                    width: 5.3,
                    height: 5.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xffffd037),
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(28.9, 112.3),
                child: SvgPicture.string(
                  _svg_u15c0b,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(54.6, 9.4),
                child: Container(
                  width: 161.3,
                  height: 187.3,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.0, 1.0),
                      end: Alignment(0.0, -1.0),
                      colors: [
                        const Color(0x40808080),
                        const Color(0x1f808080),
                        const Color(0x1a808080)
                      ],
                      stops: [0.0, 0.54, 1.0],
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(56.5, 11.6),
                child: Container(
                  width: 157.6,
                  height: 182.9,
                  decoration: BoxDecoration(
                    color: const Color(0xfff7f7fd),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(66.0, 32.2),
                child: Container(
                  width: 39.8,
                  height: 3.2,
                  decoration: BoxDecoration(
                    color: const Color(0xffe2e2ec),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(66.0, 39.9),
                child: Container(
                  width: 68.0,
                  height: 3.2,
                  decoration: BoxDecoration(
                    color: const Color(0xffe2e2ec),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(178.2, 29.2),
                child: Container(
                  width: 28.3,
                  height: 24.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(178.1, 29.0),
                child: SvgPicture.string(
                  _svg_i5fnd3,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(149.7, 29.2),
                child: Container(
                  width: 28.3,
                  height: 24.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(149.5, 29.0),
                child: SvgPicture.string(
                  _svg_vf910g,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(178.2, 53.8),
                child: Container(
                  width: 28.3,
                  height: 24.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(178.1, 53.7),
                child: SvgPicture.string(
                  _svg_hgwlcj,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(149.7, 53.8),
                child: Container(
                  width: 28.3,
                  height: 24.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(149.5, 53.7),
                child: SvgPicture.string(
                  _svg_ytsx62,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(121.1, 53.8),
                child: Container(
                  width: 28.3,
                  height: 24.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(121.0, 53.7),
                child: SvgPicture.string(
                  _svg_cuxriu,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(92.6, 53.8),
                child: Container(
                  width: 28.3,
                  height: 24.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(92.4, 53.7),
                child: SvgPicture.string(
                  _svg_dsoahh,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(64.0, 53.8),
                child: Container(
                  width: 28.3,
                  height: 24.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(63.9, 53.7),
                child: SvgPicture.string(
                  _svg_2rhoji,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(178.2, 78.5),
                child: Container(
                  width: 28.3,
                  height: 24.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(178.1, 78.4),
                child: SvgPicture.string(
                  _svg_vrvxu3,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(149.7, 78.5),
                child: Container(
                  width: 28.3,
                  height: 24.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(149.5, 78.4),
                child: SvgPicture.string(
                  _svg_sifw6s,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(121.1, 78.5),
                child: Container(
                  width: 28.3,
                  height: 24.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(121.0, 78.4),
                child: SvgPicture.string(
                  _svg_7t0pvy,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(92.6, 78.5),
                child: Container(
                  width: 28.3,
                  height: 24.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(92.4, 78.4),
                child: SvgPicture.string(
                  _svg_imcuk3,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(64.0, 78.5),
                child: Container(
                  width: 28.3,
                  height: 24.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(63.9, 78.4),
                child: SvgPicture.string(
                  _svg_nfg5ya,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(178.2, 103.2),
                child: Container(
                  width: 28.3,
                  height: 24.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(178.1, 103.0),
                child: SvgPicture.string(
                  _svg_pa3m4d,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(149.7, 103.2),
                child: Container(
                  width: 28.3,
                  height: 24.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(149.5, 103.0),
                child: SvgPicture.string(
                  _svg_z3ofry,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(121.1, 103.2),
                child: Container(
                  width: 28.3,
                  height: 24.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(121.0, 103.0),
                child: SvgPicture.string(
                  _svg_ce5coc,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(92.6, 103.2),
                child: Container(
                  width: 28.3,
                  height: 24.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(92.4, 103.0),
                child: SvgPicture.string(
                  _svg_fta3ud,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(64.0, 103.2),
                child: Container(
                  width: 28.3,
                  height: 24.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(63.9, 103.0),
                child: SvgPicture.string(
                  _svg_jf6d5s,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(178.2, 127.8),
                child: Container(
                  width: 28.3,
                  height: 24.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(178.1, 127.7),
                child: SvgPicture.string(
                  _svg_d5t97v,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(149.7, 127.8),
                child: Container(
                  width: 28.3,
                  height: 24.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(149.5, 127.7),
                child: SvgPicture.string(
                  _svg_jhd03e,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(121.1, 127.8),
                child: Container(
                  width: 28.3,
                  height: 24.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(121.0, 127.7),
                child: SvgPicture.string(
                  _svg_oumtga,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(92.6, 127.8),
                child: Container(
                  width: 28.3,
                  height: 24.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(92.4, 127.7),
                child: SvgPicture.string(
                  _svg_6yn8pp,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(64.0, 127.8),
                child: Container(
                  width: 28.3,
                  height: 24.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(63.9, 127.7),
                child: SvgPicture.string(
                  _svg_60tjf2,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(178.2, 152.5),
                child: Container(
                  width: 28.3,
                  height: 24.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(178.1, 152.4),
                child: SvgPicture.string(
                  _svg_div7bn,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(149.7, 152.5),
                child: Container(
                  width: 28.3,
                  height: 24.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(149.5, 152.4),
                child: SvgPicture.string(
                  _svg_6esu4o,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(121.1, 152.5),
                child: Container(
                  width: 28.3,
                  height: 24.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(121.0, 152.4),
                child: SvgPicture.string(
                  _svg_qtgy3o,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(92.6, 152.5),
                child: Container(
                  width: 28.3,
                  height: 24.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(92.4, 152.4),
                child: SvgPicture.string(
                  _svg_bnovw5,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(64.0, 152.5),
                child: Container(
                  width: 28.3,
                  height: 24.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(63.9, 152.4),
                child: SvgPicture.string(
                  _svg_ys5d4z,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(66.1, 55.9),
                child: Container(
                  width: 3.2,
                  height: 3.2,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    color: const Color(0xfffc6681),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(70.1, 55.9),
                child: Container(
                  width: 3.2,
                  height: 3.2,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    color: const Color(0xffffd037),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(123.0, 79.8),
                child: Container(
                  width: 3.2,
                  height: 3.2,
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
              Transform.translate(
                offset: Offset(127.1, 79.8),
                child: Container(
                  width: 3.2,
                  height: 3.2,
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
              Transform.translate(
                offset: Offset(209.2, 126.0),
                child: Container(
                  width: 3.2,
                  height: 3.2,
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
              Transform.translate(
                offset: Offset(210.0, 124.1),
                child: Container(
                  width: 3.2,
                  height: 3.2,
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
              Transform.translate(
                offset: Offset(210.8, 122.5),
                child: Container(
                  width: 3.2,
                  height: 3.2,
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
              Transform.translate(
                offset: Offset(180.7, 55.9),
                child: Container(
                  width: 3.2,
                  height: 3.2,
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
              Transform.translate(
                offset: Offset(184.8, 55.9),
                child: Container(
                  width: 3.2,
                  height: 3.2,
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
              Transform.translate(
                offset: Offset(188.8, 55.9),
                child: Container(
                  width: 3.2,
                  height: 3.2,
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
              Transform.translate(
                offset: Offset(192.8, 55.9),
                child: Container(
                  width: 3.2,
                  height: 3.2,
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
              Transform.translate(
                offset: Offset(180.7, 105.8),
                child: Container(
                  width: 3.2,
                  height: 3.2,
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
              Transform.translate(
                offset: Offset(184.8, 105.8),
                child: Container(
                  width: 3.2,
                  height: 3.2,
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
              Transform.translate(
                offset: Offset(188.8, 105.8),
                child: Container(
                  width: 3.2,
                  height: 3.2,
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
              Transform.translate(
                offset: Offset(192.8, 105.8),
                child: Container(
                  width: 3.2,
                  height: 3.2,
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
              Transform.translate(
                offset: Offset(94.6, 79.8),
                child: Container(
                  width: 3.2,
                  height: 3.2,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    color: const Color(0xffffd037),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(66.1, 104.2),
                child: Container(
                  width: 3.2,
                  height: 3.2,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    color: const Color(0xfffc6681),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(208.4, 41.1),
                child: SvgPicture.string(
                  _svg_ui0yzl,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(220.5, 46.7),
                child: Container(
                  width: 18.6,
                  height: 18.6,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    color: const Color(0xffdb8b8b),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(209.3, 43.2),
                child: SvgPicture.string(
                  _svg_3wemk9,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
            ],
                ),
              ),
          ),
          Positioned(
            left: 13,
            top: 108,
            child: SizedBox(
                width: 385.0,
                height: 7.0,
                child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 349.0, 7.0),
                size: Size(349.0, 7.0),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child:
                    // Adobe XD layer: 'Bar' (shape)
                    Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
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
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 87.3, 7.0),
                size: Size(349.0, 7.0),
                pinLeft: true,
                pinTop: true,
                pinBottom: true,
                fixedWidth: true,
                child:
                    // Adobe XD layer: 'Progress' (shape)
                    Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    gradient: LinearGradient(
                      begin: Alignment(0.0, -1.0),
                      end: Alignment(0.0, 1.0),
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
            ],
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
        ],
      ),
    );
  }
}

const String _svg_ssd345 =
    '<svg viewBox="0.0 0.0 273.0 226.4" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-117.18, -49.59)" d="M 372.1448669433594 174.6912689208984 C 361.6593017578125 191.6536254882813 363.6240844726563 214.7620697021484 368.2294006347656 232.9824981689453 C 369.7701416015625 239.0833282470703 371.5455017089844 245.5233612060547 370.2280883789063 252.3507537841797 C 368.6166381835938 260.6990661621094 362.7420959472656 267.2549743652344 356.7967224121094 271.0093383789063 C 345.957763671875 277.8367309570313 333.5809020996094 277.6473083496094 324.5682067871094 270.5089721679688 C 316.7852478027344 264.3431091308594 311.6598205566406 253.5890045166016 303.7129516601563 247.7539215087891 C 290.4257202148438 237.9864044189453 272.1798400878906 243.9062957763672 256.3370056152344 253.0348663330078 C 245.13330078125 259.4777221679688 232.8016662597656 267.6762390136719 222.4461364746094 263.0342102050781 C 215.1607971191406 259.7745971679688 210.6176910400391 250.5781707763672 208.4974060058594 240.5703277587891 C 207.4739990234375 235.7389068603516 206.8548736572266 230.4607543945313 204.5084075927734 226.7799072265625 C 203.1118469238281 224.5917816162109 201.1922607421875 223.1273498535156 199.2020111083984 221.9258422851563 C 181.0381164550781 210.9737854003906 156.4624481201172 220.1306762695313 138.9459533691406 207.7283172607422 C 127.1146926879883 199.3545684814453 120.3890991210938 182.0585784912109 118.178337097168 163.5639190673828 C 115.9675750732422 145.0692596435547 117.7853851318359 125.2798004150391 120.0611572265625 105.7956848144531 C 121.6810760498047 91.94307708740234 123.8720474243164 77.12360382080078 131.1432495117188 65.85773468017578 C 138.8357086181641 53.94165802001953 150.9609680175781 48.61264038085938 161.5002593994141 49.74346923828125 C 172.0395660400391 50.87429428100586 181.1907653808594 57.55182266235352 189.0782928466797 65.71355438232422 C 198.9362640380859 75.91361236572266 207.8273773193359 88.94072723388672 220.5859375 92.23142242431641 C 229.2763519287109 94.47329711914063 238.7667541503906 91.8780517578125 248.0084381103516 90.41080474853516 C 263.4385681152344 87.9569091796875 278.6538696289063 88.66084289550781 293.7616577148438 89.58247375488281 C 308.2249145507813 90.46451568603516 322.7758483886719 91.56142425537109 336.25244140625 96.65013885498047 C 345.7881774902344 100.254638671875 353.1073608398438 107.7576675415039 362.0069885253906 112.63720703125 C 367.8081359863281 115.8176498413086 374.3528442382813 116.2219161987305 379.7581481933594 120.4625015258789 C 386.4158935546875 125.6869125366211 392.1774597167969 135.3300170898438 389.5115356445313 147.5203247070313 C 386.969970703125 159.1169738769531 377.7085266113281 165.6898803710938 372.1448669433594 174.6912689208984 Z" fill="url(#gradient)" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-593.82, -121.42)" d="M 781.6700439453125 208.1767425537109 C 781.6700439453125 208.1767425537109 810.2233276367188 184.2512969970703 816.572998046875 172.1882171630859 C 822.922607421875 160.1251220703125 831.005126953125 149.7300109863281 831.005126953125 149.7300109863281" fill="none" stroke="#535461" stroke-width="2" stroke-miterlimit="10" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-678.13, -182.77)" d="M 911.5615844726563 238.0546569824219 L 899.2100219726563 235.2699890136719 C 899.2100219726563 235.2699890136719 902.124755859375 248.297119140625 911.5615844726563 238.0546569824219 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-656.84, -156.1)" d="M 871.4006958007813 198.0800170898438 L 878.5078735351563 208.7238922119141 C 878.5078735351563 208.7238922119141 864.6129150390625 209.7275238037109 871.4006958007813 198.0800170898438 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-693.15, -159.43)" d="M 931.448486328125 204.7089538574219 L 920.1599731445313 202.7300109863281 C 920.1599731445313 202.7300109863281 927.2503662109375 213.5152587890625 931.448486328125 204.7089538574219 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-676.67, -140.32)" d="M 898.260986328125 176.0800170898438 L 903.82177734375 183.3625183105469 C 903.82177734375 183.3625183105469 893.97802734375 184.2954559326172 898.260986328125 176.0800170898438 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-707.97, -136.64)" d="M 940.8099975585938 170.9500122070313 C 940.8099975585938 170.9500122070313 950.4219970703125 171.4079895019531 951.5527954101563 172.3267822265625 C 952.68359375 173.2455749511719 950.1194458007813 178.6311340332031 946.464111328125 177.7519226074219 C 942.8087158203125 176.8727111816406 940.8099975585938 170.9500122070313 940.8099975585938 170.9500122070313 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-689.14, -114.84)" d="M 918.1403198242188 140.5599975585938 C 918.1403198242188 140.5599975585938 922.0670166015625 147.7153015136719 921.9201049804688 149.0779418945313 C 921.7730102539063 150.4406127929688 915.9352416992188 151.9700469970703 914.7562866210938 146.8163146972656 C 913.5773315429688 141.6625671386719 918.1403198242188 140.5599975585938 918.1403198242188 140.5599975585938 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_u15c0b =
    '<svg viewBox="28.9 112.3 70.2 82.1" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-190.41, -334.6)" d="M 289.201171875 515.1513671875 C 289.201171875 515.1513671875 293.7838134765625 501.5193176269531 264.7328796386719 485.0856628417969 C 264.7328796386719 485.0856628417969 235.2353210449219 476.4828491210938 238.2518005371094 446.9400329589844 C 238.2518005371094 446.9400329589844 204.2478485107422 471.8521423339844 227.2573394775391 503.5858764648438 C 250.2667999267578 535.3196411132813 270.1269836425781 528.3933715820313 270.1269836425781 528.3933715820313 L 289.201171875 515.1513671875 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-228.72, -334.6)" d="M 318.65087890625 521.3087158203125 C 318.65087890625 521.3087158203125 304.4760131835938 505.9888916015625 290.8891296386719 500.066162109375 C 288.1750183105469 498.8445129394531 285.6810302734375 497.1835632324219 283.5076599121094 495.1499938964844 C 274.8455200195313 487.2341918945313 271.0685729980469 475.289794921875 273.3019714355469 463.7695617675781 L 276.5671997070313 446.9400329589844" fill="none" stroke="none" stroke-width="2" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_i5fnd3 =
    '<svg viewBox="178.1 29.0 28.6 24.7" ><path transform="translate(-568.95, -123.2)" d="M 775.2706298828125 152.5027160644531 L 775.2706298828125 176.6119079589844 L 747.28271484375 176.6119079589844 L 747.28271484375 152.5027160644531 L 775.2706298828125 152.5027160644531 M 775.5533447265625 152.2199859619141 L 747 152.2199859619141 L 747 176.8946228027344 L 775.5533447265625 176.8946228027344 L 775.5533447265625 152.2199859619141 Z" fill="#e2e2ec" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vf910g =
    '<svg viewBox="149.5 29.0 28.6 24.7" ><path transform="translate(-496.5, -123.2)" d="M 674.2706298828125 152.5027160644531 L 674.2706298828125 176.6119079589844 L 646.2826538085938 176.6119079589844 L 646.2826538085938 152.5027160644531 L 674.2706298828125 152.5027160644531 M 674.5532836914063 152.2199859619141 L 646 152.2199859619141 L 646 176.8946228027344 L 674.5532836914063 176.8946228027344 L 674.5532836914063 152.2199859619141 Z" fill="#e2e2ec" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hgwlcj =
    '<svg viewBox="178.1 53.7 28.6 24.7" ><path transform="translate(-568.95, -185.81)" d="M 775.2706298828125 239.7827453613281 L 775.2706298828125 263.8919067382813 L 747.28271484375 263.8919067382813 L 747.28271484375 239.7827453613281 L 775.2706298828125 239.7827453613281 M 775.5533447265625 239.5000152587891 L 747 239.5000152587891 L 747 264.1746520996094 L 775.5533447265625 264.1746520996094 L 775.5533447265625 239.5000152587891 Z" fill="#e2e2ec" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ytsx62 =
    '<svg viewBox="149.5 53.7 28.6 24.7" ><path transform="translate(-496.5, -185.81)" d="M 674.2706298828125 239.7827453613281 L 674.2706298828125 263.8919067382813 L 646.2826538085938 263.8919067382813 L 646.2826538085938 239.7827453613281 L 674.2706298828125 239.7827453613281 M 674.5532836914063 239.5000152587891 L 646 239.5000152587891 L 646 264.1746520996094 L 674.5532836914063 264.1746520996094 L 674.5532836914063 239.5000152587891 Z" fill="#e2e2ec" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cuxriu =
    '<svg viewBox="121.0 53.7 28.6 24.7" ><path transform="translate(-424.09, -185.81)" d="M 573.3206787109375 239.7827453613281 L 573.3206787109375 263.8919067382813 L 545.332763671875 263.8919067382813 L 545.332763671875 239.7827453613281 L 573.3206787109375 239.7827453613281 M 573.6034545898438 239.5000152587891 L 545.050048828125 239.5000152587891 L 545.050048828125 264.1746520996094 L 573.6034545898438 264.1746520996094 L 573.6034545898438 239.5000152587891 Z" fill="#e2e2ec" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_dsoahh =
    '<svg viewBox="92.4 53.7 28.6 24.7" ><path transform="translate(-351.65, -185.81)" d="M 472.3306579589844 239.7827453613281 L 472.3306579589844 263.8919067382813 L 444.3427124023438 263.8919067382813 L 444.3427124023438 239.7827453613281 L 472.3306579589844 239.7827453613281 M 472.6133422851563 239.5000152587891 L 444.0599975585938 239.5000152587891 L 444.0599975585938 264.1746520996094 L 472.6133422851563 264.1746520996094 L 472.6133422851563 239.5000152587891 Z" fill="#e2e2ec" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2rhoji =
    '<svg viewBox="63.9 53.7 28.6 24.7" ><path transform="translate(-279.21, -185.81)" d="M 371.3406982421875 239.7827453613281 L 371.3406982421875 263.8919067382813 L 343.352783203125 263.8919067382813 L 343.352783203125 239.7827453613281 L 371.3406982421875 239.7827453613281 M 371.6234130859375 239.5000152587891 L 343.070068359375 239.5000152587891 L 343.070068359375 264.1746520996094 L 371.6234130859375 264.1746520996094 L 371.6234130859375 239.5000152587891 Z" fill="#e2e2ec" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vrvxu3 =
    '<svg viewBox="178.1 78.4 28.6 24.7" ><path transform="translate(-568.95, -248.41)" d="M 775.2706298828125 327.0626831054688 L 775.2706298828125 351.1719360351563 L 747.28271484375 351.1719360351563 L 747.28271484375 327.0626831054688 L 775.2706298828125 327.0626831054688 M 775.5533447265625 326.7799987792969 L 747 326.7799987792969 L 747 351.4546203613281 L 775.5533447265625 351.4546203613281 L 775.5533447265625 326.7799987792969 Z" fill="#e2e2ec" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sifw6s =
    '<svg viewBox="149.5 78.4 28.6 24.7" ><path transform="translate(-496.5, -248.41)" d="M 674.2706298828125 327.0626831054688 L 674.2706298828125 351.1719360351563 L 646.2826538085938 351.1719360351563 L 646.2826538085938 327.0626831054688 L 674.2706298828125 327.0626831054688 M 674.5532836914063 326.7799987792969 L 646 326.7799987792969 L 646 351.4546203613281 L 674.5532836914063 351.4546203613281 L 674.5532836914063 326.7799987792969 Z" fill="#e2e2ec" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_7t0pvy =
    '<svg viewBox="121.0 78.4 28.6 24.7" ><path transform="translate(-424.09, -248.41)" d="M 573.3206787109375 327.0626831054688 L 573.3206787109375 351.1719360351563 L 545.332763671875 351.1719360351563 L 545.332763671875 327.0626831054688 L 573.3206787109375 327.0626831054688 M 573.6034545898438 326.7799987792969 L 545.050048828125 326.7799987792969 L 545.050048828125 351.4546203613281 L 573.6034545898438 351.4546203613281 L 573.6034545898438 326.7799987792969 Z" fill="#e2e2ec" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_imcuk3 =
    '<svg viewBox="92.4 78.4 28.6 24.7" ><path transform="translate(-351.65, -248.41)" d="M 472.3306579589844 327.0626831054688 L 472.3306579589844 351.1719360351563 L 444.3427124023438 351.1719360351563 L 444.3427124023438 327.0626831054688 L 472.3306579589844 327.0626831054688 M 472.6133422851563 326.7799987792969 L 444.0599975585938 326.7799987792969 L 444.0599975585938 351.4546203613281 L 472.6133422851563 351.4546203613281 L 472.6133422851563 326.7799987792969 Z" fill="#e2e2ec" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nfg5ya =
    '<svg viewBox="63.9 78.4 28.6 24.7" ><path transform="translate(-279.21, -248.41)" d="M 371.3406982421875 327.0626831054688 L 371.3406982421875 351.1719360351563 L 343.352783203125 351.1719360351563 L 343.352783203125 327.0626831054688 L 371.3406982421875 327.0626831054688 M 371.6234130859375 326.7799987792969 L 343.070068359375 326.7799987792969 L 343.070068359375 351.4546203613281 L 371.6234130859375 351.4546203613281 L 371.6234130859375 326.7799987792969 Z" fill="#e2e2ec" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pa3m4d =
    '<svg viewBox="178.1 103.0 28.6 24.7" ><path transform="translate(-568.95, -311.01)" d="M 775.2706298828125 414.3327026367188 L 775.2706298828125 438.44189453125 L 747.28271484375 438.44189453125 L 747.28271484375 414.3327026367188 L 775.2706298828125 414.3327026367188 M 775.5533447265625 414.0499877929688 L 747 414.0499877929688 L 747 438.724609375 L 775.5533447265625 438.724609375 L 775.5533447265625 414.0499877929688 Z" fill="#e2e2ec" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_z3ofry =
    '<svg viewBox="149.5 103.0 28.6 24.7" ><path transform="translate(-496.5, -311.01)" d="M 674.2706298828125 414.3327026367188 L 674.2706298828125 438.44189453125 L 646.2826538085938 438.44189453125 L 646.2826538085938 414.3327026367188 L 674.2706298828125 414.3327026367188 M 674.5532836914063 414.0499877929688 L 646 414.0499877929688 L 646 438.724609375 L 674.5532836914063 438.724609375 L 674.5532836914063 414.0499877929688 Z" fill="#e2e2ec" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ce5coc =
    '<svg viewBox="121.0 103.0 28.6 24.7" ><path transform="translate(-424.09, -311.01)" d="M 573.3206787109375 414.3327026367188 L 573.3206787109375 438.44189453125 L 545.332763671875 438.44189453125 L 545.332763671875 414.3327026367188 L 573.3206787109375 414.3327026367188 M 573.6034545898438 414.0499877929688 L 545.050048828125 414.0499877929688 L 545.050048828125 438.724609375 L 573.6034545898438 438.724609375 L 573.6034545898438 414.0499877929688 Z" fill="#e2e2ec" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fta3ud =
    '<svg viewBox="92.4 103.0 28.6 24.7" ><path transform="translate(-351.65, -311.01)" d="M 472.3306579589844 414.3327026367188 L 472.3306579589844 438.44189453125 L 444.3427124023438 438.44189453125 L 444.3427124023438 414.3327026367188 L 472.3306579589844 414.3327026367188 M 472.6133422851563 414.0499877929688 L 444.0599975585938 414.0499877929688 L 444.0599975585938 438.724609375 L 472.6133422851563 438.724609375 L 472.6133422851563 414.0499877929688 Z" fill="#e2e2ec" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jf6d5s =
    '<svg viewBox="63.9 103.0 28.6 24.7" ><path transform="translate(-279.21, -311.01)" d="M 371.3406982421875 414.3327026367188 L 371.3406982421875 438.44189453125 L 343.352783203125 438.44189453125 L 343.352783203125 414.3327026367188 L 371.3406982421875 414.3327026367188 M 371.6234130859375 414.0499877929688 L 343.070068359375 414.0499877929688 L 343.070068359375 438.724609375 L 371.6234130859375 438.724609375 L 371.6234130859375 414.0499877929688 Z" fill="#e2e2ec" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_d5t97v =
    '<svg viewBox="178.1 127.7 28.6 24.7" ><path transform="translate(-568.95, -373.62)" d="M 775.2706298828125 501.6127319335938 L 775.2706298828125 525.7191162109375 L 747.28271484375 525.7191162109375 L 747.28271484375 501.6127319335938 L 775.2706298828125 501.6127319335938 M 775.5533447265625 501.3300476074219 L 747 501.3300476074219 L 747 526.0017700195313 L 775.5533447265625 526.0017700195313 L 775.5533447265625 501.3300476074219 Z" fill="#e2e2ec" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jhd03e =
    '<svg viewBox="149.5 127.7 28.6 24.7" ><path transform="translate(-496.5, -373.62)" d="M 674.2706298828125 501.6127319335938 L 674.2706298828125 525.7191162109375 L 646.2826538085938 525.7191162109375 L 646.2826538085938 501.6127319335938 L 674.2706298828125 501.6127319335938 M 674.5532836914063 501.3300476074219 L 646 501.3300476074219 L 646 526.0017700195313 L 674.5532836914063 526.0017700195313 L 674.5532836914063 501.3300476074219 Z" fill="#e2e2ec" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_oumtga =
    '<svg viewBox="121.0 127.7 28.6 24.7" ><path transform="translate(-424.09, -373.62)" d="M 573.3206787109375 501.6127319335938 L 573.3206787109375 525.7191162109375 L 545.332763671875 525.7191162109375 L 545.332763671875 501.6127319335938 L 573.3206787109375 501.6127319335938 M 573.6034545898438 501.3300476074219 L 545.050048828125 501.3300476074219 L 545.050048828125 526.0017700195313 L 573.6034545898438 526.0017700195313 L 573.6034545898438 501.3300476074219 Z" fill="#e2e2ec" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6yn8pp =
    '<svg viewBox="92.4 127.7 28.6 24.7" ><path transform="translate(-351.65, -373.62)" d="M 472.3306579589844 501.6127319335938 L 472.3306579589844 525.7191162109375 L 444.3427124023438 525.7191162109375 L 444.3427124023438 501.6127319335938 L 472.3306579589844 501.6127319335938 M 472.6133422851563 501.3300476074219 L 444.0599975585938 501.3300476074219 L 444.0599975585938 526.0017700195313 L 472.6133422851563 526.0017700195313 L 472.6133422851563 501.3300476074219 Z" fill="#e2e2ec" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_60tjf2 =
    '<svg viewBox="63.9 127.7 28.6 24.7" ><path transform="translate(-279.21, -373.62)" d="M 371.3406982421875 501.6127319335938 L 371.3406982421875 525.7191162109375 L 343.352783203125 525.7191162109375 L 343.352783203125 501.6127319335938 L 371.3406982421875 501.6127319335938 M 371.6234130859375 501.3300476074219 L 343.070068359375 501.3300476074219 L 343.070068359375 526.0017700195313 L 371.6234130859375 526.0017700195313 L 371.6234130859375 501.3300476074219 Z" fill="#e2e2ec" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_div7bn =
    '<svg viewBox="178.1 152.4 28.6 24.7" ><path transform="translate(-568.95, -436.21)" d="M 775.2706298828125 588.8826904296875 L 775.2706298828125 612.9918823242188 L 747.28271484375 612.9918823242188 L 747.28271484375 588.8826904296875 L 775.2706298828125 588.8826904296875 M 775.5533447265625 588.5999755859375 L 747 588.5999755859375 L 747 613.2745971679688 L 775.5533447265625 613.2745971679688 L 775.5533447265625 588.5999755859375 Z" fill="#e2e2ec" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6esu4o =
    '<svg viewBox="149.5 152.4 28.6 24.7" ><path transform="translate(-496.5, -436.21)" d="M 674.2706298828125 588.8826904296875 L 674.2706298828125 612.9918823242188 L 646.2826538085938 612.9918823242188 L 646.2826538085938 588.8826904296875 L 674.2706298828125 588.8826904296875 M 674.5532836914063 588.5999755859375 L 646 588.5999755859375 L 646 613.2745971679688 L 674.5532836914063 613.2745971679688 L 674.5532836914063 588.5999755859375 Z" fill="#e2e2ec" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qtgy3o =
    '<svg viewBox="121.0 152.4 28.6 24.7" ><path transform="translate(-424.09, -436.21)" d="M 573.3206787109375 588.8826904296875 L 573.3206787109375 612.9918823242188 L 545.332763671875 612.9918823242188 L 545.332763671875 588.8826904296875 L 573.3206787109375 588.8826904296875 M 573.6034545898438 588.5999755859375 L 545.050048828125 588.5999755859375 L 545.050048828125 613.2745971679688 L 573.6034545898438 613.2745971679688 L 573.6034545898438 588.5999755859375 Z" fill="#e2e2ec" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bnovw5 =
    '<svg viewBox="92.4 152.4 28.6 24.7" ><path transform="translate(-351.65, -436.21)" d="M 472.3306579589844 588.8826904296875 L 472.3306579589844 612.9918823242188 L 444.3427124023438 612.9918823242188 L 444.3427124023438 588.8826904296875 L 472.3306579589844 588.8826904296875 M 472.6133422851563 588.5999755859375 L 444.0599975585938 588.5999755859375 L 444.0599975585938 613.2745971679688 L 472.6133422851563 613.2745971679688 L 472.6133422851563 588.5999755859375 Z" fill="#e2e2ec" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ys5d4z =
    '<svg viewBox="63.9 152.4 61.4 49.3" ><path transform="translate(-279.21, -436.21)" d="M 371.3406982421875 588.8826904296875 L 371.3406982421875 612.9918823242188 L 343.352783203125 612.9918823242188 L 343.352783203125 588.8826904296875 L 371.3406982421875 588.8826904296875 M 371.6234130859375 588.5999755859375 L 343.070068359375 588.5999755859375 L 343.070068359375 613.2745971679688 L 371.6234130859375 613.2745971679688 L 371.6234130859375 588.5999755859375 Z" fill="#e2e2ec" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-385.83, -537.16)" d="M 509.211181640625 736.445068359375 C 510.0196533203125 735.8316650390625 510.7802124023438 735.10791015625 511.0148315429688 734.2259521484375 C 511.2649536132813 733.25634765625 510.7100830078125 732.26123046875 509.7539672851563 731.96435546875 C 508.5977172851563 731.602294921875 507.3623046875 732.2469482421875 506.4236450195313 732.9169921875 C 505.4851684570313 733.5870361328125 504.4136962890625 734.3304443359375 503.1866455078125 734.1920166015625 C 504.4559936523438 733.2730712890625 505.0609741210938 731.7833251953125 504.7105102539063 730.42919921875 C 504.6504516601563 730.1373291015625 504.50244140625 729.8709716796875 504.2864379882813 729.6658935546875 C 503.6446533203125 729.1004638671875 502.47998046875 729.346435546875 501.7109985351563 729.787353515625 C 499.2655639648438 731.200927734375 498.5841674804688 733.90087890625 498.5701293945313 736.340576171875 C 498.3241577148438 735.4613037109375 498.530517578125 734.54541015625 498.52490234375 733.6407470703125 C 498.5192260742188 732.7359619140625 498.2167358398438 731.7381591796875 497.2838134765625 731.2518310546875 C 496.686767578125 730.9930419921875 496.0401611328125 730.8685302734375 495.3897094726563 730.88720703125 C 494.2899169921875 730.8531494140625 493.0657958984375 730.9437255859375 492.316650390625 731.5994873046875 C 491.3837280273438 732.4136962890625 491.6268310546875 733.7821044921875 492.438232421875 734.67822265625 C 493.2495727539063 735.574462890625 494.4849853515625 736.1370849609375 495.61865234375 736.756103515625 C 496.4837036132813 737.2281494140625 497.360107421875 737.779541015625 497.8803100585938 738.52587890625 C 497.948486328125 738.624755859375 498.0054321289063 738.73095703125 498.0499267578125 738.8424072265625 L 504.939453125 738.842529296875 C 506.4570922851563 738.2232666015625 507.8919677734375 737.41796875 509.211181640625 736.445068359375 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ui0yzl =
    '<svg viewBox="208.4 41.1 43.7 173.0" ><defs><linearGradient id="gradient" x1="6.341105" y1="1.000018" x2="6.341105" y2="-0.000011"><stop offset="0.0" stop-color="#40808080" stop-opacity="0.25" /><stop offset="0.54" stop-color="#1f808080" stop-opacity="0.12" /><stop offset="1.0" stop-color="#1a808080" stop-opacity="0.1" /></linearGradient></defs><path transform="translate(-646.07, -153.88)" d="M 855.4708251953125 285.5188903808594 C 857.2376708984375 286.5620422363281 859.994140625 287.2405395507813 863.4854736328125 284.9986572265625 L 863.45166015625 289.9629821777344 C 863.7003173828125 293.3554382324219 867.909912109375 305.7691040039063 867.909912109375 305.7691040039063 L 870.8782958984375 315.9748229980469 C 873.0052490234375 323.1846923828125 874.1036376953125 330.6587829589844 874.1407470703125 338.1757507324219 C 874.1407470703125 340.6663513183594 874.37255859375 343.2333679199219 875.0877685546875 345.1642150878906 C 876.6680908203125 349.4359130859375 874.4658203125 354.9402160644531 873.5103759765625 356.9898376464844 C 871.90185546875 357.5331726074219 870.2666015625 357.9935913085938 868.6109619140625 358.3694458007813 C 868.462158203125 358.4037170410156 868.315673828125 358.4480895996094 868.1728515625 358.5022888183594 L 868.1529541015625 358.4740600585938 C 868.1529541015625 358.4740600585938 863.697509765625 360.2409973144531 861.7186279296875 359.9978637695313 C 860.242919921875 359.8169250488281 859.3184814453125 361.6573486328125 860.4747314453125 363.0115356445313 C 859.383544921875 363.2942199707031 858.263916015625 363.4949340820313 857.5091552734375 363.4016723632813 C 855.5301513671875 363.1585388183594 854.537841796875 366.5623168945313 858.252685546875 367.5348510742188 C 861.9674072265625 368.5073547363281 883.014892578125 367.5348510742188 883.014892578125 367.5348510742188 C 884.2325439453125 366.9256286621094 884.8837890625 365.5697326660156 884.5980224609375 364.2384948730469 C 886.215087890625 364.1763000488281 887.224365234375 364.1282043457031 887.224365234375 364.1282043457031 C 887.224365234375 364.1282043457031 890.9390869140625 362.4319763183594 887.224365234375 357.8040466308594 L 887.0264892578125 357.9539184570313 L 886.2320556640625 355.6159362792969 L 886.2320556640625 352.4580993652344 C 886.2320556640625 352.4580993652344 890.936279296875 329.8415832519531 889.4521484375 327.1671752929688 C 887.9678955078125 324.4927673339844 887.224365234375 310.8748168945313 887.224365234375 310.8748168945313 L 887.7275390625 296.0411987304688 C 889.0704345703125 293.2706604003906 889.7574462890625 288.9283142089844 890.105224609375 285.5330200195313 C 890.6103515625 283.9131774902344 890.92919921875 282.240966796875 891.0550537109375 280.5489196777344 C 891.1143798828125 279.7516479492188 891.1624755859375 278.9148559570313 891.193603515625 278.0469360351563 C 891.2060546875 276.1432189941406 890.89453125 274.2512512207031 890.27197265625 272.4521789550781 C 891.685546875 270.4167175292969 893.98388671875 267.2701721191406 895.880859375 265.4099731445313 C 898.8521728515625 262.4924011230469 898.1085205078125 259.0858154296875 898.1085205078125 259.0858154296875 L 896.870361328125 250.8166656494141 L 893.899169921875 236.7124328613281 C 894.2723388671875 232.7998046875 893.4552001953125 230.546630859375 892.553466796875 229.2744445800781 C 892.7681884765625 228.0107421875 892.968994140625 226.7470397949219 893.1187744140625 225.4776611328125 C 893.77734375 219.9577178955078 893.4837646484375 214.3656768798828 892.2508544921875 208.9450073242188 C 891.8211669921875 207.0537261962891 891.2359619140625 205.1143493652344 889.9100341796875 203.6810302734375 C 888.408935546875 202.0582733154297 885.971923828125 201.0687866210938 885.4122314453125 198.94287109375 C 885.273681640625 198.4141998291016 885.26806640625 197.8515930175781 885.0673828125 197.3427581787109 C 884.5245361328125 195.9518280029297 882.8056640625 195.4457855224609 881.3017578125 195.2648468017578 C 878.62158203125 194.9397277832031 874.7457275390625 194.6994323730469 872.1702880859375 195.7454376220703 C 870.372314453125 196.4804840087891 867.895751953125 198.5046691894531 866.9119873046875 200.6758575439453 C 866.3465576171875 201.6737976074219 866.0836181640625 202.7226409912109 866.3238525390625 203.7092895507813 C 866.418701171875 204.0728149414063 866.562255859375 204.4218292236328 866.7508544921875 204.7468414306641 C 866.3670654296875 205.7867279052734 866.171875 206.8866882324219 866.174072265625 207.9951324462891 C 866.1923828125 211.8943176269531 868.594482421875 215.3853149414063 872.2296142578125 216.7957458496094 C 872.2890625 216.9823455810547 872.3427734375 217.1661376953125 872.387939453125 217.3470458984375 C 872.5003662109375 217.7826538085938 872.5816650390625 218.2257385253906 872.631103515625 218.6729278564453 C 872.5830078125 219.5210723876953 872.529296875 220.3946380615234 872.48974609375 221.2569122314453 C 872.4615478515625 221.3756256103516 872.4312744140625 221.4924774169922 872.399169921875 221.6074371337891 C 870.2696533203125 222.55029296875 868.193359375 223.6091766357422 866.1796875 224.7794189453125 C 867.6668701171875 226.9675445556641 865.930908203125 236.209228515625 865.930908203125 236.209228515625 C 862.2161865234375 238.3973693847656 858.50146484375 243.9921112060547 862.4649658203125 249.8272247314453 C 866.428466796875 255.6622314453125 864.197998046875 261.9835815429688 864.197998046875 261.9835815429688 L 863.578857421875 271.4909973144531 L 863.578857421875 271.4909973144531 L 863.578857421875 271.5079650878906 L 863.4544677734375 273.4105529785156 L 863.50244140625 273.4105529785156 L 863.4544677734375 274.1315002441406 L 863.5618896484375 274.1512451171875 L 863.5618896484375 274.9258422851563 C 861.8231201171875 275.5647888183594 859.2816162109375 276.8539428710938 857.766357421875 279.2371520996094 C 857.0498046875 280.4094848632813 856.177734375 281.4793395996094 855.1739501953125 282.4175720214844 C 854.7060546875 282.8224487304688 854.463134765625 283.4288635253906 854.52197265625 284.0447998046875 C 854.5810546875 284.6607971191406 854.9345703125 285.2100524902344 855.4708251953125 285.5188293457031 Z M 885.369873046875 260.2562255859375 C 885.2208251953125 258.6113586425781 885.52490234375 256.9571228027344 886.2490234375 255.4728088378906 C 886.8314208984375 255.484130859375 887.414794921875 255.4907073974609 887.9990234375 255.4925994873047 C 888.058349609375 255.9025268554688 888.1290283203125 256.2926635742188 888.2138671875 256.6488647460938 C 888.717041015625 258.7918090820313 886.70703125 259.8180236816406 885.3670654296875 260.2533569335938 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-675.39, -553.82)" d="M 915.1795654296875 754.444091796875 L 916.13232421875 757.3023071289063 L 913.0224609375 760.412109375 L 902.7772216796875 762.7952270507813 L 895.39013671875 762.0799560546875 L 895.867919921875 759.4592895507813 L 895.867919921875 759.4592895507813 C 896.155517578125 758.3106079101563 897.061279296875 757.4191284179688 898.2142333984375 757.1495971679688 C 901.2506103515625 756.4371948242188 907.0404052734375 754.808837890625 908.256103515625 752.5499877929688 L 915.1795654296875 754.444091796875 Z" fill="#db8b8b" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-675.39, -553.82)" d="M 915.1795654296875 754.444091796875 L 916.13232421875 757.3023071289063 L 913.0224609375 760.412109375 L 902.7772216796875 762.7952270507813 L 895.39013671875 762.0799560546875 L 895.867919921875 759.4592895507813 L 895.867919921875 759.4592895507813 C 896.155517578125 758.3106079101563 897.061279296875 757.4191284179688 898.2142333984375 757.1495971679688 C 901.2506103515625 756.4371948242188 907.0404052734375 754.808837890625 908.256103515625 752.5499877929688 L 915.1795654296875 754.444091796875 Z" fill="#000000" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-661.44, -564.07)" d="M 883.8360595703125 771.6036987304688 L 885.2666015625 769.6982421875 L 883.8360595703125 767.4902954101563 C 883.8360595703125 767.4902954101563 879.54736328125 769.220458984375 877.64208984375 768.9830322265625 C 875.7364501953125 768.74560546875 874.7838134765625 772.0927734375 878.3572998046875 773.0342407226563 C 881.9307861328125 773.9755859375 902.1837158203125 773.0342407226563 902.1837158203125 773.0342407226563 C 902.1837158203125 773.0342407226563 905.7572021484375 771.3662109375 902.1837158203125 766.840087890625 L 899.073974609375 769.2233276367188 C 899.073974609375 769.2233276367188 893.8326416015625 772.0814819335938 891.2119140625 771.6065673828125 L 883.8360595703125 771.6036987304688 Z" fill="#2e3037" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-665.14, -562.21)" d="M 881.099853515625 773.798583984375 L 888.487060546875 774.513916015625 L 898.7322998046875 772.1307373046875 L 901.842041015625 769.0208740234375 L 901.5904541015625 768.2633056640625 L 901.2342529296875 767.2001953125 L 900.8780517578125 766.16552734375 L 893.9686279296875 764.2601318359375 C 893.61572265625 764.8363037109375 893.13134765625 765.320556640625 892.5552978515625 765.673583984375 C 890.310546875 767.208740234375 886.2791748046875 768.31689453125 883.9129638671875 768.8709716796875 C 883.81689453125 768.89453125 883.72265625 768.9239501953125 883.6302490234375 768.958740234375 C 882.61181640625 769.30078125 881.838134765625 770.138427734375 881.5777587890625 771.1807861328125 L 881.099853515625 773.798583984375 Z" fill="#db8b8b" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-665.14, -572.37)" d="M 881.099853515625 783.9555053710938 L 888.487060546875 784.6707153320313 L 898.7322998046875 782.2875366210938 L 901.842041015625 779.1776733398438 L 901.5904541015625 778.4199829101563 L 898.7464599609375 780.6080932617188 C 898.7464599609375 780.6080932617188 893.505126953125 783.4662475585938 890.8843994140625 782.9913940429688 L 883.483154296875 782.9913940429688 L 884.9136962890625 781.0858764648438 L 883.6302490234375 779.10693359375 C 882.61181640625 779.4491577148438 881.838134765625 780.2867431640625 881.5777587890625 781.3289794921875 L 881.099853515625 783.9555053710938 Z" fill="#000000" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-651.16, -572.53)" d="M 869.5061645507813 783.4036865234375 L 870.9367065429688 781.4981689453125 L 869.5061645507813 779.290283203125 C 869.5061645507813 779.290283203125 865.217529296875 781.0203857421875 863.3121337890625 780.782958984375 C 861.4066772460938 780.5455322265625 860.4539184570313 783.892822265625 864.0274047851563 784.834228515625 C 867.600830078125 785.775634765625 887.8538208007813 784.834228515625 887.8538208007813 784.834228515625 C 887.8538208007813 784.834228515625 891.42724609375 783.166259765625 887.8538208007813 778.6400146484375 L 884.7440795898438 781.0233154296875 C 884.7440795898438 781.0233154296875 879.5027465820313 783.8814697265625 876.882080078125 783.406494140625 L 869.5061645507813 783.4036865234375 Z" fill="#2e3037" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-686.3, -201.95)" d="M 910.5999755859375 274.6256713867188 C 910.5999755859375 274.6256713867188 922.038330078125 275.8158874511719 920.370361328125 271.05224609375 C 919.904052734375 269.7013549804688 919.782470703125 268.2553405761719 920.0169677734375 266.8456115722656 C 920.313720703125 265.0977478027344 921.0048828125 263.4405822753906 922.038330078125 262 L 911.315185546875 263.66796875 C 911.957763671875 264.7424011230469 912.4468994140625 265.9014587402344 912.768310546875 267.111328125 C 914.046142578125 272.1632995605469 910.5999755859375 274.6256713867188 910.5999755859375 274.6256713867188 Z" fill="#db8b8b" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-700.77, -371.82)" d="M 944.6129150390625 498.8200073242188 C 944.6129150390625 498.8200073242188 944.3754272460938 509.0652465820313 941.9921875 514.0692749023438 L 941.514404296875 528.6030883789063 C 941.514404296875 528.6030883789063 942.2296142578125 541.9468994140625 943.66015625 544.567626953125 C 945.0906372070313 547.1883544921875 940.5504150390625 569.3468627929688 940.5504150390625 569.3468627929688 L 940.5504150390625 573.1605834960938 C 940.5504150390625 573.1605834960938 932.9172973632813 576.0187377929688 930.7800903320313 572.6828002929688 L 932.9258422851563 544.3272705078125 L 931.97314453125 505.01416015625 L 944.6129150390625 498.8200073242188 Z" fill="#474463" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-700.77, -371.82)" d="M 944.6129150390625 498.8200073242188 C 944.6129150390625 498.8200073242188 944.3754272460938 509.0652465820313 941.9921875 514.0692749023438 L 941.514404296875 528.6030883789063 C 941.514404296875 528.6030883789063 942.2296142578125 541.9468994140625 943.66015625 544.567626953125 C 945.0906372070313 547.1883544921875 940.5504150390625 569.3468627929688 940.5504150390625 569.3468627929688 L 940.5504150390625 573.1605834960938 C 940.5504150390625 573.1605834960938 932.9172973632813 576.0187377929688 930.7800903320313 572.6828002929688 L 932.9258422851563 544.3272705078125 L 931.97314453125 505.01416015625 L 944.6129150390625 498.8200073242188 Z" fill="#000000" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-720.76, -288.39)" d="M 969.3702392578125 382.5100402832031 L 970.8007202148438 386.3237609863281 L 971.990966796875 394.4261169433594 C 972.3172607421875 396.7160949707031 971.5181884765625 399.0227966308594 969.84521484375 400.6202087402344 C 966.9869995117188 403.4783630371094 963.1734008789063 409.4350280761719 963.1734008789063 409.4350280761719 L 958.6500244140625 395.8650817871094 C 958.6500244140625 395.8650817871094 963.1734008789063 395.1498718261719 962.4636840820313 392.0513916015625 C 961.7540893554688 388.9529113769531 961.9830932617188 383.2139892578125 961.9830932617188 383.2139892578125 L 969.3702392578125 382.5100402832031 Z" fill="#fc6681" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-720.76, -288.39)" d="M 969.3702392578125 382.5100402832031 L 970.8007202148438 386.3237609863281 L 971.990966796875 394.4261169433594 C 972.3172607421875 396.7160949707031 971.5181884765625 399.0227966308594 969.84521484375 400.6202087402344 C 966.9869995117188 403.4783630371094 963.1734008789063 409.4350280761719 963.1734008789063 409.4350280761719 L 958.6500244140625 395.8650817871094 C 958.6500244140625 395.8650817871094 963.1734008789063 395.1498718261719 962.4636840820313 392.0513916015625 C 961.7540893554688 388.9529113769531 961.9830932617188 383.2139892578125 961.9830932617188 383.2139892578125 L 969.3702392578125 382.5100402832031 Z" fill="#000000" fill-opacity="0.05" stroke="none" stroke-width="1" stroke-opacity="0.05" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-694.23, -562.21)" d="M 921.659912109375 765.6763916015625 C 924.7160034179688 770.482421875 929.4739379882813 767.760009765625 930.3164672851563 767.2171630859375 L 929.9714965820313 766.16552734375 L 923.0621948242188 764.2601318359375 C 922.7127075195313 764.8359375 922.232177734375 765.3212890625 921.659912109375 765.6763916015625 Z" fill="#000000" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-669.98, -328.26)" d="M 887.8499755859375 464.5585632324219 C 888.08740234375 467.8945007324219 892.138671875 480.0452270507813 892.138671875 480.0452270507813 L 894.996826171875 490.0445251464844 C 897.0447998046875 497.1148376464844 898.1019287109375 504.4350891113281 898.1375732421875 511.7959289550781 C 898.1375732421875 514.2356567382813 898.3609619140625 516.7517700195313 899.05078125 518.6431274414063 C 900.9561767578125 523.8844604492188 897.145263671875 531.0340576171875 897.145263671875 531.0340576171875 C 900.481201171875 536.99072265625 906.19189453125 532.939453125 906.19189453125 532.939453125 L 906.19189453125 529.128662109375 C 906.19189453125 529.128662109375 910.7152099609375 508.3977966308594 909.5279541015625 504.3494873046875 C 908.340576171875 500.3011169433594 907.85986328125 489.3377990722656 907.85986328125 489.3377990722656 L 907.85986328125 469.5483093261719 C 911.6766357421875 465.7451477050781 913.9976806640625 460.6957092285156 914.39892578125 455.3225402832031 C 914.4554443359375 454.5422058105469 914.5006103515625 453.722412109375 914.5318603515625 452.8714294433594 C 914.7239990234375 447.5000610351563 911.048828125 441.1928405761719 909.61279296875 438.9481506347656 C 909.267822265625 438.4053649902344 909.0472412109375 438.1000366210938 909.0472412109375 438.1000366210938 L 888.0081787109375 446.445556640625 L 887.960205078125 446.4653015136719 L 887.960205078125 447.2795104980469 L 887.960205078125 449.0803833007813 L 887.8499755859375 464.5585632324219 Z" fill="#474463" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-688.11, -201.95)" d="M 913.1299438476563 263.6651306152344 C 913.7724609375 264.7396240234375 914.2615966796875 265.8986206054688 914.5831298828125 267.1085205078125 C 916.9362182617188 268.0013427734375 919.5502319335938 267.9054870605469 921.8316650390625 266.8428039550781 C 922.1288452148438 265.095947265625 922.820068359375 263.4397277832031 923.8530883789063 262 L 913.1299438476563 263.6651306152344 Z" fill="#000000" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3wemk9 =
    '<svg viewBox="209.3 43.2 40.8 89.6" ><path transform="translate(-669.98, -328.29)" d="M 887.8499755859375 449.1005249023438 L 887.9517822265625 449.1203308105469 C 897.942626953125 451.1755676269531 910.486328125 440.7606506347656 910.486328125 440.7606506347656 C 910.150146484375 440.1939392089844 909.85986328125 439.6012268066406 909.6182861328125 438.9880981445313 C 909.2735595703125 438.4453125 909.052978515625 438.1399841308594 909.052978515625 438.1399841308594 L 888.013916015625 446.4855041503906 L 887.960205078125 447.3195190429688 L 887.8499755859375 449.1005249023438 Z" fill="#000000" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-663.41, -219.23)" d="M 883.9000244140625 291.6723022460938 C 883.9000244140625 291.6723022460938 897.2438354492188 283.5699768066406 901.5325317382813 286.9058837890625 L 907.4890747070313 294.5389709472656 C 907.4890747070313 294.5389709472656 911.3027954101563 295.7291564941406 910.598876953125 303.3536987304688 L 913.4457397460938 317.1696166992188 L 904.868408203125 319.3153991699219 C 904.868408203125 319.3153991699219 899.864501953125 324.081787109375 903.9156494140625 330.9911499023438 C 903.9156494140625 330.9911499023438 891.2872314453125 341.473876953125 881.2794189453125 339.3309631347656 L 881.99462890625 328.1329345703125 C 881.99462890625 328.1329345703125 884.1403198242188 321.9388732910156 880.32666015625 316.2197265625 C 876.512939453125 310.5005187988281 880.0891723632813 305.0216979980469 883.6624755859375 302.8759460449219 C 883.6624755859375 302.8731384277344 885.3276977539063 293.8180847167969 883.9000244140625 291.6723022460938 Z" fill="#fc6681" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-648.17, -356.7)" d="M 867.9457397460938 477.75 C 867.9457397460938 477.75 862.9417724609375 478.7027587890625 860.55859375 482.5164794921875 C 859.8709716796875 483.660400390625 859.0322875976563 484.7064208984375 858.0651245117188 485.626220703125 C 857.6240234375 486.0263061523438 857.3970947265625 486.61083984375 857.45263671875 487.2037353515625 C 857.5083618164063 487.7966918945313 857.8399658203125 488.3287963867188 858.3477783203125 488.6398315429688 C 860.2391357421875 489.7706909179688 863.323486328125 490.474609375 867.21923828125 487.2743530273438 C 873.90234375 481.8012084960938 867.9457397460938 477.75 867.9457397460938 477.75 Z" fill="#db8b8b" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-673.03, -244.41)" d="M 900.1981201171875 321.3761291503906 C 900.1981201171875 321.3761291503906 904.964599609375 320.8983459472656 906.15478515625 333.2893676757813 C 907.3450317382813 345.6803894042969 909.2645874023438 348.5385437011719 909.2645874023438 348.5385437011719 C 909.2645874023438 348.5385437011719 910.4547729492188 354.9729614257813 907.5966186523438 358.7838134765625 C 904.7384643554688 362.5946960449219 899.2567138671875 370.6970520019531 899.2567138671875 370.6970520019531 C 899.2567138671875 370.6970520019531 893.3001708984375 372.3650817871094 892.1099243164063 366.4084167480469 L 899.4970703125 352.5897216796875 C 899.4970703125 352.5897216796875 900.687255859375 347.8233337402344 897.8291015625 344.4873352050781 C 894.9708862304688 341.1513977050781 892.81103515625 318.992919921875 900.1981201171875 321.3761291503906 Z" fill="#000000" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-671.8, -242.59)" d="M 898.4782104492188 318.8461608886719 C 898.4782104492188 318.8461608886719 903.2446899414063 318.3683776855469 904.4348754882813 330.7593994140625 C 905.6250610351563 343.1504211425781 907.5446166992188 346.0085754394531 907.5446166992188 346.0085754394531 C 907.5446166992188 346.0085754394531 908.73486328125 352.4429931640625 905.8766479492188 356.2538452148438 C 903.0184936523438 360.0647583007813 897.5368041992188 368.1671142578125 897.5368041992188 368.1671142578125 C 897.5368041992188 368.1671142578125 891.5802001953125 369.8351135253906 890.3900146484375 363.8784484863281 L 897.7772216796875 350.0597839355469 C 897.7772216796875 350.0597839355469 898.96728515625 345.2933349609375 896.109130859375 341.9573669433594 C 893.2509765625 338.6214599609375 891.099609375 316.4629211425781 898.4782104492188 318.8461608886719 Z" fill="#fc6681" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-682.25, -265.71)" d="M 905.0059814453125 350.8999938964844 C 905.0059814453125 350.8999938964844 904.531005859375 358.2786560058594 906.6683349609375 362.3382873535156 C 908.8055419921875 366.3979797363281 908.81396484375 371.6308898925781 906.6683349609375 374.4946594238281" fill="#000000" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-679.35, -232.47)" d="M 900.9100952148438 308.6011962890625 C 900.9100952148438 308.6011962890625 902.8154907226563 306.6957397460938 908.2971801757813 306.4554443359375 C 913.7788696289063 306.2151184082031 916.1593017578125 304.5500183105469 916.1593017578125 304.5500183105469" fill="#000000" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-676.88, -160.49)" d="M 911.697265625 204.4843444824219 C 913.144775390625 204.6624603271484 914.8070068359375 205.1600036621094 915.321533203125 206.5198211669922 C 915.5137939453125 207.0202178955078 915.51953125 207.5714874267578 915.65234375 208.0888366699219 C 916.1922607421875 210.1695556640625 918.5360107421875 211.1392517089844 919.98046875 212.7308807373047 C 921.2554931640625 214.1444244384766 921.8182373046875 216.0357208251953 922.2423095703125 217.887451171875 C 923.431884765625 223.1974945068359 923.7186279296875 228.6699371337891 923.09033203125 234.0752410888672 C 922.626708984375 238.0331115722656 921.6767578125 241.9174957275391 921.4110107421875 245.8866882324219 C 921.1453857421875 249.8558959960938 921.6317138671875 254.0314636230469 923.7999267578125 257.3674011230469 C 924.73291015625 258.8007202148438 925.9654541015625 260.0616149902344 926.6270751953125 261.6390991210938 C 925.261474609375 262.747314453125 923.3758544921875 262.9055786132813 921.6146240234375 262.9649963378906 C 919.56591796875 263.0347290039063 917.516357421875 263.0347290039063 915.4658203125 262.9649963378906 C 914.3914794921875 262.9282531738281 913.2691650390625 262.8575439453125 912.341796875 262.3147583007813 C 911.6552734375 261.8756713867188 911.0911865234375 261.2697143554688 910.7021484375 260.5535278320313 C 909.5289306640625 258.5745544433594 909.2349853515625 256.1715393066406 909.2886962890625 253.8646697998047 C 909.3424072265625 251.5577545166016 909.7042236328125 249.2621917724609 909.74658203125 246.9524536132813 C 909.769287109375 245.6944580078125 909.6702880859375 244.3572845458984 908.9466552734375 243.3281860351563 C 908.423583984375 242.5846710205078 907.629150390625 242.0842895507813 906.9505615234375 241.4821166992188 C 904.4063720703125 239.2204895019531 903.5242919921875 235.5961608886719 903.439453125 232.1895751953125 C 903.3546142578125 228.782958984375 903.917236328125 225.3706970214844 903.62890625 221.9753723144531 C 903.5157470703125 220.6466674804688 903.0181884765625 219.0493621826172 901.7120361328125 218.7921295166016 C 901.29931640625 218.7101287841797 900.864013671875 218.7921295166016 900.4681396484375 218.6338043212891 C 899.4193115234375 218.2295379638672 899.5211181640625 216.7509613037109 899.221435546875 215.6681976318359 C 898.8851318359375 214.4525604248047 897.847412109375 213.5139770507813 897.5562744140625 212.2757110595703 C 896.869384765625 209.3921051025391 900.538818359375 205.9515838623047 902.9447021484375 204.9479522705078 C 905.39013671875 203.9245910644531 909.1190185546875 204.1677093505859 911.697265625 204.4843444824219 Z" fill="#000000" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-677.48, -159.28)" d="M 912.5372314453125 202.7989959716797 C 913.98486328125 202.9771118164063 915.6470947265625 203.4746551513672 916.16162109375 204.83447265625 C 916.353759765625 205.3348846435547 916.3594970703125 205.8861389160156 916.4923095703125 206.4035186767578 C 917.0323486328125 208.4842224121094 919.3759765625 209.4539184570313 920.8206787109375 211.0455474853516 C 922.0955810546875 212.4590606689453 922.658203125 214.3503875732422 923.082275390625 216.2021026611328 C 924.27197265625 221.5121459960938 924.5587158203125 226.984619140625 923.930419921875 232.3898773193359 C 923.466796875 236.3477935791016 922.516845703125 240.2321472167969 922.251220703125 244.2013854980469 C 921.9853515625 248.1705474853516 922.4716796875 252.3461456298828 924.6400146484375 255.6821136474609 C 925.572998046875 257.1154174804688 926.8055419921875 258.3762817382813 927.467041015625 259.9537658691406 C 926.1015625 261.0619506835938 924.2159423828125 261.2203063964844 922.45458984375 261.2796630859375 C 920.406005859375 261.3494262695313 918.3564453125 261.3494262695313 916.3057861328125 261.2796630859375 C 915.2315673828125 261.242919921875 914.109130859375 261.1722412109375 913.181884765625 260.6294555664063 C 912.4952392578125 260.1903076171875 911.93115234375 259.5843505859375 911.5421142578125 258.8681640625 C 910.3690185546875 256.8892517089844 910.074951171875 254.4862213134766 910.128662109375 252.1793212890625 C 910.182373046875 249.8724517822266 910.5443115234375 247.5768585205078 910.5865478515625 245.2671661376953 C 910.6092529296875 244.0091094970703 910.51025390625 242.6719055175781 909.78662109375 241.6428680419922 C 909.2635498046875 240.8993377685547 908.46923828125 240.3989410400391 907.790771484375 239.7967834472656 C 905.246337890625 237.5351409912109 904.3642578125 233.9108123779297 904.279541015625 230.5042266845703 C 904.1947021484375 227.0976257324219 904.75732421875 223.6853332519531 904.4688720703125 220.2900238037109 C 904.355712890625 218.9613037109375 903.8582763671875 217.364013671875 902.5521240234375 217.1067504882813 C 902.139404296875 217.0247802734375 901.7039794921875 217.1067504882813 901.30810546875 216.9484405517578 C 900.25927734375 216.544189453125 900.3612060546875 215.0656433105469 900.0614013671875 213.9828338623047 C 899.72509765625 212.7672119140625 898.6875 211.8286437988281 898.396240234375 210.5903625488281 C 897.7093505859375 207.7067718505859 901.37890625 204.2662200927734 903.78466796875 203.2626190185547 C 906.2301025390625 202.2364044189453 909.958984375 202.4795379638672 912.5372314453125 202.7989959716797 Z" fill="#472727" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
