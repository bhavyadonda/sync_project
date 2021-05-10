import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './SignIn.dart';
import './PrivacyPolicy.dart';
import 'package:adobe_xd/page_link.dart';
import './ForgotPassword.dart';
import './TermsAndConditions.dart';
import 'package:flutter_svg/flutter_svg.dart';

// class Settings extends StatelessWidget {
//   Settings({
//     Key key,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xffffffff),
//       body: Stack(
//         children: <Widget>[
//           Positioned(
//             left: 30,
//             top: 355,
//             child: PageLink(
//               links: [
//                 PageLinkInfo(
//                   transition: LinkTransition.Fade,
//                   ease: Curves.easeOut,
//                   duration: 0.3,
//                   pageBuilder: () => SignIn(),
//                 ),
//               ],
//               child: SizedBox(
//                 width: 349.0,
//                 height: 45.0,
//                 child: Stack(
//                   children: <Widget>[
//                     Pinned.fromSize(
//                       bounds: Rect.fromLTWH(0.0, 0.0, 349.0, 45.0),
//                       size: Size(349.0, 45.0),
//                       pinLeft: true,
//                       pinRight: true,
//                       pinTop: true,
//                       pinBottom: true,
//                       child: Stack(
//                         children: <Widget>[
//                           Pinned.fromSize(
//                             bounds: Rect.fromLTWH(0.0, 0.0, 349.0, 45.0),
//                             size: Size(349.0, 45.0),
//                             pinLeft: true,
//                             pinRight: true,
//                             pinTop: true,
//                             pinBottom: true,
//                             child: SvgPicture.string(
//                               _svg_9wjj3m,
//                               allowDrawingOutsideViewBox: true,
//                               fit: BoxFit.fill,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Pinned.fromSize(
//                       bounds: Rect.fromLTWH(319.0, 18.0, 10.0, 10.0),
//                       size: Size(349.0, 45.0),
//                       pinRight: true,
//                       fixedWidth: true,
//                       fixedHeight: true,
//                       child: Transform.rotate(
//                         angle: 1.5708,
//                         child: Stack(
//                           children: <Widget>[
//                             Pinned.fromSize(
//                               bounds: Rect.fromLTWH(0.6, 1.9, 9.4, 6.1),
//                               size: Size(10.0, 10.0),
//                               pinLeft: true,
//                               pinRight: true,
//                               pinTop: true,
//                               pinBottom: true,
//                               child: SvgPicture.string(
//                                 _svg_5aru5n,
//                                 allowDrawingOutsideViewBox: true,
//                                 fit: BoxFit.fill,
//                               ),
//                             ),
//                             Pinned.fromSize(
//                               bounds: Rect.fromLTWH(0.0, 0.0, 10.0, 10.0),
//                               size: Size(10.0, 10.0),
//                               pinLeft: true,
//                               pinRight: true,
//                               pinTop: true,
//                               pinBottom: true,
//                               child: Container(
//                                 decoration: BoxDecoration(),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     GestureDetector(
//                       onTap: () async {
//                         try {
//                           await FirebaseAuth.instance.signOut();
//                           SharedPreferences prefs =
//                           await SharedPreferences.getInstance();
//                           prefs.setBool('my_bool_key', false);
//                           Navigator.of(context).pushReplacementNamed('/SignIn');
//                         } catch (e) {
//                           print(e);
//                           print('there was some error logging you out');
//                         }
//                       },
//                       child: Pinned.fromSize(
//                         bounds: Rect.fromLTWH(23.0, 9.0, 69.0, 25.0),
//                         size: Size(349.0, 45.0),
//                         fixedWidth: true,
//                         fixedHeight: true,
//                         child: Text(
//                           'Log Out',
//                           style: TextStyle(
//                             fontFamily: 'Poppins',
//                             fontSize: 18,
//                             color: const Color(0xbfff0000),
//                             fontWeight: FontWeight.w500,
//                           ),
//                           textAlign: TextAlign.left,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 30,
//             top: 290,
//             child: PageLink(
//               links: [
//                 PageLinkInfo(
//                   transition: LinkTransition.Fade,
//                   ease: Curves.easeOut,
//                   duration: 0.3,
//                   pageBuilder: () => ForgotPassword(),
//                 ),
//               ],
//               child: SizedBox(
//                 width: 349.0,
//                 height: 45.0,
//                 child: Stack(
//                   children: <Widget>[
//                     Pinned.fromSize(
//                       bounds: Rect.fromLTWH(0.0, 0.0, 349.0, 45.0),
//                       size: Size(349.0, 45.0),
//                       pinLeft: true,
//                       pinRight: true,
//                       pinTop: true,
//                       pinBottom: true,
//                       child: Stack(
//                         children: <Widget>[
//                           Pinned.fromSize(
//                             bounds: Rect.fromLTWH(0.0, 0.0, 349.0, 45.0),
//                             size: Size(349.0, 45.0),
//                             pinLeft: true,
//                             pinRight: true,
//                             pinTop: true,
//                             pinBottom: true,
//                             child: SvgPicture.string(
//                               _svg_feqhip,
//                               allowDrawingOutsideViewBox: true,
//                               fit: BoxFit.fill,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Pinned.fromSize(
//                       bounds: Rect.fromLTWH(25.0, 10.0, 165.0, 25.0),
//                       size: Size(349.0, 45.0),
//                       fixedWidth: true,
//                       fixedHeight: true,
//                       child: Text(
//                         'Change Password',
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           fontSize: 18,
//                           color: const Color(0xff404040),
//                           fontWeight: FontWeight.w500,
//                         ),
//                         textAlign: TextAlign.left,
//                       ),
//                     ),
//                     Pinned.fromSize(
//                       bounds: Rect.fromLTWH(319.0, 18.0, 10.0, 10.0),
//                       size: Size(349.0, 45.0),
//                       pinRight: true,
//                       fixedWidth: true,
//                       fixedHeight: true,
//                       child: Transform.rotate(
//                         angle: 1.5708,
//                         child: Stack(
//                           children: <Widget>[
//                             Pinned.fromSize(
//                               bounds: Rect.fromLTWH(0.6, 1.9, 9.4, 6.1),
//                               size: Size(10.0, 10.0),
//                               pinLeft: true,
//                               pinRight: true,
//                               pinTop: true,
//                               pinBottom: true,
//                               child: SvgPicture.string(
//                                 _svg_5aru5n,
//                                 allowDrawingOutsideViewBox: true,
//                                 fit: BoxFit.fill,
//                               ),
//                             ),
//                             Pinned.fromSize(
//                               bounds: Rect.fromLTWH(0.0, 0.0, 10.0, 10.0),
//                               size: Size(10.0, 10.0),
//                               pinLeft: true,
//                               pinRight: true,
//                               pinTop: true,
//                               pinBottom: true,
//                               child: Container(
//                                 decoration: BoxDecoration(),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 30,
//             top: 225,
//             child: SizedBox(
//               width: 349.0,
//               height: 45.0,
//               child: Stack(
//                 children: <Widget>[
//                   Pinned.fromSize(
//                     bounds: Rect.fromLTWH(0.0, 0.0, 349.0, 45.0),
//                     size: Size(349.0, 45.0),
//                     pinLeft: true,
//                     pinRight: true,
//                     pinTop: true,
//                     pinBottom: true,
//                     child: SvgPicture.string(
//                       _svg_w7aonn,
//                       allowDrawingOutsideViewBox: true,
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                   Pinned.fromSize(
//                     bounds: Rect.fromLTWH(25.0, 10.0, 178.0, 25.0),
//                     size: Size(349.0, 45.0),
//                     fixedWidth: true,
//                     fixedHeight: true,
//                     child: Text(
//                       'Terms & Conditions',
//                       style: TextStyle(
//                         fontFamily: 'Poppins',
//                         fontSize: 18,
//                         color: const Color(0xff404040),
//                         fontWeight: FontWeight.w500,
//                       ),
//                       textAlign: TextAlign.left,
//                     ),
//                   ),
//                   Pinned.fromSize(
//                     bounds: Rect.fromLTWH(319.0, 20.0, 10.0, 10.0),
//                     size: Size(349.0, 45.0),
//                     pinRight: true,
//                     fixedWidth: true,
//                     fixedHeight: true,
//                     child: Transform.rotate(
//                       angle: 1.5708,
//                       child: Stack(
//                         children: <Widget>[
//                           Pinned.fromSize(
//                             bounds: Rect.fromLTWH(0.6, 1.9, 9.4, 6.1),
//                             size: Size(10.0, 10.0),
//                             pinLeft: true,
//                             pinRight: true,
//                             pinTop: true,
//                             pinBottom: true,
//                             child: SvgPicture.string(
//                               _svg_5aru5n,
//                               allowDrawingOutsideViewBox: true,
//                               fit: BoxFit.fill,
//                             ),
//                           ),
//                           Pinned.fromSize(
//                             bounds: Rect.fromLTWH(0.0, 0.0, 10.0, 10.0),
//                             size: Size(10.0, 10.0),
//                             pinLeft: true,
//                             pinRight: true,
//                             pinTop: true,
//                             pinBottom: true,
//                             child: Container(
//                               decoration: BoxDecoration(),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             left: 30,
//             top: 160,
//             child: PageLink(
//               links: [
//                 PageLinkInfo(
//                   transition: LinkTransition.Fade,
//                   ease: Curves.easeOut,
//                   duration: 0.3,
//                   pageBuilder: () => PrivacyPolicy(),
//                 ),
//               ],
//               child: SizedBox(
//                 width: 349.0,
//                 height: 45.0,
//                 child: Stack(
//                   children: <Widget>[
//                     Pinned.fromSize(
//                       bounds: Rect.fromLTWH(0.0, 0.0, 349.0, 45.0),
//                       size: Size(349.0, 45.0),
//                       pinLeft: true,
//                       pinRight: true,
//                       pinTop: true,
//                       pinBottom: true,
//                       child: Stack(
//                         children: <Widget>[
//                           Pinned.fromSize(
//                             bounds: Rect.fromLTWH(0.0, 0.0, 349.0, 45.0),
//                             size: Size(349.0, 45.0),
//                             pinLeft: true,
//                             pinRight: true,
//                             pinTop: true,
//                             pinBottom: true,
//                             child: SvgPicture.string(
//                               _svg_feqhip,
//                               allowDrawingOutsideViewBox: true,
//                               fit: BoxFit.fill,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Pinned.fromSize(
//                       bounds: Rect.fromLTWH(319.0, 20.0, 10.0, 10.0),
//                       size: Size(349.0, 45.0),
//                       pinRight: true,
//                       fixedWidth: true,
//                       fixedHeight: true,
//                       child: Transform.rotate(
//                         angle: 1.5708,
//                         child: Stack(
//                           children: <Widget>[
//                             Pinned.fromSize(
//                               bounds: Rect.fromLTWH(0.6, 1.9, 9.4, 6.1),
//                               size: Size(10.0, 10.0),
//                               pinLeft: true,
//                               pinRight: true,
//                               pinTop: true,
//                               pinBottom: true,
//                               child: SvgPicture.string(
//                                 _svg_5aru5n,
//                                 allowDrawingOutsideViewBox: true,
//                                 fit: BoxFit.fill,
//                               ),
//                             ),
//                             Pinned.fromSize(
//                               bounds: Rect.fromLTWH(0.0, 0.0, 10.0, 10.0),
//                               size: Size(10.0, 10.0),
//                               pinLeft: true,
//                               pinRight: true,
//                               pinTop: true,
//                               pinBottom: true,
//                               child: Container(
//                                 decoration: BoxDecoration(),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Pinned.fromSize(
//                       bounds: Rect.fromLTWH(31.0, 10.0, 124.0, 25.0),
//                       size: Size(349.0, 45.0),
//                       fixedWidth: true,
//                       fixedHeight: true,
//                       child: Text(
//                         'Privacy Policy',
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           fontSize: 18,
//                           color: const Color(0xff404040),
//                           fontWeight: FontWeight.w500,
//                         ),
//                         textAlign: TextAlign.left,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 25,
//             top: 110,
//             child: Text(
//               'Settings',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 22,
//                 color: const Color(0xff404040),
//                 fontWeight: FontWeight.w700,
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           Positioned(
//             left: 173,
//             top: 39,
//             child: Container(
//               width: 64.0,
//               height: 37.0,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: const AssetImage('assets/Sync Logo.png'),
//                   fit: BoxFit.fill,
//                   colorFilter: new ColorFilter.mode(
//                       Colors.black.withOpacity(0.7), BlendMode.dstIn),
//                 ),
//                 boxShadow: [
//                   BoxShadow(
//                     color: const Color(0x45000000),
//                     offset: Offset(0, 3),
//                     blurRadius: 80,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             left: 0,
//             top: 35,
//             child: FlatButton(
//               onPressed: () async {
//                 dynamic result = await Navigator.pushNamed(context, '/');
//               },
//               child: SizedBox(
//                 width: 13.0,
//                 height: 18.0,
//                 child: Stack(
//                   children: <Widget>[
//                     Pinned.fromSize(
//                       bounds: Rect.fromLTWH(0.0, 0.0, 12.6, 18.0),
//                       size: Size(12.6, 18.0),
//                       pinLeft: true,
//                       pinRight: true,
//                       pinTop: true,
//                       pinBottom: true,
//                       child:
//                       // Adobe XD layer: 'Back Arrow' (shape)
//                       SvgPicture.string(
//                         _svg_nytea6,
//                         allowDrawingOutsideViewBox: true,
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class Settings extends StatefulWidget {
  const Settings({Key key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 30,
        backgroundColor: const Color(0xffffffff),
      ),
      body: Column(
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
            padding: EdgeInsets.fromLTRB(13, 20, 0, 10),
            child: Text(
              'Settings',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 22,
                color: const Color(0xff404040),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
            child: GestureDetector(
              onTap: () async{
                dynamic result = await Navigator.pushNamed(context, '/PrivacyPolicy');
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 45.0,
                child: Stack(
                  children: [
                    SvgPicture.string(
                      _svg_feqhip,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Privacy Policy',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                color: const Color(0xff404040),
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Transform.rotate(
                              angle: 1.5708,
                              child: SvgPicture.string(
                                _svg_5aru5n,
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
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
            child: GestureDetector(
              onTap: () async{
                dynamic result = await Navigator.pushNamed(context, '/TermsAndConditions');
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 45.0,
                child: Stack(
                  children: [
                    SvgPicture.string(
                      _svg_feqhip,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Terms & Conditions',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                color: const Color(0xff404040),
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Transform.rotate(
                              angle: 1.5708,
                              child: SvgPicture.string(
                                _svg_5aru5n,
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
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
            child: GestureDetector(
              onTap: () async{
                dynamic result = await Navigator.pushNamed(context, '/ForgotPassword');
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 45.0,
                child: Stack(
                  children: [
                    SvgPicture.string(
                      _svg_feqhip,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Change Password',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                color: const Color(0xff404040),
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Transform.rotate(
                              angle: 1.5708,
                              child: SvgPicture.string(
                                _svg_5aru5n,
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
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: GestureDetector(
              onTap: () async{
                try {
                  await FirebaseAuth.instance.signOut();
                  SharedPreferences prefs =
                  await SharedPreferences.getInstance();
                  prefs.setBool('my_bool_key', false);
                  Navigator.of(context).pushReplacementNamed('/SignIn');
                } catch (e) {
                  print(e);
                  print('there was some error logging you out');
                }
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 45.0,
                child: Stack(
                  children: [
                    SvgPicture.string(
                      _svg_feqhip,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Log Out',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                color: const Color(0xbfff0000),
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Transform.rotate(
                              angle: 1.5708,
                              child: SvgPicture.string(
                                _svg_5aru5n,
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
            ),
          ),
        ],
      ),
    );
  }
}


const String _svg_9wjj3m =
    '<svg viewBox="0.0 0.0 349.0 45.0" ><path transform="translate(0.0, 0.0)" d="M 22.5 2.842170943040401e-14 L 326.5 2.842170943040401e-14 C 338.9264221191406 2.842170943040401e-14 349 10.07359218597412 349 22.5 C 349 34.92640686035156 338.9264221191406 45 326.5 45 L 22.5 45 C 10.07359218597412 45 -7.105427357601002e-15 34.92640686035156 -7.105427357601002e-15 22.5 C -7.105427357601002e-15 10.07359218597412 10.07359218597412 2.842170943040401e-14 22.5 2.842170943040401e-14 Z" fill="#9d9d9d" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_5aru5n =
    '<svg viewBox="0.6 1.9 9.4 6.1" ><path transform="translate(0.6, 1.9)" d="M 4.699999809265137 0 L 9.399999618530273 4.700000286102295 L 8 6.100000381469727 L 4.699999809265137 2.800000190734863 L 1.399999618530273 6.100000381469727 L 0 4.700000286102295 L 4.699999809265137 0 Z" fill="#404040" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_feqhip =
    '<svg viewBox="0.0 0.0 349.0 45.0" ><path transform="translate(0.0, 0.0)" d="M 22.5 0 L 326.5 0 C 338.9264221191406 0 349 10.07359218597412 349 22.5 C 349 34.92640686035156 338.9264221191406 45 326.5 45 L 22.5 45 C 10.07359218597412 45 0 34.92640686035156 0 22.5 C 0 10.07359218597412 10.07359218597412 0 22.5 0 Z" fill="#9d9d9d" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_w7aonn =
    '<svg viewBox="30.0 310.0 349.0 45.0" ><path transform="translate(30.0, 310.0)" d="M 22.5 0 L 326.5 0 C 338.9264221191406 0 349 10.07359218597412 349 22.5 C 349 34.92640686035156 338.9264221191406 45 326.5 45 L 22.5 45 C 10.07359218597412 45 0 34.92640686035156 0 22.5 C 0 10.07359218597412 10.07359218597412 0 22.5 0 Z" fill="#9d9d9d" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_nytea6 =
    '<svg viewBox="2.0 0.0 12.6 18.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="matrix(0.0, 1.0, -1.0, 0.0, 14.56, 0.0)" d="M 8.999999046325684 12.56341361999512 L 0 2.883406400680542 L 2.680851221084595 0 L 8.999999046325684 6.796600818634033 L 15.31914710998535 0 L 18 2.883406400680542 L 8.999999046325684 12.56341361999512 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ah28f4 =
    '<svg viewBox="32.0 48.0 12.6 18.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="matrix(0.0, 1.0, -1.0, 0.0, 44.56, 48.0)" d="M 8.999999046325684 12.56341361999512 L 0 2.883406400680542 L 2.680851221084595 0 L 8.999999046325684 6.796600818634033 L 15.31914710998535 0 L 18 2.883406400680542 L 8.999999046325684 12.56341361999512 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
