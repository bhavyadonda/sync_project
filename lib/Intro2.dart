import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './Intro3.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

// class Intro2 extends StatelessWidget {
//   Intro2({
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
//                 '(2/5)',
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
//               pageBuilder: () => Intro3(),
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
//             left: 87,
//             top: 497,
//             child: Text(
//               'Get notified Instantly!',
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
//             top: 206.6,
//             child: SizedBox(
//                 width: 273.0,
//                 height: 226.0,
//                 child: Stack(
//             children: <Widget>[
//               Transform.translate(
//                 offset: Offset(78.7, 2.3),
//                 child: SvgPicture.string(
//                   _svg_y68b4v,
//                   allowDrawingOutsideViewBox: true,
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(113.0, 146.1),
//                 child: Container(
//                   width: 17.2,
//                   height: 20.5,
//                   decoration: BoxDecoration(
//                     borderRadius:
//                         BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
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
//                 offset: Offset(22.0, 221.0),
//                 child: SvgPicture.string(
//                   _svg_13929g,
//                   allowDrawingOutsideViewBox: true,
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(93.5, 67.7),
//                 child: Container(
//                   width: 90.9,
//                   height: 21.4,
//                   decoration: BoxDecoration(
//                     color: const Color(0xffe6e6e6),
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(93.5, 33.9),
//                 child: Container(
//                   width: 90.9,
//                   height: 21.4,
//                   decoration: BoxDecoration(
//                     color: const Color(0xffe6e6e6),
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(93.5, 0.0),
//                 child: Container(
//                   width: 90.9,
//                   height: 21.4,
//                   decoration: BoxDecoration(
//                     color: const Color(0xffe6e6e6),
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(95.4, 2.3),
//                 child: SvgPicture.string(
//                   _svg_3bj4xp,
//                   allowDrawingOutsideViewBox: true,
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(97.7, 4.2),
//                 child: Container(
//                   width: 10.7,
//                   height: 12.8,
//                   decoration: BoxDecoration(
//                     borderRadius:
//                         BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
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
//                 offset: Offset(115.9, 8.1),
//                 child: Container(
//                   width: 52.9,
//                   height: 1.4,
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
//                 offset: Offset(115.9, 11.7),
//                 child: Container(
//                   width: 52.9,
//                   height: 1.4,
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
//                 offset: Offset(97.7, 38.4),
//                 child: Container(
//                   width: 10.7,
//                   height: 12.8,
//                   decoration: BoxDecoration(
//                     borderRadius:
//                         BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
//                     color: const Color(0xffcccccc),
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(115.9, 42.3),
//                 child: Container(
//                   width: 52.9,
//                   height: 1.4,
//                   decoration: BoxDecoration(
//                     color: const Color(0xffcccccc),
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(115.9, 45.9),
//                 child: Container(
//                   width: 52.9,
//                   height: 1.4,
//                   decoration: BoxDecoration(
//                     color: const Color(0xffcccccc),
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(97.7, 72.2),
//                 child: Container(
//                   width: 10.7,
//                   height: 12.8,
//                   decoration: BoxDecoration(
//                     borderRadius:
//                         BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
//                     color: const Color(0xffcccccc),
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(115.9, 76.1),
//                 child: Container(
//                   width: 52.9,
//                   height: 1.4,
//                   decoration: BoxDecoration(
//                     color: const Color(0xffcccccc),
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(115.9, 79.7),
//                 child: Container(
//                   width: 52.9,
//                   height: 1.4,
//                   decoration: BoxDecoration(
//                     color: const Color(0xffcccccc),
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(0.0, 51.2),
//                 child: SizedBox(
//                   width: 51.0,
//                   height: 175.0,
//                   child: Stack(
//                     children: <Widget>[
//                       Transform.translate(
//                         offset: Offset(0.0, 78.5),
//                         child: SvgPicture.string(
//                           _svg_bitp8k,
//                           allowDrawingOutsideViewBox: true,
//                         ),
//                       ),
//                       Transform.translate(
//                         offset: Offset(11.8, 1.6),
//                         child: Container(
//                           width: 19.8,
//                           height: 21.5,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.all(
//                                 Radius.elliptical(9999.0, 9999.0)),
//                             color: const Color(0xffffb8b8),
//                           ),
//                         ),
//                       ),
//                       Transform.translate(
//                         offset: Offset(2.9, 0.0),
//                         child: SvgPicture.string(
//                           _svg_x4wha6,
//                           allowDrawingOutsideViewBox: true,
//                         ),
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
//                 bounds: Rect.fromLTWH(0.0, 0.0, 139.6, 7.0),
//                 size: Size(349.0, 7.0),
//                 pinLeft: true,
//                 pinTop: true,
//                 pinBottom: true,
//                 fixedWidth: true,
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
//                         blurRadius: 80,
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

