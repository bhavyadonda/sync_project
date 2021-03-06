import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './ClubDetails.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'methods.dart';


class Clubs extends StatefulWidget {

  @override
  _ClubsState createState() => _ClubsState();
}

class _ClubsState extends State<Clubs> {

  String uid;
  String clubkey;
  List followdata;
// change user data - it is not a list
  getdata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    uid = prefs.getString('uid');
    Map data = json.decode(prefs.getString('clubs'));
    Map userdata = json.decode(prefs.getString('userData'));
    setState(() {
      followdata = userdata['following'].values.toList();
    });

    print(followdata);

    clubkey = prefs.getString('clubdetails');

    return data;
  }

  Query _ref;
  DatabaseReference reference =
  FirebaseDatabase.instance.reference().child('Club');


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
    _ref = FirebaseDatabase.instance
        .reference()
        .child('clubs')
        .orderByChild('name');
        print(_ref);
  }

  // followState() async {
  //   _ref = FirebaseDatabase.instance
  //       .reference()
  //       .child('users')
  //       .orderByChild('name');
  // }

  // Widget followButton ({Map users}){
  //
  // }

  Widget _buildClubItem({Map clubs}) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 158.0,
            width: MediaQuery.of(context).size.width * 0.93,
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
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap:()async{
                                print(clubs['key']);
                                SharedPreferences prefs = await SharedPreferences.getInstance();
                                prefs.setString('clubdetails', clubs['key']);
                                Navigator.of(context).pushNamed('/ClubDetails');
                              },
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    height: 55,
                                    width: 55,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
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
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: const AssetImage('assets/Tech Club Logo Big.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: ()async{
                                    print(clubs['key']);
                                    SharedPreferences prefs = await SharedPreferences.getInstance();
                                    prefs.setString('clubdetails', clubs['key']);
                                    Navigator.of(context).pushNamed('/ClubDetails');
                                  },
                                  child: Text(
                                    clubs['Clubname'],
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                      color: const Color(0xff404040),
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Text(
                                  clubs['Clubinfo'],
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 13,
                                    color: const Color(0xff9d9d9d),
                                    fontWeight: FontWeight.w500,
                                    height: 1.1666666666666667,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () async {
                            SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                            Map userdata =
                            json.decode(prefs.getString('userData'));
                            final databaseReference =
                            FirebaseDatabase.instance.reference();

                            if (userdata.keys
                                .toList()
                                .contains('following')) {
                              if (userdata['following']
                                  .values
                                  .toList()
                                  .contains(clubkey)) {
                                showLoaderDialog(context, "unfollowing...");

                                await databaseReference
                                    .child("users/" + uid + '/following')
                                    .child(clubkey)
                                    .remove();
                                userdata['following'].remove(clubkey);
                                setState(() {
                                  followdata.remove(clubs['Clubname']);
                                  //print(followdata);
                                });

                                Navigator.pop(context);
                                showAlertDialog(
                                    context,
                                    '',
                                    'unfollowed Successfully',
                                    'You will now not be notified for the club.');
                              } else {
                                showLoaderDialog(context, "following...");
                                await databaseReference
                                    .child("users/" + uid + '/following')
                                    .child(clubkey)
                                    .set(clubkey);
                                userdata['following'][clubkey] = clubkey;
                                setState(() {
                                  followdata.add(clubs['Clubname']);
                                  //print(followdata);
                                });

                                Navigator.pop(context);
                                showAlertDialog(
                                    context,
                                    '',
                                    'following Created Successfully',
                                    'You will now be notified for the club.');
                              }

                              prefs.setString(
                                  'userData', json.encode(userdata));
                            } else {
                              showLoaderDialog(context, "following...");
                              await databaseReference
                                  .child("users/" + uid + '/following')
                                  .child(clubkey)
                                  .set(clubkey);
                              if (userdata['following'] == null) {
                                userdata['following'] = {};
                                userdata['following'][clubkey] = clubkey;
                              }
                              userdata['following'][clubkey] = clubkey;

                              Navigator.pop(context);
                              showAlertDialog(context, '/Home', ' following',
                                  'You will now be notified for the club.');
                            }

                            prefs.setString(
                                'userData', json.encode(userdata));
                          },
                          child: followdata.contains(clubs['Clubname']) ?
                          Container(
                            width: 87.0,
                            height: 28.0,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(30.0),
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
                            child: Center(
                              child: Text(
                                'Following',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ) :
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              SvgPicture.string(
                                _svg_k2ckhg,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                              Text(
                                'Follow',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 11,
                                  color: const Color(0xff404040),
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 80,
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
                            clubs['Aboutclub'],
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
                ],
              ),
            ),
          ),
          // SizedBox(
          //   width: 385.0,
          //   height: 158.0,
          //   child: Stack(
          //     children: <Widget>[
          //       Pinned.fromSize(
          //         bounds: Rect.fromLTWH(0.0, 0.0, 349.0, 158.0),
          //         size: Size(349.0, 158.0),
          //         pinLeft: true,
          //         pinRight: true,
          //         pinTop: true,
          //         pinBottom: true,
          //         child:
          //         // Adobe XD layer: 'Club Rectangle' (shape)
          //         Container(
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(20.0),
          //             color: const Color(0xffffffff),
          //             boxShadow: [
          //               BoxShadow(
          //                 color: const Color(0x26000000),
          //                 offset: Offset(0, 5),
          //                 blurRadius: 10,
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),
          //       Pinned.fromSize(
          //         bounds: Rect.fromLTWH(8.0, 74.0, 320.0, 67.0),
          //         size: Size(349.0, 158.0),
          //         pinLeft: true,
          //         pinRight: true,
          //         pinBottom: true,
          //         fixedHeight: true,
          //         child: Text.rich(
          //           TextSpan(
          //             style: TextStyle(
          //               fontFamily: 'Poppins',
          //               fontSize: 15,
          //               color: const Color(0xff9d9d9d),
          //             ),
          //             children: [
          //               TextSpan(
          //                 text:
          //                 clubs['Aboutclub'],
          //               ),
          //               TextSpan(
          //                 text: 'Learn More..',
          //                 style: TextStyle(
          //                   color: const Color(0xfffe4f70),
          //                   fontWeight: FontWeight.w600,
          //                 ),
          //               ),
          //             ],
          //           ),
          //           textAlign: TextAlign.left,
          //         ),
          //       ),
          //       Pinned.fromSize(
          //         bounds: Rect.fromLTWH(252.0, 23.0, 87.0, 27.5),
          //         size: Size(349.0, 158.0),
          //         pinRight: true,
          //         pinTop: true,
          //         fixedWidth: true,
          //         fixedHeight: true,
          //         child: Stack(
          //           children: <Widget>[
          //           Pinned.fromSize(
          //             bounds: Rect.fromLTWH(0.0, 0.0, 87.0, 27.5),
          //             size: Size(87.0, 27.5),
          //             pinLeft: true,
          //             pinRight: true,
          //             pinTop: true,
          //             pinBottom: true,
          //             child: Container(
          //               decoration: BoxDecoration(
          //                     borderRadius: BorderRadius.circular(30.0),
          //                     gradient: LinearGradient(
          //                     begin: Alignment(-0.97, -0.82),
          //                     end: Alignment(0.97, 0.79),
          //                     colors: [
          //                       const Color(0xfffe4f70),
          //                       const Color(0xffcb6bd8)
          //                     ],
          //                    stops: [0.0, 1.0],
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           Pinned.fromSize(
          //             bounds: Rect.fromLTWH(15.0, 6.0, 73.0, 16.0),
          //             size: Size(87.0, 27.5),
          //             child: Text(
          //               'Following',
          //              style: TextStyle(
          //              fontFamily: 'Poppins',
          //              fontSize: 13,
          //              color: const Color(0xffffffff),
          //              fontWeight: FontWeight.w600,
          //             ),
          //            textAlign: TextAlign.left,
          //           ),
          //         ),
          //       ],
          //     ),// 'Follow' Button below
          //         // Stack(
          //         //   alignment: Alignment.center,
          //         //   children: [
          //         //     Text(
          //         //       'Follow',
          //         //       style: TextStyle(
          //         //         fontFamily: 'Poppins',
          //         //         fontSize: 11,
          //         //         color: const Color(0xff404040),
          //         //         fontWeight: FontWeight.w600,
          //         //       ),
          //         //       textAlign: TextAlign.left,
          //         //     ),
          //         //     SvgPicture.string(
          //         //       _svg_k2ckhg,
          //         //       allowDrawingOutsideViewBox: true,
          //         //       fit: BoxFit.fill,
          //         //     ),
          //         //   ],
          //         // ),
          //   ),
          //       Pinned.fromSize(
          //         bounds: Rect.fromLTWH(50.0, 42.0, 204.0, 17.0),
          //         size: Size(349.0, 158.0),
          //         fixedWidth: true,
          //         fixedHeight: true,
          //         child: Text(
          //           clubs['Clubinfo'],
          //           style: TextStyle(
          //             fontFamily: 'Poppins',
          //             fontSize: 13,
          //             color: const Color(0xff9d9d9d),
          //             fontWeight: FontWeight.w500,
          //             height: 1.1666666666666667,
          //           ),
          //           textAlign: TextAlign.center,
          //         ),
          //       ),
          //       Pinned.fromSize(
          //         bounds: Rect.fromLTWH(68.0, 14.0, 143.0, 28.0),
          //         size: Size(349.0, 158.0),
          //         pinTop: true,
          //         fixedWidth: true,
          //         fixedHeight: true,
          //         child: GestureDetector(
          //           onTap: ()async{
          //             print(clubs['key']);
          //             SharedPreferences prefs = await SharedPreferences.getInstance();
          //             prefs.setString('clubdetails', clubs['key']);
          //             Navigator.of(context).pushNamed('/ClubDetails');
          //               },
          //          child: Text(
          //             clubs['Clubname'],
          //             style: TextStyle(
          //               fontFamily: 'Poppins',
          //               fontSize: 20,
          //               color: const Color(0xff404040),
          //               fontWeight: FontWeight.w600,
          //             ),
          //             textAlign: TextAlign.left,
          //           ),
          //         ),
          //       ),
          //       Pinned.fromSize(
          //         bounds: Rect.fromLTWH(8.0, 9.0, 55.0, 55.0),
          //         size: Size(349.0, 158.0),
          //         pinLeft: true,
          //         pinTop: true,
          //         fixedWidth: true,
          //         fixedHeight: true,
          //         child:
          //         // Adobe XD layer: 'Club Logo' (group)
          //         GestureDetector(
          //           onTap:()async{
          //             print(clubs['key']);
          //             SharedPreferences prefs = await SharedPreferences.getInstance();
          //             prefs.setString('clubdetails', clubs['key']);
          //             Navigator.of(context).pushNamed('/ClubDetails');
          //           },
          //             child: Stack(
          //             children: <Widget>[
          //               Pinned.fromSize(
          //                 bounds: Rect.fromLTWH(0.0, 0.0, 55.0, 55.0),
          //                 size: Size(55.0, 55.0),
          //                 pinLeft: true,
          //                 pinRight: true,
          //                 pinTop: true,
          //                 pinBottom: true,
          //                 child:
          //                 // Adobe XD layer: 'Logo Circle' (shape)
          //                 Container(
          //                   decoration: BoxDecoration(
          //                     borderRadius: BorderRadius.all(
          //                         Radius.elliptical(9999.0, 9999.0)),
          //                     color: const Color(0xffffffff),
          //                     boxShadow: [
          //                       BoxShadow(
          //                         color: const Color(0x29000000),
          //                         offset: Offset(0, 3),
          //                         blurRadius: 6,
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //               Pinned.fromSize(
          //                 bounds: Rect.fromLTWH(5.0, 5.0, 45.0, 45.0),
          //                 size: Size(55.0, 55.0),
          //                 pinLeft: true,
          //                 pinRight: true,
          //                 pinTop: true,
          //                 pinBottom: true,
          //                 child:
          //                 // Adobe XD layer: 'Tech Club Logo' (shape)
          //                 Container(
          //                   decoration: BoxDecoration(
          //                     image: DecorationImage(
          //                       image: const AssetImage('assets/Tech Club Logo Big.png'),
          //                       fit: BoxFit.fill,
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // final clubs = FutureBuilder(
    //   future: getdata(),
    //     builder: (context, AsyncSnapshot snapshot) {
    //       if (snapshot.hasData) {
    //         Map<dynamic, dynamic> clubs = snapshot.data['subEvents'];
    //         return Padding(
    //           padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               Container(
    //                 height: 158.0,
    //                 width: MediaQuery.of(context).size.width * 0.93,
    //                 decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(20.0),
    //                   color: const Color(0xffffffff),
    //                   boxShadow: [
    //                     BoxShadow(
    //                       color: const Color(0x26000000),
    //                       offset: Offset(0, 5),
    //                       blurRadius: 10,
    //                     ),
    //                   ],
    //                 ),
    //                 child: Padding(
    //                   padding: const EdgeInsets.all(10),
    //                   child: Column(
    //                     children: [
    //                       Stack(
    //                         alignment: Alignment.center,
    //                         children: [
    //                           Container(
    //                             alignment: Alignment.centerLeft,
    //                             child: Row(
    //                               children: [
    //                                 GestureDetector(
    //                                   onTap:()async{
    //                                     print(clubs['key']);
    //                                     SharedPreferences prefs = await SharedPreferences.getInstance();
    //                                     prefs.setString('clubdetails', clubs['key']);
    //                                     Navigator.of(context).pushNamed('/ClubDetails');
    //                                   },
    //                                   child: Stack(
    //                                     alignment: Alignment.center,
    //                                     children: [
    //                                       Container(
    //                                         height: 55,
    //                                         width: 55,
    //                                         decoration: BoxDecoration(
    //                                           borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
    //                                           color: const Color(0xffffffff),
    //                                           boxShadow: [
    //                                             BoxShadow(
    //                                               color: const Color(0x29000000),
    //                                               offset: Offset(0, 3),
    //                                               blurRadius: 6,
    //                                             ),
    //                                           ],
    //                                         ),
    //                                       ),
    //                                       Container(
    //                                         height: 45,
    //                                         width: 45,
    //                                         decoration: BoxDecoration(
    //                                           image: DecorationImage(
    //                                             image: const AssetImage('assets/Tech Club Logo Big.png'),
    //                                             fit: BoxFit.fill,
    //                                           ),
    //                                         ),
    //                                       ),
    //                                     ],
    //                                   ),
    //                                 ),
    //                                 SizedBox(
    //                                   width: MediaQuery.of(context).size.width * 0.03,
    //                                 ),
    //                                 Column(
    //                                   crossAxisAlignment: CrossAxisAlignment.start,
    //                                   children: [
    //                                     GestureDetector(
    //                                       onTap: ()async{
    //                                         print(clubs['key']);
    //                                         SharedPreferences prefs = await SharedPreferences.getInstance();
    //                                         prefs.setString('clubdetails', clubs['key']);
    //                                         Navigator.of(context).pushNamed('/ClubDetails');
    //                                       },
    //                                       child: Text(
    //                                         clubs['Clubname'],
    //                                         style: TextStyle(
    //                                           fontFamily: 'Poppins',
    //                                           fontSize: 20,
    //                                           color: const Color(0xff404040),
    //                                           fontWeight: FontWeight.w600,
    //                                         ),
    //                                         textAlign: TextAlign.left,
    //                                       ),
    //                                     ),
    //                                     Text(
    //                                       clubs['Clubinfo'],
    //                                       style: TextStyle(
    //                                         fontFamily: 'Poppins',
    //                                         fontSize: 13,
    //                                         color: const Color(0xff9d9d9d),
    //                                         fontWeight: FontWeight.w500,
    //                                         height: 1.1666666666666667,
    //                                       ),
    //                                       textAlign: TextAlign.center,
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ],
    //                             ),
    //                           ),
    //                           Container(
    //                             alignment: Alignment.centerRight,
    //                             child: GestureDetector(
    //                               onTap: () async {
    //                                 SharedPreferences prefs =
    //                                 await SharedPreferences.getInstance();
    //                                 Map userdata =
    //                                 json.decode(prefs.getString('userData'));
    //                                 final databaseReference =
    //                                 FirebaseDatabase.instance.reference();
    //
    //                                 if (userdata.keys
    //                                     .toList()
    //                                     .contains('following')) {
    //                                   if (userdata['following']
    //                                       .values
    //                                       .toList()
    //                                       .contains(clubkey)) {
    //                                     showLoaderDialog(context, "unfollowing...");
    //
    //                                     await databaseReference
    //                                         .child("users/" + uid + '/following')
    //                                         .child(clubkey)
    //                                         .remove();
    //                                     userdata['following'].remove(clubkey);
    //                                     setState(() {
    //                                       following = !following;
    //                                     });
    //
    //                                     Navigator.pop(context);
    //                                     showAlertDialog(
    //                                         context,
    //                                         '',
    //                                         'unfollowed Successfully',
    //                                         'You will now not be notified for the club.');
    //                                   } else {
    //                                     showLoaderDialog(context, "following...");
    //                                     await databaseReference
    //                                         .child("users/" + uid + '/following')
    //                                         .child(clubkey)
    //                                         .set(clubkey);
    //                                     userdata['following'][clubkey] = clubkey;
    //                                     setState(() {
    //                                       following = !following;
    //                                     });
    //
    //                                     Navigator.pop(context);
    //                                     showAlertDialog(
    //                                         context,
    //                                         '',
    //                                         'following Created Successfully',
    //                                         'You will now be notified for the club.');
    //                                   }
    //
    //                                   prefs.setString(
    //                                       'userData', json.encode(userdata));
    //                                 } else {
    //                                   showLoaderDialog(context, "following...");
    //                                   await databaseReference
    //                                       .child("users/" + uid + '/following')
    //                                       .child(clubkey)
    //                                       .set(clubkey);
    //                                   if (userdata['following'] == null) {
    //                                     userdata['following'] = {};
    //                                     userdata['following'][clubkey] = clubkey;
    //                                   }
    //                                   userdata['following'][clubkey] = clubkey;
    //
    //                                   Navigator.pop(context);
    //                                   showAlertDialog(context, '/Home', ' following',
    //                                       'You will now be notified for the club.');
    //                                 }
    //
    //                                 prefs.setString(
    //                                     'userData', json.encode(userdata));
    //                               },
    //                               child: following == true ?
    //                               Container(
    //                                 width: 87.0,
    //                                 height: 28.0,
    //                                 decoration: BoxDecoration(
    //                                   borderRadius:
    //                                   BorderRadius.circular(30.0),
    //                                   gradient: LinearGradient(
    //                                     begin: Alignment(-0.97, -0.82),
    //                                     end: Alignment(0.97, 0.79),
    //                                     colors: [
    //                                       const Color(0xfffe4f70),
    //                                       const Color(0xffcb6bd8)
    //                                     ],
    //                                     stops: [0.0, 1.0],
    //                                   ),
    //                                 ),
    //                                 child: Center(
    //                                   child: Text(
    //                                     'Following',
    //                                     style: TextStyle(
    //                                       fontFamily: 'Poppins',
    //                                       fontSize: 12,
    //                                       color: const Color(0xffffffff),
    //                                       fontWeight: FontWeight.w700,
    //                                     ),
    //                                     textAlign: TextAlign.left,
    //                                   ),
    //                                 ),
    //                               ) :
    //                               Stack(
    //                                 alignment: Alignment.center,
    //                                 children: [
    //                                   SvgPicture.string(
    //                                     _svg_k2ckhg,
    //                                     allowDrawingOutsideViewBox: true,
    //                                     fit: BoxFit.fill,
    //                                   ),
    //                                   Text(
    //                                     'Follow',
    //                                     style: TextStyle(
    //                                       fontFamily: 'Poppins',
    //                                       fontSize: 11,
    //                                       color: const Color(0xff404040),
    //                                       fontWeight: FontWeight.w600,
    //                                     ),
    //                                     textAlign: TextAlign.left,
    //                                   ),
    //                                 ],
    //                               ),
    //                             ),
    //                           ),
    //                         ],
    //                       ),
    //                       Container(
    //                         height: 80,
    //                         child: Text.rich(
    //                           TextSpan(
    //                             style: TextStyle(
    //                               fontFamily: 'Poppins',
    //                               fontSize: 15,
    //                               color: const Color(0xff9d9d9d),
    //                             ),
    //                             children: [
    //                               TextSpan(
    //                                 text:
    //                                 clubs['Aboutclub'],
    //                               ),
    //                               TextSpan(
    //                                 text: 'Learn More..',
    //                                 style: TextStyle(
    //                                   color: const Color(0xfffe4f70),
    //                                   fontWeight: FontWeight.w600,
    //                                 ),
    //                               ),
    //                             ],
    //                           ),
    //                           textAlign: TextAlign.left,
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //               // SizedBox(
    //               //   width: 385.0,
    //               //   height: 158.0,
    //               //   child: Stack(
    //               //     children: <Widget>[
    //               //       Pinned.fromSize(
    //               //         bounds: Rect.fromLTWH(0.0, 0.0, 349.0, 158.0),
    //               //         size: Size(349.0, 158.0),
    //               //         pinLeft: true,
    //               //         pinRight: true,
    //               //         pinTop: true,
    //               //         pinBottom: true,
    //               //         child:
    //               //         // Adobe XD layer: 'Club Rectangle' (shape)
    //               //         Container(
    //               //           decoration: BoxDecoration(
    //               //             borderRadius: BorderRadius.circular(20.0),
    //               //             color: const Color(0xffffffff),
    //               //             boxShadow: [
    //               //               BoxShadow(
    //               //                 color: const Color(0x26000000),
    //               //                 offset: Offset(0, 5),
    //               //                 blurRadius: 10,
    //               //               ),
    //               //             ],
    //               //           ),
    //               //         ),
    //               //       ),
    //               //       Pinned.fromSize(
    //               //         bounds: Rect.fromLTWH(8.0, 74.0, 320.0, 67.0),
    //               //         size: Size(349.0, 158.0),
    //               //         pinLeft: true,
    //               //         pinRight: true,
    //               //         pinBottom: true,
    //               //         fixedHeight: true,
    //               //         child: Text.rich(
    //               //           TextSpan(
    //               //             style: TextStyle(
    //               //               fontFamily: 'Poppins',
    //               //               fontSize: 15,
    //               //               color: const Color(0xff9d9d9d),
    //               //             ),
    //               //             children: [
    //               //               TextSpan(
    //               //                 text:
    //               //                 clubs['Aboutclub'],
    //               //               ),
    //               //               TextSpan(
    //               //                 text: 'Learn More..',
    //               //                 style: TextStyle(
    //               //                   color: const Color(0xfffe4f70),
    //               //                   fontWeight: FontWeight.w600,
    //               //                 ),
    //               //               ),
    //               //             ],
    //               //           ),
    //               //           textAlign: TextAlign.left,
    //               //         ),
    //               //       ),
    //               //       Pinned.fromSize(
    //               //         bounds: Rect.fromLTWH(252.0, 23.0, 87.0, 27.5),
    //               //         size: Size(349.0, 158.0),
    //               //         pinRight: true,
    //               //         pinTop: true,
    //               //         fixedWidth: true,
    //               //         fixedHeight: true,
    //               //         child: Stack(
    //               //           children: <Widget>[
    //               //           Pinned.fromSize(
    //               //             bounds: Rect.fromLTWH(0.0, 0.0, 87.0, 27.5),
    //               //             size: Size(87.0, 27.5),
    //               //             pinLeft: true,
    //               //             pinRight: true,
    //               //             pinTop: true,
    //               //             pinBottom: true,
    //               //             child: Container(
    //               //               decoration: BoxDecoration(
    //               //                     borderRadius: BorderRadius.circular(30.0),
    //               //                     gradient: LinearGradient(
    //               //                     begin: Alignment(-0.97, -0.82),
    //               //                     end: Alignment(0.97, 0.79),
    //               //                     colors: [
    //               //                       const Color(0xfffe4f70),
    //               //                       const Color(0xffcb6bd8)
    //               //                     ],
    //               //                    stops: [0.0, 1.0],
    //               //                   ),
    //               //                 ),
    //               //               ),
    //               //             ),
    //               //           Pinned.fromSize(
    //               //             bounds: Rect.fromLTWH(15.0, 6.0, 73.0, 16.0),
    //               //             size: Size(87.0, 27.5),
    //               //             child: Text(
    //               //               'Following',
    //               //              style: TextStyle(
    //               //              fontFamily: 'Poppins',
    //               //              fontSize: 13,
    //               //              color: const Color(0xffffffff),
    //               //              fontWeight: FontWeight.w600,
    //               //             ),
    //               //            textAlign: TextAlign.left,
    //               //           ),
    //               //         ),
    //               //       ],
    //               //     ),// 'Follow' Button below
    //               //         // Stack(
    //               //         //   alignment: Alignment.center,
    //               //         //   children: [
    //               //         //     Text(
    //               //         //       'Follow',
    //               //         //       style: TextStyle(
    //               //         //         fontFamily: 'Poppins',
    //               //         //         fontSize: 11,
    //               //         //         color: const Color(0xff404040),
    //               //         //         fontWeight: FontWeight.w600,
    //               //         //       ),
    //               //         //       textAlign: TextAlign.left,
    //               //         //     ),
    //               //         //     SvgPicture.string(
    //               //         //       _svg_k2ckhg,
    //               //         //       allowDrawingOutsideViewBox: true,
    //               //         //       fit: BoxFit.fill,
    //               //         //     ),
    //               //         //   ],
    //               //         // ),
    //               //   ),
    //               //       Pinned.fromSize(
    //               //         bounds: Rect.fromLTWH(50.0, 42.0, 204.0, 17.0),
    //               //         size: Size(349.0, 158.0),
    //               //         fixedWidth: true,
    //               //         fixedHeight: true,
    //               //         child: Text(
    //               //           clubs['Clubinfo'],
    //               //           style: TextStyle(
    //               //             fontFamily: 'Poppins',
    //               //             fontSize: 13,
    //               //             color: const Color(0xff9d9d9d),
    //               //             fontWeight: FontWeight.w500,
    //               //             height: 1.1666666666666667,
    //               //           ),
    //               //           textAlign: TextAlign.center,
    //               //         ),
    //               //       ),
    //               //       Pinned.fromSize(
    //               //         bounds: Rect.fromLTWH(68.0, 14.0, 143.0, 28.0),
    //               //         size: Size(349.0, 158.0),
    //               //         pinTop: true,
    //               //         fixedWidth: true,
    //               //         fixedHeight: true,
    //               //         child: GestureDetector(
    //               //           onTap: ()async{
    //               //             print(clubs['key']);
    //               //             SharedPreferences prefs = await SharedPreferences.getInstance();
    //               //             prefs.setString('clubdetails', clubs['key']);
    //               //             Navigator.of(context).pushNamed('/ClubDetails');
    //               //               },
    //               //          child: Text(
    //               //             clubs['Clubname'],
    //               //             style: TextStyle(
    //               //               fontFamily: 'Poppins',
    //               //               fontSize: 20,
    //               //               color: const Color(0xff404040),
    //               //               fontWeight: FontWeight.w600,
    //               //             ),
    //               //             textAlign: TextAlign.left,
    //               //           ),
    //               //         ),
    //               //       ),
    //               //       Pinned.fromSize(
    //               //         bounds: Rect.fromLTWH(8.0, 9.0, 55.0, 55.0),
    //               //         size: Size(349.0, 158.0),
    //               //         pinLeft: true,
    //               //         pinTop: true,
    //               //         fixedWidth: true,
    //               //         fixedHeight: true,
    //               //         child:
    //               //         // Adobe XD layer: 'Club Logo' (group)
    //               //         GestureDetector(
    //               //           onTap:()async{
    //               //             print(clubs['key']);
    //               //             SharedPreferences prefs = await SharedPreferences.getInstance();
    //               //             prefs.setString('clubdetails', clubs['key']);
    //               //             Navigator.of(context).pushNamed('/ClubDetails');
    //               //           },
    //               //             child: Stack(
    //               //             children: <Widget>[
    //               //               Pinned.fromSize(
    //               //                 bounds: Rect.fromLTWH(0.0, 0.0, 55.0, 55.0),
    //               //                 size: Size(55.0, 55.0),
    //               //                 pinLeft: true,
    //               //                 pinRight: true,
    //               //                 pinTop: true,
    //               //                 pinBottom: true,
    //               //                 child:
    //               //                 // Adobe XD layer: 'Logo Circle' (shape)
    //               //                 Container(
    //               //                   decoration: BoxDecoration(
    //               //                     borderRadius: BorderRadius.all(
    //               //                         Radius.elliptical(9999.0, 9999.0)),
    //               //                     color: const Color(0xffffffff),
    //               //                     boxShadow: [
    //               //                       BoxShadow(
    //               //                         color: const Color(0x29000000),
    //               //                         offset: Offset(0, 3),
    //               //                         blurRadius: 6,
    //               //                       ),
    //               //                     ],
    //               //                   ),
    //               //                 ),
    //               //               ),
    //               //               Pinned.fromSize(
    //               //                 bounds: Rect.fromLTWH(5.0, 5.0, 45.0, 45.0),
    //               //                 size: Size(55.0, 55.0),
    //               //                 pinLeft: true,
    //               //                 pinRight: true,
    //               //                 pinTop: true,
    //               //                 pinBottom: true,
    //               //                 child:
    //               //                 // Adobe XD layer: 'Tech Club Logo' (shape)
    //               //                 Container(
    //               //                   decoration: BoxDecoration(
    //               //                     image: DecorationImage(
    //               //                       image: const AssetImage('assets/Tech Club Logo Big.png'),
    //               //                       fit: BoxFit.fill,
    //               //                     ),
    //               //                   ),
    //               //                 ),
    //               //               ),
    //               //             ],
    //               //           ),
    //               //         ),
    //               //       ),
    //               //     ],
    //               //   ),
    //               // ),
    //             ],
    //           ),
    //         );
    //       }
    //       return CircularProgressIndicator();
    //     }
    // );

    return Scaffold(
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
              'Clubs',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 22,
                color: const Color(0xff404040),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          // Expanded(
          //   child: clubs,
          // ),
          Expanded(
            child: FirebaseAnimatedList(
              query: _ref,
              itemBuilder: (BuildContext context, DataSnapshot snapshot,
                  Animation<double> animation, int index) {
                Map clubs = snapshot.value;
                clubs['key'] = snapshot.key;
                return _buildClubItem(clubs: clubs);
              },
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

// // Follow Outline svg
// SvgPicture.string(
// _svg_k2ckhg,
// allowDrawingOutsideViewBox: true,
// fit: BoxFit.fill,
// ),

// const String _svg_k2ckhg =
//     '<svg viewBox="0.0 0.0 87.0 27.5" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(0.0, 0.0)" d="M 73.2239990234375 27.54991149902344 L 13.7754020690918 27.54991149902344 C 10.0959358215332 27.54991149902344 6.636658191680908 26.11714553833008 4.034813404083252 23.51555633544922 C 1.432924628257751 20.91388893127441 2.453613205943839e-06 17.45476722717285 2.453613205943839e-06 13.77541160583496 C 2.453613205943839e-06 10.09598922729492 1.432924628257751 6.636711120605469 4.034813404083252 4.034822463989258 C 6.636702537536621 1.432933568954468 10.09598064422607 1.130506734625669e-05 13.7754020690918 1.130506734625669e-05 L 73.2239990234375 1.130506734625669e-05 C 76.90342712402344 1.130506734625669e-05 80.36270141601563 1.432933568954468 82.96459197998047 4.034822463989258 C 85.56648254394531 6.636711120605469 86.99940490722656 10.09598922729492 86.99940490722656 13.77541160583496 C 86.99940490722656 17.45476722717285 85.56648254394531 20.91388893127441 82.96459197998047 23.51555633544922 C 80.36274719238281 26.11714553833008 76.90347290039063 27.54991149902344 73.2239990234375 27.54991149902344 Z M 13.70430278778076 1.968311309814453 C 7.193846702575684 1.968311309814453 1.897202491760254 7.264955520629883 1.897202491760254 13.77541160583496 C 1.897202491760254 20.28586769104004 7.193846702575684 25.58251190185547 13.70430278778076 25.58251190185547 L 73.29510498046875 25.58251190185547 C 79.80555725097656 25.58251190185547 85.10220336914063 20.28586769104004 85.10220336914063 13.77541160583496 C 85.10220336914063 7.264955520629883 79.80555725097656 1.968311309814453 73.29510498046875 1.968311309814453 L 13.70430278778076 1.968311309814453 Z" fill="url(#gradient)" stroke="none" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';



// Text(
// 'Follow',
// style: TextStyle(
// fontFamily: 'Poppins',
// fontSize: 11,
// color: const Color(0xff404040),
// fontWeight: FontWeight.w600,
// ),
// textAlign: TextAlign.left,
// ),

// // Following BG
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(30.0),
// gradient: LinearGradient(
// begin: Alignment(-0.97, -0.82),
// end: Alignment(0.97, 0.79),
// colors: [
// const Color(0xfffe4f70),
// const Color(0xffcb6bd8)
// ],
// stops: [0.0, 1.0],
// ),
// ),
// ),

// Text(
// 'Following',
// style: TextStyle(
// fontFamily: 'Poppins',
// fontSize: 11,
// color: const Color(0xffffffff),
// fontWeight: FontWeight.w600,
// ),
// textAlign: TextAlign.left,
// ),
