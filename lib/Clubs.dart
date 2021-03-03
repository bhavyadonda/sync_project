import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './ClubDetails.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Clubs extends StatelessWidget {
  Clubs({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          // Positioned(
          //   left: 13,
          //   top: 688,
          //   child: SizedBox(
          //       width: 385.0,
          //       height: 158.0,
          //       child: Stack(
          //   children: <Widget>[
          //     Pinned.fromSize(
          //       bounds: Rect.fromLTWH(0.0, 0.0, 349.0, 158.0),
          //       size: Size(349.0, 158.0),
          //       pinLeft: true,
          //       pinRight: true,
          //       pinTop: true,
          //       pinBottom: true,
          //       child:
          //           // Adobe XD layer: 'Club Rectangle' (shape)
          //           Container(
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(20.0),
          //           color: const Color(0xffffffff),
          //           boxShadow: [
          //             BoxShadow(
          //               color: const Color(0x26000000),
          //               offset: Offset(0, 5),
          //               blurRadius: 10,
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //     Pinned.fromSize(
          //       bounds: Rect.fromLTWH(8.0, 74.0, 320.0, 67.0),
          //       size: Size(349.0, 158.0),
          //       pinLeft: true,
          //       pinRight: true,
          //       pinBottom: true,
          //       fixedHeight: true,
          //       child: Text.rich(
          //         TextSpan(
          //           style: TextStyle(
          //             fontFamily: 'Poppins',
          //             fontSize: 15,
          //             color: const Color(0xff9d9d9d),
          //           ),
          //           children: [
          //             TextSpan(
          //               text:
          //                   'Lorem ipsum dolor sit amet, consetetur \nsadipscing elitr, sed diam nonumy eirmod \ntempor invidunt ut labore et ',
          //             ),
          //             TextSpan(
          //               text: 'Learn More..',
          //               style: TextStyle(
          //                 color: const Color(0xfffe4f70),
          //                 fontWeight: FontWeight.w600,
          //               ),
          //             ),
          //           ],
          //         ),
          //         textAlign: TextAlign.left,
          //       ),
          //     ),
          //     Pinned.fromSize(
          //       bounds: Rect.fromLTWH(252.0, 22.7, 87.0, 27.5),
          //       size: Size(349.0, 158.0),
          //       pinRight: true,
          //       pinTop: true,
          //       fixedWidth: true,
          //       fixedHeight: true,
          //       child:
          //           // Adobe XD layer: 'Follow Button' (group)
          //           Stack(
          //         children: <Widget>[
          //           Pinned.fromSize(
          //             bounds: Rect.fromLTWH(0.0, 0.0, 87.0, 27.5),
          //             size: Size(87.0, 27.5),
          //             pinLeft: true,
          //             pinRight: true,
          //             pinTop: true,
          //             pinBottom: true,
          //             child:
          //                 // Adobe XD layer: 'Follow Outline' (shape)
          //                 SvgPicture.string(
          //               _svg_k2ckhg,
          //               allowDrawingOutsideViewBox: true,
          //               fit: BoxFit.fill,
          //             ),
          //           ),
          //           Pinned.fromSize(
          //             bounds: Rect.fromLTWH(26.3, 6.0, 55.0, 16.0),
          //             size: Size(87.0, 27.5),
          //             child: Text(
          //               'Follow',
          //               style: TextStyle(
          //                 fontFamily: 'Poppins',
          //                 fontSize: 13,
          //                 color: const Color(0xff404040),
          //                 fontWeight: FontWeight.w600,
          //               ),
          //               textAlign: TextAlign.left,
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //     Pinned.fromSize(
          //       bounds: Rect.fromLTWH(60.0, 42.0, 184.0, 17.0),
          //       size: Size(349.0, 158.0),
          //       fixedWidth: true,
          //       fixedHeight: true,
          //       child: Text(
          //         'Technical Society of NMIMS',
          //         style: TextStyle(
          //           fontFamily: 'Poppins',
          //           fontSize: 13,
          //           color: const Color(0xff9d9d9d),
          //           fontWeight: FontWeight.w500,
          //           height: 1.1666666666666667,
          //         ),
          //         textAlign: TextAlign.center,
          //       ),
          //     ),
          //     Pinned.fromSize(
          //       bounds: Rect.fromLTWH(68.0, 14.0, 143.0, 28.0),
          //       size: Size(349.0, 158.0),
          //       pinTop: true,
          //       fixedWidth: true,
          //       fixedHeight: true,
          //       child: PageLink(
          //         links: [
          //           PageLinkInfo(
          //             transition: LinkTransition.Fade,
          //             ease: Curves.easeOut,
          //             duration: 0.3,
          //             pageBuilder: () => ClubDetails(),
          //           ),
          //         ],
          //         child: Text(
          //           'The Tech Club',
          //           style: TextStyle(
          //             fontFamily: 'Poppins',
          //             fontSize: 20,
          //             color: const Color(0xff404040),
          //             fontWeight: FontWeight.w600,
          //           ),
          //           textAlign: TextAlign.left,
          //         ),
          //       ),
          //     ),
          //     Pinned.fromSize(
          //       bounds: Rect.fromLTWH(8.0, 9.0, 55.0, 55.0),
          //       size: Size(349.0, 158.0),
          //       pinLeft: true,
          //       pinTop: true,
          //       fixedWidth: true,
          //       fixedHeight: true,
          //       child:
          //           // Adobe XD layer: 'Club Logo' (group)
          //           PageLink(
          //         links: [
          //           PageLinkInfo(
          //             transition: LinkTransition.Fade,
          //             ease: Curves.easeOut,
          //             duration: 0.3,
          //             pageBuilder: () => ClubDetails(),
          //           ),
          //         ],
          //         child: Stack(
          //           children: <Widget>[
          //             Pinned.fromSize(
          //               bounds: Rect.fromLTWH(0.0, 0.0, 55.0, 55.0),
          //               size: Size(55.0, 55.0),
          //               pinLeft: true,
          //               pinRight: true,
          //               pinTop: true,
          //               pinBottom: true,
          //               child:
          //                   // Adobe XD layer: 'Club Circle' (shape)
          //                   Container(
          //                 decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.all(
          //                       Radius.elliptical(9999.0, 9999.0)),
          //                   color: const Color(0xffffffff),
          //                   boxShadow: [
          //                     BoxShadow(
          //                       color: const Color(0x29000000),
          //                       offset: Offset(0, 3),
          //                       blurRadius: 6,
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ),
          //             Pinned.fromSize(
          //               bounds: Rect.fromLTWH(5.0, 5.0, 45.0, 45.0),
          //               size: Size(55.0, 55.0),
          //               pinLeft: true,
          //               pinRight: true,
          //               pinTop: true,
          //               pinBottom: true,
          //               child:
          //                   // Adobe XD layer: 'Tech Club Logo' (shape)
          //                   Container(
          //                 decoration: BoxDecoration(
          //                   image: DecorationImage(
          //                     image: const AssetImage('assets/Tech Club Logo Big.png'),
          //                     fit: BoxFit.fill,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ],
          //       ),
          //     ),
          // ),
          // Positioned(
          //   left: 13,
          //   top: 510,
          //   child: SizedBox(
          //       width: 385.0,
          //       height: 158.0,
          //       child: Stack(
          //   children: <Widget>[
          //     Pinned.fromSize(
          //       bounds: Rect.fromLTWH(0.0, 0.0, 349.0, 158.0),
          //       size: Size(349.0, 158.0),
          //       pinLeft: true,
          //       pinRight: true,
          //       pinTop: true,
          //       pinBottom: true,
          //       child:
          //           // Adobe XD layer: 'Club Rectangle' (shape)
          //           Container(
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(20.0),
          //           color: const Color(0xffffffff),
          //           boxShadow: [
          //             BoxShadow(
          //               color: const Color(0x26000000),
          //               offset: Offset(0, 5),
          //               blurRadius: 10,
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //     Pinned.fromSize(
          //       bounds: Rect.fromLTWH(8.0, 74.0, 320.0, 67.0),
          //       size: Size(349.0, 158.0),
          //       pinLeft: true,
          //       pinRight: true,
          //       pinBottom: true,
          //       fixedHeight: true,
          //       child: Text.rich(
          //         TextSpan(
          //           style: TextStyle(
          //             fontFamily: 'Poppins',
          //             fontSize: 15,
          //             color: const Color(0xff9d9d9d),
          //           ),
          //           children: [
          //             TextSpan(
          //               text:
          //                   'Lorem ipsum dolor sit amet, consetetur \nsadipscing elitr, sed diam nonumy eirmod \ntempor invidunt ut labore et ',
          //             ),
          //             TextSpan(
          //               text: 'Learn More..',
          //               style: TextStyle(
          //                 color: const Color(0xfffe4f70),
          //                 fontWeight: FontWeight.w600,
          //               ),
          //             ),
          //           ],
          //         ),
          //         textAlign: TextAlign.left,
          //       ),
          //     ),
          //     Pinned.fromSize(
          //       bounds: Rect.fromLTWH(252.0, 22.7, 87.0, 27.5),
          //       size: Size(349.0, 158.0),
          //       pinRight: true,
          //       pinTop: true,
          //       fixedWidth: true,
          //       fixedHeight: true,
          //       child:
          //           // Adobe XD layer: 'Follow Button' (group)
          //           Stack(
          //         children: <Widget>[
          //           Pinned.fromSize(
          //             bounds: Rect.fromLTWH(0.0, 0.0, 87.0, 27.5),
          //             size: Size(87.0, 27.5),
          //             pinLeft: true,
          //             pinRight: true,
          //             pinTop: true,
          //             pinBottom: true,
          //             child:
          //                 // Adobe XD layer: 'Follow Outline' (shape)
          //                 SvgPicture.string(
          //               _svg_k2ckhg,
          //               allowDrawingOutsideViewBox: true,
          //               fit: BoxFit.fill,
          //             ),
          //           ),
          //           Pinned.fromSize(
          //             bounds: Rect.fromLTWH(26.3, 6.0, 55.0, 16.0),
          //             size: Size(87.0, 27.5),
          //             child: Text(
          //               'Follow',
          //               style: TextStyle(
          //                 fontFamily: 'Poppins',
          //                 fontSize: 13,
          //                 color: const Color(0xff404040),
          //                 fontWeight: FontWeight.w600,
          //               ),
          //               textAlign: TextAlign.left,
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //     Pinned.fromSize(
          //       bounds: Rect.fromLTWH(58.0, 42.0, 174.0, 17.0),
          //       size: Size(349.0, 158.0),
          //       fixedWidth: true,
          //       fixedHeight: true,
          //       child: Text(
          //         'College Festival of NMIMS',
          //         style: TextStyle(
          //           fontFamily: 'Poppins',
          //           fontSize: 13,
          //           color: const Color(0xff9d9d9d),
          //           fontWeight: FontWeight.w500,
          //           height: 1.1666666666666667,
          //         ),
          //         textAlign: TextAlign.center,
          //       ),
          //     ),
          //     Pinned.fromSize(
          //       bounds: Rect.fromLTWH(68.0, 14.0, 67.0, 28.0),
          //       size: Size(349.0, 158.0),
          //       pinTop: true,
          //       fixedWidth: true,
          //       fixedHeight: true,
          //       child: PageLink(
          //         links: [
          //           PageLinkInfo(
          //             transition: LinkTransition.Fade,
          //             ease: Curves.easeOut,
          //             duration: 0.3,
          //             pageBuilder: () => ClubDetails(),
          //           ),
          //         ],
          //         child: Text(
          //           'Vaayu',
          //           style: TextStyle(
          //             fontFamily: 'Poppins',
          //             fontSize: 20,
          //             color: const Color(0xff404040),
          //             fontWeight: FontWeight.w600,
          //           ),
          //           textAlign: TextAlign.left,
          //         ),
          //       ),
          //     ),
          //     Pinned.fromSize(
          //       bounds: Rect.fromLTWH(8.0, 9.0, 55.0, 55.0),
          //       size: Size(349.0, 158.0),
          //       pinLeft: true,
          //       pinTop: true,
          //       fixedWidth: true,
          //       fixedHeight: true,
          //       child:
          //           // Adobe XD layer: 'Club Logo' (group)
          //           PageLink(
          //         links: [
          //           PageLinkInfo(
          //             transition: LinkTransition.Fade,
          //             ease: Curves.easeOut,
          //             duration: 0.3,
          //             pageBuilder: () => ClubDetails(),
          //           ),
          //         ],
          //         child: Stack(
          //           children: <Widget>[
          //             Pinned.fromSize(
          //               bounds: Rect.fromLTWH(0.0, 0.0, 55.0, 55.0),
          //               size: Size(55.0, 55.0),
          //               pinLeft: true,
          //               pinRight: true,
          //               pinTop: true,
          //               pinBottom: true,
          //               child:
          //                   // Adobe XD layer: 'Logo Circle' (shape)
          //                   Container(
          //                 decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.all(
          //                       Radius.elliptical(9999.0, 9999.0)),
          //                   color: const Color(0xffffffff),
          //                   boxShadow: [
          //                     BoxShadow(
          //                       color: const Color(0x29000000),
          //                       offset: Offset(0, 3),
          //                       blurRadius: 6,
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ),
          //             Pinned.fromSize(
          //               bounds: Rect.fromLTWH(1.0, 9.0, 54.0, 38.0),
          //               size: Size(55.0, 55.0),
          //               pinLeft: true,
          //               pinRight: true,
          //               pinTop: true,
          //               pinBottom: true,
          //               child:
          //                   // Adobe XD layer: 'Vaayu Logo' (shape)
          //                   Container(
          //                 decoration: BoxDecoration(
          //                   image: DecorationImage(
          //                     image: const AssetImage('assets/Vaayu Logo1.png'),
          //                     fit: BoxFit.fill,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ],
          //       ),
          //     ),
          // ),
          // Positioned(
          //   left: 13,
          //   top: 332,
          //   child: SizedBox(
          //       width: 385.0,
          //       height: 158.0,
          //       child: Stack(
          //   children: <Widget>[
          //     Pinned.fromSize(
          //       bounds: Rect.fromLTWH(0.0, 0.0, 349.0, 158.0),
          //       size: Size(349.0, 158.0),
          //       pinLeft: true,
          //       pinRight: true,
          //       pinTop: true,
          //       pinBottom: true,
          //       child:
          //           // Adobe XD layer: 'Club Rectangle' (shape)
          //           Container(
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(20.0),
          //           color: const Color(0xffffffff),
          //           boxShadow: [
          //             BoxShadow(
          //               color: const Color(0x26000000),
          //               offset: Offset(0, 5),
          //               blurRadius: 10,
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //     Pinned.fromSize(
          //       bounds: Rect.fromLTWH(8.0, 74.0, 320.0, 67.0),
          //       size: Size(349.0, 158.0),
          //       pinLeft: true,
          //       pinRight: true,
          //       pinBottom: true,
          //       fixedHeight: true,
          //       child: Text.rich(
          //         TextSpan(
          //           style: TextStyle(
          //             fontFamily: 'Poppins',
          //             fontSize: 15,
          //             color: const Color(0xff9d9d9d),
          //           ),
          //           children: [
          //             TextSpan(
          //               text:
          //                   'Lorem ipsum dolor sit amet, consetetur \nsadipscing elitr, sed diam nonumy eirmod \ntempor invidunt ut labore et ',
          //             ),
          //             TextSpan(
          //               text: 'Learn More..',
          //               style: TextStyle(
          //                 color: const Color(0xfffe4f70),
          //                 fontWeight: FontWeight.w600,
          //               ),
          //             ),
          //           ],
          //         ),
          //         textAlign: TextAlign.left,
          //       ),
          //     ),
          //     Pinned.fromSize(
          //       bounds: Rect.fromLTWH(252.0, 22.7, 87.0, 27.5),
          //       size: Size(349.0, 158.0),
          //       pinRight: true,
          //       pinTop: true,
          //       fixedWidth: true,
          //       fixedHeight: true,
          //       child:
          //           // Adobe XD layer: 'Follow Button' (group)
          //           Stack(
          //         children: <Widget>[
          //           Pinned.fromSize(
          //             bounds: Rect.fromLTWH(0.0, 0.0, 87.0, 27.5),
          //             size: Size(87.0, 27.5),
          //             pinLeft: true,
          //             pinRight: true,
          //             pinTop: true,
          //             pinBottom: true,
          //             child:
          //                 // Adobe XD layer: 'Follow Outline' (shape)
          //                 SvgPicture.string(
          //               _svg_k2ckhg,
          //               allowDrawingOutsideViewBox: true,
          //               fit: BoxFit.fill,
          //             ),
          //           ),
          //           Pinned.fromSize(
          //             bounds: Rect.fromLTWH(26.3, 6.0, 55.0, 16.0),
          //             size: Size(87.0, 27.5),
          //             child: Text(
          //               'Follow',
          //               style: TextStyle(
          //                 fontFamily: 'Poppins',
          //                 fontSize: 13,
          //                 color: const Color(0xff404040),
          //                 fontWeight: FontWeight.w600,
          //               ),
          //               textAlign: TextAlign.left,
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //     Pinned.fromSize(
          //       bounds: Rect.fromLTWH(50.0, 42.0, 208.0, 17.0),
          //       size: Size(349.0, 158.0),
          //       fixedWidth: true,
          //       fixedHeight: true,
          //       child: Text(
          //         'Cultural Committee of NMIMS',
          //         style: TextStyle(
          //           fontFamily: 'Poppins',
          //           fontSize: 13,
          //           color: const Color(0xff9d9d9d),
          //           fontWeight: FontWeight.w500,
          //           height: 1.1666666666666667,
          //         ),
          //         textAlign: TextAlign.center,
          //       ),
          //     ),
          //     Pinned.fromSize(
          //       bounds: Rect.fromLTWH(68.0, 14.0, 91.0, 28.0),
          //       size: Size(349.0, 158.0),
          //       pinTop: true,
          //       fixedWidth: true,
          //       fixedHeight: true,
          //       child: PageLink(
          //         links: [
          //           PageLinkInfo(
          //             transition: LinkTransition.Fade,
          //             ease: Curves.easeOut,
          //             duration: 0.3,
          //             pageBuilder: () => ClubDetails(),
          //           ),
          //         ],
          //         child: Text(
          //           'Montage',
          //           style: TextStyle(
          //             fontFamily: 'Poppins',
          //             fontSize: 20,
          //             color: const Color(0xff404040),
          //             fontWeight: FontWeight.w600,
          //           ),
          //           textAlign: TextAlign.left,
          //         ),
          //       ),
          //     ),
          //     Pinned.fromSize(
          //       bounds: Rect.fromLTWH(8.0, 9.0, 55.0, 55.0),
          //       size: Size(349.0, 158.0),
          //       pinLeft: true,
          //       pinTop: true,
          //       fixedWidth: true,
          //       fixedHeight: true,
          //       child:
          //           // Adobe XD layer: 'Club Logo' (group)
          //           PageLink(
          //         links: [
          //           PageLinkInfo(
          //             transition: LinkTransition.Fade,
          //             ease: Curves.easeOut,
          //             duration: 0.3,
          //             pageBuilder: () => ClubDetails(),
          //           ),
          //         ],
          //         child: Stack(
          //           children: <Widget>[
          //             Pinned.fromSize(
          //               bounds: Rect.fromLTWH(0.0, 0.0, 55.0, 55.0),
          //               size: Size(55.0, 55.0),
          //               pinLeft: true,
          //               pinRight: true,
          //               pinTop: true,
          //               pinBottom: true,
          //               child:
          //                   // Adobe XD layer: 'Logo Circle' (shape)
          //                   Container(
          //                 decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.all(
          //                       Radius.elliptical(9999.0, 9999.0)),
          //                   color: const Color(0xffffffff),
          //                   boxShadow: [
          //                     BoxShadow(
          //                       color: const Color(0x29000000),
          //                       offset: Offset(0, 3),
          //                       blurRadius: 6,
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ),
          //             Pinned.fromSize(
          //               bounds: Rect.fromLTWH(5.0, 8.0, 46.0, 39.0),
          //               size: Size(55.0, 55.0),
          //               pinLeft: true,
          //               pinRight: true,
          //               pinTop: true,
          //               pinBottom: true,
          //               child:
          //                   // Adobe XD layer: 'Montage Logo' (shape)
          //                   Container(
          //                 decoration: BoxDecoration(
          //                   image: DecorationImage(
          //                     image: const AssetImage('assets/Montage Square Logo.png'),
          //                     fit: BoxFit.fill,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ],
          //       ),
          //     ),
          // ),
          Padding(
            padding: EdgeInsets.fromLTRB(13, 135, 13, 0),
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 385.0,
                          height: 158.0,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 349.0, 158.0),
                                size: Size(349.0, 158.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                // Adobe XD layer: 'Club Rectangle' (shape)
                                Container(
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
                                bounds: Rect.fromLTWH(8.0, 74.0, 320.0, 67.0),
                                size: Size(349.0, 158.0),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: Text.rich(
                                  TextSpan(
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      color: const Color(0xff9d9d9d),
                                    ),
                                    children: [
                                      TextSpan(
                                        text:
                                        'Lorem ipsum dolor sit amet, consetetur \nsadipscing elitr, sed diam nonumy eirmod \ntempor invidunt ut labore et ',
                                      ),
                                      TextSpan(
                                        text: 'Learn More..',
                                        style: TextStyle(
                                          color: const Color(0xfffe4f70),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(252.0, 23.0, 87.0, 27.5),
                                size: Size(349.0, 158.0),
                                pinRight: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                // Adobe XD layer: 'Follow Button' (group)
                                Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 87.0, 27.5),
                                      size: Size(87.0, 27.5),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30.0),
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
                                      bounds: Rect.fromLTWH(15.0, 6.0, 73.0, 16.0),
                                      size: Size(87.0, 27.5),
                                      child: Text(
                                        'Following',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 13,
                                          color: const Color(0xffffffff),
                                          fontWeight: FontWeight.w600,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(50.0, 42.0, 204.0, 17.0),
                                size: Size(349.0, 158.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  'Technical Society of NMIMS',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 13,
                                    color: const Color(0xff9d9d9d),
                                    fontWeight: FontWeight.w500,
                                    height: 1.1666666666666667,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(68.0, 14.0, 143.0, 28.0),
                                size: Size(349.0, 158.0),
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: PageLink(
                                  links: [
                                    PageLinkInfo(
                                      transition: LinkTransition.Fade,
                                      ease: Curves.easeOut,
                                      duration: 0.3,
                                      pageBuilder: () => ClubDetails(),
                                    ),
                                  ],
                                  child: Text(
                                    'The Tech Club',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                      color: const Color(0xff404040),
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(8.0, 9.0, 55.0, 55.0),
                                size: Size(349.0, 158.0),
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
                      ],
                    ),
                  );
                }
            ),
          ),
          // Positioned(
          //   left: 13,
          //   top: 154,
          //   child: SizedBox(
          //       width: 385.0,
          //       height: 158.0,
          //       child: Stack(
          //   children: <Widget>[
          //     Pinned.fromSize(
          //       bounds: Rect.fromLTWH(0.0, 0.0, 349.0, 158.0),
          //       size: Size(349.0, 158.0),
          //       pinLeft: true,
          //       pinRight: true,
          //       pinTop: true,
          //       pinBottom: true,
          //       child:
          //           // Adobe XD layer: 'Club Rectangle' (shape)
          //           Container(
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(20.0),
          //           color: const Color(0xffffffff),
          //           boxShadow: [
          //             BoxShadow(
          //               color: const Color(0x26000000),
          //               offset: Offset(0, 5),
          //               blurRadius: 10,
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //     Pinned.fromSize(
          //       bounds: Rect.fromLTWH(8.0, 74.0, 320.0, 67.0),
          //       size: Size(349.0, 158.0),
          //       pinLeft: true,
          //       pinRight: true,
          //       pinBottom: true,
          //       fixedHeight: true,
          //       child: Text.rich(
          //         TextSpan(
          //           style: TextStyle(
          //             fontFamily: 'Poppins',
          //             fontSize: 15,
          //             color: const Color(0xff9d9d9d),
          //           ),
          //           children: [
          //             TextSpan(
          //               text:
          //                   'Lorem ipsum dolor sit amet, consetetur \nsadipscing elitr, sed diam nonumy eirmod \ntempor invidunt ut labore et ',
          //             ),
          //             TextSpan(
          //               text: 'Learn More..',
          //               style: TextStyle(
          //                 color: const Color(0xfffe4f70),
          //                 fontWeight: FontWeight.w600,
          //               ),
          //             ),
          //           ],
          //         ),
          //         textAlign: TextAlign.left,
          //       ),
          //     ),
          //     Pinned.fromSize(
          //       bounds: Rect.fromLTWH(252.0, 23.0, 87.0, 27.5),
          //       size: Size(349.0, 158.0),
          //       pinRight: true,
          //       pinTop: true,
          //       fixedWidth: true,
          //       fixedHeight: true,
          //       child:
          //           // Adobe XD layer: 'Follow Button' (group)
          //           Stack(
          //         children: <Widget>[
          //           Pinned.fromSize(
          //             bounds: Rect.fromLTWH(0.0, 0.0, 87.0, 27.5),
          //             size: Size(87.0, 27.5),
          //             pinLeft: true,
          //             pinRight: true,
          //             pinTop: true,
          //             pinBottom: true,
          //             child: Container(
          //               decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(30.0),
          //                 gradient: LinearGradient(
          //                   begin: Alignment(-0.97, -0.82),
          //                   end: Alignment(0.97, 0.79),
          //                   colors: [
          //                     const Color(0xfffe4f70),
          //                     const Color(0xffcb6bd8)
          //                   ],
          //                   stops: [0.0, 1.0],
          //                 ),
          //               ),
          //             ),
          //           ),
          //           Pinned.fromSize(
          //             bounds: Rect.fromLTWH(15.0, 6.0, 73.0, 16.0),
          //             size: Size(87.0, 27.5),
          //             child: Text(
          //               'Following',
          //               style: TextStyle(
          //                 fontFamily: 'Poppins',
          //                 fontSize: 13,
          //                 color: const Color(0xffffffff),
          //                 fontWeight: FontWeight.w600,
          //               ),
          //               textAlign: TextAlign.left,
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //     Pinned.fromSize(
          //       bounds: Rect.fromLTWH(50.0, 42.0, 204.0, 17.0),
          //       size: Size(349.0, 158.0),
          //       fixedWidth: true,
          //       fixedHeight: true,
          //       child: Text(
          //         'Technical Society of NMIMS',
          //         style: TextStyle(
          //           fontFamily: 'Poppins',
          //           fontSize: 13,
          //           color: const Color(0xff9d9d9d),
          //           fontWeight: FontWeight.w500,
          //           height: 1.1666666666666667,
          //         ),
          //         textAlign: TextAlign.center,
          //       ),
          //     ),
          //     Pinned.fromSize(
          //       bounds: Rect.fromLTWH(68.0, 14.0, 143.0, 28.0),
          //       size: Size(349.0, 158.0),
          //       pinTop: true,
          //       fixedWidth: true,
          //       fixedHeight: true,
          //       child: PageLink(
          //         links: [
          //           PageLinkInfo(
          //             transition: LinkTransition.Fade,
          //             ease: Curves.easeOut,
          //             duration: 0.3,
          //             pageBuilder: () => ClubDetails(),
          //           ),
          //         ],
          //         child: Text(
          //           'The Tech Club',
          //           style: TextStyle(
          //             fontFamily: 'Poppins',
          //             fontSize: 20,
          //             color: const Color(0xff404040),
          //             fontWeight: FontWeight.w600,
          //           ),
          //           textAlign: TextAlign.left,
          //         ),
          //       ),
          //     ),
          //     Pinned.fromSize(
          //       bounds: Rect.fromLTWH(8.0, 9.0, 55.0, 55.0),
          //       size: Size(349.0, 158.0),
          //       pinLeft: true,
          //       pinTop: true,
          //       fixedWidth: true,
          //       fixedHeight: true,
          //       child:
          //           // Adobe XD layer: 'Club Logo' (group)
          //           PageLink(
          //         links: [
          //           PageLinkInfo(
          //             transition: LinkTransition.Fade,
          //             ease: Curves.easeOut,
          //             duration: 0.3,
          //             pageBuilder: () => ClubDetails(),
          //           ),
          //         ],
          //         child: Stack(
          //           children: <Widget>[
          //             Pinned.fromSize(
          //               bounds: Rect.fromLTWH(0.0, 0.0, 55.0, 55.0),
          //               size: Size(55.0, 55.0),
          //               pinLeft: true,
          //               pinRight: true,
          //               pinTop: true,
          //               pinBottom: true,
          //               child:
          //                   // Adobe XD layer: 'Logo Circle' (shape)
          //                   Container(
          //                 decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.all(
          //                       Radius.elliptical(9999.0, 9999.0)),
          //                   color: const Color(0xffffffff),
          //                   boxShadow: [
          //                     BoxShadow(
          //                       color: const Color(0x29000000),
          //                       offset: Offset(0, 3),
          //                       blurRadius: 6,
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ),
          //             Pinned.fromSize(
          //               bounds: Rect.fromLTWH(5.0, 5.0, 45.0, 45.0),
          //               size: Size(55.0, 55.0),
          //               pinLeft: true,
          //               pinRight: true,
          //               pinTop: true,
          //               pinBottom: true,
          //               child:
          //                   // Adobe XD layer: 'Tech Club Logo' (shape)
          //                   Container(
          //                 decoration: BoxDecoration(
          //                   image: DecorationImage(
          //                     image: const AssetImage('assets/Tech Club Logo Big.png'),
          //                     fit: BoxFit.fill,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ],
          //       ),
          //     ),
          // ),
          Positioned(
            left: 13,
            top: 110,
            child: Text(
              'Clubs',
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

const String _svg_k2ckhg =
    '<svg viewBox="0.0 0.0 87.0 27.5" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(0.0, 0.0)" d="M 73.2239990234375 27.54991149902344 L 13.7754020690918 27.54991149902344 C 10.0959358215332 27.54991149902344 6.636658191680908 26.11714553833008 4.034813404083252 23.51555633544922 C 1.432924628257751 20.91388893127441 2.453613205943839e-06 17.45476722717285 2.453613205943839e-06 13.77541160583496 C 2.453613205943839e-06 10.09598922729492 1.432924628257751 6.636711120605469 4.034813404083252 4.034822463989258 C 6.636702537536621 1.432933568954468 10.09598064422607 1.130506734625669e-05 13.7754020690918 1.130506734625669e-05 L 73.2239990234375 1.130506734625669e-05 C 76.90342712402344 1.130506734625669e-05 80.36270141601563 1.432933568954468 82.96459197998047 4.034822463989258 C 85.56648254394531 6.636711120605469 86.99940490722656 10.09598922729492 86.99940490722656 13.77541160583496 C 86.99940490722656 17.45476722717285 85.56648254394531 20.91388893127441 82.96459197998047 23.51555633544922 C 80.36274719238281 26.11714553833008 76.90347290039063 27.54991149902344 73.2239990234375 27.54991149902344 Z M 13.70430278778076 1.968311309814453 C 7.193846702575684 1.968311309814453 1.897202491760254 7.264955520629883 1.897202491760254 13.77541160583496 C 1.897202491760254 20.28586769104004 7.193846702575684 25.58251190185547 13.70430278778076 25.58251190185547 L 73.29510498046875 25.58251190185547 C 79.80555725097656 25.58251190185547 85.10220336914063 20.28586769104004 85.10220336914063 13.77541160583496 C 85.10220336914063 7.264955520629883 79.80555725097656 1.968311309814453 73.29510498046875 1.968311309814453 L 13.70430278778076 1.968311309814453 Z" fill="url(#gradient)" stroke="none" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ah28f4 =
    '<svg viewBox="32.0 48.0 12.6 18.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="matrix(0.0, 1.0, -1.0, 0.0, 44.56, 48.0)" d="M 8.999999046325684 12.56341361999512 L 0 2.883406400680542 L 2.680851221084595 0 L 8.999999046325684 6.796600818634033 L 15.31914710998535 0 L 18 2.883406400680542 L 8.999999046325684 12.56341361999512 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
