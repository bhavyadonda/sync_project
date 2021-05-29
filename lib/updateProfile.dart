import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './Homepage.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path/path.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_database/firebase_database.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './methods.dart';
import 'dart:async';
import 'dart:io';

class UpdateProfile extends StatefulWidget {
  UpdateProfile({Key key}) : super(key: key);

  @override
  _UpdateProfileState createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  File _image;
  String img_name;
  List listData;
  TextEditingController _name = TextEditingController();
  TextEditingController _course = TextEditingController();
  TextEditingController _sapID = TextEditingController();
  TextEditingController _yearOfStudy = TextEditingController();
  TextEditingController _phoneNumber = TextEditingController();
  @override
  void initState() {
    super.initState();
    getdata();
  }

  Future getdata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Map data = json.decode(prefs.getString('userData'));
    listData = data.values.toList();
    _name.text = data['name'];
    _course.text = data['course'];
    _yearOfStudy.text = data['year'];
    _sapID.text = data['SAP'];
    _phoneNumber.text = data['phone'];
    img_name = data['profile_pic'].split('%2F')[1].split('?alt')[0];
    return data;
  }

  @override
  Widget build(BuildContext context) {
    Future createProfile() async {
      try {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        final uid = prefs.getString('uid') ?? '';
        if (_image != null) {
          var desertRef = firebase_storage.FirebaseStorage.instance
              .ref()
              .child('profile_pictures/' + img_name);
          await desertRef
              .delete()
              .then((value) => print('deleted successfully.'));
          String fileName = basename(_image.path);
          firebase_storage.Reference firebaseStorageRef = firebase_storage
              .FirebaseStorage.instance
              .ref()
              .child('profile_pictures/' + fileName);
          firebase_storage.UploadTask uploadTask =
              firebaseStorageRef.putFile(_image);
          firebase_storage.TaskSnapshot taskSnapshot =
              await uploadTask.whenComplete(() => null);
          String downloadUrl = await taskSnapshot.ref.getDownloadURL();
          final databaseReference = FirebaseDatabase.instance.reference();
          await databaseReference
              .child("users/" + uid)
              .update({
                'profile_pic': downloadUrl,
                'name': _name.text,
                'course': _course.text,
                'year': _yearOfStudy.text,
                'SAP': _sapID.text,
                'phone': _phoneNumber.text,
              })
              .then((value) => print('success'))
              .catchError((error) {
                print(error);
              });
        } else {
          final databaseReference = FirebaseDatabase.instance.reference();
          await databaseReference
              .child("users/" + uid)
              .update({
                'name': _name.text,
                'course': _course.text,
                'year': _yearOfStudy.text,
                'SAP': _sapID.text,
                'phone': _phoneNumber.text,
              })
              .then((value) => print('success'))
              .catchError((error) {
                print(error);
              });
        }

        Navigator.pop(context);
        showAlertDialog(
            context, '/Home', 'Success', 'Profile Updated Successfully');
      } catch (e) {
        print(e);
        Navigator.pop(context);
        _name.text = '';
        _course.text = '';
        _yearOfStudy.text = '';
        _sapID.text = '';
        _phoneNumber.text = '';
        // showAlertDialog(context, '', e.toString().split('(')[1].split(',')[0],
        //     e.toString().split(', ')[1].split(',')[0]);
      }
    }

    Future getImage() async {
      var image = await ImagePicker.pickImage(source: ImageSource.gallery);

      setState(() {
        _image = image;
      });
    }

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 30,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
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
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.17,
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  FutureBuilder(
                      future: getdata(),
                      builder: (context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          Map<dynamic, dynamic> values = snapshot.data;
                          return new Container(
                            height: 89,
                            width: 89,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x7a000000),
                                  offset: Offset(0, 3),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                            child: ClipOval(
                              child: SizedBox(
                                child: (_image != null) ?
                                Image.file(_image, fit: BoxFit.cover,) :
                                GestureDetector(
                                  onTap: () {
                                    getImage();
                                  },
                                  child: Image.network(
                                    values['profile_pic'],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          );
                        } else {
                          return Container();
                        }
                      }
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: GestureDetector(
                      onTap: () {
                        getImage();
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 17.0,
                            height: 17.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
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
                          SvgPicture.string(
                            _svg_qftx7n,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   width: 89.0,
            //   height: 89.0,
            //   child: Stack(
            //     children: <Widget>[
            //       Pinned.fromSize(
            //         bounds: Rect.fromLTWH(0.0, 0.0, 89.0, 89.0),
            //         size: Size(89.0, 89.0),
            //         pinLeft: true,
            //         pinRight: true,
            //         pinTop: true,
            //         pinBottom: true,
            //         child:
            //         // Adobe XD layer: 'Profile Circle' (shape)
            //         Container(
            //           decoration: BoxDecoration(
            //             borderRadius:
            //             BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
            //             color: const Color(0xffffffff),
            //             boxShadow: [
            //               BoxShadow(
            //                 color: const Color(0x7a000000),
            //                 offset: Offset(0, 3),
            //                 blurRadius: 6,
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //       Pinned.fromSize(
            //         bounds: Rect.fromLTWH(60.0, 72.0, 17.0, 17.0),
            //         size: Size(89.0, 89.0),
            //         child:
            //
            //         // Adobe XD layer: 'Add Button' (group)
            //         Stack(
            //           children: <Widget>[
            //             // Adobe XD layer: 'Add Circle' (shape)
            //
            //             Container(
            //               width: 17.0,
            //               height: 17.0,
            //               decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.all(
            //                     Radius.elliptical(9999.0, 9999.0)),
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
            //               child: GestureDetector(
            //                 onTap: () {
            //                   getImage();
            //                 },
            //               ),
            //             ),
            //
            //             Transform.translate(
            //               offset: Offset(3.7, 3.7),
            //               child: SvgPicture.string(
            //                 _svg_qftx7n,
            //                 allowDrawingOutsideViewBox: true,
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //       Pinned.fromSize(
            //         bounds: Rect.fromLTWH(29.0, 27.5, 31.0, 33.9),
            //         size: Size(89.0, 89.0),
            //         child:
            //         // Adobe XD layer: 'Profile Icon' (group)
            //         Stack(
            //           children: <Widget>[
            //             Transform.translate(
            //               offset: Offset(7.8, 0.0),
            //               child: Container(
            //                 width: 15.5,
            //                 height: 15.5,
            //                 decoration: BoxDecoration(
            //                   borderRadius: BorderRadius.all(
            //                       Radius.elliptical(9999.0, 9999.0)),
            //                   gradient: LinearGradient(
            //                     begin: Alignment(-0.97, -0.82),
            //                     end: Alignment(0.97, 0.79),
            //                     colors: [
            //                       const Color(0xfffe4f70),
            //                       const Color(0xffcb6bd8)
            //                     ],
            //                     stops: [0.0, 1.0],
            //                   ),
            //                 ),
            //               ),
            //             ),
            //             FutureBuilder(
            //                 future: getdata(),
            //                 builder: (context, AsyncSnapshot snapshot) {
            //                   if (snapshot.hasData) {
            //                     Map<dynamic, dynamic> values = snapshot.data;
            //                     return Transform.translate(
            //                       offset: Offset(0.0, 19.3),
            //                       child: ClipOval(
            //                         child: new SizedBox(
            //                           // width: 180.0,
            //                           // height: 180.0,
            //                             child: (_image != null)
            //                                 ? Image.file(
            //                               _image,
            //                               fit: BoxFit.fill,
            //                             )
            //                                 : GestureDetector(
            //                               onTap: () {
            //                                 getImage();
            //                               },
            //                               child: Image.network(
            //                                 values['profile_pic'],
            //                               ),
            //                             )),
            //                       ),
            //                     );
            //                   } else {
            //                     return Container(
            //                       width: 15.5,
            //                       height: 15.5,
            //                       decoration: BoxDecoration(
            //                         borderRadius: BorderRadius.all(
            //                             Radius.elliptical(9999.0, 9999.0)),
            //                         gradient: LinearGradient(
            //                           begin: Alignment(-0.97, -0.82),
            //                           end: Alignment(0.97, 0.79),
            //                           colors: [
            //                             const Color(0xfffe4f70),
            //                             const Color(0xffcb6bd8)
            //                           ],
            //                           stops: [0.0, 1.0],
            //                         ),
            //                       ),
            //                     );
            //                   }
            //                 }),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.05,
              alignment: Alignment.center,
              child: Text(
                'Let\'s complete your profile',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  color: const Color(0xff404040),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.53,
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Container(
                      height: 48.0,
                      width: MediaQuery.of(context).size.width * 0.75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0x1a9d9d9d),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: TextFormField(
                          maxLines: 1,
                          controller: _name,
                          keyboardType: TextInputType.name,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: const Color(0xffb6b6b6),
                            fontWeight: FontWeight.w300,
                          ),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            icon: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.string(
                                  _svg_8m0axe,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                                SvgPicture.string(
                                  _svg_wkyxh4,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ],
                            ),
                            border: InputBorder.none,
                            fillColor: const Color(0x1a9d9d9d),
                            hintText: 'Name',
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              color: const Color(0xffb6b6b6),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      height: 48.0,
                      width: MediaQuery.of(context).size.width * 0.75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0x1a9d9d9d),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: TextFormField(
                          maxLines: 1,
                          controller: _course,
                          keyboardType: TextInputType.text,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: const Color(0xffb6b6b6),
                            fontWeight: FontWeight.w300,
                          ),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            icon: Container(
                              width: 30,
                              height: 30,
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(4.4, 10.9, 13.4, 2.2),
                                    size: Size(25.0, 27.9),
                                    child: SvgPicture.string(
                                      _svg_wjl8u5,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(4.4, 15.3, 9.0, 2.2),
                                    size: Size(25.0, 27.9),
                                    child: SvgPicture.string(
                                      _svg_4iw10s,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(0.0, 0.0, 22.1, 27.9),
                                    size: Size(25.0, 27.9),
                                    child: SvgPicture.string(
                                      _svg_m52rhj,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(11.8, 14.8, 13.2, 13.1),
                                    size: Size(25.0, 27.9),
                                    child: SvgPicture.string(
                                      _svg_uk39fa,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(4.4, 6.5, 13.4, 2.2),
                                    size: Size(25.0, 27.9),
                                    child: SvgPicture.string(
                                      _svg_fxejn8,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            border: InputBorder.none,
                            hintText: "Course",
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              color: const Color(0xffb6b6b6),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      height: 48.0,
                      width: MediaQuery.of(context).size.width * 0.75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0x1a9d9d9d),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: TextFormField(
                          controller: _yearOfStudy,
                          maxLines: 1,
                          keyboardType: TextInputType.text,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: const Color(0xffb6b6b6),
                            fontWeight: FontWeight.w300,
                          ),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            icon: Container(
                              width: 30,
                              height: 25,
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(0.0, 0.0, 25.0, 19.4),
                                    size: Size(25.0, 19.4),
                                    child: SvgPicture.string(
                                      _svg_v4c4p3,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(0.0, 0.0, 25.0, 19.4),
                                    size: Size(25.0, 19.4),
                                    child: SvgPicture.string(
                                      _svg_v4c4p3,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            border: InputBorder.none,
                            hintText: "Year of Study",
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              color: const Color(0xffb6b6b6),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      height: 48.0,
                      width: MediaQuery.of(context).size.width * 0.75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0x1a9d9d9d),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: TextFormField(
                          controller: _sapID,
                          maxLines: 1,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: const Color(0xffb6b6b6),
                            fontWeight: FontWeight.w300,
                          ),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            icon: SvgPicture.string(
                              _svg_wiv4v2,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                            border: InputBorder.none,
                            hintText: "SAP ID",
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              color: const Color(0xffb6b6b6),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Container(
                      height: 48.0,
                      width: MediaQuery.of(context).size.width * 0.75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0x1a9d9d9d),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: TextFormField(
                          controller: _phoneNumber,
                          maxLines: 1,
                          keyboardType: TextInputType.phone,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: const Color(0xffb6b6b6),
                            fontWeight: FontWeight.w300,
                          ),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            icon: SvgPicture.string(
                              _svg_bzik28,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                            border: InputBorder.none,
                            hintText: "Phone Number",
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              color: const Color(0xffb6b6b6),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () async {
                if (_sapID.text.length != 11 ||
                    _phoneNumber.text.length != 10) {
                  _sapID.text = '';
                  _phoneNumber.text = '';
                  showAlertDialog(context, '', 'Wrong Inputs',
                      'Please make sure SAP id is 11-digit and Phone number is 10-digit');
                } else {
                  showLoaderDialog(context, "Creating Profile...");
                  createProfile();
                }
              },
              child: Container(
                height: 48.0,
                width: MediaQuery.of(context).size.width * 0.75,
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
                    'Let\'s Go',
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
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.05,
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 68,
            top: 667,
            child: PageLink(
              links: [
                // PageLinkInfo(
                //   transition: LinkTransition.Fade,
                //   ease: Curves.easeOut,
                //   duration: 0.3,
                //   pageBuilder: () => Homepage(),
                // ),
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
                        child: GestureDetector(
                          onTap: () async {
                            if (_sapID.text.length != 11 ||
                                _phoneNumber.text.length != 10) {
                              _sapID.text = '';
                              _phoneNumber.text = '';
                              showAlertDialog(context, '', 'Wrong Inputs',
                                  'Please make sure SAP id is 11-digit and Phone number is 10-digit');
                            } else {
                              showLoaderDialog(context, "Creating Profile...");
                              createProfile();
                            }
                          },
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(108.0, 12.0, 78.0, 21.0),
                      size: Size(273.0, 48.0),
                      child: Text(
                        'Let\'s Go',
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
            left: 51,
            top: 540,
            child: SizedBox(
              width: 303.0,
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
                        // Adobe XD layer: 'Phone Input' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0x1a9d9d9d),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(50.0, 14.0, 143.0, 20.0),
                    size: Size(273.0, 48.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Phone Placeholder' (text)
                        TextFormField(
                      controller: _phoneNumber,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        color: const Color(0xffb6b6b6),
                        fontWeight: FontWeight.w300,
                      ),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        hintText: "Phone Number",
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: const Color(0xffb6b6b6),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(14.5, 11.4, 25.0, 25.1),
                    size: Size(273.0, 48.0),
                    child:
                        // Adobe XD layer: 'Phone Icon' (shape)
                        SvgPicture.string(
                      _svg_bzik28,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 51,
            top: 472,
            child: SizedBox(
              width: 303.0,
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
                        // Adobe XD layer: 'SAP ID Input' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0x1a9d9d9d),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(53.0, 14.0, 72.0, 20.0),
                    size: Size(273.0, 48.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'SAP ID Placeholder' (text)
                        TextFormField(
                      controller: _sapID,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        color: const Color(0xffb6b6b6),
                        fontWeight: FontWeight.w300,
                      ),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        hintText: "SAP ID",
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: const Color(0xffb6b6b6),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(14.5, 15.0, 25.0, 17.6),
                    size: Size(273.0, 48.0),
                    child:
                        // Adobe XD layer: 'Mail Icon' (shape)
                        SvgPicture.string(
                      _svg_wiv4v2,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 53,
            top: 404,
            child: SizedBox(
              width: 303.0,
              height: 48.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 270.0, 48.0),
                    size: Size(270.0, 48.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'Year Input' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0x1a9d9d9d),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(48.0, 14.0, 131.0, 20.0),
                    size: Size(270.0, 48.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Year Placeholder' (text)
                        TextFormField(
                      controller: _yearOfStudy,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        color: const Color(0xffb6b6b6),
                        fontWeight: FontWeight.w300,
                      ),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        hintText: "Year of Study",
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: const Color(0xffb6b6b6),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(12.5, 14.0, 25.0, 19.4),
                    size: Size(270.0, 48.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Study Icon' (group)
                        Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 25.0, 19.4),
                        size: Size(25.0, 19.4),
                        child: SvgPicture.string(
                          _svg_v4c4p3,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 25.0, 19.4),
                        size: Size(25.0, 19.4),
                        child: SvgPicture.string(
                          _svg_v4c4p3,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 51,
            top: 336,
            child: SizedBox(
              width: 303.0,
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
                        // Adobe XD layer: 'Course Input' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0x1a9d9d9d),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(52.0, 14.0, 100.0, 20.0),
                    size: Size(273.0, 48.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Course Placeholder' (text)
                        TextFormField(
                      controller: _course,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        color: const Color(0xffb6b6b6),
                        fontWeight: FontWeight.w300,
                      ),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        hintText: "Course",
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: const Color(0xffb6b6b6),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(14.5, 9.6, 25.0, 27.9),
                    size: Size(273.0, 48.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Course Icon' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(4.4, 10.9, 13.4, 2.2),
                          size: Size(25.0, 27.9),
                          child: SvgPicture.string(
                            _svg_wjl8u5,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(4.4, 15.3, 9.0, 2.2),
                          size: Size(25.0, 27.9),
                          child: SvgPicture.string(
                            _svg_4iw10s,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 22.1, 27.9),
                          size: Size(25.0, 27.9),
                          child: SvgPicture.string(
                            _svg_m52rhj,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(11.8, 14.8, 13.2, 13.1),
                          size: Size(25.0, 27.9),
                          child: SvgPicture.string(
                            _svg_uk39fa,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(4.4, 6.5, 13.4, 2.2),
                          size: Size(25.0, 27.9),
                          child: SvgPicture.string(
                            _svg_fxejn8,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 51,
            top: 268,
            child: SizedBox(
              width: 303.0,
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
                        // Adobe XD layer: 'Name Input' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0x1a9d9d9d),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(53.0, 14.0, 72.0, 20.0),
                    size: Size(273.0, 48.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Name Placeholder' (text)
                        TextFormField(
                      controller: _name,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        color: const Color(0xffb6b6b6),
                        fontWeight: FontWeight.w300,
                      ),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        hintText: "Name",
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: const Color(0xffb6b6b6),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(14.5, 11.7, 25.0, 25.5),
                    size: Size(273.0, 48.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Name Icon' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(5.7, 0.0, 14.1, 13.3),
                          size: Size(25.0, 25.5),
                          child: SvgPicture.string(
                            _svg_8m0axe,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 14.3, 25.0, 11.2),
                          size: Size(25.0, 25.5),
                          child: SvgPicture.string(
                            _svg_wkyxh4,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 98,
            top: 211,
            child: Text(
              'Let\'s complete your profile',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                color: const Color(0xff404040),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Positioned(
            left: 160,
            top: 108,
            child: SizedBox(
              width: 89.0,
              height: 89.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 89.0, 89.0),
                    size: Size(89.0, 89.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'Profile Circle' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x7a000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(60.0, 72.0, 17.0, 17.0),
                    size: Size(89.0, 89.0),
                    child:

                        // Adobe XD layer: 'Add Button' (group)
                        Stack(
                      children: <Widget>[
                        // Adobe XD layer: 'Add Circle' (shape)

                        Container(
                          width: 17.0,
                          height: 17.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
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
                          child: GestureDetector(
                            onTap: () {
                              getImage();
                            },
                          ),
                        ),

                        Transform.translate(
                          offset: Offset(3.7, 3.7),
                          child: SvgPicture.string(
                            _svg_qftx7n,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(29.0, 27.5, 31.0, 33.9),
                    size: Size(89.0, 89.0),
                    child:
                        // Adobe XD layer: 'Profile Icon' (group)
                        Stack(
                      children: <Widget>[
                        Transform.translate(
                          offset: Offset(7.8, 0.0),
                          child: Container(
                            width: 15.5,
                            height: 15.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
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
                        FutureBuilder(
                            future: getdata(),
                            builder: (context, AsyncSnapshot snapshot) {
                              if (snapshot.hasData) {
                                Map<dynamic, dynamic> values = snapshot.data;
                                return Transform.translate(
                                  offset: Offset(0.0, 19.3),
                                  child: ClipOval(
                                    child: new SizedBox(
                                        // width: 180.0,
                                        // height: 180.0,
                                        child: (_image != null)
                                            ? Image.file(
                                                _image,
                                                fit: BoxFit.fill,
                                              )
                                            : GestureDetector(
                                                onTap: () {
                                                  getImage();
                                                },
                                                child: Image.network(
                                                  values['profile_pic'],
                                                ),
                                              )),
                                  ),
                                );
                              } else {
                                return Container();
                              }
                            }),
                      ],
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

const String _svg_bzik28 =
    '<svg viewBox="65.5 353.4 25.0 25.1" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(65.16, 326.0)" d="M 21.38980865478516 42.375244140625 C 20.84414291381836 41.80707931518555 20.18597030639648 41.5033073425293 19.48841857910156 41.5033073425293 C 18.79649353027344 41.5033073425293 18.13269233703613 41.80145263671875 17.56452560424805 42.36962127685547 L 15.78689193725586 44.14162445068359 C 15.6406307220459 44.06287384033203 15.49436950683594 43.98973846435547 15.35373401641846 43.91661071777344 C 15.15121841430664 43.81535339355469 14.9599552154541 43.71971893310547 14.79681777954102 43.61846160888672 C 13.13169384002686 42.56088638305664 11.61845684051514 41.18265914916992 10.16709899902344 39.39939880371094 C 9.463922500610352 38.51058197021484 8.991387367248535 37.76240539550781 8.648236274719238 37.00297164916992 C 9.10952091217041 36.5810661315918 9.537053108215332 36.14228439331055 9.953332901000977 35.72037506103516 C 10.1108455657959 35.5628662109375 10.2683572769165 35.39972686767578 10.42586803436279 35.24221801757813 C 11.60720539093018 34.06087875366211 11.60720539093018 32.53076553344727 10.42586803436279 31.34942817687988 L 8.890129089355469 29.81368827819824 C 8.715740203857422 29.63930130004883 8.535727500915527 29.45928764343262 8.366965293884277 29.27927398681641 C 8.029439926147461 28.93049812316895 7.67503833770752 28.57047080993652 7.309386253356934 28.23294639587402 C 6.763720989227295 27.69290542602539 6.111172199249268 27.40600967407227 5.424871444702148 27.40600967407227 C 4.738570690155029 27.40600967407227 4.074771404266357 27.69290542602539 3.512229442596436 28.23294639587402 C 3.506604194641113 28.23857116699219 3.506604194641113 28.23857116699219 3.500978469848633 28.24419784545898 L 1.588336706161499 30.17371559143066 C 0.8682832717895508 30.89376831054688 0.4576277732849121 31.77133369445801 0.3676210641860962 32.78953552246094 C 0.2326110303401947 34.43215560913086 0.7163969278335571 35.9622688293457 1.087674498558044 36.96359252929688 C 1.998992204666138 39.42190170288086 3.360343217849731 41.7001953125 5.391119003295898 44.14162445068359 C 7.855051517486572 47.08371734619141 10.81964683532715 49.40701675415039 14.20614719390869 51.04401397705078 C 15.49999332427979 51.65718460083008 17.22699737548828 52.38286590576172 19.15651512145996 52.50662231445313 C 19.27465057373047 52.51224899291992 19.39840888977051 52.51787567138672 19.51091575622559 52.51787567138672 C 20.81038856506348 52.51787567138672 21.90171813964844 52.05096435546875 22.75678253173828 51.12277221679688 C 22.76240921020508 51.11151885986328 22.77365875244141 51.10589599609375 22.77928352355957 51.09464263916016 C 23.07180595397949 50.74024200439453 23.40933227539063 50.41959381103516 23.76373291015625 50.07644653320313 C 24.00562477111816 49.84580230712891 24.25314521789551 49.60390853881836 24.49503707885742 49.35076522827148 C 25.05195236206055 48.77134704589844 25.34447479248047 48.09629821777344 25.34447479248047 47.40437316894531 C 25.34447479248047 46.70681762695313 25.04632949829102 46.03739547729492 24.4781608581543 45.474853515625 L 21.38980865478516 42.375244140625 Z M 23.40370941162109 48.29880905151367 C 23.3980827331543 48.29880905151367 23.3980827331543 48.30443572998047 23.40370941162109 48.29880905151367 C 23.18431854248047 48.53507995605469 22.95930099487305 48.74884033203125 22.7174072265625 48.98511123657227 C 22.35175514221191 49.33388519287109 21.98047828674316 49.69953918457031 21.6317024230957 50.11019515991211 C 21.06353569030762 50.71773910522461 20.39411163330078 51.004638671875 19.51654624938965 51.004638671875 C 19.43216514587402 51.004638671875 19.3421573638916 51.004638671875 19.25777626037598 50.99900817871094 C 17.58702659606934 50.89212799072266 16.0344123840332 50.23957824707031 14.86994934082031 49.68266296386719 C 11.68596267700195 48.14129638671875 8.890130996704102 45.95301055908203 6.566833019256592 43.17967987060547 C 4.648565769195557 40.86763381958008 3.365970373153687 38.72997283935547 2.516532421112061 36.43480682373047 C 1.993368625640869 35.03407669067383 1.802104473114014 33.94274520874023 1.886485815048218 32.91329193115234 C 1.942739963531494 32.25511932373047 2.195883750915527 31.70945358276367 2.662793159484863 31.24254417419434 L 4.581060409545898 29.32427597045898 C 4.856706142425537 29.06550788879395 5.149227619171143 28.92487335205078 5.436123847961426 28.92487335205078 C 5.790525436401367 28.92487335205078 6.07742166519165 29.13863754272461 6.257434844970703 29.31865119934082 C 6.263060092926025 29.32427597045898 6.268685340881348 29.32990264892578 6.274311065673828 29.33552742004395 C 6.617461204528809 29.65617752075195 6.943735599517822 29.98807525634766 7.286886215209961 30.34247779846191 C 7.461274147033691 30.52249145507813 7.641287326812744 30.7025032043457 7.821300506591797 30.88814163208008 L 9.357039451599121 32.42388153076172 C 9.953333854675293 33.02017593383789 9.953333854675293 33.57146453857422 9.357039451599121 34.16776275634766 C 9.193902969360352 34.33089828491211 9.036391258239746 34.49403381347656 8.873252868652344 34.65154647827148 C 8.400718688964844 35.13533401489258 7.950685024261475 35.58536529541016 7.461273670196533 36.02414703369141 C 7.450023174285889 36.035400390625 7.438771724700928 36.04102325439453 7.433146476745605 36.05227661132813 C 6.949360847473145 36.53606414794922 7.039367198944092 37.00859832763672 7.140625 37.32924652099609 C 7.146250247955322 37.34612274169922 7.151875495910645 37.36299896240234 7.157501220703125 37.37987518310547 C 7.556905746459961 38.34744644165039 8.119447708129883 39.25876235961914 8.97451114654541 40.3444709777832 L 8.980136871337891 40.35009765625 C 10.53275203704834 42.26273727416992 12.16974830627441 43.75347137451172 13.97550773620605 44.89543151855469 C 14.20615005493164 45.04169464111328 14.44241714477539 45.15982818603516 14.6674337387085 45.2723388671875 C 14.86994934082031 45.37359619140625 15.06121349334717 45.4692268371582 15.22434997558594 45.57048416137695 C 15.24685192108154 45.58173370361328 15.26935291290283 45.59860992431641 15.29185581207275 45.60986328125 C 15.48311996459961 45.70549774169922 15.66313362121582 45.75049591064453 15.8487720489502 45.75049591064453 C 16.31568145751953 45.75049591064453 16.60820388793945 45.45797729492188 16.70383644104004 45.36234283447266 L 18.62772941589355 43.43845367431641 C 18.81899452209473 43.24718475341797 19.12276649475098 43.01654434204102 19.47716903686523 43.01654434204102 C 19.8259449005127 43.01654434204102 20.11284065246582 43.23593521118164 20.28722763061523 43.42720031738281 C 20.29285430908203 43.43282318115234 20.29285430908203 43.43282318115234 20.29848098754883 43.43845367431641 L 23.39808464050293 46.53805541992188 C 23.97750091552734 47.11184692382813 23.97750091552734 47.7025146484375 23.40370941162109 48.29880905151367 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_wiv4v2 =
    '<svg viewBox="65.5 357.0 25.0 17.6" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(65.5, 281.0)" d="M 22.802734375 76 L 2.197265625 76 C 0.9832519292831421 76 0 76.98935699462891 0 78.197265625 L 0 91.380859375 C 0 92.595947265625 0.990478515625 93.578125 2.197265625 93.578125 L 22.802734375 93.578125 C 24.006591796875 93.578125 25 92.60009765625 25 91.380859375 L 25 78.197265625 C 25 76.99150085449219 24.02065467834473 76 22.802734375 76 Z M 22.49501991271973 77.46484375 C 22.04609298706055 77.911376953125 14.32046031951904 85.59633636474609 14.0537109375 85.86167144775391 C 13.638671875 86.27671051025391 13.08691501617432 86.50522613525391 12.5 86.50522613525391 C 11.91308498382568 86.50522613525391 11.361328125 86.27665710449219 10.94492244720459 85.86029815673828 C 10.76552677154541 85.68183898925781 3.125146389007568 78.08174133300781 2.504980325698853 77.46484375 L 22.49501991271973 77.46484375 Z M 1.46484375 91.08271789550781 L 1.46484375 78.496337890625 L 7.794824123382568 84.79296875 L 1.46484375 91.08271789550781 Z M 2.505908250808716 92.11328125 L 8.833398818969727 85.82602691650391 L 9.91049861907959 86.8974609375 C 10.60219764709473 87.58915710449219 11.52182674407959 87.97006988525391 12.5 87.97006988525391 C 13.47817325592041 87.97006988525391 14.39780330657959 87.58915710449219 15.088134765625 86.89882659912109 L 16.16660118103027 85.82602691650391 L 22.49409103393555 92.11328125 L 2.505908250808716 92.11328125 Z M 23.53515625 91.08271789550781 L 17.20517539978027 84.79296875 L 23.53515625 78.496337890625 L 23.53515625 91.08271789550781 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_v4c4p3 =
    '<svg viewBox="66.5 356.0 25.0 19.4" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(66.5, 288.0)" d="M 24.23194694519043 73.70138549804688 L 13.12083339691162 68.14583587646484 C 12.93333435058594 68.05207824707031 12.7229175567627 68 12.50000095367432 68 C 12.27708339691162 68 12.0666675567627 68.05207824707031 11.8791675567627 68.14583587646484 L 0.7680556774139404 73.70138549804688 C 0.3125000298023224 73.92916870117188 0 74.40069580078125 0 74.94444274902344 C 0 75.48818969726563 0.3125000298023224 75.95973205566406 0.7680556178092957 76.1875 L 1.388888955116272 76.49791717529297 L 1.388888955116272 81.38749694824219 C 0.9750000238418579 81.62777709960938 0.694444477558136 82.07083129882813 0.694444477558136 82.58334350585938 C 0.694444477558136 83.35069274902344 1.316666841506958 83.97222137451172 2.083333492279053 83.97222137451172 C 2.849999904632568 83.97222137451172 3.472222328186035 83.35069274902344 3.472222328186035 82.58334350585938 C 3.472222328186035 82.07083129882813 3.191666841506958 81.62777709960938 2.777777910232544 81.38680267333984 L 2.777777910232544 77.19166564941406 L 4.861111164093018 78.23333740234375 L 4.861111164093018 82.58334350585938 C 4.861111164093018 85.26805877685547 8.281250953674316 87.44444274902344 12.50000095367432 87.44444274902344 C 16.71875190734863 87.44444274902344 20.13889122009277 85.26805877685547 20.13889122009277 82.58334350585938 L 20.13889122009277 78.23403167724609 L 24.23194694519043 76.1875 C 24.6875 75.95973205566406 25.00000190734863 75.48818969726563 25.00000190734863 74.94444274902344 C 25.00000190734863 74.40069580078125 24.6875 73.92916870117188 24.23194694519043 73.70138549804688 Z M 18.05555725097656 82.58334350585938 C 18.05555725097656 83.86805725097656 15.6291675567627 85.36111450195313 12.50000095367432 85.36111450195313 C 9.370834350585938 85.36111450195313 6.94444465637207 83.86805725097656 6.94444465637207 82.58334350585938 L 6.94444465637207 79.27500915527344 L 11.8791675567627 81.74305725097656 C 12.0666675567627 81.83680725097656 12.27708339691162 81.88889312744141 12.50000095367432 81.88889312744141 C 12.7229175567627 81.88889312744141 12.93333435058594 81.83680725097656 13.12083339691162 81.74305725097656 L 18.05555725097656 79.27500915527344 L 18.05555725097656 82.58334350585938 Z M 12.50000095367432 79.72431182861328 L 2.940277814865112 74.94444274902344 L 12.50000095367432 70.16458129882813 L 22.05972290039063 74.94444274902344 L 12.50000095367432 79.72431182861328 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wjl8u5 =
    '<svg viewBox="69.9 362.5 13.4 2.2" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-36.61, 162.48)" d="M 119.8617858886719 201.0896453857422 C 119.8617858886719 200.4878387451172 119.3739471435547 200 118.7721252441406 200 L 107.5486755371094 200 C 106.9468536376953 200 106.4590148925781 200.4878387451172 106.4590148925781 201.0896453857422 C 106.4590148925781 201.6914672851563 106.9468536376953 202.1793060302734 107.5486755371094 202.1793060302734 L 118.7721252441406 202.1793060302734 C 119.3739471435547 202.1793060302734 119.8617858886719 201.6914672851563 119.8617858886719 201.0896453857422 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_4iw10s =
    '<svg viewBox="69.9 366.8 9.0 2.2" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-36.61, 86.84)" d="M 107.5486602783203 280 C 106.9468383789063 280 106.4589996337891 280.4878234863281 106.4589996337891 281.0896301269531 C 106.4589996337891 281.6914672851563 106.9468383789063 282.1793212890625 107.5486602783203 282.1793212890625 L 114.3650512695313 282.1793212890625 C 114.9668731689453 282.1793212890625 115.4547119140625 281.6914672851563 115.4547119140625 281.0896301269531 C 115.4547119140625 280.4878234863281 114.9668731689453 280 114.3650512695313 280 L 107.5486602783203 280 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_m52rhj =
    '<svg viewBox="65.5 351.6 22.1 27.9" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(38.93, 351.58)" d="M 34.57292175292969 25.71587181091309 L 30.92862319946289 25.71587181091309 C 29.72695159912109 25.71587181091309 28.74931335449219 24.73823547363281 28.74931335449219 23.53656196594238 L 28.74931335449219 4.358622550964355 C 28.74931335449219 3.1569504737854 29.72695159912109 2.179311275482178 30.92862319946289 2.179311275482178 L 44.32534408569336 2.179311275482178 C 45.52701568603516 2.179311275482178 46.50465393066406 3.1569504737854 46.50465393066406 4.358622550964355 L 46.50465393066406 11.06000518798828 C 46.50465393066406 11.66182231903076 46.99249267578125 12.14966106414795 47.59430694580078 12.14966106414795 C 48.19612503051758 12.14966106414795 48.68396377563477 11.66182231903076 48.68396377563477 11.06000518798828 L 48.68396377563477 4.358622550964355 C 48.68396377563477 1.955278158187866 46.72868728637695 0 44.32534408569336 0 L 30.92862319946289 0 C 28.52527809143066 0 26.56999969482422 1.955278158187866 26.56999969482422 4.358622550964355 L 26.56999969482422 23.53656196594238 C 26.56999969482422 25.93990707397461 28.52527809143066 27.89518547058105 30.92862319946289 27.89518547058105 L 34.57292175292969 27.89518547058105 C 35.17473983764648 27.89518547058105 35.66257858276367 27.40734481811523 35.66257858276367 26.80552864074707 C 35.66257858276367 26.20371437072754 35.17473983764648 25.71587181091309 34.57292175292969 25.71587181091309 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_uk39fa =
    '<svg viewBox="77.3 366.4 13.2 13.1" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-166.14, 94.38)" d="M 255.6844177246094 272.9801940917969 C 254.4098510742188 271.7055969238281 252.3360290527344 271.70556640625 251.0622863769531 272.9792785644531 L 245.0798950195313 278.9484558105469 C 244.9528503417969 279.0752258300781 244.859130859375 279.2313842773438 244.8069458007813 279.4031066894531 L 243.5040893554688 283.6922302246094 C 243.3885803222656 284.0725402832031 243.4891967773438 284.4854431152344 243.7667541503906 284.7699279785156 C 243.9746398925781 284.9830017089844 244.2571105957031 285.0986633300781 244.5467834472656 285.0986633300781 C 244.6437072753906 285.0986633300781 244.7415771484375 285.085693359375 244.8376159667969 285.0590515136719 L 249.2357177734375 283.8407592773438 C 249.4167175292969 283.7906494140625 249.5816955566406 283.6946105957031 249.7146301269531 283.5618591308594 L 255.6844787597656 277.603271484375 C 256.9590454101563 276.3286743164063 256.9590454101563 274.2548522949219 255.6844177246094 272.9801940917969 Z M 248.3778381347656 281.8170776367188 L 246.1651916503906 282.4299926757813 L 246.8127136230469 280.2981262207031 L 250.8493041992188 276.2704772949219 L 252.390625 277.8118286132813 L 248.3778381347656 281.8170776367188 Z M 254.1442565917969 276.0616149902344 L 253.9331359863281 276.2723083496094 L 252.39208984375 274.7312316894531 L 252.6025085449219 274.5212707519531 C 253.02734375 274.0964050292969 253.7186279296875 274.0964050292969 254.1434936523438 274.5212707519531 C 254.568359375 274.9461364746094 254.568359375 275.6374206542969 254.1442565917969 276.0616149902344 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_fxejn8 =
    '<svg viewBox="69.9 358.1 13.4 2.2" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-36.61, 238.12)" d="M 118.7721252441406 120 L 107.5486755371094 120 C 106.9468536376953 120 106.4590148925781 120.4878387451172 106.4590148925781 121.0896606445313 C 106.4590148925781 121.6914825439453 106.9468536376953 122.1793212890625 107.5486755371094 122.1793212890625 L 118.7721252441406 122.1793212890625 C 119.3739471435547 122.1793212890625 119.8617858886719 121.6914825439453 119.8617858886719 121.0896606445313 C 119.8617858886719 120.4878387451172 119.3739471435547 120 118.7721252441406 120 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_8m0axe =
    '<svg viewBox="71.2 353.7 14.1 13.3" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(62.16, 351.74)" d="M 16.07287406921387 15.255126953125 C 19.9791145324707 15.255126953125 23.14574432373047 12.28786659240723 23.14574432373047 8.627565383911133 C 23.14574432373047 4.967262268066406 19.9791145324707 2.000000715255737 16.07287406921387 2.000000715255737 C 12.16663360595703 2.000000715255737 9.000001907348633 4.967262268066406 9.000001907348633 8.627565383911133 C 9.000001907348633 12.28786659240723 12.16663360595703 15.255126953125 16.07287216186523 15.255126953125 Z M 16.07287406921387 3.893589019775391 C 18.86304092407227 3.893589019775391 21.12492561340332 6.013062477111816 21.12492561340332 8.627565383911133 C 21.12492561340332 11.24206638336182 18.86304092407227 13.36153888702393 16.07287406921387 13.36153888702393 C 13.2827033996582 13.36153888702393 11.02082252502441 11.24206638336182 11.02082252502441 8.627565383911133 C 11.02082252502441 6.0130615234375 13.2827033996582 3.893589019775391 16.07287406921387 3.893589019775391 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wkyxh4 =
    '<svg viewBox="65.5 368.0 25.0 11.2" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(61.5, 350.04)" d="M 17.54166412353516 18 L 15.45833396911621 18 C 9.130072593688965 18 3.999998807907104 22.59190368652344 3.999999761581421 28.25630569458008 C 3.999999761581421 28.77124977111816 4.466367721557617 29.18869018554688 5.041662693023682 29.18869400024414 C 5.041662693023682 29.18869400024414 10.29352951049805 29.18869400024414 16.02269554138184 29.18869400024414 C 21.75186157226563 29.18869400024414 27.95833206176758 29.18869400024414 27.95833206176758 29.18869400024414 C 28.53362846374512 29.18869400024414 28.99999809265137 28.77124977111816 28.99999809265137 28.25630378723145 C 28.99999809265137 22.59190368652344 23.86992835998535 18.00000381469727 17.54166412353516 18 Z M 6.145833015441895 27.32390785217285 C 6.676154613494873 23.07818222045898 10.68546199798584 19.8668098449707 15.45833587646484 19.86478042602539 L 17.54166412353516 19.86478042602539 C 22.31454086303711 19.86681365966797 26.32384300231934 23.07818222045898 26.85416412353516 27.32391166687012 L 6.145833015441895 27.32390785217285 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qftx7n =
    '<svg viewBox="0.0 0.0 9.5 9.5" ><path  d="M 9.341797828674316 3.655512094497681 C 9.215399742126465 3.529137134552002 9.061877250671387 3.465973377227783 8.881418228149414 3.465973377227783 L 6.065317153930664 3.465973377227783 L 6.065317153930664 0.6498003005981445 C 6.065317153930664 0.4693423807621002 6.002105712890625 0.315866619348526 5.875777721405029 0.1894915252923965 C 5.74942684173584 0.06321125477552414 5.596068859100342 0 5.415350437164307 0 L 4.115749835968018 0 C 3.93526816368103 0 3.781816005706787 0.0631401315331459 3.655441045761108 0.189515233039856 C 3.52906608581543 0.3158903121948242 3.465902090072632 0.4693661034107208 3.465902090072632 0.6498239636421204 L 3.465902090072632 3.465997219085693 L 0.6498239636421204 3.465997219085693 C 0.4693661034107208 3.465997219085693 0.3158903121948242 3.529161214828491 0.189515233039856 3.65553617477417 C 0.0631401315331459 3.781911373138428 0 3.935244560241699 0 4.11582088470459 L 0 5.415587902069092 C 0 5.596211433410645 0.0631164163351059 5.749568939208984 0.1894915252923965 5.87582540512085 C 0.315866619348526 6.00224781036377 0.4693423807621002 6.065364837646484 0.6498003005981445 6.065364837646484 L 3.465878486633301 6.065364837646484 L 3.465878486633301 8.881584167480469 C 3.465878486633301 9.062041282653809 3.52904224395752 9.215635299682617 3.655417442321777 9.341963768005371 C 3.781792402267456 9.468221664428711 3.935244560241699 9.531337738037109 4.115726470947266 9.531337738037109 L 5.415421485900879 9.531337738037109 C 5.596022129058838 9.531337738037109 5.749402523040771 9.468221664428711 5.875801563262939 9.341963768005371 C 6.002223491668701 9.215566635131836 6.065340518951416 9.062041282653809 6.065340518951416 8.881584167480469 L 6.065340518951416 6.065364837646484 L 8.88139533996582 6.065364837646484 C 9.062018394470215 6.065364837646484 9.215447425842285 6.00224781036377 9.341774940490723 5.87582540512085 C 9.46812629699707 5.749568939208984 9.531313896179199 5.596211433410645 9.531313896179199 5.415587902069092 L 9.531313896179199 4.11582088470459 C 9.531267166137695 3.935244560241699 9.468221664428711 3.781816005706787 9.341797828674316 3.655512094497681 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_maxgtd =
    '<svg viewBox="-3465.0 6107.5 31.0 14.7" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-3465.0, 6097.46)" d="M 15.49962520599365 10.00000190734863 C 6.975355625152588 10.00000190734863 0.0009546640794724226 13.52431011199951 0.0009546640794724226 17.8317985534668 C 0.0009546640794724226 17.8317985534668 -0.005099579691886902 17.84024429321289 0.0009546640794724226 21.74769973754883 C 0.007008908316493034 25.65515518188477 30.99790954589844 25.65515518188477 30.9982967376709 21.74769973754883 C 30.99868583679199 17.84024429321289 30.9982967376709 17.8317985534668 30.9982967376709 17.8317985534668 C 30.9982967376709 13.52431011199951 24.02389335632324 10.00000190734863 15.49962520599365 10.00000190734863 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
