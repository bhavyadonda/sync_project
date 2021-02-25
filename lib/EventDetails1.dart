import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:sync_project/Homepage.dart';
import './EventDetails2.dart';
import 'package:adobe_xd/page_link.dart';
import './ClubDetails.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EventDetails1 extends StatelessWidget {
  EventDetails1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 40,
            top: 246,
            child: SizedBox(
                width: 19.0,
                height: 426.0,
                child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(1.5, 0.0, 16.0, 426.5),
                size: Size(19.0, 426.5),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child:
                    // Adobe XD layer: 'Timeline Line' (shape)
                    SvgPicture.string(
                  _svg_u53z8m,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 27.2, 19.0, 19.0),
                size: Size(19.0, 426.5),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Selected Event Circ…' (shape)
                    Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
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
            ],
                ),
              ),
          ),
          Positioned(
            left: 65,
            top: 637,
            child: SizedBox(
                width: 317.0,
                height: 25.0,
                child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 166.0, 25.0),
                size: Size(317.0, 25.0),
                pinLeft: true,
                pinTop: true,
                pinBottom: true,
                fixedWidth: true,
                child: Text(
                  'Day 5 - 11th Jan \'21',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    color: const Color(0xff404040),
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(303.0, 5.5, 14.0, 14.0),
                size: Size(317.0, 25.0),
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                fixedWidth: true,
                child:
                    // Adobe XD layer: 'Dropdown' (shape)
                    SvgPicture.string(
                  _svg_g4zk3a,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
              ),
            ],
                ),
              ),
          ),
          Positioned(
            left: 65,
            top: 589,
            child: SizedBox(
                width: 317.0,
                height: 25.0,
                child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 172.0, 25.0),
                size: Size(317.0, 25.0),
                pinLeft: true,
                pinTop: true,
                pinBottom: true,
                fixedWidth: true,
                child: Text(
                  'Day 4 - 10th Jan \'21',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    color: const Color(0xff404040),
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(303.0, 5.5, 14.0, 14.0),
                size: Size(317.0, 25.0),
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                fixedWidth: true,
                child:
                    // Adobe XD layer: 'Dropdown' (shape)
                    SvgPicture.string(
                  _svg_506b6a,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
              ),
            ],
                ),
              ),
          ),
          Positioned(
            left: 65,
            top: 541,
            child: SizedBox(
                width: 317.0,
                height: 25.0,
                child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 175.0, 25.0),
                size: Size(317.0, 25.0),
                pinLeft: true,
                pinTop: true,
                pinBottom: true,
                fixedWidth: true,
                child: Text(
                  'Day 3 - 09th Jan \'21',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    color: const Color(0xff404040),
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(303.0, 5.5, 14.0, 14.0),
                size: Size(317.0, 25.0),
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                fixedWidth: true,
                child:
                    // Adobe XD layer: 'Dropdown' (shape)
                    SvgPicture.string(
                  _svg_grgwec,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
              ),
            ],
                ),
              ),
          ),
          Positioned(
            left: 65,
            top: 493,
            child: SizedBox(
                width: 317.0,
                height: 25.0,
                child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 173.0, 25.0),
                size: Size(317.0, 25.0),
                pinLeft: true,
                pinTop: true,
                pinBottom: true,
                fixedWidth: true,
                child: Text(
                  'Day 2 - 07th Jan \'21',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    color: const Color(0xff404040),
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(303.0, 5.5, 14.0, 14.0),
                size: Size(317.0, 25.0),
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                fixedWidth: true,
                child:
                    // Adobe XD layer: 'Dropdown' (shape)
                    SvgPicture.string(
                  _svg_x4hab8,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
              ),
            ],
                ),
              ),
          ),
          Positioned(
            left: 68,
            top: 399,
            child: SizedBox(
                width: 324.0,
                height: 76.0,
                child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(11.0, 0.0, 313.0, 67.2),
                size: Size(324.0, 76.0),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child:
                    // Adobe XD layer: 'Fest Background' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 313.0, 67.2),
                      size: Size(313.0, 67.2),
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
                      bounds: Rect.fromLTWH(281.5, 25.0, 16.7, 16.7),
                      size: Size(313.0, 67.2),
                      child:
                          // Adobe XD layer: 'Continue Button' (shape)
                          PageLink(
                        links: [
                          PageLinkInfo(
                            transition: LinkTransition.Fade,
                            ease: Curves.easeOut,
                            duration: 0.3,
                            pageBuilder: () => EventDetails2(),
                          ),
                        ],
                        child: SvgPicture.string(
                          _svg_e5s8jc,
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
                size: Size(324.0, 76.0),
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
                size: Size(324.0, 76.0),
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
                bounds: Rect.fromLTWH(11.0, 50.0, 161.0, 15.0),
                size: Size(324.0, 76.0),
                pinLeft: true,
                fixedWidth: true,
                fixedHeight: true,
                child: Text(
                  '04:00 PM - 06:00 PM  |  Santokba',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 10.5,
                    color: const Color(0xffffffff),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(11.0, 25.0, 193.0, 21.0),
                size: Size(324.0, 76.0),
                pinLeft: true,
                fixedWidth: true,
                fixedHeight: true,
                child: Text(
                  'Code Workshop',
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
            left: 68,
            top: 308,
            child: SizedBox(
                width: 324.0,
                height: 76.0,
                child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(11.0, 0.0, 313.0, 67.2),
                size: Size(324.0, 76.0),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child:
                    // Adobe XD layer: 'Fest Background' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 313.0, 67.2),
                      size: Size(313.0, 67.2),
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
                      bounds: Rect.fromLTWH(281.5, 25.0, 16.7, 16.7),
                      size: Size(313.0, 67.2),
                      child:
                          // Adobe XD layer: 'Continue Button' (shape)
                          PageLink(
                        links: [
                          PageLinkInfo(
                            transition: LinkTransition.Fade,
                            ease: Curves.easeOut,
                            duration: 0.3,
                            pageBuilder: () => EventDetails2(),
                          ),
                        ],
                        child: SvgPicture.string(
                          _svg_e5s8jc,
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
                size: Size(324.0, 76.0),
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
                size: Size(324.0, 76.0),
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
                bounds: Rect.fromLTWH(11.0, 50.0, 198.0, 15.0),
                size: Size(324.0, 76.0),
                pinLeft: true,
                fixedWidth: true,
                fixedHeight: true,
                child: Text(
                  '12:00 PM - 03:00 PM  |  Room 702',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 10.5,
                    color: const Color(0xffffffff),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(11.0, 25.0, 196.0, 21.0),
                size: Size(324.0, 76.0),
                pinLeft: true,
                fixedWidth: true,
                fixedHeight: true,
                child: Text(
                  'Design Workshop',
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
            left: 65,
            top: 271,
            child: SizedBox(
                width: 317.0,
                height: 25.0,
                child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 171.0, 25.0),
                size: Size(317.0, 25.0),
                pinLeft: true,
                pinTop: true,
                pinBottom: true,
                fixedWidth: true,
                child: Text(
                  'Day 1 - 06th Jan \'21',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    color: const Color(0xff404040),
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(303.0, 5.5, 14.0, 14.0),
                size: Size(317.0, 25.0),
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                fixedWidth: true,
                child:
                    // Adobe XD layer: 'Dropdown' (shape)
                    SvgPicture.string(
                  _svg_qlatz8,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
              ),
            ],
                ),
              ),
          ),
          Positioned(
            left: 41,
            top: 127,
            child: SizedBox(
                width: 333.0,
                height: 128.0,
                child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 27.0, 333.0, 101.0),
                size: Size(333.0, 128.0),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x26000000),
                        offset: Offset(0, 5),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(-20.0, 86.0, 204.0, 17.0),
                size: Size(333.0, 128.0),
                pinLeft: true,
                fixedWidth: true,
                fixedHeight: true,
                child: Text(
                  'By The Tech Club',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: const Color(0xff9d9d9d),
                    fontWeight: FontWeight.w500,
                    height: 1.1666666666666667,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(24.0, 60.0, 153.0, 28.0),
                size: Size(333.0, 128.0),
                pinLeft: true,
                fixedWidth: true,
                fixedHeight: true,
                child: Text(
                  'The Tech Week',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    color: const Color(0xff404040),
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(284.0, 38.0, 35.0, 35.0),
                size: Size(333.0, 128.0),
                child:
                    // Adobe XD layer: 'Bookmark Button' (group)
                    Stack(
                  children: <Widget>[
                    // Adobe XD layer: 'Bookmark Circle' (shape)
                    Container(
                      width: 35.0,
                      height: 35.0,
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
                    Transform.translate(
                      offset: Offset(11.0, 9.0),
                      child: SvgPicture.string(
                        _svg_d54sjf,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ),
                  ],
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(24.0, 0.0, 55.0, 55.0),
                size: Size(333.0, 128.0),
                pinLeft: true,
                pinTop: true,
                fixedWidth: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Club Logo' (group)
                    PageLink(
                  links: [
                    PageLinkInfo(
                      transition: LinkTransition.Fade,
                      ease: Curves.easeOut,
                      duration: 0.3,
                      pageBuilder: () => ClubDetails(),
                    ),
                  ],
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 55.0, 55.0),
                        size: Size(55.0, 55.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child:
                            // Adobe XD layer: 'Logo CIrcle' (shape)
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
                        bounds: Rect.fromLTWH(5.0, 5.0, 45.0, 45.0),
                        size: Size(55.0, 55.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child:
                            // Adobe XD layer: 'Tech Club Logo' (shape)
                            Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: const AssetImage('assets/Tech Club Logo Big.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
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
                dynamic result = await Navigator.pushNamed(context, '/');
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

const String _svg_u53z8m =
    '<svg viewBox="21.5 306.5 16.0 426.5" ><path transform="translate(-21457.0, -23192.5)" d="M 21486.501953125 23911.498046875 C 21482.08203125 23911.498046875 21478.498046875 23907.919921875 21478.498046875 23903.5 C 21478.498046875 23899.08203125 21482.08203125 23895.501953125 21486.501953125 23895.501953125 L 21486.501953125 23862.501953125 C 21482.08203125 23862.501953125 21478.498046875 23858.91796875 21478.498046875 23854.498046875 C 21478.498046875 23850.083984375 21482.08203125 23846.5 21486.501953125 23846.5 L 21486.501953125 23813.5 C 21482.08203125 23813.5 21478.498046875 23809.919921875 21478.498046875 23805.501953125 C 21478.498046875 23801.08203125 21482.08203125 23797.498046875 21486.501953125 23797.498046875 L 21486.501953125 23765.517578125 C 21482.08203125 23765.517578125 21478.498046875 23761.93359375 21478.498046875 23757.51953125 C 21478.498046875 23753.099609375 21482.08203125 23749.515625 21486.501953125 23749.515625 L 21486.501953125 23543.716796875 C 21482.08203125 23543.716796875 21478.498046875 23540.138671875 21478.498046875 23535.71875 C 21478.498046875 23531.298828125 21482.08203125 23527.720703125 21486.501953125 23527.720703125 L 21486.501953125 23499.001953125 L 21486.501953125 23527.720703125 C 21490.916015625 23527.720703125 21494.5 23531.298828125 21494.5 23535.71875 C 21494.5 23540.138671875 21490.916015625 23543.716796875 21486.501953125 23543.716796875 L 21486.501953125 23749.515625 C 21490.916015625 23749.515625 21494.5 23753.099609375 21494.5 23757.51953125 C 21494.5 23761.93359375 21490.916015625 23765.517578125 21486.501953125 23765.517578125 L 21486.501953125 23797.498046875 C 21490.916015625 23797.498046875 21494.5 23801.08203125 21494.5 23805.501953125 C 21494.5 23809.919921875 21490.916015625 23813.5 21486.501953125 23813.5 L 21486.501953125 23846.5 C 21490.916015625 23846.5 21494.5 23850.083984375 21494.5 23854.498046875 C 21494.5 23858.91796875 21490.916015625 23862.501953125 21486.501953125 23862.501953125 L 21486.501953125 23895.501953125 C 21490.916015625 23895.501953125 21494.5 23899.08203125 21494.5 23903.5 C 21494.5 23907.919921875 21490.916015625 23911.498046875 21486.501953125 23911.498046875 L 21486.501953125 23925.470703125 L 21486.501953125 23911.498046875 Z" fill="none" stroke="#fe4f70" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_g4zk3a =
    '<svg viewBox="348.0 642.5 14.0 14.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.912028" x2="0.984024" y2="0.104574"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(346.0, 640.52)" d="M 8.984374046325684 2 C 5.127010822296143 2 1.999999284744263 5.127111434936523 2 8.984599113464355 C 2 12.84208488464355 5.127010345458984 15.96919631958008 8.984373092651367 15.96919631958008 C 12.84174060821533 15.96919631958008 15.96874904632568 12.84208488464355 15.96874904632568 8.98459529876709 C 15.96874904632568 5.127111434936523 12.84174060821533 2.000001907348633 8.984376907348633 2 M 8.984374046325684 3.396919250488281 C 12.0702657699585 3.396919250488281 14.57187461853027 5.898608207702637 14.57187461853027 8.984597206115723 C 14.57187461853027 12.07058811187744 12.0702657699585 14.5722770690918 8.984374046325684 14.5722770690918 C 5.898483753204346 14.5722770690918 3.396874904632568 12.07058811187744 3.396874904632568 8.984597206115723 C 3.396874904632568 5.898608207702637 5.898484706878662 3.396918296813965 8.984375 3.396919250488281 M 5.4921875 7.587678909301758 L 8.984374046325684 11.07997703552246 L 12.47656154632568 7.587678909301758 L 5.4921875 7.587678909301758 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_506b6a =
    '<svg viewBox="348.0 594.5 14.0 14.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.912028" x2="0.984024" y2="0.104574"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(346.0, 592.52)" d="M 8.984374046325684 2 C 5.127010822296143 2 1.999999284744263 5.127111434936523 2 8.984599113464355 C 2 12.84208488464355 5.127010345458984 15.96919631958008 8.984373092651367 15.96919631958008 C 12.84174060821533 15.96919631958008 15.96874904632568 12.84208488464355 15.96874904632568 8.98459529876709 C 15.96874904632568 5.127111434936523 12.84174060821533 2.000001907348633 8.984376907348633 2 M 8.984374046325684 3.396919250488281 C 12.0702657699585 3.396919250488281 14.57187461853027 5.898608207702637 14.57187461853027 8.984597206115723 C 14.57187461853027 12.07058811187744 12.0702657699585 14.5722770690918 8.984374046325684 14.5722770690918 C 5.898483753204346 14.5722770690918 3.396874904632568 12.07058811187744 3.396874904632568 8.984597206115723 C 3.396874904632568 5.898608207702637 5.898484706878662 3.396918296813965 8.984375 3.396919250488281 M 5.4921875 7.587678909301758 L 8.984374046325684 11.07997703552246 L 12.47656154632568 7.587678909301758 L 5.4921875 7.587678909301758 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_grgwec =
    '<svg viewBox="348.0 546.5 14.0 14.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.912028" x2="0.984024" y2="0.104574"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(346.0, 544.52)" d="M 8.984374046325684 2 C 5.127010822296143 2 1.999999284744263 5.127111434936523 2 8.984599113464355 C 2 12.84208488464355 5.127010345458984 15.96919631958008 8.984373092651367 15.96919631958008 C 12.84174060821533 15.96919631958008 15.96874904632568 12.84208488464355 15.96874904632568 8.98459529876709 C 15.96874904632568 5.127111434936523 12.84174060821533 2.000001907348633 8.984376907348633 2 M 8.984374046325684 3.396919250488281 C 12.0702657699585 3.396919250488281 14.57187461853027 5.898608207702637 14.57187461853027 8.984597206115723 C 14.57187461853027 12.07058811187744 12.0702657699585 14.5722770690918 8.984374046325684 14.5722770690918 C 5.898483753204346 14.5722770690918 3.396874904632568 12.07058811187744 3.396874904632568 8.984597206115723 C 3.396874904632568 5.898608207702637 5.898484706878662 3.396918296813965 8.984375 3.396919250488281 M 5.4921875 7.587678909301758 L 8.984374046325684 11.07997703552246 L 12.47656154632568 7.587678909301758 L 5.4921875 7.587678909301758 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x4hab8 =
    '<svg viewBox="348.0 498.5 14.0 14.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.912028" x2="0.984024" y2="0.104574"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(346.0, 496.52)" d="M 8.984374046325684 2 C 5.127010822296143 2 1.999999284744263 5.127111434936523 2 8.984599113464355 C 2 12.84208488464355 5.127010345458984 15.96919631958008 8.984373092651367 15.96919631958008 C 12.84174060821533 15.96919631958008 15.96874904632568 12.84208488464355 15.96874904632568 8.98459529876709 C 15.96874904632568 5.127111434936523 12.84174060821533 2.000001907348633 8.984376907348633 2 M 8.984374046325684 3.396919250488281 C 12.0702657699585 3.396919250488281 14.57187461853027 5.898608207702637 14.57187461853027 8.984597206115723 C 14.57187461853027 12.07058811187744 12.0702657699585 14.5722770690918 8.984374046325684 14.5722770690918 C 5.898483753204346 14.5722770690918 3.396874904632568 12.07058811187744 3.396874904632568 8.984597206115723 C 3.396874904632568 5.898608207702637 5.898484706878662 3.396918296813965 8.984375 3.396919250488281 M 5.4921875 7.587678909301758 L 8.984374046325684 11.07997703552246 L 12.47656154632568 7.587678909301758 L 5.4921875 7.587678909301758 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pjd5fj =
    '<svg viewBox="24.0 652.0 313.0 67.2" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter><pattern id="image" patternUnits="userSpaceOnUse" width="4000.0" height="2599.0"><image xlink:href="null" x="0" y="0" width="4000.0" height="2599.0" /></pattern></defs><path transform="translate(24.0, 652.0)" d="M 10.60944271087646 0 L 302.3690795898438 0 C 308.228515625 0 312.9785461425781 6.015822410583496 312.9785461425781 13.43671703338623 L 312.9785461425781 53.74686813354492 C 312.9785461425781 61.16776275634766 308.228515625 67.18359375 302.3690795898438 67.18359375 L 10.60944271087646 67.18359375 C 4.750008583068848 67.18359375 0 61.16776275634766 0 53.74686813354492 L 0 13.43671703338623 C 0 6.015822410583496 4.750008583068848 0 10.60944271087646 0 Z" fill="url(#image)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_e5s8jc =
    '<svg viewBox="305.5 677.0 16.7 16.7" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(305.5, 676.96)" d="M 16.25827980041504 7.378737449645996 L 9.32447624206543 0.4449088573455811 C 8.777599334716797 -0.1019696891307831 7.890646457672119 -0.1019696891307831 7.34376859664917 0.4449088573455811 C 6.796889781951904 0.9917874932289124 6.796889781951904 1.878738880157471 7.34376859664917 2.425617456436157 L 13.28657531738281 8.36839771270752 L 7.343768119812012 14.31114959716797 C 6.796888828277588 14.8580265045166 6.796888828277588 15.74498081207275 7.343768119812012 16.29186248779297 C 7.890646457672119 16.83874320983887 8.777599334716797 16.83874130249023 9.324474334716797 16.29186248779297 L 16.25827980041504 9.358057022094727 C 16.8051586151123 8.812540054321289 16.8051586151123 7.925616264343262 16.25827980041504 7.378737449645996 Z M 7.921177864074707 6.958861827850342 L 2.416332006454468 1.156975865364075 C 1.863189101219177 0.5747171640396118 0.9672497510910034 0.5747171640396118 0.4141067564487457 1.156975865364075 C -0.1390362232923508 1.739234685897827 -0.1390361785888672 2.683790922164917 0.4141067564487457 3.266756772994995 L 4.918209075927734 8.013753890991211 L 0.4141066074371338 12.76074886322021 C -0.1390362530946732 13.34303283691406 -0.1390362530946732 14.28824520111084 0.4141066074371338 14.87052917480469 C 0.9672496318817139 15.45281505584717 1.863188862800598 15.45281505584717 2.416332006454468 14.87052917480469 L 7.921177864074707 9.068642616271973 C 8.474321365356445 8.486384391784668 8.474321365356445 7.541828632354736 7.921177864074707 6.958861827850342 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_e0lvmc =
    '<svg viewBox="190.5 690.0 67.5 24.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(190.5, 690.0)" d="M 2.288132667541504 0 L 65.21178436279297 0 C 66.47548675537109 0 67.49992370605469 2.149032831192017 67.49992370605469 4.799999713897705 L 67.49992370605469 19.19999885559082 C 67.49992370605469 21.85096740722656 66.47548675537109 23.99999809265137 65.21178436279297 23.99999809265137 L 2.288132667541504 23.99999809265137 C 1.024431943893433 23.99999809265137 0 21.85096740722656 0 19.19999885559082 L 0 4.799999713897705 C 0 2.149032831192017 1.024431943893433 0 2.288132667541504 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_7u199j =
    '<svg viewBox="13.0 668.0 242.0 60.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(13.0, 668.0)" d="M 8.203389167785645 0 L 233.7966003417969 0 C 238.3272094726563 0 242 5.372581958770752 242 12 L 242 48 C 242 54.62741851806641 238.3272094726563 60 233.7966003417969 60 L 8.203389167785645 60 C 3.672782421112061 60 0 54.62741851806641 0 48 L 0 12 C 0 5.372581958770752 3.672782421112061 0 8.203389167785645 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_qlatz8 =
    '<svg viewBox="348.0 276.5 14.0 14.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(346.0, 274.52)" d="M 8.984618186950684 15.96923828125 C 5.127120018005371 15.96923828125 1.999999284744263 12.84211730957031 2 8.984617233276367 C 2 5.127120018005371 5.127119541168213 1.999999046325684 8.984617233276367 1.999999046325684 C 12.84211921691895 1.999999046325684 15.96923732757568 5.127120018005371 15.96923732757568 8.984621047973633 C 15.96923732757568 12.84211730957031 12.84211921691895 15.96923637390137 8.984621047973633 15.96923828125 M 8.984618186950684 14.57231426239014 C 12.07061767578125 14.57231426239014 14.57231426239014 12.07061767578125 14.57231426239014 8.984619140625 C 14.57231426239014 5.898618698120117 12.07061767578125 3.39692211151123 8.984618186950684 3.39692211151123 C 5.898619651794434 3.39692211151123 3.396923780441284 5.898618698120117 3.396923780441284 8.984619140625 C 3.396923780441284 12.07061767578125 5.89862060546875 14.57231521606445 8.984619140625 14.57231426239014 M 5.492309093475342 10.38154220581055 L 8.984618186950684 6.889232635498047 L 12.47692775726318 10.38154220581055 L 5.492309093475342 10.38154220581055 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_d54sjf =
    '<svg viewBox="188.0 181.0 12.8 17.4" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(180.5, 176.5)" d="M 20.28730392456055 21.85420036315918 L 13.89364910125732 17.03359031677246 L 7.500000953674316 21.85420036315918 L 7.500000953674316 6.428244590759277 C 7.500000953674316 5.363304138183594 8.317866325378418 4.5 9.326759338378906 4.5 L 18.46054649353027 4.5 C 19.46943473815918 4.5 20.28730392456055 5.363304615020752 20.28730392456055 6.428244590759277 L 20.28730392456055 21.85420036315918 Z" fill="url(#gradient)" fill-opacity="0.0" stroke="none" stroke-width="1" stroke-opacity="0.0" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(135.71, 181.0)" d="M 62.79208755493164 0 L 54.58391189575195 0 C 53.32068634033203 0 52.29299926757813 1.109349131584167 52.29299926757813 2.472882747650146 L 52.29299926757813 16.64911651611328 C 52.29299926757813 16.9116382598877 52.42893218994141 17.15216445922852 52.64519882202148 17.27229499816895 C 52.86146545410156 17.39245796203613 53.12181091308594 17.37205505371094 53.31967926025391 17.21943092346191 L 58.6879997253418 13.08030414581299 L 64.05635070800781 17.21939659118652 C 64.16860961914063 17.30594062805176 64.30083465576172 17.34992790222168 64.43379211425781 17.34992790222168 C 64.53528594970703 17.34992790222168 64.63718414306641 17.32427406311035 64.73082733154297 17.27222442626953 C 64.94709777832031 17.15209770202637 65.08300018310547 16.91156959533691 65.08300018310547 16.64904975891113 L 65.08300018310547 2.472882747650146 C 65.08300018310547 1.109349131584167 64.05528259277344 0 62.79208755493164 0 Z M 63.784423828125 15.28720951080322 L 59.06537628173828 11.64872646331787 C 58.95248413085938 11.56170558929443 58.82022857666016 11.51819515228271 58.6879997253418 11.51819515228271 C 58.55574035644531 11.51819515228271 58.42351531982422 11.56173992156982 58.31062316894531 11.64875984191895 L 53.59154510498047 15.28724384307861 L 53.59154510498047 2.472882747650146 C 53.59154510498047 1.882237315177917 54.0367317199707 1.401689887046814 54.58391189575195 1.401689887046814 L 62.79205322265625 1.401689887046814 C 63.33923721313477 1.401689887046814 63.784423828125 1.882237315177917 63.784423828125 2.472882747650146 L 63.784423828125 15.28720951080322 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ah28f4 =
    '<svg viewBox="32.0 48.0 12.6 18.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="matrix(0.0, 1.0, -1.0, 0.0, 44.56, 48.0)" d="M 8.999999046325684 12.56341361999512 L 0 2.883406400680542 L 2.680851221084595 0 L 8.999999046325684 6.796600818634033 L 15.31914710998535 0 L 18 2.883406400680542 L 8.999999046325684 12.56341361999512 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