class Intro2 extends StatefulWidget {
  const Intro2({Key key}) : super(key: key);

  @override
  _Intro2State createState() => _Intro2State();
}

class _Intro2State extends State<Intro2> {
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
                    bounds: Rect.fromLTWH(0.0, 0.0, 139.6, 7.0),
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
                            blurRadius: 80,
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
                  Transform.translate(
                    offset: Offset(78.7, 2.3),
                    child: SvgPicture.string(
                      _svg_y68b4v,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(113.0, 146.1),
                    child: Container(
                      width: 17.2,
                      height: 20.5,
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
                    offset: Offset(22.0, 221.0),
                    child: SvgPicture.string(
                      _svg_13929g,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(93.5, 67.7),
                    child: Container(
                      width: 90.9,
                      height: 21.4,
                      decoration: BoxDecoration(
                        color: const Color(0xffe6e6e6),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(93.5, 33.9),
                    child: Container(
                      width: 90.9,
                      height: 21.4,
                      decoration: BoxDecoration(
                        color: const Color(0xffe6e6e6),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(93.5, 0.0),
                    child: Container(
                      width: 90.9,
                      height: 21.4,
                      decoration: BoxDecoration(
                        color: const Color(0xffe6e6e6),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(95.4, 2.3),
                    child: SvgPicture.string(
                      _svg_3bj4xp,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(97.7, 4.2),
                    child: Container(
                      width: 10.7,
                      height: 12.8,
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
                    offset: Offset(115.9, 8.1),
                    child: Container(
                      width: 52.9,
                      height: 1.4,
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
                    offset: Offset(115.9, 11.7),
                    child: Container(
                      width: 52.9,
                      height: 1.4,
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
                    offset: Offset(97.7, 38.4),
                    child: Container(
                      width: 10.7,
                      height: 12.8,
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xffcccccc),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(115.9, 42.3),
                    child: Container(
                      width: 52.9,
                      height: 1.4,
                      decoration: BoxDecoration(
                        color: const Color(0xffcccccc),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(115.9, 45.9),
                    child: Container(
                      width: 52.9,
                      height: 1.4,
                      decoration: BoxDecoration(
                        color: const Color(0xffcccccc),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(97.7, 72.2),
                    child: Container(
                      width: 10.7,
                      height: 12.8,
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xffcccccc),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(115.9, 76.1),
                    child: Container(
                      width: 52.9,
                      height: 1.4,
                      decoration: BoxDecoration(
                        color: const Color(0xffcccccc),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(115.9, 79.7),
                    child: Container(
                      width: 52.9,
                      height: 1.4,
                      decoration: BoxDecoration(
                        color: const Color(0xffcccccc),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(0.0, 51.2),
                    child: SizedBox(
                      width: 51.0,
                      height: 175.0,
                      child: Stack(
                        children: <Widget>[
                          Transform.translate(
                            offset: Offset(0.0, 78.5),
                            child: SvgPicture.string(
                              _svg_bitp8k,
                              allowDrawingOutsideViewBox: true,
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(11.8, 1.6),
                            child: Container(
                              width: 19.8,
                              height: 21.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                color: const Color(0xffffb8b8),
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(2.9, 0.0),
                            child: SvgPicture.string(
                              _svg_x4wha6,
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
          ),
          Text(
            'Get notified Instantly!',
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
                pageBuilder: () => Intro3(),
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
              '(2/5)',
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


const String _svg_y68b4v =
    '<svg viewBox="91.7 177.4 194.3 218.9" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-327.71, 19.51)" d="M 421.9056396484375 307.6749267578125 C 419.1554260253906 310.8908081054688 419.0914306640625 316.1472778320313 421.7622375488281 319.4569091796875 L 466.1653137207031 374.2393188476563 C 467.4695739746094 375.848388671875 469.2608032226563 376.7666015625 471.1377563476563 376.7882690429688 C 473.0147094726563 376.809814453125 474.8204956054688 375.9330444335938 476.1506042480469 374.3543090820313 L 611.6434326171875 213.5403289794922 C 613.142333984375 211.7608642578125 613.8867797851563 209.2695922851563 613.6693115234375 206.7612915039063 C 613.4518432617188 204.2529296875 612.295654296875 201.9958801269531 610.5231323242188 200.6194610595703 L 557.2442626953125 159.2531280517578 C 554.4984741210938 157.09912109375 550.8632202148438 157.525634765625 548.5224609375 160.2764892578125 L 421.9056396484375 307.6749267578125 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-326.82, -54.27)" d="M 611.6861572265625 276.8489685058594 C 611.417236328125 277.341064453125 611.1058349609375 277.7981872558594 610.757080078125 278.212890625 L 475.5831909179688 442.0650024414063 C 474.2530517578125 443.6437683105469 472.4472961425781 444.5205383300781 470.5703430175781 444.4989318847656 C 468.6933898925781 444.477294921875 466.9021911621094 443.5591430664063 465.597900390625 441.9500122070313 L 420.2394714355469 384.888916015625 C 419.930419921875 384.506103515625 419.6528930664063 384.0888977050781 419.4105834960938 383.6430053710938 C 417.6711730957031 386.8330688476563 418.5707092285156 390.3988952636719 420.8765869140625 393.2434997558594 L 465.2795715332031 448.0260314941406 C 466.5838623046875 449.6351318359375 468.3750915527344 450.5532836914063 470.2520446777344 450.5749206542969 C 472.1289978027344 450.5965576171875 473.934814453125 449.7197875976563 475.264892578125 448.1409912109375 L 610.7576904296875 287.3270263671875 C 613.10791015625 284.5361633300781 613.49560546875 280.1638488769531 611.686767578125 276.8490295410156 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-342.79, 5.95)" d="M 615.1061401367188 218.6100311279297 L 609.59228515625 214.4194641113281 C 610.7881469726563 216.959716796875 610.3568115234375 220.1474456787109 608.551513671875 222.1106414794922 C 606.7462158203125 224.0738220214844 604.0437622070313 224.2939605712891 602.03125 222.6417846679688 L 566.35107421875 193.4007415771484 C 564.6962890625 192.0468139648438 563.8338012695313 189.6867065429688 564.1290893554688 187.3201751708984 C 564.4242553710938 184.9536437988281 565.8255004882813 182.9948120117188 567.7392578125 182.2734832763672 L 564.8984985351563 180.1144409179688 C 564.1389770507813 179.5371856689453 563.1444091796875 179.6703643798828 562.5112915039063 180.4341888427734 L 442.4807434082031 321.0452270507813 C 442.1189575195313 321.4816284179688 441.920166015625 322.0735473632813 441.9292602539063 322.68701171875 C 441.9383544921875 323.3004760742188 442.1546325683594 323.8836669921875 442.5291137695313 324.3045654296875 L 486.1210632324219 374.9375610351563 C 486.8723449707031 375.7819213867188 488.0503540039063 375.7623901367188 488.7817077636719 374.8934936523438 L 615.4278564453125 222.1451721191406 C 615.8387451171875 221.6570434570313 616.0414428710938 220.9729766845703 615.9788208007813 220.2855529785156 C 615.9163208007813 219.5981292724609 615.5952758789063 218.9817504882813 615.1061401367188 218.6100311279297 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-245.36, 135.01)" d="M 379.14697265625 160.9342346191406 L 415.9685668945313 202.3190612792969 L 503.55126953125 99.17033386230469 L 459.1023864746094 64.68299865722656 L 379.14697265625 160.9342346191406 Z" fill="#e6e6e6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-674.91, -95.68)" d="M 929.6974487304688 355.3189392089844 C 930.2017211914063 355.8927001953125 930.9953002929688 355.8927001953125 931.4996337890625 355.3189697265625 L 939.1588134765625 346.1891174316406 C 939.6553344726563 345.5953369140625 939.6553344726563 344.6347351074219 939.1588134765625 344.0409545898438 C 938.6544189453125 343.4671936035156 937.8609008789063 343.4671936035156 937.3565063476563 344.0409545898438 L 929.6974487304688 353.1707763671875 C 929.200927734375 353.7645568847656 929.200927734375 354.7252197265625 929.6974487304688 355.3189392089844 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-647.31, -120.78)" d="M 889.1971435546875 395.7944030761719 C 889.6953125 396.3862915039063 890.501220703125 396.3862915039063 890.9993896484375 395.7944030761719 L 898.6585693359375 386.6643371582031 C 899.1561889648438 386.0710754394531 899.1561889648438 385.1092529296875 898.6585693359375 384.5159912109375 C 898.160888671875 383.9227294921875 897.35400390625 383.9227294921875 896.8562622070313 384.5159912109375 L 889.1971435546875 393.6460571289063 C 888.7005004882813 394.2397766113281 888.7005004882813 395.2006225585938 889.1971435546875 395.7944030761719 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_13929g =
    '<svg viewBox="35.0 396.1 183.0 1.0" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-34.1, -185.79)" d="M 251.9995880126953 582.7351684570313 L 69.11299896240234 582.7351684570313 L 69.11299896240234 581.9069213867188 L 252.1254119873047 581.9069213867188 L 251.9995880126953 582.7351684570313 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3bj4xp =
    '<svg viewBox="108.4 177.4 87.0 84.5" ><path transform="translate(-362.61, 19.45)" d="M 471.0180053710938 174.7718811035156 L 558.0651245117188 174.7718811035156 L 558.0651245117188 157.9940032958984 L 471.0180053710938 157.9940032958984 L 471.0180053710938 174.7718811035156 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-362.61, -36.08)" d="M 471.0180053710938 264.3008728027344 L 558.0651245117188 264.3008728027344 L 558.0651245117188 247.52294921875 L 471.0180053710938 247.52294921875 L 471.0180053710938 264.3008728027344 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-362.61, -91.19)" d="M 471.0180053710938 353.1438598632813 L 558.0651245117188 353.1438598632813 L 558.0651245117188 336.365966796875 L 471.0180053710938 336.365966796875 L 471.0180053710938 353.1438598632813 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bitp8k =
    '<svg viewBox="0.0 78.5 51.2 96.8" ><path transform="translate(-171.53, -545.97)" d="M 175.6058807373047 719.3274536132813 L 177.9515075683594 719.6272583007813 C 179.8042755126953 720.8429565429688 181.9788970947266 721.3005981445313 184.3873596191406 721.20751953125 C 185.0714263916016 721.1851806640625 185.6934814453125 720.770263671875 186.0222778320313 720.1170043945313 L 186.0222930908203 720.1170043945313 C 186.3065032958984 719.5462036132813 186.3296356201172 718.8636474609375 186.0848999023438 718.2713623046875 C 185.8401489257813 717.6792602539063 185.3555297851563 717.2452392578125 184.7744598388672 717.0980224609375 L 182.9921569824219 716.6461791992188 L 178.6912384033203 712.0682983398438 L 176.0968017578125 706.9580078125 L 172.3280487060547 707.4284057617188 L 171.5434875488281 713.9196166992188 L 171.5434875488281 713.9196166992188 C 171.3366394042969 716.6194458007813 173.1336364746094 719.011474609375 175.6058654785156 719.3274536132813 Z" fill="#2f2e41" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-250.78, -540.05)" d="M 291.3885498046875 710.1219482421875 L 293.6875305175781 710.7106323242188 C 295.4009399414063 712.1482543945313 297.5134887695313 712.8726196289063 299.916015625 713.0786743164063 C 300.5979614257813 713.141357421875 301.2593994140625 712.8063354492188 301.6544494628906 712.1981811523438 L 301.6544494628906 712.1981811523438 C 301.99658203125 711.6661987304688 302.091064453125 710.9909057617188 301.909912109375 710.372314453125 C 301.7287292480469 709.7536010742188 301.2926940917969 709.2623291015625 300.7308349609375 709.0439453125 L 299.0074462890625 708.3741455078125 L 295.2140197753906 703.2927856445313 L 293.1712951660156 697.8939819335938 L 289.3777160644531 697.8939819335938 L 287.918701171875 704.24560546875 L 287.918701171875 704.24560546875 C 287.4306030273438 706.9021606445313 288.9654541015625 709.5015258789063 291.3885498046875 710.1218872070313 Z" fill="#2f2e41" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-171.78, -390.5)" d="M 214.2784729003906 548.7045288085938 L 209.9886474609375 549.4228515625 L 203.2239074707031 512.2520751953125 L 191.5093383789063 490.5240173339844 L 177.3198852539063 553.7322998046875 L 172.0400695800781 554.8096923828125 C 172.6321105957031 519.2144165039063 169.7424621582031 474.4019470214844 176.3299255371094 468.9754943847656 L 205.038818359375 472.5668640136719 L 217.5782470703125 509.198974609375 L 214.2784729003906 548.7045288085938 Z" fill="#2f2e41" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x4wha6 =
    '<svg viewBox="2.9 0.0 31.7 103.7" ><path transform="translate(-16.78, -122.2)" d="M 24.6299991607666 151.1136474609375 L 36.50958251953125 153.2685089111328 L 39.47962951660156 141.77587890625 L 30.89983177185059 138.9029846191406 L 24.6299991607666 151.1136474609375 Z" fill="#ffb8b8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-177.72, -289.68)" d="M 180.6199951171875 369.5851135253906 L 212.2987670898438 372.8173522949219 C 209.7591247558594 363.2062377929688 207.4322509765625 353.62890625 209.3288879394531 344.0862121582031 C 211.7373657226563 335.5668334960938 209.4126892089844 330.5006408691406 203.0591125488281 326.4883728027344 L 198.7694091796875 316.0732421875 L 187.2198791503906 314.6366577148438 L 187.2198791503906 314.6366577148438 C 184.1613464355469 319.9886474609375 182.9102172851563 326.3326416015625 183.6813049316406 332.5792541503906 C 185.326904296875 346.1630249023438 184.8824768066406 358.7678833007813 180.6199951171875 369.5851135253906 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-187.96, -242.65)" d="M 205.7720489501953 242.8083801269531 C 209.1530456542969 242.55419921875 213.0620574951172 242.4840087890625 213.5515289306641 243.4532470703125 C 217.0525970458984 243.2750549316406 220.1017456054688 244.604248046875 221.5081481933594 247.6973266601563 C 221.7512969970703 248.239501953125 221.7612915039063 248.8710021972656 221.5354766845703 249.4219360351563 C 221.3096466064453 249.972900390625 220.8711853027344 250.38671875 220.3380737304688 250.5519409179688 C 218.5619964599609 251.1092529296875 215.8548736572266 251.7987060546875 213.879638671875 251.5785522460938 C 209.7774505615234 256.8274536132813 211.5034332275391 266.4009094238281 215.4852600097656 271.9938049316406 L 211.8871307373047 272.7964782714844 L 205.0594024658203 262.4485168457031 L 207.2138366699219 273.83935546875 L 198.9049682617188 275.3184204101563 L 196.0070190429688 260.8426513671875 C 195.3977203369141 257.406494140625 195.5502166748047 253.86181640625 196.4518585205078 250.5027160644531 C 196.5481719970703 250.1635131835938 196.6643829345703 249.8313598632813 196.7997436523438 249.50830078125 C 198.4302368164063 245.6486206054688 201.8765106201172 243.0751647949219 205.7720642089844 242.8083801269531 Z" fill="#2f2e41" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-202.43, -325.54)" d="M 225.7839965820313 416.2237548828125 L 225.5651092529297 424.5615844726563 C 225.5025177001953 426.9459838867188 227.1439208984375 428.9775390625 229.3248138427734 429.21484375 L 229.3248138427734 429.21484375 C 230.6915740966797 429.3636474609375 232.0381622314453 428.7715454101563 232.9264526367188 427.63134765625 C 233.8147277832031 426.4910888671875 234.1311645507813 424.948486328125 233.7728118896484 423.5052490234375 L 232.0537414550781 416.5828857421875 L 227.1038513183594 387.1331787109375 L 227.4338226318359 369.8944702148438 L 216.8742370605469 369.5353393554688 L 218.8541564941406 388.9288940429688 L 225.7839965820313 416.2237548828125 Z" fill="#ffb8b8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-201.02, -291.03)" d="M 214.8029937744141 336.8203125 C 218.6287689208984 335.2343444824219 222.8567352294922 335.2343444824219 226.6825256347656 336.8203125 L 226.0225524902344 322.4547119140625 C 226.0225677490234 319.2811584472656 223.6587219238281 316.70849609375 220.7427673339844 316.70849609375 L 220.7427520751953 316.70849609375 C 217.8267974853516 316.70849609375 215.4629669189453 319.2811584472656 215.4629669189453 322.4547119140625 L 214.8029937744141 336.8203125 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
