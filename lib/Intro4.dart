import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './Intro5.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

// class Intro4 extends StatelessWidget {
//   Intro4({
//     Key key,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xffffffff),
//       body: Stack(
//         children: <Widget>[
//           Positioned(
//             left: 188,
//             top: 730,
//             child: Text(
//                 '(4/5)',
//                 style: TextStyle(
//             fontFamily: 'Poppins',
//             fontSize: 16,
//             color: const Color(0xffb6b6b6),
//             fontWeight: FontWeight.w300,
//                 ),
//                 textAlign: TextAlign.left,
//               ),
//           ),
//           Positioned(
//             left: 68,
//             top: 667,
//             child: PageLink(
//                 links: [
//             PageLinkInfo(
//               transition: LinkTransition.Fade,
//               ease: Curves.easeOut,
//               duration: 0.3,
//               pageBuilder: () => Intro5(),
//             ),
//                 ],
//                 child: SizedBox(
//             width: 273.0,
//             height: 48.0,
//             child: Stack(
//               children: <Widget>[
//                 Pinned.fromSize(
//                   bounds: Rect.fromLTWH(0.0, 0.0, 273.0, 48.0),
//                   size: Size(273.0, 48.0),
//                   pinLeft: true,
//                   pinRight: true,
//                   pinTop: true,
//                   pinBottom: true,
//                   child:
//                       // Adobe XD layer: 'Button' (shape)
//                       Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10.0),
//                       gradient: LinearGradient(
//                         begin: Alignment(-0.97, -0.82),
//                         end: Alignment(0.97, 0.79),
//                         colors: [
//                           const Color(0xfffe4f70),
//                           const Color(0xffcb6bd8)
//                         ],
//                         stops: [0.0, 1.0],
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           color: const Color(0x29000000),
//                           offset: Offset(0, 3),
//                           blurRadius: 6,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Pinned.fromSize(
//                   bounds: Rect.fromLTWH(117.0, 12.0, 44.0, 21.0),
//                   size: Size(273.0, 48.0),
//                   child: Text(
//                     'Next',
//                     style: TextStyle(
//                       fontFamily: 'Poppins',
//                       fontSize: 18,
//                       color: const Color(0xffffffff),
//                       fontWeight: FontWeight.w600,
//                     ),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//               ],
//             ),
//                 ),
//               ),
//           ),
//           Positioned(
//             left: 55,
//             top: 540,
//             child: Text(
//               'Lorem ipsum dolor sit amet, consetetur \nsadipscing elitr, sed diam nonumy \neirmod tempor invidunt ut labore et',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 17,
//                 color: const Color(0xff9d9d9d),
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           Positioned(
//             left: 35,
//             top: 497,
//             child: Text(
//               'Bookmark your favourite events!',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 24,
//                 color: const Color(0xff404040),
//                 fontWeight: FontWeight.w600,
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           Positioned(
//             left: 71,
//             top: 206,
//             child: SizedBox(
//                 width: 273.0,
//                 height: 226.0,
//                 child: Stack(
//             children: <Widget>[
//               SizedBox(
//                 width: 123.0,
//                 height: 69.0,
//                 child: Stack(
//                   children: <Widget>[
//                     Transform.translate(
//                       offset: Offset(0.1, 0.1),
//                       child:
//                           // Adobe XD layer: 'Rectangle 246' (shape)
//                           Container(
//                         width: 122.7,
//                         height: 68.8,
//                         decoration: BoxDecoration(
//                           color: const Color(0xfff2f2f2),
//                         ),
//                       ),
//                     ),
//                     // Adobe XD layer: 'Rectangle 264' (shape)
//                     Container(
//                       width: 122.7,
//                       height: 8.0,
//                       decoration: BoxDecoration(
//                         color: const Color(0xffe6e6e6),
//                       ),
//                     ),
//                     Transform.translate(
//                       offset: Offset(2.8, 11.2),
//                       child:
//                           // Adobe XD layer: 'Rectangle 247' (shape)
//                           Container(
//                         width: 117.6,
//                         height: 54.1,
//                         decoration: BoxDecoration(
//                           color: const Color(0xffffffff),
//                         ),
//                       ),
//                     ),
//                     Transform.translate(
//                       offset: Offset(10.4, 2.6),
//                       child:
//                           // Adobe XD layer: 'Ellipse 194' (shape)
//                           Container(
//                         width: 2.5,
//                         height: 2.6,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.all(
//                               Radius.elliptical(9999.0, 9999.0)),
//                           color: const Color(0xffffffff),
//                         ),
//                       ),
//                     ),
//                     Transform.translate(
//                       offset: Offset(15.1, 2.6),
//                       child:
//                           // Adobe XD layer: 'Ellipse 195' (shape)
//                           Container(
//                         width: 2.5,
//                         height: 2.6,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.all(
//                               Radius.elliptical(9999.0, 9999.0)),
//                           color: const Color(0xffffffff),
//                         ),
//                       ),
//                     ),
//                     Transform.translate(
//                       offset: Offset(5.7, 2.6),
//                       child:
//                           // Adobe XD layer: 'Ellipse 246' (shape)
//                           Container(
//                         width: 2.5,
//                         height: 2.6,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.all(
//                               Radius.elliptical(9999.0, 9999.0)),
//                           color: const Color(0xffffffff),
//                         ),
//                       ),
//                     ),
//                     Transform.translate(
//                       offset: Offset(29.2, 27.1),
//                       child:
//                           // Adobe XD layer: 'Group 31' (group)
//                           SizedBox(
//                         width: 68.0,
//                         height: 19.0,
//                         child: Stack(
//                           children: <Widget>[
//                             // Adobe XD layer: 'Rectangle 250' (shape)
//                             Container(
//                               width: 67.6,
//                               height: 3.2,
//                               decoration: BoxDecoration(
//                                 color: const Color(0xfff2f2f2),
//                               ),
//                             ),
//                             Transform.translate(
//                               offset: Offset(0.0, 8.0),
//                               child:
//                                   // Adobe XD layer: 'Rectangle 251' (shape)
//                                   Container(
//                                 width: 24.1,
//                                 height: 3.2,
//                                 decoration: BoxDecoration(
//                                   color: const Color(0xfff2f2f2),
//                                 ),
//                               ),
//                             ),
//                             Transform.translate(
//                               offset: Offset(0.0, 16.1),
//                               child:
//                                   // Adobe XD layer: 'Rectangle 252' (shape)
//                                   Container(
//                                 width: 48.0,
//                                 height: 3.2,
//                                 decoration: BoxDecoration(
//                                   color: const Color(0xfff2f2f2),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(27.8, 132.0),
//                 child:
//                     // Adobe XD layer: 'Rectangle 246' (shape)
//                     Container(
//                   width: 115.4,
//                   height: 64.7,
//                   decoration: BoxDecoration(
//                     color: const Color(0xfff2f2f2),
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(27.8, 131.9),
//                 child:
//                     // Adobe XD layer: 'Rectangle 264' (shape)
//                     Container(
//                   width: 115.4,
//                   height: 7.5,
//                   decoration: BoxDecoration(
//                     color: const Color(0xffe6e6e6),
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(30.3, 142.0),
//                 child:
//                     // Adobe XD layer: 'Rectangle 247' (shape)
//                     Container(
//                   width: 110.8,
//                   height: 51.4,
//                   decoration: BoxDecoration(
//                     color: const Color(0xffffffff),
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(37.6, 134.4),
//                 child:
//                     // Adobe XD layer: 'Ellipse 194' (shape)
//                     Container(
//                   width: 2.3,
//                   height: 2.5,
//                   decoration: BoxDecoration(
//                     borderRadius:
//                         BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
//                     color: const Color(0xffffffff),
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(42.0, 134.4),
//                 child:
//                     // Adobe XD layer: 'Ellipse 195' (shape)
//                     Container(
//                   width: 2.3,
//                   height: 2.5,
//                   decoration: BoxDecoration(
//                     borderRadius:
//                         BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
//                     color: const Color(0xffffffff),
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(33.1, 134.4),
//                 child:
//                     // Adobe XD layer: 'Ellipse 246' (shape)
//                     Container(
//                   width: 2.3,
//                   height: 2.5,
//                   decoration: BoxDecoration(
//                     borderRadius:
//                         BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
//                     color: const Color(0xffffffff),
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(83.4, 70.2),
//                 child:
//                     // Adobe XD layer: 'Rectangle 246' (shape)
//                     Container(
//                   width: 136.9,
//                   height: 76.8,
//                   decoration: BoxDecoration(
//                     color: const Color(0xffe6e6e6),
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(83.3, 70.0),
//                 child:
//                     // Adobe XD layer: 'Rectangle 264' (shape)
//                     Container(
//                   width: 136.9,
//                   height: 8.9,
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment(0.0, -1.0),
//                       end: Alignment(0.0, 1.0),
//                       colors: [
//                         const Color(0xfffe4f70),
//                         const Color(0xffcb6bd8)
//                       ],
//                       stops: [0.0, 1.0],
//                     ),
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(86.5, 81.7),
//                 child:
//                     // Adobe XD layer: 'Rectangle 247' (shape)
//                     Container(
//                   width: 130.6,
//                   height: 61.0,
//                   decoration: BoxDecoration(
//                     color: const Color(0xffffffff),
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(94.9, 73.0),
//                 child:
//                     // Adobe XD layer: 'Ellipse 194' (shape)
//                     Container(
//                   width: 2.8,
//                   height: 2.9,
//                   decoration: BoxDecoration(
//                     borderRadius:
//                         BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
//                     color: const Color(0xffffffff),
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(100.2, 73.0),
//                 child:
//                     // Adobe XD layer: 'Ellipse 195' (shape)
//                     Container(
//                   width: 2.8,
//                   height: 2.9,
//                   decoration: BoxDecoration(
//                     borderRadius:
//                         BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
//                     color: const Color(0xffffffff),
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(89.7, 73.0),
//                 child:
//                     // Adobe XD layer: 'Ellipse 246' (shape)
//                     Container(
//                   width: 2.8,
//                   height: 2.9,
//                   decoration: BoxDecoration(
//                     borderRadius:
//                         BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
//                     color: const Color(0xffffffff),
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(101.8, 97.4),
//                 child:
//                     // Adobe XD layer: 'Group 31' (group)
//                     SizedBox(
//                   width: 100.0,
//                   height: 29.0,
//                   child: Stack(
//                     children: <Widget>[
//                       // Adobe XD layer: 'Rectangle 250' (shape)
//                       Container(
//                         width: 100.1,
//                         height: 4.8,
//                         decoration: BoxDecoration(
//                           color: const Color(0xffe6e6e6),
//                         ),
//                       ),
//                       Transform.translate(
//                         offset: Offset(0.0, 11.9),
//                         child:
//                             // Adobe XD layer: 'Rectangle 251' (shape)
//                             Container(
//                           width: 35.7,
//                           height: 4.8,
//                           decoration: BoxDecoration(
//                             color: const Color(0xffe6e6e6),
//                           ),
//                         ),
//                       ),
//                       Transform.translate(
//                         offset: Offset(0.0, 23.8),
//                         child:
//                             // Adobe XD layer: 'Rectangle 252' (shape)
//                             Container(
//                           width: 71.1,
//                           height: 4.8,
//                           decoration: BoxDecoration(
//                             color: const Color(0xffe6e6e6),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(50.5, 157.3),
//                 child:
//                     // Adobe XD layer: 'Group 31' (group)
//                     SizedBox(
//                   width: 75.0,
//                   height: 22.0,
//                   child: Stack(
//                     children: <Widget>[
//                       // Adobe XD layer: 'Rectangle 250' (shape)
//                       Container(
//                         width: 75.5,
//                         height: 3.6,
//                         decoration: BoxDecoration(
//                           color: const Color(0xfff2f2f2),
//                         ),
//                       ),
//                       Transform.translate(
//                         offset: Offset(0.0, 9.0),
//                         child:
//                             // Adobe XD layer: 'Rectangle 251' (shape)
//                             Container(
//                           width: 26.9,
//                           height: 3.6,
//                           decoration: BoxDecoration(
//                             color: const Color(0xfff2f2f2),
//                           ),
//                         ),
//                       ),
//                       Transform.translate(
//                         offset: Offset(0.0, 18.0),
//                         child:
//                             // Adobe XD layer: 'Rectangle 252' (shape)
//                             Container(
//                           width: 53.6,
//                           height: 3.6,
//                           decoration: BoxDecoration(
//                             color: const Color(0xfff2f2f2),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(148.6, 49.5),
//                 child: SvgPicture.string(
//                   _svg_nn6ma1,
//                   allowDrawingOutsideViewBox: true,
//                 ),
//               ),
//             ],
//                 ),
//               ),
//           ),
//           Positioned(
//             left: 13,
//             top: 108,
//             child: SizedBox(
//                 width: 385.0,
//                 height: 7.0,
//                 child: Stack(
//             children: <Widget>[
//               Pinned.fromSize(
//                 bounds: Rect.fromLTWH(0.0, 0.0, 349.0, 7.0),
//                 size: Size(349.0, 7.0),
//                 pinLeft: true,
//                 pinRight: true,
//                 pinTop: true,
//                 pinBottom: true,
//                 child:
//                     // Adobe XD layer: 'Bar' (shape)
//                     Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(4.0),
//                     color: const Color(0xffffffff),
//                     boxShadow: [
//                       BoxShadow(
//                         color: const Color(0x1a000000),
//                         offset: Offset(0, 3),
//                         blurRadius: 6,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Pinned.fromSize(
//                 bounds: Rect.fromLTWH(0.0, 0.0, 279.2, 7.0),
//                 size: Size(349.0, 7.0),
//                 pinLeft: true,
//                 pinRight: true,
//                 pinTop: true,
//                 pinBottom: true,
//                 child:
//                     // Adobe XD layer: 'Progress' (shape)
//                     Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(4.0),
//                     gradient: LinearGradient(
//                       begin: Alignment(0.0, -1.0),
//                       end: Alignment(0.0, 1.0),
//                       colors: [
//                         const Color(0xfffe4f70),
//                         const Color(0xffcb6bd8)
//                       ],
//                       stops: [0.0, 1.0],
//                     ),
//                     boxShadow: [
//                       BoxShadow(
//                         color: const Color(0x1a000000),
//                         offset: Offset(0, 3),
//                         blurRadius: 6,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//                 ),
//               ),
//           ),
//           Positioned(
//             left: 173,
//             top: 39,
//             child: Container(
//                 width: 64.0,
//                 height: 37.0,
//                 decoration: BoxDecoration(
//             image: DecorationImage(
//               image: const AssetImage('assets/Sync Logo.png'),
//               fit: BoxFit.fill,
//               colorFilter: new ColorFilter.mode(
//                   Colors.black.withOpacity(0.7), BlendMode.dstIn),
//             ),
//             boxShadow: [
//               BoxShadow(
//                 color: const Color(0x45000000),
//                 offset: Offset(0, 3),
//                 blurRadius: 80,
//               ),
//             ],
//                 ),
//               ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class Intro4 extends StatefulWidget {
  const Intro4({Key key}) : super(key: key);

  @override
  _Intro4State createState() => _Intro4State();
}

class _Intro4State extends State<Intro4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 30,
        backgroundColor: Colors.white,
      ),
      body: Column(
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
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.90,
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
                    bounds: Rect.fromLTWH(0.0, 0.0, 279.2, 7.0),
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
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.475,
            alignment: Alignment.center,
            child: SizedBox(
              width: 273.0,
              height: 226.0,
              child: Stack(
                children: <Widget>[
                  SizedBox(
                    width: 123.0,
                    height: 69.0,
                    child: Stack(
                      children: <Widget>[
                        Transform.translate(
                          offset: Offset(0.1, 0.1),
                          child:
                          // Adobe XD layer: 'Rectangle 246' (shape)
                          Container(
                            width: 122.7,
                            height: 68.8,
                            decoration: BoxDecoration(
                              color: const Color(0xfff2f2f2),
                            ),
                          ),
                        ),
                        // Adobe XD layer: 'Rectangle 264' (shape)
                        Container(
                          width: 122.7,
                          height: 8.0,
                          decoration: BoxDecoration(
                            color: const Color(0xffe6e6e6),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(2.8, 11.2),
                          child:
                          // Adobe XD layer: 'Rectangle 247' (shape)
                          Container(
                            width: 117.6,
                            height: 54.1,
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(10.4, 2.6),
                          child:
                          // Adobe XD layer: 'Ellipse 194' (shape)
                          Container(
                            width: 2.5,
                            height: 2.6,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(15.1, 2.6),
                          child:
                          // Adobe XD layer: 'Ellipse 195' (shape)
                          Container(
                            width: 2.5,
                            height: 2.6,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(5.7, 2.6),
                          child:
                          // Adobe XD layer: 'Ellipse 246' (shape)
                          Container(
                            width: 2.5,
                            height: 2.6,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(29.2, 27.1),
                          child:
                          // Adobe XD layer: 'Group 31' (group)
                          SizedBox(
                            width: 68.0,
                            height: 19.0,
                            child: Stack(
                              children: <Widget>[
                                // Adobe XD layer: 'Rectangle 250' (shape)
                                Container(
                                  width: 67.6,
                                  height: 3.2,
                                  decoration: BoxDecoration(
                                    color: const Color(0xfff2f2f2),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(0.0, 8.0),
                                  child:
                                  // Adobe XD layer: 'Rectangle 251' (shape)
                                  Container(
                                    width: 24.1,
                                    height: 3.2,
                                    decoration: BoxDecoration(
                                      color: const Color(0xfff2f2f2),
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(0.0, 16.1),
                                  child:
                                  // Adobe XD layer: 'Rectangle 252' (shape)
                                  Container(
                                    width: 48.0,
                                    height: 3.2,
                                    decoration: BoxDecoration(
                                      color: const Color(0xfff2f2f2),
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
                  Transform.translate(
                    offset: Offset(27.8, 132.0),
                    child:
                    // Adobe XD layer: 'Rectangle 246' (shape)
                    Container(
                      width: 115.4,
                      height: 64.7,
                      decoration: BoxDecoration(
                        color: const Color(0xfff2f2f2),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(27.8, 131.9),
                    child:
                    // Adobe XD layer: 'Rectangle 264' (shape)
                    Container(
                      width: 115.4,
                      height: 7.5,
                      decoration: BoxDecoration(
                        color: const Color(0xffe6e6e6),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(30.3, 142.0),
                    child:
                    // Adobe XD layer: 'Rectangle 247' (shape)
                    Container(
                      width: 110.8,
                      height: 51.4,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(37.6, 134.4),
                    child:
                    // Adobe XD layer: 'Ellipse 194' (shape)
                    Container(
                      width: 2.3,
                      height: 2.5,
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(42.0, 134.4),
                    child:
                    // Adobe XD layer: 'Ellipse 195' (shape)
                    Container(
                      width: 2.3,
                      height: 2.5,
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(33.1, 134.4),
                    child:
                    // Adobe XD layer: 'Ellipse 246' (shape)
                    Container(
                      width: 2.3,
                      height: 2.5,
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(83.4, 70.2),
                    child:
                    // Adobe XD layer: 'Rectangle 246' (shape)
                    Container(
                      width: 136.9,
                      height: 76.8,
                      decoration: BoxDecoration(
                        color: const Color(0xffe6e6e6),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(83.3, 70.0),
                    child:
                    // Adobe XD layer: 'Rectangle 264' (shape)
                    Container(
                      width: 136.9,
                      height: 8.9,
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
                    offset: Offset(86.5, 81.7),
                    child:
                    // Adobe XD layer: 'Rectangle 247' (shape)
                    Container(
                      width: 130.6,
                      height: 61.0,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(94.9, 73.0),
                    child:
                    // Adobe XD layer: 'Ellipse 194' (shape)
                    Container(
                      width: 2.8,
                      height: 2.9,
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(100.2, 73.0),
                    child:
                    // Adobe XD layer: 'Ellipse 195' (shape)
                    Container(
                      width: 2.8,
                      height: 2.9,
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(89.7, 73.0),
                    child:
                    // Adobe XD layer: 'Ellipse 246' (shape)
                    Container(
                      width: 2.8,
                      height: 2.9,
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(101.8, 97.4),
                    child:
                    // Adobe XD layer: 'Group 31' (group)
                    SizedBox(
                      width: 100.0,
                      height: 29.0,
                      child: Stack(
                        children: <Widget>[
                          // Adobe XD layer: 'Rectangle 250' (shape)
                          Container(
                            width: 100.1,
                            height: 4.8,
                            decoration: BoxDecoration(
                              color: const Color(0xffe6e6e6),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(0.0, 11.9),
                            child:
                            // Adobe XD layer: 'Rectangle 251' (shape)
                            Container(
                              width: 35.7,
                              height: 4.8,
                              decoration: BoxDecoration(
                                color: const Color(0xffe6e6e6),
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(0.0, 23.8),
                            child:
                            // Adobe XD layer: 'Rectangle 252' (shape)
                            Container(
                              width: 71.1,
                              height: 4.8,
                              decoration: BoxDecoration(
                                color: const Color(0xffe6e6e6),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(50.5, 157.3),
                    child:
                    // Adobe XD layer: 'Group 31' (group)
                    SizedBox(
                      width: 75.0,
                      height: 22.0,
                      child: Stack(
                        children: <Widget>[
                          // Adobe XD layer: 'Rectangle 250' (shape)
                          Container(
                            width: 75.5,
                            height: 3.6,
                            decoration: BoxDecoration(
                              color: const Color(0xfff2f2f2),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(0.0, 9.0),
                            child:
                            // Adobe XD layer: 'Rectangle 251' (shape)
                            Container(
                              width: 26.9,
                              height: 3.6,
                              decoration: BoxDecoration(
                                color: const Color(0xfff2f2f2),
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(0.0, 18.0),
                            child:
                            // Adobe XD layer: 'Rectangle 252' (shape)
                            Container(
                              width: 53.6,
                              height: 3.6,
                              decoration: BoxDecoration(
                                color: const Color(0xfff2f2f2),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(148.6, 49.5),
                    child: SvgPicture.string(
                      _svg_nn6ma1,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            'Bookmark your favourite events!',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 24,
              color: const Color(0xff404040),
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.left,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
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
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          PageLink(
            links: [
              PageLinkInfo(
                transition: LinkTransition.Fade,
                ease: Curves.easeOut,
                duration: 0.3,
                pageBuilder: () => Intro5(),
              ),
            ],
            child: Container(
              height: 48,
              width: MediaQuery.of(context).size.width * 0.70,
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
              child: Center(
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
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text(
              '(4/5)',
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
    );
  }
}


const String _svg_nn6ma1 =
    '<svg viewBox="161.6 235.2 124.4 176.9" ><path transform="translate(-319.89, 167.74)" d="M 487.9263305664063 89.21499633789063 L 481.490966796875 93.02317810058594 L 488.3540344238281 90.43778991699219 L 487.9263305664063 89.21499633789063 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="matrix(0.95109, -0.30892, 0.30892, 0.95109, 166.92, 253.93)" d="M 1.881034851074219 0.0001721084117889404 C 2.879050254821777 -0.01969867199659348 3.655648231506348 1.68355405330658 3.615614891052246 3.80449366569519 C 3.575581550598145 5.925432682037354 2.734076499938965 7.660902500152588 1.736061096191406 7.680773258209229 C 0.7380455732345581 7.700644493103027 -0.03855244815349579 5.997390747070313 0.001480959355831146 3.876451969146729 C 0.04151437431573868 1.755512595176697 0.8830193877220154 0.02004288882017136 1.881034851074219 0.0001721084117889404 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-339.22, 175.48)" d="M 509.4599609375 79.32078552246094 L 513.7283935546875 77.67500305175781 L 514.6357421875 80.35929107666016 L 510.5046997070313 83.33997344970703 L 509.4599609375 79.32078552246094 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-503.75, 11.09)" d="M 677.189208984375 245.0200805664063 C 677.5291748046875 246.2831726074219 678.3753662109375 247.320556640625 679.500244140625 247.8530578613281 C 680.6250610351563 248.3855590820313 681.9129028320313 248.3584899902344 683.0172729492188 247.7791442871094 L 693.5170288085938 258.8814086914063 L 695.0220947265625 250.8396911621094 L 684.820556640625 241.5297241210938 C 683.7632446289063 239.5694885253906 681.50048828125 238.7637939453125 679.5536499023438 239.6542663574219 C 677.606689453125 240.5447387695313 676.5908813476563 242.8499450683594 677.189208984375 245.0201110839844 Z" fill="#a0616a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-666.93, -97.9)" d="M 920.3836669921875 424.0595703125 C 921.19482421875 423.0713806152344 921.5545654296875 421.7501525878906 921.365966796875 420.4513854980469 C 921.1774291992188 419.1526184082031 920.4600830078125 418.0097961425781 919.406982421875 417.3303527832031 L 922.4766235351563 401.8933410644531 L 915.3292236328125 404.8869934082031 L 913.510009765625 419.0873413085938 C 912.537353515625 421.0970153808594 913.1256713867188 423.566162109375 914.8793334960938 424.8346862792969 C 916.6329956054688 426.1032409667969 918.9976806640625 425.7702331542969 920.3836669921875 424.0595092773438 Z" fill="#a0616a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-431.41, -94.08)" d="M 650.2750854492188 500.6948852539063 L 645.2063598632813 500.6948852539063 L 642.7949829101563 479.81103515625 L 650.275634765625 479.8113403320313 L 650.2750854492188 500.6948852539063 Z" fill="#a0616a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-572.17, -302.95)" d="M 792.3340454101563 714.8096923828125 L 775.9910888671875 714.8089599609375 L 775.9910888671875 714.588134765625 C 775.9910888671875 710.8349609375 778.8392944335938 707.792724609375 782.3526000976563 707.7930908203125 L 782.3527221679688 707.7928466796875 L 792.3344116210938 707.7933349609375 L 792.3340454101563 714.8096923828125 Z" fill="#2f2e41" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-486.97, -94.08)" d="M 730.647705078125 500.6948852539063 L 725.579345703125 500.6948852539063 L 723.1680908203125 479.81103515625 L 730.648681640625 479.8113403320313 L 730.647705078125 500.6948852539063 Z" fill="#a0616a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-627.74, -302.95)" d="M 872.707275390625 714.81005859375 L 856.3641357421875 714.8094482421875 L 856.3641357421875 714.588623046875 C 856.3641357421875 710.8357543945313 859.2122802734375 707.7935180664063 862.7254638671875 707.7936401367188 L 862.725830078125 707.7936401367188 L 872.70751953125 707.7940673828125 L 872.707275390625 714.81005859375 Z" fill="#2f2e41" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-587.0, -128.59)" d="M 806.3942260742188 524.3002319335938 L 799.2191772460938 523.99365234375 C 798.2008666992188 523.9467163085938 797.4061889648438 523.03564453125 797.4341430664063 521.947265625 L 799.4555053710938 451.1193542480469 L 799.5875244140625 451.0684204101563 C 812.1625366210938 446.209228515625 822.5652465820313 446.5766296386719 831.3910522460938 452.1901550292969 L 831.4896850585938 452.2531433105469 L 832.7006225585938 521.2364501953125 C 832.7101440429688 521.77001953125 832.5183715820313 522.2850952148438 832.1685180664063 522.666015625 C 831.818603515625 523.046875 831.340087890625 523.2613525390625 830.8405151367188 523.2613525390625 L 824.790283203125 523.2613525390625 C 823.9017333984375 523.2597045898438 823.1376953125 522.5884399414063 822.9646606445313 521.6573486328125 L 814.7230224609375 476.8724060058594 C 814.6642456054688 476.5526123046875 814.3963623046875 476.3259887695313 814.0916137695313 476.3380126953125 C 813.7868041992188 476.35009765625 813.5354614257813 476.59716796875 813.4989624023438 476.9207458496094 L 808.3154296875 522.5540161132813 C 808.197509765625 523.54931640625 807.4069213867188 524.2969360351563 806.4677124023438 524.3014526367188 C 806.4432373046875 524.3015747070313 806.4185791015625 524.30126953125 806.3942260742188 524.3002319335938 Z" fill="#2f2e41" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(0.87745, -0.47966, 0.47966, 0.87745, 212.19, 245.13)" d="M 10.60929870605469 0.004053503274917603 C 16.30534172058105 -0.1569367051124573 20.79238891601563 4.497509002685547 20.63139915466309 10.40004825592041 C 20.47040939331055 16.30258560180664 15.72234439849854 21.21804809570313 10.02630233764648 21.37903785705566 C 4.330258369445801 21.54002952575684 -0.1567888855934143 16.88558387756348 0.004201322793960571 10.98304557800293 C 0.1651915460824966 5.080506324768066 4.91325569152832 0.1650437265634537 10.60929870605469 0.004053503274917603 Z" fill="#a0616a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-521.24, -3.05)" d="M 702.5050048828125 263.4080505371094 C 702.6676025390625 263.042724609375 702.9306640625 262.7389831542969 703.259033203125 262.5373840332031 L 706.3213500976563 260.6590881347656 C 707.0014038085938 260.2442016601563 707.8515014648438 260.3269653320313 708.4502563476563 260.8663024902344 L 718.6248168945313 270.0739135742188 L 742.0107421875 277.0776977539063 C 745.0065307617188 278.5812377929688 746.294189453125 282.3942565917969 744.8867797851563 285.5944213867188 C 743.4793090820313 288.7946166992188 739.9097900390625 290.1701354980469 736.9138793945313 288.6666259765625 L 721.9754028320313 285.0742797851563 C 717.4413452148438 283.9847106933594 713.4321899414063 281.1729431152344 710.693603515625 277.1620788574219 L 702.682373046875 265.4322204589844 C 702.3710327148438 264.9759216308594 702.2559814453125 264.3998107910156 702.3656616210938 263.8475036621094 C 702.395751953125 263.6956787109375 702.4425048828125 263.5481567382813 702.5050048828125 263.4080505371094 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-638.92, -25.01)" d="M 891.9445190429688 341.1768188476563 C 891.5881958007813 341.3139343261719 891.2012939453125 341.3318176269531 890.8352661132813 341.22802734375 L 887.422607421875 340.2586364746094 C 886.6661987304688 340.041748046875 886.1171264648438 339.3435363769531 886.0474853515625 338.5102844238281 L 884.891357421875 324.3194274902344 L 872.9010620117188 301.7571716308594 C 871.7647094726563 298.4363708496094 873.3635864257813 294.7601623535156 876.4723510742188 293.5462341308594 C 879.5811767578125 292.3323059082031 883.0226440429688 294.040283203125 884.1589965820313 297.3611145019531 L 892.3992309570313 311.1474609375 C 894.9007568359375 315.3313293457031 895.8944091796875 320.3433227539063 895.1953735351563 325.251220703125 L 893.15283203125 339.6061096191406 C 893.0730590820313 340.1642150878906 892.7750854492188 340.659912109375 892.3331909179688 340.9696350097656 C 892.2117309570313 341.0548095703125 892.0812377929688 341.1243896484375 891.9443969726563 341.1768188476563 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-587.52, -14.15)" d="M 802.7905883789063 282.9808959960938 C 806.3233032226563 278.842529296875 811.4231567382813 276.6399230957031 816.65576171875 276.9926452636719 C 816.8255615234375 277.0038452148438 816.99462890625 277.0165405273438 817.1630249023438 277.0305786132813 L 817.1632690429688 277.0305786132813 C 822.1166381835938 277.4489440917969 826.6607055664063 280.1280822753906 829.6321411132813 284.382080078125 C 832.6532592773438 288.6956481933594 833.7869262695313 294.19091796875 832.7431640625 299.4613037109375 C 830.7742919921875 309.4173278808594 831.2725830078125 319.7500305175781 834.188720703125 329.437255859375 L 836.9127807617188 338.4724731445313 C 837.0897827148438 339.0592346191406 837.0018310546875 339.7005920410156 836.6744995117188 340.2083435058594 C 836.3473510742188 340.7161560058594 835.8179931640625 341.0328979492188 835.24169921875 341.0657348632813 L 821.3153076171875 341.8656005859375 L 817.7515258789063 335.2898559570313 L 817.7515258789063 342.0702514648438 L 800.8253784179688 343.0423278808594 C 800.7916259765625 343.0444641113281 800.7581176757813 343.0453186035156 800.724853515625 343.0453186035156 C 800.20556640625 343.0451354980469 799.7100219726563 342.8131408691406 799.35791015625 342.4053649902344 C 799.005859375 341.9976501464844 798.829345703125 341.4513244628906 798.8710327148438 340.8984375 L 800.7841796875 315.5570068359375 L 798.384521484375 298.3455810546875 C 797.5977783203125 292.7754516601563 799.2181396484375 287.1246948242188 802.7905883789063 282.9808959960938 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-592.63, 40.11)" d="M 826.0594482421875 219.8144836425781 C 825.1192626953125 220.3923187255859 821.4031372070313 220.7754669189453 821.138427734375 219.6518402099609 L 821.1328125 219.6271667480469 C 820.9485473632813 218.8039093017578 821.1015625 217.9442443847656 821.1544799804688 217.0996856689453 C 821.207275390625 216.2551116943359 821.1299438476563 215.3273162841797 820.5914306640625 214.7063598632813 C 819.587646484375 213.5487670898438 817.8018188476563 214.1624145507813 816.3502807617188 213.8697204589844 C 814.5914306640625 213.4503784179688 813.3981323242188 211.7004089355469 813.5637817382813 209.7834930419922 C 813.5844116210938 209.6079254150391 813.6168823242188 209.4321746826172 813.6531372070313 209.2565612792969 C 813.8372802734375 208.3544158935547 813.61474609375 207.4122772216797 813.0523681640625 206.7112274169922 C 812.4898071289063 206.0101928710938 811.6522216796875 205.6313171386719 810.7894897460938 205.6875915527344 C 809.3225708007813 205.7772064208984 807.7391967773438 206.2519683837891 806.5255737304688 205.0913543701172 C 805.5869750976563 204.1938629150391 805.3580322265625 201.8575897216797 805.7704467773438 200.5861663818359 C 806.46337890625 198.449462890625 810.9026489257813 197.3308258056641 812.8408203125 196.7158966064453 C 817.6953735351563 195.2175598144531 822.9235229492188 196.1339416503906 827.0753173828125 199.2108917236328 C 828.299560546875 200.1326751708984 829.44287109375 201.2908630371094 829.9646606445313 202.7906188964844 C 830.4864501953125 204.2903594970703 830.2347412109375 206.1824493408203 829.0580444335938 207.1724700927734 C 830.9142456054688 209.2717437744141 831.5831298828125 212.2681427001953 830.8135986328125 215.0362854003906 C 830.232421875 217.0365447998047 827.4588012695313 218.9543304443359 826.0594482421875 219.8144836425781 Z" fill="#2f2e41" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-491.48, -316.49)" d="M 777.1682739257813 728.659423828125 L 659.57861328125 728.659423828125 C 659.408203125 728.659423828125 659.27001953125 728.51171875 659.27001953125 728.3296508789063 C 659.27001953125 728.1475830078125 659.408203125 728 659.57861328125 728 L 777.1682739257813 728 C 777.3386840820313 728 777.4768676757813 728.1475830078125 777.4768676757813 728.3296508789063 C 777.4768676757813 728.51171875 777.3386840820313 728.659423828125 777.1682739257813 728.659423828125 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
