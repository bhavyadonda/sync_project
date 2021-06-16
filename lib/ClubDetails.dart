import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'Clubs.dart';
import 'Home.dart';
import 'methods.dart';

class ClubDetails extends StatefulWidget {
  @override
  _ClubDetailsState createState() => _ClubDetailsState();
}

class _ClubDetailsState extends State<ClubDetails> {
  String uid;
  String clubkey;
  bool following;
  List followdata;

  getdata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    uid = prefs.getString('uid');
    Map data = json.decode(prefs.getString('clubs'));
    Map userdata = json.decode(prefs.getString('userData'));
    clubkey = prefs.getString('clubdetails');
    setState(() {
      followdata = userdata['following'].values.toList();
    });
    if (followdata.contains(clubkey)) {
      setState(() {
        following = true;
      });
    } else {
      setState(() {
        following = false;
      });
    }
    print(followdata);
    return data;
  }

  Widget build(BuildContext context) {
    final events = FutureBuilder(
        future: getdata(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            Map<dynamic, dynamic> values = snapshot.data;
            return ListView(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 412.0,
                                  height: 198.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: const AssetImage(
                                          'assets/Background Image2.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(20, 40, 0, 0),
                                  child:
                                  PageLink(
                                    links: [
                                      PageLinkInfo(
                                        transition: LinkTransition.Fade,
                                        ease: Curves.easeOut,
                                        duration: 0.3,
                                        //pageBuilder: () => HomePage(),
                                      ),
                                    ],
                                    child: SvgPicture.string(
                                      _svg_see9ki,
                                      allowDrawingOutsideViewBox: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 70,
                            ),
                          ],
                        ),
                        Container(
                          width: 137.0,
                          height: 137.0,
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
                          child: Container(
                            width: 113.0,
                            height: 113.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: const AssetImage('assets/Tech Club Logo Big.png'),
                                //fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(13, 10, 21, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                values[clubkey]['Clubname'],
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 24,
                                  color: const Color(0xff404040),
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                values[clubkey]['Clubinfo'],
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  color: const Color(0xff9d9d9d),
                                  fontWeight: FontWeight.w500,
                                  height: 1.1666666666666667,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () async {
                              SharedPreferences prefs = await SharedPreferences.getInstance();
                              Map userdata = json.decode(prefs.getString('userData'));
                              //var followdata = userdata['following'].values.toList();
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
                                    followdata.remove(values['Clubname']);
                                    following = !following;
                                    //print(followdata);
                                  });

                                  Navigator.pop(context);
                                  showAlertDialog(
                                      context,
                                      '/Home',
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
                                    following = !following;
                                    followdata.add(values['Clubname']);
                                    //print(followdata);
                                  });

                                  Navigator.pop(context);
                                  showAlertDialog(
                                      context,
                                      '/Home',
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
                            child:
                            following == true ?
                              //followdata.contains(values['Clubname']) ?
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
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.85,
                        child: Text(
                          values[clubkey]['Aboutclub'],
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 17,
                            color: const Color(0xff9d9d9d),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.fromLTRB(13, 10, 0, 10),
                      child: Text(
                        'Gallery',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 22,
                          color: const Color(0xff404040),
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.25,
                            width: MediaQuery.of(context).size.width * 0.425,
                            // width: 167,
                            // height: 211,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                image: const AssetImage('assets/Background Image4.png'),
                                fit: BoxFit.cover,
                              ),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: const Color(0x29000000),
                              //     offset: Offset(7, 7),
                              //     blurRadius: 6,
                              //   ),
                              // ],
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 0, 5),
                                child: Container(
                                  height: MediaQuery.of(context).size.height * 0.12,
                                  width: MediaQuery.of(context).size.width * 0.425,
                                  // width: 177,
                                  // height: 106,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    image: DecorationImage(
                                      image: const AssetImage('assets/Background Image3.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                child: Container(
                                  height: MediaQuery.of(context).size.height * 0.12,
                                  width: MediaQuery.of(context).size.width * 0.425,
                                  // width: 177,
                                  // height: 97,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    image: DecorationImage(
                                      image: const AssetImage(
                                          'assets/Background Image3.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: Image.asset('assets/Facebook Link.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Image.asset('assets/Instagram Link.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Image.asset('assets/Linkedin Link.png'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            );
          }
          return CircularProgressIndicator();
        });
    return Scaffold(body: events);
  }
}

// Container(
// height: 320,
// child: Padding(
// padding: const EdgeInsets.fromLTRB(21, 0, 45, 0),
// child: ListView.builder(
// scrollDirection: Axis.horizontal,
// itemCount: 10,
// itemBuilder: (BuildContext context, int index) {
// return Padding(
// padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
// child: SizedBox(
// width: 160.0,
// height: 211.0,
// child: Stack(
// children: <Widget>[
// Pinned.fromSize(
// bounds: Rect.fromLTWH(0.0, 10.0, 157.0, 106.0),//left = 176
// size: Size(333.0, 211.0),
// pinRight: true,
// pinBottom: true,
// fixedWidth: true,
// fixedHeight: true,
// child:
// // Adobe XD layer: 'Image 3' (shape)
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(15.0),
// image: DecorationImage(
// image: const AssetImage('assets/Background Image3.png'),
// fit: BoxFit.cover,
// ),
// ),
// ),
// ),
// Pinned.fromSize(
// bounds: Rect.fromLTWH(0.0, 0.0, 157.0, 97.0),
// size: Size(333.0, 211.0),
// pinRight: true,
// pinTop: true,
// fixedWidth: true,
// fixedHeight: true,
// child:
// // Adobe XD layer: 'Image 2' (shape)
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(15.0),
// image: DecorationImage(
// image: const AssetImage('assets/Background Image3.png'),
// fit: BoxFit.cover,
// ),
// ),
// ),
// ),
// ],
// ),
// ),
// );
// }
// ),
// ),
// ),

// class ClubDetails extends StatelessWidget {
//   ClubDetails({
//     Key key,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xffffffff),
//       body: Stack(
//         children: <Widget>[
//           Positioned(
//             left: 246,
//             top: 755,
//             child: SizedBox(
//                 width: 36.0,
//                 height: 36.0,
//                 child: Stack(
//             children: <Widget>[
//               Pinned.fromSize(
//                 bounds: Rect.fromLTWH(0.0, 0.0, 36.0, 36.0),
//                 size: Size(36.0, 36.0),
//                 pinLeft: true,
//                 pinRight: true,
//                 pinTop: true,
//                 pinBottom: true,
//                 child:
//                     // Adobe XD layer: 'Social Background' (shape)
//                     SvgPicture.string(
//                   _svg_x9p9xs,
//                   allowDrawingOutsideViewBox: true,
//                   fit: BoxFit.fill,
//                 ),
//               ),
//               Pinned.fromSize(
//                 bounds: Rect.fromLTWH(10.0, 9.0, 16.1, 16.0),
//                 size: Size(36.0, 36.0),
//                 fixedWidth: true,
//                 fixedHeight: true,
//                 child:
//                     // Adobe XD layer: 'Linkedin Icon' (group)
//                     Stack(
//                   children: <Widget>[
//                     Pinned.fromSize(
//                       bounds: Rect.fromLTWH(5.4, 5.0, 10.6, 11.0),
//                       size: Size(16.1, 16.0),
//                       child: SvgPicture.string(
//                         _svg_vgawgd,
//                         allowDrawingOutsideViewBox: true,
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                     Pinned.fromSize(
//                       bounds: Rect.fromLTWH(0.1, 5.4, 3.3, 10.6),
//                       size: Size(16.1, 16.0),
//                       child: SvgPicture.string(
//                         _svg_a2994i,
//                         allowDrawingOutsideViewBox: true,
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                     Pinned.fromSize(
//                       bounds: Rect.fromLTWH(0.0, 0.0, 3.4, 3.3),
//                       size: Size(16.1, 16.0),
//                       child: SvgPicture.string(
//                         _svg_ohuxxi,
//                         allowDrawingOutsideViewBox: true,
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//                 ),
//               ),
//           ),
//           Positioned(
//             left: 187,
//             top: 755,
//             child: SizedBox(
//                 width: 36.0,
//                 height: 36.0,
//                 child: Stack(
//             children: <Widget>[
//               Pinned.fromSize(
//                 bounds: Rect.fromLTWH(0.0, 0.0, 36.0, 36.0),
//                 size: Size(36.0, 36.0),
//                 pinLeft: true,
//                 pinRight: true,
//                 pinTop: true,
//                 pinBottom: true,
//                 child:
//                     // Adobe XD layer: 'Social Background' (shape)
//                     SvgPicture.string(
//                   _svg_x9p9xs,
//                   allowDrawingOutsideViewBox: true,
//                   fit: BoxFit.fill,
//                 ),
//               ),
//               Pinned.fromSize(
//                 bounds: Rect.fromLTWH(10.0, 10.0, 16.0, 16.0),
//                 size: Size(36.0, 36.0),
//                 pinLeft: true,
//                 pinRight: true,
//                 pinTop: true,
//                 pinBottom: true,
//                 child:
//                     // Adobe XD layer: 'Instagram Icon' (shape)
//                     SvgPicture.string(
//                   _svg_pdwfmb,
//                   allowDrawingOutsideViewBox: true,
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ],
//                 ),
//               ),
//           ),
//           Positioned(
//             left: 127,
//             top: 755,
//             child: SizedBox(
//                 width: 36.0,
//                 height: 36.0,
//                 child: Stack(
//             children: <Widget>[
//               Pinned.fromSize(
//                 bounds: Rect.fromLTWH(0.0, 0.0, 36.0, 36.0),
//                 size: Size(36.0, 36.0),
//                 pinLeft: true,
//                 pinRight: true,
//                 pinTop: true,
//                 pinBottom: true,
//                 child:
//                     // Adobe XD layer: 'Social Background' (shape)
//                     SvgPicture.string(
//                   _svg_7e8qy6,
//                   allowDrawingOutsideViewBox: true,
//                   fit: BoxFit.fill,
//                 ),
//               ),
//               Pinned.fromSize(
//                 bounds: Rect.fromLTWH(14.0, 10.0, 8.4, 16.0),
//                 size: Size(36.0, 36.0),
//                 pinTop: true,
//                 pinBottom: true,
//                 fixedWidth: true,
//                 child:
//                     // Adobe XD layer: 'Facebook Icon' (shape)
//                     SvgPicture.string(
//                   _svg_gzdh7g,
//                   allowDrawingOutsideViewBox: true,
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ],
//                 ),
//               ),
//           ),
//           Positioned(
//             left: 21,
//             top: 498,
//             child: SizedBox(
//                 width: 333.0,
//                 height: 211.0,
//                 child: Stack(
//             children: <Widget>[
//               Pinned.fromSize(
//                 bounds: Rect.fromLTWH(190.0, 105.0, 177.0, 106.0),//left = 176
//                 size: Size(333.0, 211.0),
//                 pinRight: true,
//                 pinBottom: true,
//                 fixedWidth: true,
//                 fixedHeight: true,
//                 child:
//                     // Adobe XD layer: 'Image 3' (shape)
//                     Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15.0),
//                     image: DecorationImage(
//                       image: const AssetImage('assets/Background Image3.png'),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//               Pinned.fromSize(
//                 bounds: Rect.fromLTWH(190.0, 0.0, 177.0, 97.0),
//                 size: Size(333.0, 211.0),
//                 pinRight: true,
//                 pinTop: true,
//                 fixedWidth: true,
//                 fixedHeight: true,
//                 child:
//                     // Adobe XD layer: 'Image 2' (shape)
//                     Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15.0),
//                     image: DecorationImage(
//                       image: const AssetImage('assets/Background Image3.png'),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//               Pinned.fromSize(
//                 bounds: Rect.fromLTWH(0.0, 0.0, 167.0, 211.0),
//                 size: Size(333.0, 211.0),
//                 pinLeft: true,
//                 pinTop: true,
//                 pinBottom: true,
//                 fixedWidth: true,
//                 child:
//                     // Adobe XD layer: 'Image 1' (shape)
//                     Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15.0),
//                     image: DecorationImage(
//                       image: const AssetImage('assets/Background Image4.png'),
//                       fit: BoxFit.cover,
//                     ),
//                     boxShadow: [
//                       BoxShadow(
//                         color: const Color(0x29000000),
//                         offset: Offset(7, 7),
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
//             left: 21,
//             top: 460,
//             child: Text(
//               'Gallery',
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
//             left: 28,
//             top: 337,
//             child: Text(
//               'Lorem ipsum dolor sit amet, consetetur \nsadipscing elitr, sed diam nonumy eirmod \ntempor invidunt ut labore et dolore magna \naliquyam erat, sed diam voluptua. At vero \neos et accusam et justo duo dolores et ea',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 17,
//                 color: const Color(0xff9d9d9d),
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           Positioned(
//             //left: 297,
//             top: 281,
//             right: 21,
//             child: SizedBox(
//                 width: 87.0,
//                 height: 28.0,
//                 child: Stack(
//             children: <Widget>[
//               Pinned.fromSize(
//                 bounds: Rect.fromLTWH(0.0, 0.0, 87.0, 27.5),
//                 size: Size(87.0, 27.5),
//                 pinLeft: true,
//                 pinRight: true,
//                 pinTop: true,
//                 pinBottom: true,
//                 child:
//                     // Adobe XD layer: 'Button' (shape)
//                     Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(30.0),
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
//                 bounds: Rect.fromLTWH(17.0, 7.0, 53.0, 16.0),
//                 size: Size(87.0, 27.5),
//                 child: Text(
//                   'Following',
//                   style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 12,
//                     color: const Color(0xffffffff),
//                     fontWeight: FontWeight.w700,
//                   ),
//                   textAlign: TextAlign.left,
//                 ),
//               ),
//             ],
//                 ),
//               ),
//           ),
//           Positioned(
//             left: 13,
//             top: 307,
//             child: SizedBox(
//               width: 197.0,
//               child: Text(
//                 'Technical Society of NMIMS',
//                 style: TextStyle(
//                   fontFamily: 'Poppins',
//                   fontSize: 14,
//                   color: const Color(0xff9d9d9d),
//                   fontWeight: FontWeight.w500,
//                   height: 1.1666666666666667,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           ),
//           Positioned(
//             left: 21,
//             top: 278,
//             child: Text(
//               'The Tech Club',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 24,
//                 color: const Color(0xff404040),
//                 fontWeight: FontWeight.w600,
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           // Adobe XD layer: 'Club Background' (shape)
//           Positioned(
//             left: 0,
//             top: 0,
//             child: Container(
//               width: 412.0,
//               height: 198.0,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: const AssetImage('assets/Background Image2.png'),
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 137,
//             top: 130,
//             child: SizedBox(
//                 width: 137.0,
//                 height: 137.0,
//                 child: Stack(
//             children: <Widget>[
//               // Adobe XD layer: 'Club Circle' (shape)
//               Container(
//                 width: 137.0,
//                 height: 137.0,
//                 decoration: BoxDecoration(
//                   borderRadius:
//                       BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
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
//               Transform.translate(
//                 offset: Offset(12.0, 12.0),
//                 child:
//                     // Adobe XD layer: 'Tech Club Logo' (shape)
//                     Container(
//                   width: 113.0,
//                   height: 113.0,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: const AssetImage('assets/Tech Club Logo Big.png'),
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                 ),
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
//               _svg_see9ki,
//               allowDrawingOutsideViewBox: true,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

const String _svg_vgawgd =
    '<svg viewBox="50.4 734.0 10.6 11.0" ><path transform="translate(-123.11, 572.94)" d="M 173.4986572265625 172.0462951660156 C 173.4986572265625 171.9701385498047 173.4986572265625 171.8971557617188 173.4986572265625 171.8241729736328 C 173.4986572265625 168.4067230224609 173.4986572265625 164.992431640625 173.4986572265625 161.5749816894531 C 173.4986572265625 161.4797821044922 173.4923095703125 161.4036254882813 173.6319274902344 161.4036254882813 C 174.6409759521484 161.4099731445313 175.6532135009766 161.4067993164063 176.6622619628906 161.4067993164063 C 176.6876525878906 161.4067993164063 176.7130279541016 161.4131469726563 176.7542877197266 161.4194946289063 C 176.7542877197266 161.8637390136719 176.7542877197266 162.3016204833984 176.7542877197266 162.7426910400391 C 176.7669677734375 162.7458648681641 176.7764892578125 162.7522125244141 176.7891845703125 162.7553863525391 C 176.9161071777344 162.5903778076172 177.0366821289063 162.4190368652344 177.1699676513672 162.2572021484375 C 177.5570831298828 161.7812347412109 178.0425720214844 161.4321899414063 178.6137390136719 161.2227630615234 C 178.9246978759766 161.1085357666016 179.2642211914063 161.0387268066406 179.5910491943359 161.0228576660156 C 180.0416412353516 161.0038146972656 180.5017395019531 161.0101623535156 180.9459838867188 161.0863189697266 C 181.6757965087891 161.2100677490234 182.3199462890625 161.5337371826172 182.85302734375 162.0636444091797 C 183.3575592041016 162.5618286132813 183.6907348632813 163.1615447998047 183.8715972900391 163.8374176025391 C 183.966796875 164.1959838867188 184.0270843505859 164.5640563964844 184.0841979980469 164.9289703369141 C 184.1222839355469 165.1828308105469 184.1413269042969 165.4430236816406 184.1413269042969 165.6968688964844 C 184.1444854736328 167.7593994140625 184.1444854736328 169.8219299316406 184.1444854736328 171.8844604492188 C 184.1444854736328 171.9352416992188 184.1413269042969 171.9860076904297 184.1381530761719 172.0526428222656 C 184.0778503417969 172.0526428222656 184.0270843505859 172.0526428222656 183.976318359375 172.0526428222656 C 183.0021667480469 172.0526428222656 182.0311889648438 172.0494689941406 181.0570373535156 172.0558166503906 C 180.8952026367188 172.0558166503906 180.8666534423828 172.0018768310547 180.8666534423828 171.8559112548828 C 180.8698272705078 169.9583740234375 180.8761749267578 168.0576782226563 180.8634796142578 166.16015625 C 180.8603057861328 165.8269653320313 180.8285827636719 165.4810943603516 180.7429046630859 165.1606140136719 C 180.5874176025391 164.5989685058594 180.2320251464844 164.1928100585938 179.6672058105469 163.9865570068359 C 179.1912384033203 163.8120422363281 178.7089233398438 163.7803039550781 178.2202606201172 163.904052734375 C 177.6808319091797 164.0404968261719 177.3095855712891 164.3990631103516 177.0303497314453 164.8718566894531 C 176.8145751953125 165.2367706298828 176.7733154296875 165.6397552490234 176.7701416015625 166.0427398681641 C 176.7574615478516 167.9688262939453 176.7637939453125 169.8917388916016 176.7637939453125 171.8178253173828 C 176.7637939453125 171.8908081054688 176.7637939453125 171.9637908935547 176.7637939453125 172.0431213378906 C 175.6690673828125 172.0462951660156 174.5933837890625 172.0462951660156 173.4986572265625 172.0462951660156 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_a2994i =
    '<svg viewBox="45.1 734.4 3.3 10.6" ><path transform="translate(39.75, 558.92)" d="M 8.593698501586914 180.8023071289063 C 8.593698501586914 182.4935760498047 8.590524673461914 184.1848602294922 8.596871376037598 185.8761291503906 C 8.596871376037598 186.0284423828125 8.565139770507813 186.0855560302734 8.396964073181152 186.0823822021484 C 7.429161071777344 186.0728607177734 6.461357593536377 186.0728607177734 5.493554592132568 186.0823822021484 C 5.334897994995117 186.0823822021484 5.299993991851807 186.0284423828125 5.299993991851807 185.8824768066406 C 5.30316686630249 182.4840698242188 5.30316686630249 179.0824737548828 5.299993991851807 175.6840515136719 C 5.299993991851807 175.547607421875 5.338071346282959 175.5000152587891 5.477688789367676 175.5000152587891 C 6.455011367797852 175.5063629150391 7.432333946228027 175.5063629150391 8.412830352783203 175.5000152587891 C 8.565139770507813 175.5000152587891 8.593697547912598 175.55712890625 8.593697547912598 175.6935729980469 C 8.593698501586914 177.3975372314453 8.593698501586914 179.1015014648438 8.593698501586914 180.8023071289063 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ohuxxi =
    '<svg viewBox="45.0 729.0 3.4 3.3" ><path transform="translate(42.37, 724.23)" d="M 4.297293663024902 4.770211696624756 C 5.341252326965332 4.744826793670654 5.966357707977295 5.503203392028809 5.969531059265137 6.432929039001465 C 5.97270393371582 7.384866714477539 5.306347846984863 8.095647811889648 4.25921630859375 8.092473983764648 C 3.285066843032837 8.092473983764648 2.596498727798462 7.394386291503906 2.599671840667725 6.407544136047363 C 2.602844953536987 5.484164714813232 3.272374391555786 4.738480567932129 4.297293663024902 4.770211696624756 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x9p9xs =
    '<svg viewBox="35.0 720.0 36.0 36.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(35.0, 720.0)" d="M 15 0 L 21 0 C 29.28427124023438 0 36 6.715728759765625 36 15 L 36 21 C 36 29.28427124023438 29.28427124023438 36 21 36 L 15 36 C 6.715728759765625 36 0 29.28427124023438 0 21 L 0 15 C 0 6.715728759765625 6.715728759765625 0 15 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pdwfmb =
    '<svg viewBox="45.0 730.0 16.0 16.0" ><path transform="translate(45.0, 730.0)" d="M 8 1.422222256660461 C 10.13333320617676 1.422222256660461 10.39999961853027 1.422222256660461 11.20000076293945 1.51111114025116 C 12 1.51111114025116 12.44444465637207 1.688889026641846 12.71111106872559 1.777777791023254 C 13.06666660308838 1.955555558204651 13.33333301544189 2.133333444595337 13.60000038146973 2.400000095367432 C 13.86666679382324 2.666666746139526 14.0444450378418 2.9333336353302 14.22222232818604 3.288888931274414 C 14.31111145019531 3.555555582046509 14.48888874053955 4 14.48888874053955 4.800000190734863 C 14.48888874053955 5.600000381469727 14.57777786254883 5.8666672706604 14.57777786254883 8 C 14.57777786254883 10.13333320617676 14.57777786254883 10.39999961853027 14.48888874053955 11.20000076293945 C 14.48888874053955 12 14.31110954284668 12.44444465637207 14.22222137451172 12.71111106872559 C 14.04444408416748 13.06666660308838 13.86666584014893 13.33333301544189 13.59999942779541 13.60000038146973 C 13.33333301544189 13.86666679382324 13.06666564941406 14.0444450378418 12.71111011505127 14.22222232818604 C 12.44444370269775 14.31111145019531 11.99999904632568 14.48888874053955 11.19999980926514 14.48888874053955 C 10.39999961853027 14.48888874053955 10.13333320617676 14.57777786254883 8 14.57777786254883 C 5.866666793823242 14.57777786254883 5.600000381469727 14.57777786254883 4.800000190734863 14.48888874053955 C 4 14.48888874053955 3.555555582046509 14.31110954284668 3.288888931274414 14.22222137451172 C 2.933333396911621 14.04444408416748 2.666666746139526 13.86666584014893 2.400000095367432 13.59999942779541 C 2.133333444595337 13.33333301544189 1.955555558204651 13.06666564941406 1.777777791023254 12.71111011505127 C 1.688888907432556 12.44444370269775 1.51111114025116 11.99999904632568 1.51111114025116 11.19999980926514 C 1.51111114025116 10.39999961853027 1.422222256660461 10.13333320617676 1.422222256660461 8 C 1.422222256660461 5.866666793823242 1.422222256660461 5.600000381469727 1.51111114025116 4.800000190734863 C 1.51111114025116 4 1.688888907432556 3.555555582046509 1.777777791023254 3.288888931274414 C 1.955555558204651 2.933333396911621 2.133333444595337 2.666666746139526 2.400000095367432 2.400000095367432 C 2.666666746139526 2.04444432258606 2.933333396911621 1.866666555404663 3.288888931274414 1.777777791023254 C 3.555555582046509 1.688888907432556 4 1.51111114025116 4.800000190734863 1.51111114025116 C 5.600000381469727 1.422222256660461 5.866666793823242 1.422222256660461 8 1.422222256660461 M 8 0 C 5.866666793823242 0 5.511110782623291 0 4.711111545562744 0.08888889104127884 C 3.822222471237183 0.08888889104127884 3.288889169692993 0.2666666805744171 2.755555629730225 0.4444444477558136 C 2.222222328186035 0.6222222447395325 1.777777791023254 0.8888888955116272 1.333333373069763 1.333333373069763 C 0.8888888955116272 1.777777791023254 0.6222222447395325 2.222222328186035 0.4444444477558136 2.755555391311646 C 0.1777777820825577 3.288888931274414 0.08888889104127884 3.822222471237183 0.08888889104127884 4.711111545562744 C 0 5.511110782623291 0 5.866666793823242 0 8 C 0 10.13333320617676 0 10.48888874053955 0.08888889104127884 11.28888893127441 C 0.08888889104127884 12.17777729034424 0.2666666805744171 12.71111106872559 0.4444444477558136 13.24444389343262 C 0.6222222447395325 13.77777767181396 0.8888888955116272 14.22222232818604 1.333333373069763 14.66666698455811 C 1.777777791023254 15.11111164093018 2.222222328186035 15.37777709960938 2.755555391311646 15.55555534362793 C 3.288888692855835 15.7333345413208 3.822222471237183 15.91111087799072 4.711111545562744 15.91111087799072 C 5.511110782623291 16 5.866666793823242 16 8 16 C 10.13333320617676 16 10.48888874053955 16 11.28888893127441 15.91111087799072 C 12.17777729034424 15.91111087799072 12.71111106872559 15.73333263397217 13.24444389343262 15.55555534362793 C 13.77777767181396 15.37777709960938 14.22222232818604 15.11111164093018 14.66666698455811 14.66666698455811 C 15.11111164093018 14.22222232818604 15.37777709960938 13.77777767181396 15.55555534362793 13.24444389343262 C 15.7333345413208 12.71111011505127 15.91111087799072 12.17777729034424 15.91111087799072 11.28888893127441 C 15.91111087799072 10.39999961853027 16 10.13333320617676 16 8 C 16 5.866666793823242 16 5.511110782623291 15.91111087799072 4.711111545562744 C 15.91111087799072 3.822222471237183 15.73333263397217 3.288889169692993 15.55555534362793 2.755555629730225 C 15.37777709960938 2.222222328186035 15.11111164093018 1.777777791023254 14.66666698455811 1.333333492279053 C 14.22222232818604 0.8888890147209167 13.77777767181396 0.6222223043441772 13.24444389343262 0.4444445669651031 C 12.71111011505127 0.2666667997837067 12.17777729034424 0.0888889878988266 11.28888893127441 0.0888889878988266 C 10.48888874053955 0 10.13333320617676 0 8 0 M 8 3.911111116409302 C 5.688889026641846 3.911111116409302 3.911111116409302 5.688889026641846 3.911111116409302 8 C 3.911111116409302 10.31111145019531 5.777777671813965 12.08888912200928 8 12.08888912200928 C 10.31111145019531 12.08888912200928 12.08888912200928 10.22222232818604 12.08888912200928 8 C 12.08888912200928 5.777777671813965 10.31111145019531 3.911111116409302 8 3.911111116409302 M 8 10.66666698455811 C 6.488889217376709 10.66666698455811 5.333333492279053 9.511111259460449 5.333333492279053 8 C 5.333333492279053 6.488889217376709 6.488889217376709 5.333333492279053 8 5.333333492279053 C 9.511111259460449 5.333333492279053 10.66666698455811 6.488889217376709 10.66666698455811 8 C 10.66666698455811 9.511111259460449 9.511111259460449 10.66666698455811 8 10.66666698455811 M 12.26666736602783 2.755555391311646 C 11.73333358764648 2.755555391311646 11.28888893127441 3.200000047683716 11.28888893127441 3.733333110809326 C 11.28888893127441 4.266666412353516 11.73333358764648 4.711111068725586 12.26666736602783 4.711111068725586 C 12.80000019073486 4.711111068725586 13.24444484710693 4.266666412353516 13.24444484710693 3.733333110809326 C 13.24444389343262 3.200000047683716 12.80000019073486 2.755555391311646 12.26666736602783 2.755555391311646" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_7e8qy6 =
    '<svg viewBox="58.0 720.0 36.0 36.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(58.0, 720.0)" d="M 15 0 L 21 0 C 29.28427124023438 0 36 6.715728759765625 36 15 L 36 21 C 36 29.28427124023438 29.28427124023438 36 21 36 L 15 36 C 6.715728759765625 36 0 29.28427124023438 0 21 L 0 15 C 0 6.715728759765625 6.715728759765625 0 15 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gzdh7g =
    '<svg viewBox="72.0 730.0 8.4 16.0" ><path transform="translate(-8.0, 730.0)" d="M 85.42222595214844 16 L 85.42222595214844 8.711111068725586 L 87.91111755371094 8.711111068725586 L 88.26667785644531 5.8666672706604 L 85.42222595214844 5.8666672706604 L 85.42222595214844 4.088889122009277 C 85.42222595214844 3.288889169692993 85.68890380859375 2.666667222976685 86.84445190429688 2.666667222976685 L 88.35556030273438 2.666667222976685 L 88.35556030273438 0.08888889104127884 C 88 0.08888889104127884 87.11111450195313 0 86.13333129882813 0 C 84 0 82.4888916015625 1.333333373069763 82.4888916015625 3.733333110809326 L 82.4888916015625 5.866666793823242 L 80 5.866666793823242 L 80 8.711111068725586 L 82.4888916015625 8.711111068725586 L 82.4888916015625 16 L 85.42222595214844 16 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_see9ki =
    '<svg viewBox="32.0 48.0 12.6 18.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="matrix(0.0, 1.0, -1.0, 0.0, 44.56, 48.0)" d="M 8.999999046325684 12.56341361999512 L 0 2.883406400680542 L 2.680851221084595 0 L 8.999999046325684 6.796600818634033 L 15.31914710998535 0 L 18 2.883406400680542 L 8.999999046325684 12.56341361999512 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_k2ckhg =
    '<svg viewBox="0.0 0.0 87.0 27.5" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(0.0, 0.0)" d="M 73.2239990234375 27.54991149902344 L 13.7754020690918 27.54991149902344 C 10.0959358215332 27.54991149902344 6.636658191680908 26.11714553833008 4.034813404083252 23.51555633544922 C 1.432924628257751 20.91388893127441 2.453613205943839e-06 17.45476722717285 2.453613205943839e-06 13.77541160583496 C 2.453613205943839e-06 10.09598922729492 1.432924628257751 6.636711120605469 4.034813404083252 4.034822463989258 C 6.636702537536621 1.432933568954468 10.09598064422607 1.130506734625669e-05 13.7754020690918 1.130506734625669e-05 L 73.2239990234375 1.130506734625669e-05 C 76.90342712402344 1.130506734625669e-05 80.36270141601563 1.432933568954468 82.96459197998047 4.034822463989258 C 85.56648254394531 6.636711120605469 86.99940490722656 10.09598922729492 86.99940490722656 13.77541160583496 C 86.99940490722656 17.45476722717285 85.56648254394531 20.91388893127441 82.96459197998047 23.51555633544922 C 80.36274719238281 26.11714553833008 76.90347290039063 27.54991149902344 73.2239990234375 27.54991149902344 Z M 13.70430278778076 1.968311309814453 C 7.193846702575684 1.968311309814453 1.897202491760254 7.264955520629883 1.897202491760254 13.77541160583496 C 1.897202491760254 20.28586769104004 7.193846702575684 25.58251190185547 13.70430278778076 25.58251190185547 L 73.29510498046875 25.58251190185547 C 79.80555725097656 25.58251190185547 85.10220336914063 20.28586769104004 85.10220336914063 13.77541160583496 C 85.10220336914063 7.264955520629883 79.80555725097656 1.968311309814453 73.29510498046875 1.968311309814453 L 13.70430278778076 1.968311309814453 Z" fill="url(#gradient)" stroke="none" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
