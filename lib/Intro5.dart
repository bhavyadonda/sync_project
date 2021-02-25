import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './SignUp.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Intro5 extends StatelessWidget {
  Intro5({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[ //51, 206
          Positioned(
            left: 188,
            top: 730,
            child: Text(
                '(5/5)',
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
                    PageLink(
                  links: [
                    PageLinkInfo(
                      transition: LinkTransition.Fade,
                      ease: Curves.linear,
                      duration: 0.3,
                      pageBuilder: () => SignUp(),
                    ),
                  ],
                  child: Container(
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
            left: 93,
            top: 497,
            child: Text(
              'Use advanced filters!',
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
                bounds: Rect.fromLTWH(0.0, 0.0, 349.0, 7.0),
                size: Size(349.0, 7.0),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
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
          Positioned(
            left: 71,
            top: 206.6,
            child: SizedBox(
                width: 273.0,
                height: 226.0,
                child: Stack(
            children: <Widget>[
              Transform.translate(
                offset: Offset(72.4, 60.4),
                child: SizedBox(
                  width: 9.0,
                  height: 10.0,
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 9.0,
                        height: 10.0,
                        child: Stack(
                          children: <Widget>[
                            SvgPicture.string(
                              _svg_gmvn7n,
                              allowDrawingOutsideViewBox: true,
                            ),
                          ],
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(0.0, 0.1),
                        child: SvgPicture.string(
                          _svg_i3wedy,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(181.3, 58.6),
                child: SizedBox(
                  width: 11.0,
                  height: 13.0,
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 11.0,
                        height: 13.0,
                        child: Stack(
                          children: <Widget>[
                            SvgPicture.string(
                              _svg_fygbiv,
                              allowDrawingOutsideViewBox: true,
                            ),
                          ],
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(0.2, 0.3),
                        child: SvgPicture.string(
                          _svg_5cikhz,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(165.2, 5.6),
                child: SizedBox(
                  width: 18.0,
                  height: 20.0,
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 18.0,
                        height: 20.0,
                        child: Stack(
                          children: <Widget>[
                            SvgPicture.string(
                              _svg_2yqh4c,
                              allowDrawingOutsideViewBox: true,
                            ),
                          ],
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(0.3, 0.4),
                        child: SvgPicture.string(
                          _svg_cjvv8b,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(88.8, 4.8),
                child: SizedBox(
                  width: 19.0,
                  height: 20.0,
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 19.0,
                        height: 20.0,
                        child: Stack(
                          children: <Widget>[
                            SvgPicture.string(
                              _svg_wcpl2u,
                              allowDrawingOutsideViewBox: true,
                            ),
                          ],
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(0.4, 0.4),
                        child: SvgPicture.string(
                          _svg_xws4ws,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(0.0, 157.1),
                child: Container(
                  width: 75.5,
                  height: 69.3,
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
                offset: Offset(0.4, 157.6),
                child: Container(
                  width: 74.8,
                  height: 68.2,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(8.0, 163.3),
                child: Container(
                  width: 59.6,
                  height: 43.3,
                  decoration: BoxDecoration(
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
                offset: Offset(11.6, 211.2),
                child: Container(
                  width: 52.6,
                  height: 2.3,
                  decoration: BoxDecoration(
                    color: const Color(0xffe0e0e0),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(20.0, 215.8),
                child: Container(
                  width: 35.8,
                  height: 2.3,
                  decoration: BoxDecoration(
                    color: const Color(0xffe0e0e0),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(122.0, 47.0),
                child: SizedBox(
                  width: 27.0,
                  height: 28.0,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: 26.7,
                        height: 28.4,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.0, 1.0),
                            end: Alignment(0.0, -1.0),
                            colors: [
                              const Color(0x20808080),
                              const Color(0x010808080),
                              const Color(0x0d808080)
                            ],
                            stops: [0.0, 0.54, 1.0],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(122.8, 47.4),
                child: Container(
                  width: 25.2,
                  height: 28.0,
                  decoration: BoxDecoration(
                    color: const Color(0xffe6e6e6),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(130.5, 56.3),
                child: Container(
                  width: 9.3,
                  height: 8.7,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(130.9, 58.1),
                child: Container(
                  width: 8.5,
                  height: 7.9,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(134.2, 64.4),
                child: Container(
                  width: 2.0,
                  height: 3.2,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(129.3, 55.3),
                child: SvgPicture.string(
                  _svg_fqhgxq,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(73.6, 15.1),
                child: SizedBox(
                  width: 23.0,
                  height: 24.0,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: 22.8,
                        height: 24.3,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.0, 1.0),
                            end: Alignment(0.0, -1.0),
                            colors: [
                              const Color(0x20808080),
                              const Color(0x010808080),
                              const Color(0x0d808080)
                            ],
                            stops: [0.0, 0.54, 1.0],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(74.3, 15.5),
                child: Container(
                  width: 21.6,
                  height: 23.9,
                  decoration: BoxDecoration(
                    color: const Color(0xffe6e6e6),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(80.9, 23.0),
                child: Container(
                  width: 8.0,
                  height: 7.5,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(81.2, 24.6),
                child: Container(
                  width: 7.2,
                  height: 6.8,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(84.0, 30.0),
                child: Container(
                  width: 1.7,
                  height: 2.7,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(79.8, 22.2),
                child: SvgPicture.string(
                  _svg_uqrkll,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(234.6, 48.5),
                child: SizedBox(
                  width: 25.0,
                  height: 28.0,
                  child: Stack(
                    children: <Widget>[
                      SvgPicture.string(
                        _svg_hizih2,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(235.0, 49.3),
                child: SvgPicture.string(
                  _svg_ivp8lq,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(39.3, 27.7),
                child: SizedBox(
                  width: 22.0,
                  height: 24.0,
                  child: Stack(
                    children: <Widget>[
                      SvgPicture.string(
                        _svg_8b28lf,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(39.6, 28.3),
                child: SvgPicture.string(
                  _svg_6uzyuo,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(1.4, 50.9),
                child: SizedBox(
                  width: 26.0,
                  height: 28.0,
                  child: Stack(
                    children: <Widget>[
                      SvgPicture.string(
                        _svg_2zge6,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(1.9, 51.5),
                child: SvgPicture.string(
                  _svg_urbsmd,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(176.2, 16.1),
                child: SizedBox(
                  width: 22.0,
                  height: 23.0,
                  child: Stack(
                    children: <Widget>[
                      SvgPicture.string(
                        _svg_410wr0,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(176.6, 16.5),
                child: SvgPicture.string(
                  _svg_pzg0so,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(114.4, 111.4),
                child: SizedBox(
                  width: 34.0,
                  height: 38.0,
                  child: Stack(
                    children: <Widget>[
                      SvgPicture.string(
                        _svg_b07zj9,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(114.7, 111.6),
                child: Container(
                  width: 33.3,
                  height: 0.5,
                  decoration: BoxDecoration(
                    color: const Color(0xffcfd8dc),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(114.7, 111.6),
                child: Container(
                  width: 33.3,
                  height: 0.5,
                  decoration: BoxDecoration(
                    color: const Color(0x1a000000),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(114.7, 112.2),
                child: SvgPicture.string(
                  _svg_xdf9i0,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(197.5, 156.1),
                child: Container(
                  width: 75.5,
                  height: 69.3,
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
                offset: Offset(197.9, 156.6),
                child: Container(
                  width: 74.8,
                  height: 68.2,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(205.5, 162.3),
                child: Container(
                  width: 59.6,
                  height: 43.3,
                  decoration: BoxDecoration(
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
                offset: Offset(209.7, 211.7),
                child: Container(
                  width: 52.6,
                  height: 2.3,
                  decoration: BoxDecoration(
                    color: const Color(0xffe0e0e0),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(218.1, 216.3),
                child: Container(
                  width: 35.8,
                  height: 2.3,
                  decoration: BoxDecoration(
                    color: const Color(0xffe0e0e0),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(98.2, 155.9),
                child: Container(
                  width: 76.1,
                  height: 69.8,
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
                offset: Offset(98.6, 156.4),
                child: Container(
                  width: 75.3,
                  height: 68.7,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(106.3, 162.1),
                child: Container(
                  width: 60.0,
                  height: 43.6,
                  decoration: BoxDecoration(
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
                offset: Offset(108.5, 211.0),
                child: Container(
                  width: 53.0,
                  height: 2.3,
                  decoration: BoxDecoration(
                    color: const Color(0xffe0e0e0),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(117.0, 215.6),
                child: Container(
                  width: 36.1,
                  height: 2.3,
                  decoration: BoxDecoration(
                    color: const Color(0xffe0e0e0),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(13.4, 45.8),
                child: SvgPicture.string(
                  _svg_81z7m6,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(126.3, 0.0),
                child: SizedBox(
                  width: 19.0,
                  height: 20.0,
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 19.0,
                        height: 20.0,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              width: 19.1,
                              height: 20.3,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.0, 1.0),
                                  end: Alignment(0.0, -1.0),
                                  colors: [
                                    const Color(0x10808080),
                                    const Color(0x08808080),
                                    const Color(0x07808080)
                                  ],
                                  stops: [0.0, 0.54, 1.0],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(0.6, 0.3),
                        child: Container(
                          width: 18.1,
                          height: 20.0,
                          decoration: BoxDecoration(
                            color: const Color(0x80e6e6e6),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(6.1, 6.6),
                        child: Container(
                          width: 6.7,
                          height: 6.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0x80ffffff),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(6.4, 7.9),
                        child: Container(
                          width: 6.1,
                          height: 5.7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0x80ffffff),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(8.7, 12.5),
                        child: Container(
                          width: 1.4,
                          height: 2.3,
                          decoration: BoxDecoration(
                            color: const Color(0x80ffffff),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(5.2, 5.9),
                        child: SvgPicture.string(
                          _svg_jsuwhc,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(217.8, 21.2),
                child: SizedBox(
                  width: 19.0,
                  height: 20.0,
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 19.0,
                        height: 20.0,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              width: 19.1,
                              height: 20.3,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.0, 1.0),
                                  end: Alignment(0.0, -1.0),
                                  colors: [
                                    const Color(0x10808080),
                                    const Color(0x08808080),
                                    const Color(0x07808080)
                                  ],
                                  stops: [0.0, 0.54, 1.0],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(0.6, 0.3),
                        child: Container(
                          width: 18.1,
                          height: 20.0,
                          decoration: BoxDecoration(
                            color: const Color(0x80e6e6e6),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(6.1, 6.6),
                        child: Container(
                          width: 6.7,
                          height: 6.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0x80ffffff),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(6.4, 7.9),
                        child: Container(
                          width: 6.1,
                          height: 5.7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0x80ffffff),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(8.7, 12.5),
                        child: Container(
                          width: 1.4,
                          height: 2.3,
                          decoration: BoxDecoration(
                            color: const Color(0x80ffffff),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(5.2, 5.9),
                        child: SvgPicture.string(
                          _svg_tycl6t,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(127.6, 170.8),
                child: SvgPicture.string(
                  _svg_plgc7y,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(229.6, 175.8),
                child: Container(
                  width: 14.6,
                  height: 13.7,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(235.2, 186.8),
                child: Container(
                  width: 3.4,
                  height: 5.5,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(228.9, 171.7),
                child: SvgPicture.string(
                  _svg_s5ltzo,
                  allowDrawingOutsideViewBox: true,
                ),
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

const String _svg_gmvn7n =
    '<svg viewBox="0.0 0.0 8.5 9.5" ><defs><linearGradient id="gradient" x1="10.537167" y1="8.57607" x2="10.537167" y2="7.03511"><stop offset="0.0" stop-color="#40808080" stop-opacity="0.25" /><stop offset="0.54" stop-color="#1f808080" stop-opacity="0.12" /><stop offset="1.0" stop-color="#1a808080" stop-opacity="0.1" /></linearGradient></defs><path transform="matrix(0.01, -1.0, 1.0, 0.01, 0.0, 9.44)" d="M 0 0 L 9.43112850189209 0.006371594965457916 L 9.436469078063965 8.443804740905762 L 0.005339561961591244 8.437433242797852 L 0 0 Z" fill="url(#gradient)" fill-opacity="0.25" stroke="none" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_i3wedy =
    '<svg viewBox="0.0 0.1 8.2 9.1" ><path transform="matrix(-0.99996, -0.00908, 0.00908, -0.99996, 8.17, 9.23)" d="M 0.005549626424908638 0.004685700405389071 L 8.159514427185059 0 L 8.153964996337891 9.046234130859375 L 0 9.050919532775879 L 0.005549626424908638 0.004685700405389071 Z" fill="#e6e6e6" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.00908, -0.99996, 0.99996, 0.00908, 2.59, 5.82)" d="M 1.407389044761658 3.408058546483517e-07 C 2.185145616531372 0.0004774738918058574 2.816028833389282 0.673953652381897 2.816505908966064 1.50425136089325 C 2.816982984542847 2.334549188613892 2.1868736743927 3.007251739501953 1.409116864204407 3.006774425506592 C 0.6313604712486267 3.00629734992981 0.0004774039261974394 2.332821369171143 2.708402462303638e-07 1.5025235414505 C -0.0004768623039126396 0.6722257733345032 0.6296326518058777 -0.0004767923383042216 1.407389044761658 3.408058546483517e-07 Z" fill="#ffffff" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.00908, -0.99996, 0.99996, 0.00908, 2.73, 6.16)" d="M 1.279173612594604 5.248584784567356e-07 C 1.986075162887573 0.0004341903259046376 2.559484004974365 0.6125555634498596 2.559917688369751 1.367211699485779 C 2.560351371765137 2.121868133544922 1.987645745277405 2.733286619186401 1.280744075775146 2.732852697372437 C 0.573842465877533 2.732419013977051 0.000433911569416523 2.12029767036438 2.461019903421402e-07 1.365641355514526 C -0.0004334193945396692 0.6109851002693176 0.572272002696991 -0.0004331406380515546 1.279173612594604 5.248584784567356e-07 Z" fill="#ffffff" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(-0.99996, -0.00908, 0.00908, -0.99996, 4.41, 6.67)" d="M 0.00062781065935269 0.000366070365998894 L 0.6376562714576721 0 L 0.6370285153388977 1.023370265960693 L 0 1.023736357688904 L 0.00062781065935269 0.000366070365998894 Z" fill="#ffffff" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(-0.99996, -0.00908, 0.00908, -0.99996, 5.57, 9.2)" d="M 0 0.001806550309993327 L 3.143723964691162 0 L 3.142898559570313 1.345600962638855 C 3.14240026473999 2.157965898513794 2.438971757888794 2.816912651062012 1.571733474731445 2.817410945892334 L 1.571733474731445 2.817410945892334 C 0.7044832706451416 2.817909240722656 0.001863028737716377 2.159770727157593 0.002361393300816417 1.347405672073364 L 0.003186884103342891 0.001804718980565667 L 0 0.001806550309993327 Z" fill="#ffffff" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.00908, -0.99996, 0.99996, 0.00908, 3.57, 3.52)" d="M 0.5128621459007263 1.494772732257843e-07 C 0.7962819337844849 0.0001740200095809996 1.026180028915405 0.245593324303627 1.02635383605957 0.5481594800949097 C 1.026527762413025 0.8507255911827087 0.7969115376472473 1.095862984657288 0.5134918093681335 1.095689058303833 C 0.2300720512866974 1.095515251159668 0.0001739691942930222 0.8500959873199463 9.866198524832726e-08 0.5475298166275024 C -0.000173771899426356 0.244963675737381 0.2294424027204514 -0.0001737210841383785 0.5128621459007263 1.494772732257843e-07 Z" fill="#ffffff" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-399.67, -278.06)" d="M 403.6195678710938 280.239501953125 C 403.3265380859375 280.2101135253906 403.0304870605469 280.2554626464844 402.7627563476563 280.3708190917969 C 402.5204772949219 280.4399719238281 402.2952575683594 280.5535278320313 402.1002197265625 280.7049560546875 C 401.7850036621094 281.0505676269531 401.628173828125 281.4987487792969 401.6638793945313 281.9520874023438 C 401.7003784179688 282.4010925292969 401.6318664550781 282.8521423339844 401.4632263183594 283.2738037109375 C 401.2145385742188 283.7240600585938 400.7108459472656 283.9994812011719 400.1700439453125 283.9809265136719 C 400.4949951171875 284.1588745117188 400.8938903808594 284.1712341308594 401.2306518554688 284.0137329101563 C 401.5293579101563 283.8885192871094 401.7795715332031 283.6801452636719 401.9473571777344 283.4170227050781 C 402.0493774414063 283.233154296875 402.1346435546875 283.0415344238281 402.2021484375 282.8441467285156 C 402.4328002929688 282.2603149414063 402.7410278320313 281.7059936523438 403.1194458007813 281.1942443847656 C 403.1759948730469 281.1111145019531 403.2445983886719 281.0358276367188 403.3233337402344 280.970458984375 C 403.4368591308594 280.8885803222656 403.5725402832031 280.8379516601563 403.7151184082031 280.8242797851563 C 403.8329467773438 280.8242797851563 404.0335998535156 280.8600769042969 404.1036987304688 280.752685546875 C 404.2565612792969 280.5169982910156 403.7756042480469 280.2723083496094 403.6195678710938 280.239501953125 Z" fill="#ffffff" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fygbiv =
    '<svg viewBox="0.0 0.0 11.5 12.8" ><defs><linearGradient id="gradient" x1="-0.710555" y1="5.498824" x2="-0.710555" y2="4.20753"><stop offset="0.0" stop-color="#40808080" stop-opacity="0.25" /><stop offset="0.54" stop-color="#1f808080" stop-opacity="0.12" /><stop offset="1.0" stop-color="#1a808080" stop-opacity="0.1" /></linearGradient></defs><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 0.0, 0.1)" d="M 0 0 L 11.34547710418701 0.006519712507724762 L 11.35325622558594 12.68676280975342 L 0.007778994739055634 12.68024253845215 L 0 0 Z" fill="url(#gradient)" fill-opacity="0.25" stroke="none" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5cikhz =
    '<svg viewBox="0.2 0.3 11.1 12.3" ><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 0.21, 0.35)" d="M 0 0 L 10.96644592285156 0.006301901303231716 L 10.97390842437744 12.17038536071777 L 0.007462344598025084 12.16408252716064 L 0 0 Z" fill="#e6e6e6" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 3.74, 4.17)" d="M 2.021403789520264 1.960434019565582e-07 C 3.138435840606689 0.0006421018624678254 4.04448938369751 0.8493937849998474 4.045131206512451 1.895740032196045 C 4.045773029327393 2.942086219787598 3.140760183334351 3.789797067642212 2.023728132247925 3.789155244827271 C 0.906696081161499 3.788513422012329 0.0006422471487894654 2.939761638641357 3.413297235965729e-07 1.893415451049805 C -0.0006415645475499332 0.847069263458252 0.9043715596199036 -0.0006417098338715732 2.021403789520264 1.960434019565582e-07 Z" fill="#ffffff" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 3.93, 4.97)" d="M 1.836771249771118 3.401655703783035e-07 C 2.851775169372559 0.0005836151540279388 3.675071477890015 0.7718114852905273 3.675654411315918 1.722586035728455 C 3.676237821578979 2.673360347747803 2.853887557983398 3.443642377853394 1.838883519172668 3.443059206008911 C 0.8238797187805176 3.442476034164429 0.0005835851188749075 2.671247959136963 3.101304173469543e-07 1.720473766326904 C -0.0005829649744555354 0.7696992158889771 0.8217675089836121 -0.0005829349393025041 1.836771249771118 3.401655703783035e-07 Z" fill="#ffffff" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 5.36, 7.71)" d="M 0 0 L 0.8568033576011658 0.0004923646338284016 L 0.8576489686965942 1.378909349441528 L 0.0008456224459223449 1.378417015075684 L 0 0 Z" fill="#ffffff" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 3.78, 8.7)" d="M 2.097776412963867 0 L 2.097776412963867 0 C 3.265823364257813 0.0006712214089930058 4.213266372680664 0.8881884813308716 4.213937282562256 1.982321262359619 L 4.215043067932129 3.784397840499878 L 0.001098568318411708 3.781976461410522 L 3.569293767213821e-07 1.991823792457581 C -0.0006708647706545889 0.897691011428833 0.9456595778465271 0.01126203034073114 2.113706350326538 0.01193325128406286 Z" fill="#ffffff" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 5.01, 3.47)" d="M 0.7353451251983643 6.382470019161701e-08 C 1.141698598861694 0.0002335760509595275 1.471302270889282 0.3089920580387115 1.471535801887512 0.6896313428878784 C 1.471769332885742 1.070270657539368 1.142544150352478 1.378650546073914 0.7361907958984375 1.378417015075684 C 0.3298374712467194 1.378183603286743 0.0002336363249924034 1.069425106048584 1.240987330675125e-07 0.68878573179245 C -0.0002333880693186074 0.3081464469432831 0.3289918601512909 -0.0002334483433514833 0.7353451251983643 6.382470019161701e-08 Z" fill="#ffffff" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-751.84, -274.29)" d="M 757.8294067382813 277.3426818847656 C 758.2225341796875 277.3034057617188 758.6198120117188 277.3641967773438 758.9791870117188 277.5187072753906 C 759.3045043945313 277.61181640625 759.6067504882813 277.7650146484375 759.8678588867188 277.96923828125 C 760.3392333984375 278.3809509277344 760.4380493164063 279.0403442382813 760.4539184570313 279.6430053710938 C 760.4698486328125 280.2456665039063 760.434814453125 280.8811950683594 760.7214965820313 281.4331359863281 C 761.0558471679688 282.0370178222656 761.7317504882813 282.4064331054688 762.4574584960938 282.3819274902344 C 762.0205688476563 282.6194763183594 761.4855346679688 282.6351623535156 761.03369140625 282.4237060546875 C 760.632568359375 282.251708984375 760.2986450195313 281.967041015625 760.078125 281.6091918945313 C 759.9404296875 281.3621826171875 759.8253173828125 281.1046752929688 759.734130859375 280.8394165039063 C 759.4242553710938 280.0539855957031 759.0101318359375 279.3081970214844 758.50146484375 278.61962890625 C 758.4253540039063 278.5087585449219 758.3331298828125 278.4083862304688 758.2275390625 278.3212890625 C 758.0753173828125 278.211181640625 757.893310546875 278.1430053710938 757.7019653320313 278.1243591308594 C 757.5459594726563 278.1034851074219 757.2783813476563 278.1720886230469 757.1796264648438 278.0289001464844 C 756.9693603515625 277.7126159667969 757.60009765625 277.3844604492188 757.8294067382813 277.3426818847656 Z" fill="#ffffff" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2yqh4c =
    '<svg viewBox="0.0 0.0 18.2 20.3" ><defs><linearGradient id="gradient" x1="1.406443" y1="3.9546" x2="1.406443" y2="2.663205"><stop offset="0.0" stop-color="#40808080" stop-opacity="0.25" /><stop offset="0.54" stop-color="#1f808080" stop-opacity="0.12" /><stop offset="1.0" stop-color="#1a808080" stop-opacity="0.1" /></linearGradient></defs><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 0.0, 0.16)" d="M 0 0 L 17.99287033081055 0.01033965684473515 L 18.00520896911621 20.11971473693848 L 0.01233657076954842 20.109375 L 0 0 Z" fill="url(#gradient)" fill-opacity="0.25" stroke="none" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cjvv8b =
    '<svg viewBox="0.3 0.4 17.6 19.5" ><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 0.33, 0.56)" d="M 0 0 L 17.39087867736816 0.009993720799684525 L 17.40271186828613 19.30186653137207 L 0.01183505542576313 19.29187393188477 L 0 0 Z" fill="#e6e6e6" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 5.93, 6.61)" d="M 3.205595731735229 5.507608875632286e-07 C 4.977015018463135 0.001018501818180084 6.413859844207764 1.346991777420044 6.414877891540527 3.006315469741821 C 6.415895462036133 4.66563892364502 4.980701446533203 6.00996208190918 3.209282159805298 6.008944034576416 C 1.437863111495972 6.007925987243652 0.001018492155708373 4.661952495574951 5.41098415851593e-07 3.002629280090332 C -0.001017410308122635 1.343305349349976 1.434176683425903 -0.001017400645650923 3.205595731735229 5.507608875632286e-07 Z" fill="#ffffff" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 6.23, 7.88)" d="M 2.912730932235718 3.806781023740768e-07 C 4.522312164306641 0.0009253313764929771 5.82788610458374 1.223929524421692 5.828811168670654 2.731656789779663 C 5.829736232757568 4.239383697509766 4.525661468505859 5.460888862609863 2.916080474853516 5.459963798522949 C 1.306499004364014 5.459038734436035 0.00092544243671 4.236034393310547 4.917383193969727e-07 2.728307247161865 C -0.0009244591346941888 1.220579981803894 1.303149461746216 -0.0009245701949112117 2.912730932235718 3.806781023740768e-07 Z" fill="#ffffff" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 8.51, 12.23)" d="M 0 0 L 1.360055685043335 0.0007815601420588791 L 1.361395597457886 2.184767007827759 L 0.001339817536063492 2.183985233306885 L 0 0 Z" fill="#ffffff" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(1.0, -0.01, 0.01, 1.0, 6.06, 13.61)" d="M 3.335902214050293 0 L 3.335902214050293 0 C 5.180306434631348 0.001167216338217258 6.678868293762207 1.39831554889679 6.688796997070313 3.125964879989624 L 6.690734386444092 5.993172645568848 L 0.001937079709023237 5.988939762115479 L 2.328306436538696e-10 3.121706962585449 C 0.007549150846898556 1.398713946342468 1.49651563167572 0.005371020175516605 3.335902214050293 0 Z" fill="#ffffff" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 7.96, 5.5)" d="M 1.165092349052429 3.761379048228264e-07 C 1.808925032615662 0.0003703565453179181 2.331154346466064 0.4895721077919006 2.33152437210083 1.092663049697876 C 2.331894397735596 1.695753931999207 1.810264945030212 2.184355735778809 1.16643226146698 2.183985710144043 C 0.5225996375083923 2.183615684509277 0.0003701771493069828 1.694414138793945 1.967418938875198e-07 1.091323137283325 C -0.0003697836364153773 0.4882323145866394 0.5212597846984863 -0.000369604240404442 1.165092349052429 3.761379048228264e-07 Z" fill="#ffffff" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-708.21, -100.61)" d="M 717.7247314453125 105.4369201660156 C 718.3489379882813 105.3747100830078 718.9795532226563 105.4716186523438 719.5498046875 105.7173919677734 C 720.06640625 105.8656311035156 720.5460815429688 106.1090698242188 720.9608764648438 106.4334259033203 C 721.7061767578125 107.0898284912109 721.865478515625 108.1310882568359 721.8909301757813 109.0888214111328 C 721.9163818359375 110.0465393066406 721.8590698242188 111.052001953125 722.3145141601563 111.9082946777344 C 722.84912109375 112.8614959716797 723.921142578125 113.4419250488281 725.0697631835938 113.4000701904297 C 724.3767700195313 113.7766876220703 723.5280151367188 113.8013763427734 722.8114624023438 113.4657135009766 C 722.1704711914063 113.1948699951172 721.635986328125 112.7431793212891 721.2825317382813 112.1738128662109 C 721.064697265625 111.7831420898438 720.8825073242188 111.3759307861328 720.7379150390625 110.9565277099609 C 720.2463989257813 109.7107086181641 719.5892944335938 108.5278625488281 718.7821655273438 107.4359130859375 C 718.6622314453125 107.2586975097656 718.5164184570313 107.0980224609375 718.3490600585938 106.9585571289063 C 718.1055908203125 106.7888336181641 717.8167724609375 106.6855621337891 717.5145263671875 106.6601867675781 C 717.2660522460938 106.6273651123047 716.8392944335938 106.7377624511719 716.6831665039063 106.5080261230469 C 716.3582763671875 106.0246887207031 717.3584594726563 105.5025634765625 717.7247314453125 105.4369201660156 Z" fill="#ffffff" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wcpl2u =
    '<svg viewBox="0.0 0.0 18.7 20.4" ><defs><linearGradient id="gradient" x1="-0.671424" y1="0.201035" x2="-0.671424" y2="-1.060902"><stop offset="0.0" stop-color="#40808080" stop-opacity="0.25" /><stop offset="0.54" stop-color="#1f808080" stop-opacity="0.12" /><stop offset="1.0" stop-color="#1a808080" stop-opacity="0.1" /></linearGradient></defs><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 0.0, 0.17)" d="M 0 0 L 18.52478981018066 0.01064532622694969 L 18.53717231750488 20.19460868835449 L 0.01238233037292957 20.18396377563477 L 0 0 Z" fill="url(#gradient)" fill-opacity="0.25" stroke="none" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xws4ws =
    '<svg viewBox="0.4 0.4 18.0 20.0" ><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 0.38, 0.56)" d="M 0 0 L 17.8367977142334 0.0102499695494771 L 17.84893608093262 19.79739761352539 L 0.01213889289647341 19.78714752197266 L 0 0 Z" fill="#e6e6e6" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 5.92, 6.77)" d="M 3.285178899765015 1.164153218269348e-10 C 5.100575923919678 0.001043223543092608 6.573091983795166 1.380431652069092 6.574134826660156 3.080950260162354 C 6.575178146362305 4.781468868255615 5.104353427886963 6.15916633605957 3.288956642150879 6.158123016357422 C 1.473559379577637 6.157079696655273 0.00104377802927047 4.77769136428833 5.546025931835175e-07 3.07717227935791 C -0.001042668707668781 1.376653790473938 1.469781637191772 -0.001043223310261965 3.285178899765015 1.164153218269348e-10 Z" fill="#ffffff" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 6.23, 8.08)" d="M 2.985947132110596 1.434236764907837e-07 C 4.635988712310791 0.0009483445901423693 5.974380016326904 1.254694938659668 5.975327968597412 2.800321340560913 C 5.976276397705078 4.345947742462158 4.639422416687012 5.598156929016113 2.989381074905396 5.597208499908447 C 1.339339971542358 5.596260547637939 0.0009487053612247109 4.342514038085938 5.041947588324547e-07 2.796887636184692 C -0.0009476967970840633 1.251261115074158 1.335906267166138 -0.000948057568166405 2.985947132110596 1.434236764907837e-07 Z" fill="#ffffff" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 8.56, 12.53)" d="M 0 0 L 1.395092487335205 0.0008016940555535257 L 1.396467089653015 2.241475343704224 L 0.001374594168737531 2.240673780441284 L 0 0 Z" fill="#ffffff" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 5.99, 14.14)" d="M 3.434801340103149 1.044478267431259e-06 L 3.434801340103149 1.044478267431259e-06 C 5.332883358001709 0.001091782934963703 6.872459888458252 1.443299651145935 6.873550415039063 3.221262693405151 L 6.875353336334229 6.160098075866699 L 0.001805074280127883 6.156147956848145 L 4.009110853075981e-06 3.220300674438477 C -0.002865894697606564 1.441160082817078 1.535478115081787 -0.00110438303090632 3.434813261032104 1.051230356097221e-06 Z" fill="#ffffff" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-465.02, -99.05)" d="M 471.9400024414063 106.6440353393555 C 471.9400024414063 106.6440353393555 473.9211730957031 105.5072937011719 474.3097839355469 104.2900009155273 C 474.9046936035156 105.391242980957 475.6891784667969 106.3932037353516 476.6317443847656 107.2556610107422 L 471.9400024414063 106.6440353393555 Z" fill="#ffffff" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fqhgxq =
    '<svg viewBox="129.3 55.3 12.4 20.1" ><path transform="translate(-279.2, -156.85)" d="M 413.8662109375 223.5399932861328 L 415.2612915039063 223.5399932861328 C 417.562255859375 223.5399932861328 419.427490234375 225.2872009277344 419.427490234375 227.4425048828125 L 419.427490234375 232.2579803466797 L 409.7000122070313 232.2579803466797 L 409.7000122070313 227.4425048828125 C 409.7000122070313 225.2872009277344 411.5652465820313 223.5399932861328 413.8662109375 223.5399932861328 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-448.0, -200.58)" d="M 580.9630126953125 256.5531921386719 C 580.6636352539063 256.7003784179688 580.3705444335938 256.8565063476563 580.0839233398438 257.0216064453125 C 579.81982421875 257.142333984375 579.5986328125 257.3319396972656 579.4468383789063 257.5675964355469 C 579.4119262695313 257.6622619628906 579.3626098632813 257.751708984375 579.3003540039063 257.8331604003906 C 579.1665649414063 257.9703979492188 578.943603515625 257.9674072265625 578.7525024414063 258.0091552734375 C 578.115478515625 258.1464233398438 577.7969970703125 258.7878723144531 577.6409301757813 259.36669921875 C 577.5397338867188 259.7103271484375 577.4589233398438 260.0589599609375 577.3988647460938 260.4109191894531 C 577.3402099609375 260.6383972167969 577.3479614257813 260.8764343261719 577.4210815429688 261.1001586914063 C 577.4625244140625 261.1956176757813 577.5230102539063 261.2791442871094 577.5548706054688 261.3776245117188 C 577.6695556640625 261.7356567382813 577.3447265625 262.0757751464844 577.2650756835938 262.4397888183594 C 577.2257080078125 262.77197265625 577.286376953125 263.1078491210938 577.4402465820313 263.409423828125 C 577.472900390625 263.5061340332031 577.5189208984375 263.5984191894531 577.5772094726563 263.6839294433594 C 577.6301879882813 263.748046875 577.6876831054688 263.8088073730469 577.7492065429688 263.8659057617188 C 577.8853759765625 264.0044860839844 577.9933471679688 264.165283203125 578.0676879882813 264.3403015136719 C 578.74072265625 264.4540100097656 579.4008178710938 264.6268615722656 580.039306640625 264.8564453125 C 581.0745239257813 265.2353515625 582.10009765625 265.7694396972656 583.2244262695313 265.7216796875 C 583.5261840820313 265.7081604003906 583.8238525390625 265.6507568359375 584.1067504882813 265.5516357421875 C 584.6609497070313 265.3576965332031 585.1451416015625 265.0056457519531 585.6993408203125 264.8355712890625 C 586.224609375 264.7233581542969 586.75634765625 264.6396484375 587.2919311523438 264.5849914550781 C 587.5435791015625 264.5372009277344 587.855712890625 264.3582153320313 587.7601318359375 264.1344299316406 C 588.0208740234375 264.2243347167969 588.3134765625 264.1701965332031 588.5181884765625 263.9942016601563 C 588.7174072265625 263.8190307617188 588.8765869140625 263.6079406738281 588.9864501953125 263.3736267089844 C 589.2116088867188 262.9842224121094 589.387939453125 262.57177734375 589.511962890625 262.1443786621094 C 589.724853515625 261.3161010742188 589.6058349609375 260.4434814453125 589.1775512695313 259.6919250488281 C 589.1030883789063 259.5439758300781 588.9942016601563 259.4135131835938 588.8590087890625 259.3099975585938 C 588.757080078125 259.2413940429688 588.6360473632813 259.1996154785156 588.5404663085938 259.1250305175781 C 588.4411010742188 259.0394592285156 588.358154296875 258.9385375976563 588.2952270507813 258.8266906738281 C 587.9428100585938 258.2836608886719 587.5701293945313 257.7535705566406 587.17724609375 257.2364501953125 C 586.7886962890625 256.7232666015625 586.345947265625 256.1981506347656 585.7184448242188 255.9743804931641 C 584.788330078125 255.6432037353516 584.1099243164063 256.1712951660156 583.2244262695313 256.2041015625 C 582.8295288085938 256.2041015625 582.4982299804688 256.06982421875 582.0809936523438 256.1473999023438 C 581.6893920898438 256.2314758300781 581.3128662109375 256.3681640625 580.9630126953125 256.5531921386719 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hizih2 =
    '<svg viewBox="0.0 0.0 25.4 28.4" ><defs><linearGradient id="gradient" x1="-0.367968" y1="4.193479" x2="-0.367968" y2="2.902198"><stop offset="0.0" stop-color="#40808080" stop-opacity="0.25" /><stop offset="0.54" stop-color="#1f808080" stop-opacity="0.12" /><stop offset="1.0" stop-color="#1a808080" stop-opacity="0.1" /></linearGradient></defs><path transform="matrix(1.0, -0.01, 0.01, 1.0, 0.0, 0.25)" d="M 0 0 L 25.13711547851563 0.01590782217681408 L 25.15609741210938 28.11237525939941 L 0.01898174919188023 28.09646797180176 L 0 0 Z" fill="url(#gradient)" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_uqrkll =
    '<svg viewBox="79.8 22.2 10.5 17.2" ><path transform="translate(-173.04, -75.11)" d="M 258.0793762207031 107.0499725341797 L 258.0793762207031 107.0499725341797 C 260.3693237304688 107.0598297119141 262.2200927734375 108.8014907836914 262.2200927734375 110.9465255737305 L 262.2200927734375 114.4939804077148 L 253.9100036621094 114.4939804077148 L 253.9100036621094 110.9465255737305 C 253.9100036621094 109.9115219116211 254.3495788574219 108.919059753418 255.1317749023438 108.1880645751953 C 255.9139556884766 107.4570770263672 256.9744873046875 107.0475921630859 258.0793762207031 107.0499725341797 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-342.24, -122.8)" d="M 425.2323608398438 145.5725555419922 C 424.9775390625 145.6978759765625 424.7269592285156 145.8321228027344 424.4806518554688 145.9753265380859 C 424.2598266601563 146.0801239013672 424.0753479003906 146.2415466308594 423.9486999511719 146.4407653808594 C 423.9190673828125 146.5215148925781 423.8772277832031 146.5978698730469 423.824462890625 146.6675262451172 C 423.7098388671875 146.7838745117188 423.5059814453125 146.7808990478516 423.3562927246094 146.8166961669922 C 422.8243408203125 146.9330444335938 422.5504455566406 147.4820251464844 422.4007263183594 147.9773101806641 C 422.3140869140625 148.2718505859375 422.2449951171875 148.5706634521484 422.1936950683594 148.8723754882813 C 422.14208984375 149.0692138671875 422.1487121582031 149.2754974365234 422.2127990722656 149.4691009521484 C 422.2478332519531 149.5496520996094 422.2987976074219 149.6242370605469 422.3274841308594 149.7047882080078 C 422.4262084960938 150.0031433105469 422.1491088867188 150.301513671875 422.0790100097656 150.599853515625 C 422.0457458496094 150.8840026855469 422.0975952148438 151.1712036132813 422.2287292480469 151.4292907714844 C 422.2568054199219 151.5123596191406 422.2964477539063 151.5916137695313 422.3465576171875 151.6650085449219 C 422.3917846679688 151.7196350097656 422.4407043457031 151.7714538574219 422.4931030273438 151.8201446533203 C 422.6090087890625 151.9387969970703 422.7007446289063 152.0763092041016 422.7638549804688 152.2259063720703 C 423.3381652832031 152.3253936767578 423.9012145996094 152.4752349853516 424.4455871582031 152.6734466552734 C 425.3310852050781 152.9956665039063 426.2070007324219 153.4551391601563 427.1561889648438 153.4133605957031 C 427.4143676757813 153.4015808105469 427.6690368652344 153.3522491455078 427.9110717773438 153.2671813964844 C 428.3856506347656 153.1000823974609 428.7997131347656 152.8017272949219 429.2806701660156 152.6704559326172 C 429.7271118164063 152.5745849609375 430.1791076660156 152.5028686523438 430.6343688964844 152.4556427001953 C 430.8509521484375 152.4168395996094 431.1153259277344 152.2617034912109 431.0357055664063 152.0707702636719 C 431.25537109375 152.1430053710938 431.4996032714844 152.0972442626953 431.6727294921875 151.9514312744141 C 431.8422546386719 151.8013153076172 431.9776916503906 151.6206817626953 432.0708923339844 151.4203491210938 C 432.2633056640625 151.0876312255859 432.4139709472656 150.7352447509766 432.5199890136719 150.3701324462891 C 432.6985778808594 149.6644592285156 432.5966796875 148.9220123291016 432.2333068847656 148.2816314697266 C 432.1685485839844 148.1540679931641 432.0737915039063 148.0418701171875 431.9562072753906 147.9534301757813 C 431.8702087402344 147.8937683105469 431.7650756835938 147.8579559326172 431.6823120117188 147.7953033447266 C 431.5972900390625 147.7226104736328 431.5262145996094 147.6368408203125 431.4720764160156 147.5417022705078 C 431.1705322265625 147.0782623291016 430.8520202636719 146.625732421875 430.5165100097656 146.1841735839844 C 430.2216796875 145.7185363769531 429.78759765625 145.3440704345703 429.2679443359375 145.1071166992188 C 428.4716186523438 144.8087463378906 427.8919372558594 145.2771759033203 427.1370544433594 145.3040161132813 C 426.7994384765625 145.3040161132813 426.5159301757813 145.1876678466797 426.1592102050781 145.2562713623047 C 425.8360595703125 145.3209075927734 425.5241088867188 145.4273681640625 425.2323608398438 145.5725555419922 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_8b28lf =
    '<svg viewBox="0.0 0.0 21.7 24.3" ><defs><linearGradient id="gradient" x1="1.510077" y1="0.756458" x2="1.510077" y2="-0.534774"><stop offset="0.0" stop-color="#40808080" stop-opacity="0.25" /><stop offset="0.54" stop-color="#1f808080" stop-opacity="0.12" /><stop offset="1.0" stop-color="#1a808080" stop-opacity="0.1" /></linearGradient></defs><path transform="matrix(1.0, -0.01, 0.01, 1.0, 0.0, 0.22)" d="M 0 0 L 21.49331855773926 0.01360187586396933 L 21.50954818725586 24.0374698638916 L 0.01623033359646797 24.02386665344238 L 0 0 Z" fill="url(#gradient)" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ivp8lq =
    '<svg viewBox="235.0 49.3 24.6 27.2" ><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 234.98, 49.53)" d="M 0 0 L 24.29626655578613 0.01396192237734795 L 24.31280326843262 26.96768379211426 L 0.01653539761900902 26.95372200012207 L 0 0 Z" fill="#e6e6e6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 242.8, 57.99)" d="M 4.475738048553467 5.294568836688995e-07 C 6.949039936065674 0.00142182013951242 8.955199241638184 1.880705237388611 8.956621170043945 4.197496891021729 C 8.958042144775391 6.514287948608398 6.95418643951416 8.391267776489258 4.480885028839111 8.389845848083496 C 2.007582187652588 8.388423919677734 0.001422046218067408 6.509141445159912 7.555354386568069e-07 4.192349910736084 C -0.001420535147190094 1.875558137893677 2.002435207366943 -0.001420761225745082 4.475738048553467 5.294568836688995e-07 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 243.22, 59.77)" d="M 4.068273544311523 1.233536750078201e-06 C 6.316410064697266 0.001293131848797202 8.139932632446289 1.709489464759827 8.14122486114502 3.815364122390747 C 8.142516136169434 5.921238422393799 6.321088314056396 7.627339839935303 4.072952270507813 7.626048564910889 C 1.824815154075623 7.624756813049316 0.001292585162445903 5.91655969619751 6.868503987789154e-07 3.810685634613037 C -0.001291211578063667 1.704811096191406 1.820136785507202 -0.001290664891712368 4.068273544311523 1.233536750078201e-06 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 246.4, 65.84)" d="M 0 0 L 1.901530027389526 0.001092719961889088 L 1.9034024477005 3.053301811218262 L 0.001872449880465865 3.05220890045166 L 0 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 242.9, 68.03)" d="M 4.163783073425293 1.373700797557831e-08 L 5.195761203765869 0.0005930429324507713 C 7.496667385101318 0.001915265340358019 9.363009452819824 1.750206351280212 9.364331245422363 3.905511379241943 L 9.367076873779297 8.380889892578125 L 0.002746255369856954 8.375509262084961 L 7.285270839929581e-07 3.900130033493042 C -0.001345366123132408 1.744825124740601 1.862853050231934 -0.001322222873568535 4.163759231567383 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 245.63, 56.44)" d="M 1.626672744750977 0 C 2.525575637817383 0.0005165572511032224 3.254699468612671 0.6835277676582336 3.255215883255005 1.525548100471497 C 3.255732297897339 2.367568492889404 2.527446269989014 3.049742221832275 1.628543257713318 3.049225568771362 C 0.7296405434608459 3.048708915710449 0.0005168318748474121 2.365697860717773 2.746237441897392e-07 1.523677468299866 C -0.0005162827437743545 0.681657075881958 0.7277698516845703 -0.0005165573675185442 1.626672744750977 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-698.33, -200.98)" d="M 946.130126953125 256.47412109375 C 946.9869384765625 256.3219909667969 947.8629150390625 256.58154296875 948.6783447265625 256.864990234375 C 949.3988647460938 257.0722045898438 950.068115234375 257.4119873046875 950.646728515625 257.864501953125 C 951.6882934570313 258.7804565429688 951.9207763671875 260.2513427734375 951.9462890625 261.5760803222656 C 951.9718017578125 262.9007568359375 951.9016723632813 264.3179626464844 952.5386962890625 265.5143737792969 C 953.2802734375 266.8538818359375 954.77978515625 267.6729431152344 956.3895263671875 267.6177978515625 C 955.4754028320313 268.1905822753906 954.2363891601563 268.1339416503906 953.2330932617188 267.7102355957031 C 952.3378295898438 267.330810546875 951.5916748046875 266.6986389160156 951.0990600585938 265.9022216796875 C 950.79443359375 265.35546875 950.5397338867188 264.7855834960938 950.3377685546875 264.1986389160156 C 949.6513671875 262.4599609375 948.7342529296875 260.8090209960938 947.6080932617188 259.2846984863281 C 947.4403076171875 259.0376586914063 947.2366333007813 258.813720703125 947.0028686523438 258.6193237304688 C 946.6650390625 258.3755493164063 946.2614135742188 258.2247009277344 945.837158203125 258.1837158203125 C 945.4899291992188 258.1389770507813 944.881591796875 258.2911376953125 944.6777954101563 257.9689331054688 C 944.2222900390625 257.2946472167969 945.6205444335938 256.5636901855469 946.130126953125 256.47412109375 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2zge6 =
    '<svg viewBox="0.0 0.0 26.2 28.4" ><defs><linearGradient id="gradient" x1="0.741415" y1="1.418898" x2="0.741415" y2="0.15702"><stop offset="0.0" stop-color="#40808080" stop-opacity="0.25" /><stop offset="0.54" stop-color="#1f808080" stop-opacity="0.12" /><stop offset="1.0" stop-color="#1a808080" stop-opacity="0.1" /></linearGradient></defs><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 0.0, 0.24)" d="M 0 0 L 25.87928581237793 0.01487160846590996 L 25.89658355712891 28.21274948120117 L 0.01729865558445454 28.19787788391113 L 0 0 Z" fill="url(#gradient)" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6uzyuo =
    '<svg viewBox="39.6 28.3 21.0 23.2" ><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 39.61, 28.46)" d="M 0 0 L 20.77350044250488 0.01193755492568016 L 20.78763771057129 23.05715942382813 L 0.0141376368701458 23.04522132873535 L 0 0 Z" fill="#e6e6e6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 46.3, 35.69)" d="M 3.826342105865479 8.826609700918198e-07 C 5.940786361694336 0.001215954776853323 7.655868053436279 1.607829570770264 7.657083034515381 3.588472366333008 C 7.658298492431641 5.569114685058594 5.945186614990234 7.173758506774902 3.830742359161377 7.172543525695801 C 1.716297388076782 7.171328067779541 0.001215718220919371 5.564714431762695 6.461050361394882e-07 3.584072113037109 C -0.001214426010847092 1.603429436683655 1.711897253990173 -0.001214189454913139 3.826342105865479 8.826609700918198e-07 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 46.66, 37.21)" d="M 3.479360580444336 0 C 5.402062892913818 0.001104886410757899 6.961617469787598 1.462027072906494 6.962722301483154 3.263060808181763 C 6.963827133178711 5.064093589782715 5.406064033508301 6.523224830627441 3.483361721038818 6.522119998931885 C 1.560659646987915 6.521015167236328 0.001105473609641194 5.060092449188232 5.871988832950592e-07 3.259059429168701 C -0.001104299211874604 1.458025932312012 1.556658506393433 -0.001104886410757899 3.479360580444336 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 49.38, 42.4)" d="M 0 0 L 1.624422550201416 0.0009334794012829661 L 1.626022338867188 2.608587980270386 L 0.001599727314896882 2.607654571533203 L 0 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 46.39, 44.27)" d="M 4.001429080963135 9.918585419654846e-08 L 4.001429080963135 9.918585419654846e-08 C 6.212637424468994 0.001270776847377419 8.006200790405273 1.681396722793579 8.007471084594727 3.752668619155884 L 8.009560585021973 7.177825927734375 L 0.002101910533383489 7.173224449157715 L 6.628688424825668e-07 3.748061418533325 C -0.001258068368770182 1.676795125007629 1.790244698524475 -0.00127615500241518 4.00144100189209 1.059379428625107e-07 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 48.73, 34.36)" d="M 1.391107559204102 5.274778231978416e-07 C 2.159836530685425 0.0004422799102030694 2.78337287902832 0.584543764591217 2.783814668655396 1.304627656936646 C 2.784256219863892 2.02471137046814 2.161436319351196 2.608096599578857 1.392707228660583 2.607655048370361 C 0.6239781975746155 2.607213258743286 0.0004419873002916574 2.023111581802368 2.34867911785841e-07 1.303027987480164 C -0.0004415175935719162 0.5829440355300903 0.6223784685134888 -0.0004412249836605042 1.391107559204102 5.274778231978416e-07 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-276.86, -149.37)" d="M 327.4404296875 182.9085845947266 C 328.1730041503906 182.7773132324219 328.9215393066406 183.0010833740234 329.6222839355469 183.2427368164063 C 330.2389526367188 183.4192962646484 330.8118286132813 183.7093963623047 331.3072509765625 184.0960388183594 C 332.1990661621094 184.8777465820313 332.3901672363281 186.1248779296875 332.4188537597656 187.2705535888672 C 332.447509765625 188.416259765625 332.380615234375 189.6156463623047 332.92529296875 190.6390075683594 C 333.5612487792969 191.7805786132813 334.8418579101563 192.4773254394531 336.2155456542969 192.4291534423828 C 335.4351806640625 192.91845703125 334.3745422363281 192.8707122802734 333.5177307128906 192.5097198486328 C 332.7522277832031 192.1853942871094 332.1140747070313 191.6450347900391 331.692626953125 190.9642181396484 C 331.4369812011719 190.4965362548828 331.223876953125 190.0094757080078 331.0556030273438 189.5082397460938 C 330.4679260253906 188.0195922851563 329.6824340820313 186.6061859130859 328.7176818847656 185.3013916015625 C 328.5748596191406 185.0898590087891 328.4012145996094 184.8980407714844 328.2016906738281 184.7315368652344 C 327.912841796875 184.5228424072266 327.567626953125 184.3936767578125 327.2047119140625 184.3585815429688 C 326.9085083007813 184.3198089599609 326.3988952636719 184.4510955810547 326.2141723632813 184.1736145019531 C 325.8096313476563 183.6097106933594 327.0072631835938 182.9861602783203 327.4404296875 182.9085845947266 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_410wr0 =
    '<svg viewBox="0.0 0.0 21.8 23.3" ><defs><linearGradient id="gradient" x1="-0.586777" y1="-1.09314" x2="-0.586777" y2="-2.410412"><stop offset="0.0" stop-color="#40808080" stop-opacity="0.25" /><stop offset="0.54" stop-color="#1f808080" stop-opacity="0.12" /><stop offset="1.0" stop-color="#1a808080" stop-opacity="0.1" /></linearGradient></defs><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 0.0, 0.2)" d="M 0 0 L 21.5825252532959 0.01240246277302504 L 21.59669494628906 23.10834884643555 L 0.01416875328868628 23.09594535827637 L 0 0 Z" fill="url(#gradient)" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_urbsmd =
    '<svg viewBox="1.9 51.5 44.4 155.4" ><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 1.9, 51.69)" d="M 0 0 L 24.9173698425293 0.01431884150952101 L 24.93432807922363 27.65725135803223 L 0.0169582087546587 27.64293098449707 L 0 0 Z" fill="#e6e6e6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 9.64, 60.37)" d="M 4.590336799621582 7.746275514364243e-07 C 7.126967430114746 0.001458456739783287 9.184494018554688 1.928859829902649 9.185951232910156 4.304971694946289 C 9.187409400939941 6.681083679199219 7.132246017456055 8.606122016906738 4.595615386962891 8.604663848876953 C 2.058985471725464 8.603206634521484 0.001458457205444574 6.67580509185791 7.75093212723732e-07 4.29969310760498 C -0.001456907251849771 1.923581123352051 2.053706884384155 -0.001456907717511058 4.590336799621582 7.746275514364243e-07 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 10.08, 62.18)" d="M 4.173322677612305 8.363276720046997e-07 C 6.479509830474854 0.001326094148680568 8.350118637084961 1.753630638122559 8.351444244384766 3.91388201713562 C 8.352768898010254 6.07413387298584 6.48430871963501 7.824289321899414 4.178121566772461 7.822964668273926 C 1.871934771537781 7.821639060974121 0.001325962133705616 6.069334506988525 7.043126970529556e-07 3.909083127975464 C -0.001324553159065545 1.748831510543823 1.867135524749756 -0.001324421144090593 4.173322677612305 8.363276720046997e-07 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 13.34, 68.41)" d="M 0 0 L 1.949307084083557 0.001120175234973431 L 1.951227068901062 3.130902290344238 L 0.001920038834214211 3.129782199859619 L 0 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 9.74, 70.66)" d="M 4.163775444030762 0 L 5.437830924987793 0.0007321399170905352 C 7.738743782043457 0.002054366283118725 9.605067253112793 1.750351071357727 9.606389045715332 3.905656099319458 L 9.609273910522461 8.607789039611816 L 0.002883505541831255 8.602268218994141 L 7.029157131910324e-07 3.903120756149292 C -0.001321519957855344 1.747815728187561 1.862864971160889 0.00165740167722106 4.163777351379395 0.002985218074172735 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-195.09, -207.54)" d="M 206.1399993896484 269.0619201660156 C 206.1399993896484 269.0619201660156 208.9079132080078 267.4746704101563 209.4493865966797 265.7799987792969 C 209.4493865966797 265.7799987792969 210.7234497070313 268.2474060058594 212.6918792724609 269.9241943359375 L 206.1399993896484 269.0619201660156 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 29.35, 174.17)" d="M 7.92963171005249 2.108048647642136e-06 C 12.31156349182129 0.002520198468118906 15.86586284637451 3.332032442092896 15.86838150024414 7.436676025390625 C 15.87089920043945 11.5413179397583 12.32068252563477 14.86674785614014 7.938750743865967 14.86423015594482 C 3.55681848526001 14.8617115020752 0.002519429195672274 11.53219890594482 1.33877620100975e-06 7.427556991577148 C -0.002516751643270254 3.322913646697998 3.547699928283691 -0.002515982370823622 7.92963171005249 2.108048647642136e-06 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 30.1, 177.31)" d="M 7.210203170776367 1.731328666210175e-06 C 11.19457626342773 0.002291363663971424 14.42640686035156 3.029728651046753 14.42869663238525 6.761971473693848 C 14.43098545074463 10.49421405792236 11.20286846160889 13.51793956756592 7.218494892120361 13.51565074920654 C 3.234121084213257 13.51336002349854 0.002290850039571524 10.48592281341553 1.217704266309738e-06 6.753679752349854 C -0.002288415096700191 3.021436929702759 3.225829601287842 -0.002287901472300291 7.210203170776367 1.731328666210175e-06 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 35.73, 188.07)" d="M 0 0 L 3.366695642471313 0.001934681786224246 L 3.370012283325195 5.408194065093994 L 0.00331659778021276 5.406259059906006 L 0 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 29.52, 191.96)" d="M 8.037873268127441 1.495704054832458e-06 L 8.544308662414551 0.000292519573122263 C 10.67952632904053 0.001519528217613697 12.72758102416992 0.7980387210845947 14.23707580566406 2.214301586151123 C 15.74656391143799 3.630564451217651 16.59358596801758 5.550310611724854 16.59142303466797 7.550382614135742 L 16.59592247009277 14.8840446472168 L 0.00451778806746006 14.87451076507568 L 1.87787227332592e-05 7.540848255157471 C -0.004592039622366428 5.540772914886475 0.8400678634643555 3.62199854850769 2.347831010818481 2.207469463348389 C 3.855588436126709 0.7929181456565857 5.90266752243042 -0.00122550711967051 8.037873268127441 1.495704054832458e-06 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-239.44, -471.51)" d="M 271.2200012207031 647.6688232421875 C 271.2200012207031 647.6688232421875 275.9977416992188 644.9238891601563 276.9341735839844 642 C 276.9341735839844 642 279.1383056640625 646.2605590820313 282.53369140625 649.1605834960938 L 271.2200012207031 647.6688232421875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_b07zj9 =
    '<svg viewBox="0.0 0.0 34.3 37.7" ><defs><linearGradient id="gradient" x1="0.499954" y1="1.0" x2="0.499954" y2="0.0"><stop offset="0.0" stop-color="#40808080" stop-opacity="0.25" /><stop offset="0.54" stop-color="#1f808080" stop-opacity="0.12" /><stop offset="1.0" stop-color="#1a808080" stop-opacity="0.1" /></linearGradient></defs><path transform="translate(-359.03, -373.23)" d="M 359.0299987792969 373.2300109863281 L 359.0299987792969 373.7730102539063 L 371.59228515625 394.1746826171875 L 371.59228515625 406.3237915039063 L 380.8196716308594 410.9483337402344 L 380.8196716308594 410.6767883300781 L 380.8196716308594 394.1746826171875 L 393.2863464355469 373.7730102539063 L 393.2863464355469 373.2300109863281 L 359.0299987792969 373.2300109863281 Z" fill="url(#gradient)" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pzg0so =
    '<svg viewBox="176.6 16.5 21.0 22.8" ><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 176.6, 16.73)" d="M 0 0 L 20.77986907958984 0.0119412150233984 L 20.79375839233398 22.65139579772949 L 0.0138887083157897 22.63945198059082 L 0 0 Z" fill="#e6e6e6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 183.06, 23.84)" d="M 3.829565048217773 8.477363735437393e-07 C 5.9457688331604 0.001216930570080876 7.662258625030518 1.579779505729675 7.663453102111816 3.525819063186646 C 7.664646625518799 5.471858024597168 5.950092315673828 7.048449516296387 3.833888530731201 7.047233581542969 C 1.717684626579285 7.046016693115234 0.001194467069581151 5.467453956604004 6.23287633061409e-07 3.521414995193481 C -0.001193220494315028 1.57537567615509 1.713361501693726 -0.001215234980918467 3.829565048217773 8.477363735437393e-07 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 183.43, 25.33)" d="M 3.479395389556885 9.282957762479782e-07 C 5.402097702026367 0.001105814706534147 6.961636543273926 1.436647772789001 6.962721824645996 3.206373691558838 C 6.963807106018066 4.976099491119385 5.406029224395752 6.409850120544434 3.483327150344849 6.408745288848877 C 1.560624718666077 6.40764045715332 0.001086247386410832 4.972098350524902 5.671754479408264e-07 3.202372550964355 C -0.001085112919099629 1.432646632194519 1.556693196296692 -0.001103958114981651 3.479395389556885 9.282957762479782e-07 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(1.0, -0.01, 0.01, 1.0, 186.2, 30.23)" d="M 0 0 L 1.624420881271362 0.001028001657687128 L 1.626152396202087 2.563932180404663 L 0.001731477444991469 2.562904119491577 L 0 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 183.14, 32.27)" d="M 4.004603862762451 3.694323822855949e-06 L 4.004603862762451 3.694323822855949e-06 C 6.215800285339355 0.001274365000426769 8.009363174438477 1.681405782699585 8.01063346862793 3.75267767906189 L 8.012656211853027 7.049537658691406 L 0.002023190958425403 7.044934272766113 L 6.505288183689117e-07 3.748068809509277 C -0.001246861764229834 1.675634026527405 1.792189359664917 -0.002916813362389803 4.004603862762451 3.694323822855949e-06 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-565.62, -122.53)" d="M 749.8499755859375 147.3052062988281 C 749.8499755859375 147.3052062988281 752.1593017578125 146.0043640136719 752.6082763671875 144.6199951171875 C 753.3031005859375 145.884033203125 754.2169189453125 147.0313568115234 755.3125 148.0153198242188 L 749.8499755859375 147.3052062988281 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xdf9i0 =
    '<svg viewBox="114.7 112.2 33.3 36.6" ><path transform="translate(-245.49, -263.76)" d="M 360.2300109863281 375.9200134277344 L 372.44189453125 396.0322570800781 L 372.44189453125 408.00830078125 L 381.4144897460938 412.2987060546875 L 381.4144897460938 396.0322570800781 L 393.5308227539063 375.9200134277344 L 360.2300109863281 375.9200134277344 Z" fill="#cfd8dc" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-245.49, -263.76)" d="M 373.0152282714844 408.00830078125 L 373.0152282714844 396.0322570800781 L 360.8001403808594 375.9200134277344 L 360.2300109863281 375.9200134277344 L 372.44189453125 396.0322570800781 L 372.44189453125 408.00830078125 L 373.0152282714844 408.00830078125 Z" fill="#ffffff" fill-opacity="0.2" stroke="none" stroke-width="1" stroke-opacity="0.2" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-271.62, -339.22)" d="M 398.5700073242188 483.4700012207031 L 407.5426025390625 488.0289306640625 L 407.5426025390625 487.7604064941406 L 399.1433410644531 483.4700012207031 L 398.5700073242188 483.4700012207031 Z" fill="#cfd8dc" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-271.62, -339.22)" d="M 398.5700073242188 483.4700012207031 L 407.5426025390625 488.0289306640625 L 407.5426025390625 487.7604064941406 L 399.1433410644531 483.4700012207031 L 398.5700073242188 483.4700012207031 Z" fill="#000000" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jsuwhc =
    '<svg viewBox="5.2 5.9 8.8 14.4" ><path transform="translate(-409.73, -33.13)" d="M 419.3213806152344 47.22000122070313 L 419.3213806152344 47.22000122070313 C 421.2441101074219 47.22000122070313 422.8027648925781 48.68003082275391 422.8027648925781 50.48105621337891 L 422.8027648925781 53.46461486816406 L 415.8399963378906 53.46461486816406 L 415.8399963378906 50.48104095458984 C 415.8399963378906 48.68002319335938 417.398681640625 47.22000122070313 419.3213806152344 47.22000122070313 Z" fill="#ffffff" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-579.28, -84.52)" d="M 587.15869140625 90.93096923828125 C 586.9463500976563 91.03638458251953 586.7340087890625 91.14876556396484 586.5216674804688 91.26810455322266 C 586.3363647460938 91.35604095458984 586.1817016601563 91.49162292480469 586.07568359375 91.65895843505859 C 586.0507202148438 91.72703552246094 586.0153198242188 91.79135131835938 585.9705810546875 91.84990692138672 C 585.8750610351563 91.9483642578125 585.7158203125 91.94537353515625 585.578857421875 91.9752197265625 C 585.1329345703125 92.07367706298828 584.903564453125 92.53314208984375 584.7825317382813 92.94487762451172 C 584.70947265625 93.1912841796875 584.6509399414063 93.4412841796875 584.6073608398438 93.69374847412109 C 584.5655517578125 93.85622406005859 584.571044921875 94.02622985839844 584.623291015625 94.18604278564453 C 584.6519775390625 94.25466156005859 584.696533203125 94.3143310546875 584.7188720703125 94.38295745849609 C 584.8016357421875 94.63954162597656 584.5691528320313 94.88121032714844 584.5117797851563 95.14376831054688 C 584.4834594726563 95.38180541992188 584.5264282226563 95.62252807617188 584.6360473632813 95.83894348144531 C 584.6595458984375 95.90835571289063 584.6928100585938 95.97456359863281 584.7347412109375 96.03585052490234 C 584.7731323242188 96.08111572265625 584.8146362304688 96.12396240234375 584.8590087890625 96.16416168212891 C 584.95556640625 96.26276397705078 585.0322265625 96.37700653076172 585.0851440429688 96.50128936767578 C 585.5659790039063 96.58497619628906 586.0372924804688 96.71084594726563 586.4929809570313 96.87722015380859 C 587.235107421875 97.14873504638672 587.9677124023438 97.53062438964844 588.7639770507813 97.49481964111328 C 588.9818725585938 97.48544311523438 589.19677734375 97.44416809082031 589.4010620117188 97.37249755859375 C 589.7991943359375 97.23226928710938 590.1431884765625 96.98164367675781 590.5476684570313 96.8623046875 C 590.9216918945313 96.78229522705078 591.30029296875 96.72252655029297 591.6815795898438 96.68328857421875 C 591.8631591796875 96.65047454833984 592.0861206054688 96.52217864990234 592.0160522460938 96.36106109619141 C 592.2029418945313 96.42653656005859 592.4132080078125 96.38851928710938 592.5606689453125 96.26260375976563 C 592.6973266601563 96.13569641113281 592.8056030273438 95.98458099365234 592.8792114257813 95.81805419921875 C 593.0425415039063 95.53949737548828 593.1707763671875 95.24413299560547 593.2614135742188 94.93789672851563 C 593.4146728515625 94.34451293945313 593.3296508789063 93.71906280517578 593.0225830078125 93.18057250976563 C 592.9682006835938 93.07382965087891 592.888671875 92.97999572753906 592.7901000976563 92.90609741210938 C 592.716796875 92.85537719726563 592.6307983398438 92.82553100585938 592.5607299804688 92.77183532714844 C 592.4896240234375 92.71018218994141 592.4302978515625 92.63750457763672 592.385498046875 92.55701446533203 C 592.1328735351563 92.15920257568359 591.8663330078125 91.78028869628906 591.5861206054688 91.42027282714844 C 591.3384399414063 91.03286743164063 590.9752807617188 90.72174835205078 590.5413208007813 90.52519989013672 C 589.8756103515625 90.28651428222656 589.3883056640625 90.66542816162109 588.7576293945313 90.68930053710938 C 588.4866333007813 90.65232849121094 588.2127075195313 90.63834381103516 587.9390258789063 90.64752960205078 C 587.666015625 90.70716857910156 587.4033203125 90.80258178710938 587.15869140625 90.93096923828125 Z" fill="#ffffff" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_81z7m6 =
    '<svg viewBox="13.4 45.8 233.8 66.4" ><path transform="translate(-200.16, -269.44)" d="M 213.5797424316406 354 C 213.5797424316406 354 213.2611999511719 387.1176147460938 244.4757690429688 380.8521118164063 C 275.6903686523438 374.5866088867188 276.6459045410156 364.4425048828125 312.3196716308594 377.5701904296875" fill="none" stroke="#3ad29f" stroke-width="2" stroke-dasharray="12 12" stroke-miterlimit="10" stroke-linecap="butt" /><path transform="translate(-489.11, -262.42)" d="M 736.3199462890625 344 C 736.3199462890625 344 736.6384887695313 377.1176147460938 705.4239501953125 370.8521118164063 C 674.2093505859375 364.586669921875 673.2537841796875 354.4425048828125 637.580078125 367.5702514648438" fill="none" stroke="#3ad29f" stroke-width="2" stroke-dasharray="12 12" stroke-miterlimit="10" stroke-linecap="butt" /><path transform="translate(-457.53, -262.42)" d="M 592.6224975585938 344 C 592.6224975585938 344 588.4818115234375 353.2490844726563 594.5336303710938 357.7244262695313 C 600.58544921875 362.1997680664063 593.8966064453125 371.7472534179688 593.8966064453125 371.7472534179688" fill="none" stroke="#3ad29f" stroke-width="2" stroke-dasharray="12 12" stroke-miterlimit="10" stroke-linecap="butt" /><path transform="translate(-278.82, -207.16)" d="M 329 265.239990234375 C 329 265.239990234375 333.7777099609375 287.0200805664063 357.0294189453125 287.0200805664063 C 380.2810668945313 287.0200805664063 400.6660766601563 311.4853515625 396.2068481445313 314.4689025878906" fill="none" stroke="#3ad29f" stroke-width="2" stroke-dasharray="12 12" stroke-miterlimit="10" stroke-linecap="butt" /><path transform="translate(-345.6, -178.39)" d="M 429.5459594726563 224.2400207519531 C 429.5459594726563 224.2400207519531 423.424072265625 234.7869262695313 430.154296875 245.5337524414063 C 433.3896484375 250.6026611328125 438.6085205078125 254.2891693115234 444.700927734375 255.8091735839844 C 459.1328735351563 259.5147705078125 465.4522094726563 257.7932434082031 474.7783813476563 280.02978515625" fill="none" stroke="#3ad29f" stroke-width="2" stroke-dasharray="12 12" stroke-miterlimit="10" stroke-linecap="butt" /><path transform="translate(-492.12, -179.8)" d="M 678.9478759765625 226.2400054931641 C 678.9478759765625 226.2400054931641 683.8370971679688 231.8162994384766 674.6893310546875 243.6163177490234 C 671.045166015625 248.2409820556641 666.0230712890625 251.7535552978516 660.254150390625 253.7127075195313 C 651.0172119140625 256.926025390625 642 266.2198181152344 642 279.9442749023438" fill="none" stroke="#3ad29f" stroke-width="2" stroke-dasharray="12 12" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_tycl6t =
    '<svg viewBox="5.2 5.9 8.8 14.4" ><path transform="translate(-696.73, -104.13)" d="M 706.3214721679688 118.2200088500977 L 706.3214721679688 118.2200088500977 C 708.244140625 118.2200088500977 709.8028564453125 119.6800308227539 709.8028564453125 121.4810485839844 L 709.8028564453125 124.4646148681641 L 702.840087890625 124.4646148681641 L 702.840087890625 121.4810485839844 C 702.840087890625 119.6800231933594 704.3987426757813 118.2200088500977 706.3214721679688 118.2200088500977 Z" fill="#ffffff" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-866.28, -155.52)" d="M 874.1587524414063 161.9309539794922 C 873.9463500976563 162.036376953125 873.7340087890625 162.1487579345703 873.5216674804688 162.2680969238281 C 873.3363647460938 162.3560485839844 873.1817016601563 162.4916229248047 873.0757446289063 162.6589660644531 C 873.05078125 162.7270355224609 873.015380859375 162.7913665771484 872.9705810546875 162.8498992919922 C 872.8750610351563 162.9483642578125 872.7158203125 162.9453887939453 872.578857421875 162.9752197265625 C 872.1329345703125 163.0736694335938 871.9036254882813 163.5331268310547 871.7825927734375 163.9448699951172 C 871.70947265625 164.1912689208984 871.6509399414063 164.4412841796875 871.607421875 164.6937408447266 C 871.5655517578125 164.8562164306641 871.5709838867188 165.0262145996094 871.623291015625 165.18603515625 C 871.6519775390625 165.254638671875 871.6965942382813 165.3143310546875 871.7188720703125 165.3829498291016 C 871.8016967773438 165.6395416259766 871.5692138671875 165.8812103271484 871.5117797851563 166.1437530517578 C 871.4834594726563 166.3817901611328 871.5264892578125 166.6225280761719 871.6360473632813 166.8389434814453 C 871.6596069335938 166.9083404541016 871.6927490234375 166.9745635986328 871.7348022460938 167.0358428955078 C 871.7731323242188 167.0810852050781 871.8146362304688 167.1239624023438 871.8590087890625 167.1641387939453 C 871.95556640625 167.2627563476563 872.0322265625 167.3769836425781 872.0851440429688 167.5012817382813 C 872.56591796875 167.5849914550781 873.0372924804688 167.7108459472656 873.4929809570313 167.8772430419922 C 874.235107421875 168.1487274169922 874.9677124023438 168.5306243896484 875.7640380859375 168.4948120117188 C 875.9818725585938 168.4854278564453 876.1968383789063 168.4441528320313 876.4010620117188 168.3724822998047 C 876.7991943359375 168.2322540283203 877.1431884765625 167.9816436767578 877.5476684570313 167.8622894287109 C 877.9216918945313 167.7822875976563 878.30029296875 167.7225036621094 878.6815795898438 167.6832733154297 C 878.8631591796875 167.6504516601563 879.0861206054688 167.5221710205078 879.01611328125 167.3610534667969 C 879.2029418945313 167.4265289306641 879.4132080078125 167.3885192871094 879.5607299804688 167.2625885009766 C 879.6973266601563 167.1356811523438 879.8056030273438 166.9845581054688 879.8792114257813 166.8180236816406 C 880.0425415039063 166.5394744873047 880.1708374023438 166.244140625 880.2614135742188 165.9379119873047 C 880.4146728515625 165.3445129394531 880.32958984375 164.7190704345703 880.0225219726563 164.1805725097656 C 879.9681396484375 164.0738220214844 879.888671875 163.9799957275391 879.7901000976563 163.9060668945313 C 879.716796875 163.8553619384766 879.630859375 163.8255157470703 879.5607299804688 163.7718200683594 C 879.4896240234375 163.7101593017578 879.4303588867188 163.6374816894531 879.3855590820313 163.5569915771484 C 879.1328735351563 163.1591949462891 878.8663940429688 162.7802734375 878.5861206054688 162.4202575683594 C 878.3384399414063 162.0328521728516 877.975341796875 161.7217407226563 877.5413818359375 161.5251922607422 C 876.8756103515625 161.2865142822266 876.3883056640625 161.6654205322266 875.7576904296875 161.6893005371094 C 875.4866943359375 161.6523132324219 875.2127075195313 161.6383361816406 874.9390258789063 161.6475219726563 C 874.666015625 161.7071685791016 874.4032592773438 161.8025817871094 874.1587524414063 161.9309539794922 Z" fill="#ffffff" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_plgc7y =
    '<svg viewBox="127.6 170.8 25.7 35.3" ><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 127.59, 175.05)" d="M 7.531717777252197 1.589301973581314e-06 C 11.69376182556152 0.002393320668488741 15.06970405578613 3.164829015731812 15.07209587097168 7.063498020172119 C 15.07448768615723 10.96216773986816 11.70242214202881 14.12072658538818 7.540379047393799 14.11833477020264 C 3.37833571434021 14.11594295501709 0.002393003087490797 10.95350646972656 1.271720975637436e-06 7.054836750030518 C -0.002390459179878235 3.15616774559021 3.369674205780029 -0.002390141598880291 7.531717777252197 1.589301973581314e-06 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 128.3, 178.04)" d="M 6.847305774688721 4.582107067108154e-07 C 10.63114070892334 0.002174851018935442 13.70030975341797 2.877237558364868 13.70248508453369 6.421631813049316 C 13.70465850830078 9.966026306152344 10.63901519775391 12.83756351470947 6.855179786682129 12.83539009094238 C 3.071343898773193 12.83321475982666 0.002175549045205116 9.958152770996094 1.156236976385117e-06 6.413757801055908 C -0.002173236571252346 2.86936354637146 3.063469648361206 -0.00217393459752202 6.847305774688721 4.582107067108154e-07 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 133.65, 188.26)" d="M 0 0 L 3.197883129119873 0.001837673131376505 L 3.201033115386963 5.136590003967285 L 0.003150035161525011 5.13475227355957 L 0 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.99996, -0.00908, 0.00908, 0.99996, 127.75, 191.95)" d="M 7.872352600097656 1.998618245124817e-06 L 7.872352600097656 1.998618245124817e-06 C 12.2243709564209 0.002502899616956711 15.7544116973877 3.309289932250977 15.75691223144531 7.385912418365479 L 15.7610445022583 14.12284660339355 L 0.004134260583668947 14.11379146575928 L 1.329462975263596e-06 7.376857757568359 C -0.002498871181160212 3.301375389099121 3.521552562713623 -0.0008658356964588165 7.872352600097656 1.998618245124817e-06 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(1.0, -0.01, 0.01, 1.0, 132.55, 172.29)" d="M 2.737486839294434 1.100823283195496e-06 C 4.25031566619873 0.0009584825020283461 5.477482795715332 1.150521755218506 5.478439807891846 2.567622423171997 C 5.479397296905518 3.98472261428833 4.253782749176025 5.132733821868896 2.740953922271729 5.131776332855225 C 1.228124618530273 5.130819320678711 0.0009579423349350691 3.981255531311035 5.606561899185181e-07 2.564155340194702 C -0.0009568212553858757 1.1470547914505 1.224657535552979 -0.0009562810882925987 2.737486839294434 1.100823283195496e-06 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-456.87, -472.13)" d="M 592.8610229492188 642.961669921875 C 594.303955078125 642.705078125 595.7755126953125 643.1436767578125 597.1514892578125 643.6180419921875 C 598.3395385742188 644.02978515625 599.5435791015625 644.4892578125 600.4640502929688 645.30078125 C 602.2158203125 646.8402709960938 602.5916748046875 649.2958374023438 602.6522216796875 651.5454711914063 C 602.7127685546875 653.7950439453125 602.5789794921875 656.1580200195313 603.65234375 658.1749267578125 C 604.8983154296875 660.4288330078125 607.419921875 661.8079833984375 610.1278076171875 661.7163696289063 C 608.58935546875 662.6800537109375 606.5030517578125 662.5845947265625 604.81494140625 661.87451171875 C 603.309326171875 661.2365112304688 602.0541381835938 660.1735229492188 601.2252807617188 658.8343505859375 C 600.7152709960938 657.9149169921875 600.2890625 656.9567260742188 599.9512329101563 655.9700317382813 C 598.7939453125 653.0411987304688 597.2476196289063 650.2605590820313 595.3486328125 647.693603515625 C 595.0662841796875 647.277099609375 594.7232666015625 646.8994750976563 594.3294677734375 646.57177734375 C 593.7608642578125 646.1611328125 593.0814208984375 645.9069213867188 592.3673706054688 645.8378295898438 C 591.78125 645.7632446289063 590.7747802734375 646.0198364257813 590.4180908203125 645.476806640625 C 589.653564453125 644.3430786132813 592.0074462890625 643.1138916015625 592.8610229492188 642.961669921875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_s5ltzo =
    '<svg viewBox="228.9 171.7 16.8 34.0" ><path transform="translate(-489.72, -448.35)" d="M 726.652587890625 639 L 727.3756103515625 639 C 731.8172607421875 639 735.4180908203125 642.3728637695313 735.4180908203125 646.5335693359375 L 735.4180908203125 654.0580444335938 L 718.6099853515625 654.0580444335938 L 718.6099853515625 646.5484619140625 C 718.605712890625 644.5478515625 719.4512939453125 642.6278076171875 720.9599609375 641.2117919921875 C 722.4686279296875 639.7957763671875 724.5167236328125 639 726.652587890625 639 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-661.13, -474.32)" d="M 906.244384765625 663.9014282226563 C 905.92578125 664.1997680664063 890.95556640625 664.7965087890625 890 663.9014282226563 C 890.6370849609375 660.9179077148438 890 653.6080932617188 890 653.6080932617188 C 890 649.4063110351563 893.636474609375 646 898.1221923828125 646 L 898.1221923828125 646 C 902.60791015625 646 906.244384765625 649.4063110351563 906.244384765625 653.6080932617188 C 906.244384765625 653.6080932617188 905.288818359375 662.7080078125 906.244384765625 663.9014282226563 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
