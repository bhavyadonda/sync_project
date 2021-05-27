import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

// class ContactUs extends StatelessWidget {
//   ContactUs({
//     Key key,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xffffffff),
//       body: Stack(
//         children: <Widget>[
//           Positioned(
//             left: 43,
//             top: 667,
//             child: SizedBox(
//                 width: 333.0,
//                 height: 48.0,
//                 child: Stack(
//             children: <Widget>[
//               Pinned.fromSize(
//                 bounds: Rect.fromLTWH(0.0, 0.0, 333.0, 48.0),
//                 size: Size(333.0, 48.0),
//                 pinLeft: true,
//                 pinRight: true,
//                 pinTop: true,
//                 pinBottom: true,
//                 child:
//                     // Adobe XD layer: 'Button' (shape)
//                     Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10.0),
//                     gradient: LinearGradient(
//                       begin: Alignment(-0.97, -0.82),
//                       end: Alignment(0.97, 0.79),
//                       colors: [
//                         const Color(0xfffe4f70),
//                         const Color(0xffcb6bd8)
//                       ],
//                       stops: [0.0, 1.0],
//                     ),
//                   ),
//                 ),
//               ),
//               Pinned.fromSize(
//                 bounds: Rect.fromLTWH(137.0, 12.0, 65.0, 21.0),
//                 size: Size(333.0, 48.0),
//                 child: Text(
//                   'Submit',
//                   style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 18,
//                     color: const Color(0xffffffff),
//                     fontWeight: FontWeight.w600,
//                   ),
//                   textAlign: TextAlign.left,
//                 ),
//               ),
//             ],
//                 ),
//               ),
//           ),
//           Positioned(
//             left: 45,
//             top: 538,
//             child: Text(
//               '+ Attachment',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 14,
//                 color: const Color(0xff404040),
//                 fontWeight: FontWeight.w500,
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           Positioned(
//             left: 40,
//             top: 370,
//             child: SizedBox(
//                 width: 333.0,
//                 height: 158.0,
//                 child: Stack(
//             children: <Widget>[
//               Pinned.fromSize(
//                 bounds: Rect.fromLTWH(0.0, 0.0, 333.0, 158.0),
//                 size: Size(333.0, 158.0),
//                 pinLeft: true,
//                 pinRight: true,
//                 pinTop: true,
//                 pinBottom: true,
//                 child:
//                     // Adobe XD layer: 'Description Input' (shape)
//                     Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10.0),
//                     color: const Color(0x1a9d9d9d),
//                   ),
//                 ),
//               ),
//               Pinned.fromSize(
//                 bounds: Rect.fromLTWH(19.0, 14.0, 88.0, 20.0),
//                 size: Size(333.0, 158.0),
//                 pinLeft: true,
//                 pinTop: true,
//                 fixedWidth: true,
//                 fixedHeight: true,
//                 child:
//                     // Adobe XD layer: 'Description Placeho…' (text)
//                     Text(
//                   'Description',
//                   style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 16,
//                     color: const Color(0xffb6b6b6),
//                     fontWeight: FontWeight.w300,
//                   ),
//                   textAlign: TextAlign.left,
//                 ),
//               ),
//             ],
//                 ),
//               ),
//           ),
//           Positioned(
//             left: 40,
//             top: 302,
//             child: SizedBox(
//                 width: 333.0,
//                 height: 48.0,
//                 child: Stack(
//             children: <Widget>[
//               Pinned.fromSize(
//                 bounds: Rect.fromLTWH(0.0, 0.0, 333.0, 48.0),
//                 size: Size(333.0, 48.0),
//                 pinLeft: true,
//                 pinRight: true,
//                 pinTop: true,
//                 pinBottom: true,
//                 child:
//                     // Adobe XD layer: 'Dropdown' (shape)
//                     Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(24.0),
//                     color: const Color(0x1a9d9d9d),
//                   ),
//                 ),
//               ),
//               Pinned.fromSize(
//                 bounds: Rect.fromLTWH(309.0, 21.0, 9.4, 6.1),
//                 size: Size(333.0, 48.0),
//                 pinLeft: true,
//                 pinRight: true,
//                 pinTop: true,
//                 pinBottom: true,
//                 child:
//                     // Adobe XD layer: 'Dropdown Arrow' (shape)
//                     SvgPicture.string(
//                   _svg_2a2k3i,
//                   allowDrawingOutsideViewBox: true,
//                   fit: BoxFit.fill,
//                 ),
//               ),
//               Pinned.fromSize(
//                 bounds: Rect.fromLTWH(19.0, 14.0, 51.0, 20.0),
//                 size: Size(333.0, 48.0),
//                 pinLeft: true,
//                 fixedWidth: true,
//                 fixedHeight: true,
//                 child:
//                     // Adobe XD layer: 'Query Placeholder' (text)
//                     Text(
//                   'Query',
//                   style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 16,
//                     color: const Color(0xffb6b6b6),
//                     fontWeight: FontWeight.w300,
//                   ),
//                   textAlign: TextAlign.left,
//                 ),
//               ),
//             ],
//                 ),
//               ),
//           ),
//           Positioned(
//             left: 37,
//             top: 224,
//             child: Text.rich(
//               TextSpan(
//                 style: TextStyle(
//                   fontFamily: 'Poppins',
//                   fontSize: 22,
//                   color: const Color(0xff9d9d9d),
//                 ),
//                 children: [
//                   TextSpan(
//                     text: 'Feel free to',
//                     style: TextStyle(
//                       fontWeight: FontWeight.w300,
//                     ),
//                   ),
//                   TextSpan(
//                     text: '\n',
//                     style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   TextSpan(
//                     text: 'reach out to us',
//                     style: TextStyle(
//                       color: const Color(0xff404040),
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ],
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           Positioned(
//             left: 37,
//             top: 166,
//             child: SizedBox(
//                 width: 39.0,
//                 height: 38.0,
//                 child: Stack(
//             children: <Widget>[
//               Pinned.fromSize(
//                 bounds: Rect.fromLTWH(0.0, 0.0, 39.0, 38.0),
//                 size: Size(39.0, 38.0),
//                 pinLeft: true,
//                 pinRight: true,
//                 pinTop: true,
//                 pinBottom: true,
//                 child:
//                     // Adobe XD layer: 'Face' (shape)
//                     Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(7.0),
//                     color: const Color(0xffffffff),
//                     border: Border.all(
//                         width: 3.0, color: const Color(0xfffe4f70)),
//                   ),
//                 ),
//               ),
//               Pinned.fromSize(
//                 bounds: Rect.fromLTWH(10.0, 24.0, 19.0, 5.4),
//                 size: Size(39.0, 38.0),
//                 fixedWidth: true,
//                 fixedHeight: true,
//                 child:
//                     // Adobe XD layer: 'Smile' (shape)
//                     SvgPicture.string(
//                   _svg_asnqyb,
//                   allowDrawingOutsideViewBox: true,
//                   fit: BoxFit.fill,
//                 ),
//               ),
//               Pinned.fromSize(
//                 bounds: Rect.fromLTWH(24.0, 11.0, 6.0, 6.0),
//                 size: Size(39.0, 38.0),
//                 fixedWidth: true,
//                 fixedHeight: true,
//                 child:
//                     // Adobe XD layer: 'Right Eye' (shape)
//                     Container(
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
//               Pinned.fromSize(
//                 bounds: Rect.fromLTWH(9.0, 11.0, 6.0, 6.0),
//                 size: Size(39.0, 38.0),
//                 fixedWidth: true,
//                 fixedHeight: true,
//                 child:
//                     // Adobe XD layer: 'Left Eye' (shape)
//                     Container(
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
//             ],
//                 ),
//               ),
//           ),
//           Positioned(
//             left: 31,
//             top: 110,
//             child: Text(
//               'Contact Us',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 22,
//                 color: const Color(0xff404040),
//                 fontWeight: FontWeight.w600,
//               ),
//               textAlign: TextAlign.left,
//             ),
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
//           Positioned(
//             left: 0,
//             top: 35,
//             child: FlatButton(
//               onPressed: () async{
//                 dynamic result = await Navigator.pushNamed(context, '/');
//               },
//               child: SvgPicture.string(
//               _svg_ah28f4,
//               allowDrawingOutsideViewBox: true,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class ContactUs extends StatefulWidget {
  const ContactUs({Key key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 30,
        backgroundColor: const Color(0xffffffff),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(20, 7, 0, 0),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                      ),
                    ],
                    child: SvgPicture.string(
                      _svg_ah28f4,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                ),
                Center(
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
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(13, 20, 0, 0),
              child: Text(
                'Contact Us',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 22,
                  color: const Color(0xff404040),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(13, 20, 0, 20),
              child: SizedBox(
                width: 39.0,
                height: 38.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 39.0, 38.0),
                      size: Size(39.0, 38.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                      // Adobe XD layer: 'Face' (shape)
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          color: const Color(0xffffffff),
                          border: Border.all(
                              width: 3.0, color: const Color(0xfffe4f70)),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(10.0, 24.0, 19.0, 5.4),
                      size: Size(39.0, 38.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child:
                      // Adobe XD layer: 'Smile' (shape)
                      SvgPicture.string(
                        _svg_asnqyb,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(24.0, 11.0, 6.0, 6.0),
                      size: Size(39.0, 38.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child:
                      // Adobe XD layer: 'Right Eye' (shape)
                      Container(
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
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(9.0, 11.0, 6.0, 6.0),
                      size: Size(39.0, 38.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child:
                      // Adobe XD layer: 'Left Eye' (shape)
                      Container(
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
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(13, 0, 0, 25),
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 22,
                    color: const Color(0xff9d9d9d),
                  ),
                  children: [
                    TextSpan(
                      text: 'Feel free to',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    TextSpan(
                      text: '\n',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: 'reach out to us',
                      style: TextStyle(
                        color: const Color(0xff404040),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: 48.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    color: const Color(0x1a9d9d9d),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 25, 0),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      icon: SvgPicture.string(
                        _svg_2a2k3i,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                      underline: SizedBox(),
                      hint: Text(
                        'Query',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: const Color(0xffb6b6b6),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: 158.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.0),
                      color: const Color(0x1a9d9d9d),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 25, 0),
                      child: TextFormField(
                        maxLines: 7,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: const Color(0x1a9d9d9d),
                          hintText: 'Description',
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 17,
                            color: const Color(0xffb6b6b6),
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(13, 0, 0, 0),
                  child: Text(
                    '+ Attachment',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: const Color(0xff404040),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.90,
              height: 48.0,
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
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Submit',
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
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}


const String _svg_2a2k3i =
    '<svg viewBox="360.0 363.0 9.4 6.1" ><path transform="translate(358.0, 361.0)" d="M 6.699999809265137 8.100000381469727 L 2 3.400000095367432 L 3.400000095367432 2 L 6.699999809265137 5.300000190734863 L 10 2 L 11.39999961853027 3.400000095367432 L 6.699999809265137 8.100000381469727 Z" fill="#9d9d9d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_asnqyb =
    '<svg viewBox="45.0 206.0 19.0 5.4" ><path transform="translate(43.0, 206.0)" d="M 2.048095703125 0 C 2.048095703125 0 5.241455078125 5.4482421875 11.241455078125 5.4482421875 C 17.241455078125 5.4482421875 21 0 21 0" fill="none" stroke="#fe4f70" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_ah28f4 =
    '<svg viewBox="32.0 48.0 12.6 18.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="matrix(0.0, 1.0, -1.0, 0.0, 44.56, 48.0)" d="M 8.999999046325684 12.56341361999512 L 0 2.883406400680542 L 2.680851221084595 0 L 8.999999046325684 6.796600818634033 L 15.31914710998535 0 L 18 2.883406400680542 L 8.999999046325684 12.56341361999512 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
