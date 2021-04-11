import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import 'methods.dart';

class EventDetails2 extends StatefulWidget {
  EventDetails2({
    Key key,
  }) : super(key: key);

  @override
  _EventDetails2State createState() => _EventDetails2State();
}

class _EventDetails2State extends State<EventDetails2> {
  String uid;
  String id;
  @override
  void initState() {
    super.initState();
    getEventData();
  }

  Future getEventData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    uid = prefs.getString('uid');
    Map data = json.decode(prefs.getString('data'));
    Map events = {};
    
    for (var i = 0; i < data.length; i++) {
      if (data.values.toList()[i]['subEvents'] == null) {
        events[data.keys.toList()[i]] = data.values.toList()[i];
      } else {
        for (var j = 0; j < data.values.toList()[i]['subEvents'].length; j++) {
          events[data.values.toList()[i]['subEvents'].keys.toList()[j]] =
              data.values.toList()[i]['subEvents'].values.toList()[j];
        }
      }
    }
    events = events[prefs.getString('eventId')];
    return events;
  }

  Widget build(BuildContext context) {
    final events = FutureBuilder(
        future: getEventData(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            Map<dynamic, dynamic> values = snapshot.data;
            return Stack(
              children: <Widget>[
                Positioned(
                  left: 38,
                  top: 744,
                  child: SizedBox(
                    width: 333.0,
                    height: 48.0,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 333.0, 48.0),
                          size: Size(333.0, 48.0),
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
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                            Map userdata =
                                json.decode(prefs.getString('userData'));

                            final databaseReference =
                                FirebaseDatabase.instance.reference();

                            if (userdata.keys.toList().contains('registeration')) {
                              if (userdata['registeration']
                                  .values
                                  .toList()
                                  .contains(id)) {
                                showLoaderDialog(
                                    context, "removing registered event...");

                                await databaseReference
                                    .child("users/" + uid + '/registeration')
                                    .child(id)
                                    .remove();
                                userdata['registeration'].remove(id);

                                Navigator.pop(context);
                                showAlertDialog(
                                    context,
                                    '/Home',
                                    'registered event Deleted Successfully',
                                    'You will now not be notified for the event.');
                              } else {
                                showLoaderDialog(
                                    context, "registering...");
                                await databaseReference
                                    .child("users/" + uid + '/registeration')
                                    .child(id)
                                    .set(id);
                                userdata['registeration'] = {id: id};

                                Navigator.pop(context);
                                showAlertDialog(
                                    context,
                                    '/Home',
                                    'registered Successfully',
                                    'You will now be notified for the registered event.');
                              }

                              prefs.setString(
                                  'userData', json.encode(userdata));
                            } else {
                              showLoaderDialog(context, "registering...");
                              await databaseReference
                                  .child("users/" + uid + '/registeration')
                                  .child(id)
                                  .set(id);
                              userdata['registeration'] = {id: id};

                              Navigator.pop(context);
                              showAlertDialog(
                                  context,
                                  '/Home',
                                  'registered Successfully',
                                  'You will now be notified for the registered event.');
                            }

                            prefs.setString('userData', json.encode(userdata));
                          
                          },
                          child: Pinned.fromSize(
                            bounds: Rect.fromLTWH(132.5, 14.0, 73.0, 21.0),
                            size: Size(333.0, 48.0),
                            child: Text(
                              'Register',
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
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 38,
                  top: 498,
                  child: SizedBox(
                    width: 333.0,
                    height: 211.0,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(176.0, 105.0, 157.0, 121.0),
                          size: Size(333.0, 211.0),
                          pinRight: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Image 3' (shape)
                              Container(
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
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(176.0, 0.0, 157.0, 97.0),
                          size: Size(333.0, 211.0),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Image 2' (shape)
                              Container(
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
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 167.0, 215.0),
                          size: Size(333.0, 200.0),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child:
                              // Adobe XD layer: 'Image 1' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                image: NetworkImage(values['event_pic']),
                                fit: BoxFit.cover,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x29000000),
                                  offset: Offset(7, 7),
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
                Positioned(
                  left: 38,
                  top: 460,
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
                Positioned(
                  left: 57,
                  top: 334,
                  child: Text(
                    values['description'].toString(),
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 17,
                      color: const Color(0xff9d9d9d),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                // Adobe XD layer: 'Club Background' (shape)
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 433.0,
                    height: 242.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage('assets/Background Image4.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 38,
                  top: 127,
                  child: SizedBox(
                    width: 333.0,
                    height: 185.0,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 27.0, 333.0, 158.0),
                          size: Size(333.0, 185.0),
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
                          bounds: Rect.fromLTWH(239.0, 115.0, 59.0, 59.0),
                          size: Size(333.0, 185.0),
                          pinRight: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Location Info' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(-6.0, 28.0, 69.0, 31.0),
                                size: Size(59.0, 59.0),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: Text(
                                  'Santokba\nFoyer',
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
                                bounds: Rect.fromLTWH(20.0, 0.0, 19.3, 25.0),
                                size: Size(59.0, 59.0),
                                child:
                                    // Adobe XD layer: 'Location Icon' (shape)
                                    SvgPicture.string(
                                  _svg_w4c8pt,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(150.0, 115.0, 34.0, 59.0),
                          size: Size(333.0, 185.0),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Time Info' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(-5.0, 28.0, 44.0, 31.0),
                                size: Size(34.0, 59.0),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: Text(
                                  // 'abc',
                                  values['event_start_time']
                                      .toString()
                                      .split(' ')[1]
                                      .substring(0, 5),
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
                                bounds: Rect.fromLTWH(4.0, 0.0, 25.0, 25.0),
                                size: Size(34.0, 59.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Time Icon' (group)
                                    Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 25.0, 25.0),
                                      size: Size(25.0, 25.0),
                                      child: SvgPicture.string(
                                        _svg_zgo1ml,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(11.5, 3.8, 7.2, 14.9),
                                      size: Size(25.0, 25.0),
                                      child: SvgPicture.string(
                                        _svg_coyz6r,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 25.0, 25.0),
                                      size: Size(25.0, 25.0),
                                      child: Container(
                                        decoration: BoxDecoration(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(34.0, 115.0, 56.0, 59.0),
                          size: Size(333.0, 185.0),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Date Info' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(-3.0, 28.0, 66.0, 31.0),
                                size: Size(56.0, 59.0),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: Text(
                                  values['event_start_date'].toString(),
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
                                bounds: Rect.fromLTWH(15.0, 0.0, 25.0, 25.0),
                                size: Size(56.0, 59.0),
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Calendar Icon' (group)
                                    Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 1.9, 25.0, 23.1),
                                      size: Size(25.0, 25.0),
                                      child: SvgPicture.string(
                                        _svg_2fua5o,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(15.4, 15.4, 5.8, 5.8),
                                      size: Size(25.0, 25.0),
                                      child: SvgPicture.string(
                                        _svg_16syn8,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 7.7, 25.0, 1.9),
                                      size: Size(25.0, 25.0),
                                      child: SvgPicture.string(
                                        _svg_l0a8re,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(6.7, 0.0, 1.9, 5.8),
                                      size: Size(25.0, 25.0),
                                      child: SvgPicture.string(
                                        _svg_9yqjhj,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(16.3, 0.0, 1.9, 5.8),
                                      size: Size(25.0, 25.0),
                                      child: SvgPicture.string(
                                        _svg_9n2cnq,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 25.0, 25.0),
                                      size: Size(25.0, 25.0),
                                      child: Container(
                                        decoration: BoxDecoration(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(-16.0, 86.0, 204.0, 17.0),
                          size: Size(333.0, 185.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'By' + values['club'].toString(),
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
                          bounds: Rect.fromLTWH(24.0, 60.0, 202.0, 28.0),
                          size: Size(333.0, 185.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            values['event_name'].toString(),
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 22,
                              color: const Color(0xff404040),
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                            Map userdata =
                                json.decode(prefs.getString('userData'));

                            final databaseReference =
                                FirebaseDatabase.instance.reference();

                            if (userdata.keys.toList().contains('bookmark')) {
                              if (userdata['bookmark']
                                  .values
                                  .toList()
                                  .contains(id)) {
                                showLoaderDialog(
                                    context, "removing Bookmark...");

                                await databaseReference
                                    .child("users/" + uid + '/bookmark')
                                    .child(id)
                                    .remove();
                                userdata['bookmark'].remove(id);

                                Navigator.pop(context);
                                showAlertDialog(
                                    context,
                                    '/Home',
                                    'Bookmark Deleted Successfully',
                                    'You will now not be notified for the event.');
                              } else {
                                showLoaderDialog(
                                    context, "Creating Bookmark...");
                                await databaseReference
                                    .child("users/" + uid + '/bookmark')
                                    .child(id)
                                    .set(id);
                                userdata['bookmark'] = {id: id};

                                Navigator.pop(context);
                                showAlertDialog(
                                    context,
                                    '/Home',
                                    'Bookmark Created Successfully',
                                    'You will now be notified for the bookmarked event.');
                              }

                              prefs.setString(
                                  'userData', json.encode(userdata));
                            } else {
                              showLoaderDialog(context, "Creating Bookmark...");
                              await databaseReference
                                  .child("users/" + uid + '/bookmark')
                                  .child(id)
                                  .set(id);
                              userdata['bookmark'] = {id: id};

                              Navigator.pop(context);
                              showAlertDialog(
                                  context,
                                  '/Home',
                                  'Bookmark Created Successfully',
                                  'You will now be notified for the bookmarked event.');
                            }

                            prefs.setString('userData', json.encode(userdata));
                          },
                          child: Pinned.fromSize(
                            bounds: Rect.fromLTWH(284.0, 38.0, 35.0, 35.0),
                            size: Size(333.0, 185.0),
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
                                Positioned(
                                  left: 11,
                                  top: 9,
                                  child: SvgPicture.string(
                                    _svg_d54sjf,
                                    allowDrawingOutsideViewBox: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(24.0, 0.0, 55.0, 55.0),
                          size: Size(333.0, 185.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Club Logo' (group)
                              Stack(
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
                                      image: const AssetImage(
                                          'assets/Tech Club Logo Big.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
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
                  left: 0,
                  top: 35,
                  child: FlatButton(
                    onPressed: () async {
                      dynamic result =
                          await Navigator.pushNamed(context, '/Home');
                    },
                    child: SvgPicture.string(
                      _svg_see9ki,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                ),
              ],
            );
            // return new Column(
            //   children: [
            //     Text('Club: ' + values['club'].toString()),
            //     Text('Name: ' + values['event_name'].toString()),
            //     Image.network(values['event_pic'].toString(),
            //         width: 300, height: 150, fit: BoxFit.fill),
            //     Text('Description: ' + values['description'].toString()),
            //     Text('Date: ' + values['event_date'].toString()),
            //     Text('Time: ' + values['event_time'].toString()),
            //   ],
            // );
          }
          return CircularProgressIndicator();
        });
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: events,
      //   body: Stack(
      //     children: <Widget>[
      //       Positioned(
      //         left: 38,
      //         top: 744,
      //         child: SizedBox(
      //             width: 333.0,
      //             height: 48.0,
      //             child: Stack(
      //         children: <Widget>[
      //           Pinned.fromSize(
      //             bounds: Rect.fromLTWH(0.0, 0.0, 333.0, 48.0),
      //             size: Size(333.0, 48.0),
      //             pinLeft: true,
      //             pinRight: true,
      //             pinTop: true,
      //             pinBottom: true,
      //             child:
      //                 // Adobe XD layer: 'Button' (shape)
      //                 Container(
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10.0),
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
      //             bounds: Rect.fromLTWH(132.5, 14.0, 73.0, 21.0),
      //             size: Size(333.0, 48.0),
      //             child: Text(
      //               'Register',
      //               style: TextStyle(
      //                 fontFamily: 'Poppins',
      //                 fontSize: 18,
      //                 color: const Color(0xffffffff),
      //                 fontWeight: FontWeight.w600,
      //               ),
      //               textAlign: TextAlign.left,
      //             ),
      //           ),
      //         ],
      //             ),
      //           ),
      //       ),
      //       Positioned(
      //         left: 38,
      //         top: 498,
      //         child: SizedBox(
      //             width: 333.0,
      //             height: 211.0,
      //             child: Stack(
      //         children: <Widget>[
      //           Pinned.fromSize(
      //             bounds: Rect.fromLTWH(176.0, 105.0, 157.0, 121.0),
      //             size: Size(333.0, 211.0),
      //             pinRight: true,
      //             pinBottom: true,
      //             fixedWidth: true,
      //             fixedHeight: true,
      //             child:
      //                 // Adobe XD layer: 'Image 3' (shape)
      //                 Container(
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(15.0),
      //                 image: DecorationImage(
      //                   image: const AssetImage('assets/Background Image3.png'),
      //                   fit: BoxFit.cover,
      //                 ),
      //               ),
      //             ),
      //           ),
      //           Pinned.fromSize(
      //             bounds: Rect.fromLTWH(176.0, 0.0, 157.0, 97.0),
      //             size: Size(333.0, 211.0),
      //             pinRight: true,
      //             pinTop: true,
      //             fixedWidth: true,
      //             fixedHeight: true,
      //             child:
      //                 // Adobe XD layer: 'Image 2' (shape)
      //                 Container(
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(15.0),
      //                 image: DecorationImage(
      //                   image: const AssetImage('assets/Background Image3.png'),
      //                   fit: BoxFit.cover,
      //                 ),
      //               ),
      //             ),
      //           ),
      //           Pinned.fromSize(
      //             bounds: Rect.fromLTWH(0.0, 0.0, 167.0, 215.0),
      //             size: Size(333.0, 200.0),
      //             pinLeft: true,
      //             pinTop: true,
      //             pinBottom: true,
      //             fixedWidth: true,
      //             child:
      //                 // Adobe XD layer: 'Image 1' (shape)
      //                 Container(
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(15.0),
      //                 image: DecorationImage(
      //                   image: const AssetImage('assets/Background Image4.png'),
      //                   fit: BoxFit.cover,
      //                 ),
      //                 boxShadow: [
      //                   BoxShadow(
      //                     color: const Color(0x29000000),
      //                     offset: Offset(7, 7),
      //                     blurRadius: 80,
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ),
      //         ],
      //             ),
      //           ),
      //       ),
      //       Positioned(
      //         left: 38,
      //         top: 460,
      //         child: Text(
      //           'Gallery',
      //           style: TextStyle(
      //             fontFamily: 'Poppins',
      //             fontSize: 22,
      //             color: const Color(0xff404040),
      //             fontWeight: FontWeight.w600,
      //           ),
      //           textAlign: TextAlign.left,
      //         ),
      //       ),
      //       Positioned(
      //         left: 57,
      //         top: 334,
      //         child: Text(
      //           'Lorem ipsum dolor sit amet, consetetur \nsadipscing elitr, sed diam nonumy \neirmod tempor invidunt ut labore et \ndolore magna aliquyam erat, sed diam \nvoluptua. At vero eos et accusam et ',
      //           style: TextStyle(
      //             fontFamily: 'Poppins',
      //             fontSize: 17,
      //             color: const Color(0xff9d9d9d),
      //           ),
      //           textAlign: TextAlign.left,
      //         ),
      //       ),
      //       // Adobe XD layer: 'Club Background' (shape)
      //       Positioned(
      //         left: 0,
      //         top: 0,
      //         child: Container(
      //           width: 433.0,
      //           height: 242.0,
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: const AssetImage('assets/Background Image4.png'),
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //         ),
      //       ),
      //       Positioned(
      //         left: 38,
      //         top: 127,
      //         child: SizedBox(
      //             width: 333.0,
      //             height: 185.0,
      //             child: Stack(
      //         children: <Widget>[
      //           Pinned.fromSize(
      //             bounds: Rect.fromLTWH(0.0, 27.0, 333.0, 158.0),
      //             size: Size(333.0, 185.0),
      //             pinLeft: true,
      //             pinRight: true,
      //             pinTop: true,
      //             pinBottom: true,
      //             child: Container(
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(20.0),
      //                 color: const Color(0xffffffff),
      //                 boxShadow: [
      //                   BoxShadow(
      //                     color: const Color(0x26000000),
      //                     offset: Offset(0, 5),
      //                     blurRadius: 10,
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ),
      //           Pinned.fromSize(
      //             bounds: Rect.fromLTWH(239.0, 115.0, 59.0, 59.0),
      //             size: Size(333.0, 185.0),
      //             pinRight: true,
      //             pinBottom: true,
      //             fixedWidth: true,
      //             fixedHeight: true,
      //             child:
      //                 // Adobe XD layer: 'Location Info' (group)
      //                 Stack(
      //               children: <Widget>[
      //                 Pinned.fromSize(
      //                   bounds: Rect.fromLTWH(-6.0, 28.0, 69.0, 31.0),
      //                   size: Size(59.0, 59.0),
      //                   pinLeft: true,
      //                   pinRight: true,
      //                   pinBottom: true,
      //                   fixedHeight: true,
      //                   child: Text(
      //                     'Santokba\nFoyer',
      //                     style: TextStyle(
      //                       fontFamily: 'Poppins',
      //                       fontSize: 14,
      //                       color: const Color(0xff9d9d9d),
      //                       fontWeight: FontWeight.w500,
      //                       height: 1.1666666666666667,
      //                     ),
      //                     textAlign: TextAlign.center,
      //                   ),
      //                 ),
      //                 Pinned.fromSize(
      //                   bounds: Rect.fromLTWH(20.0, 0.0, 19.3, 25.0),
      //                   size: Size(59.0, 59.0),
      //                   child:
      //                       // Adobe XD layer: 'Location Icon' (shape)
      //                       SvgPicture.string(
      //                     _svg_w4c8pt,
      //                     allowDrawingOutsideViewBox: true,
      //                     fit: BoxFit.fill,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //           Pinned.fromSize(
      //             bounds: Rect.fromLTWH(150.0, 115.0, 34.0, 59.0),
      //             size: Size(333.0, 185.0),
      //             pinBottom: true,
      //             fixedWidth: true,
      //             fixedHeight: true,
      //             child:
      //                 // Adobe XD layer: 'Time Info' (group)
      //                 Stack(
      //               children: <Widget>[
      //                 Pinned.fromSize(
      //                   bounds: Rect.fromLTWH(-5.0, 28.0, 44.0, 31.0),
      //                   size: Size(34.0, 59.0),
      //                   pinLeft: true,
      //                   pinRight: true,
      //                   pinBottom: true,
      //                   fixedHeight: true,
      //                   child: Text(
      //                     '05:00\nPM',
      //                     style: TextStyle(
      //                       fontFamily: 'Poppins',
      //                       fontSize: 14,
      //                       color: const Color(0xff9d9d9d),
      //                       fontWeight: FontWeight.w500,
      //                       height: 1.1666666666666667,
      //                     ),
      //                     textAlign: TextAlign.center,
      //                   ),
      //                 ),
      //                 Pinned.fromSize(
      //                   bounds: Rect.fromLTWH(4.0, 0.0, 25.0, 25.0),
      //                   size: Size(34.0, 59.0),
      //                   pinLeft: true,
      //                   pinRight: true,
      //                   pinTop: true,
      //                   fixedHeight: true,
      //                   child:
      //                       // Adobe XD layer: 'Time Icon' (group)
      //                       Stack(
      //                     children: <Widget>[
      //                       Pinned.fromSize(
      //                         bounds: Rect.fromLTWH(0.0, 0.0, 25.0, 25.0),
      //                         size: Size(25.0, 25.0),
      //                         child: SvgPicture.string(
      //                           _svg_zgo1ml,
      //                           allowDrawingOutsideViewBox: true,
      //                           fit: BoxFit.fill,
      //                         ),
      //                       ),
      //                       Pinned.fromSize(
      //                         bounds: Rect.fromLTWH(11.5, 3.8, 7.2, 14.9),
      //                         size: Size(25.0, 25.0),
      //                         child: SvgPicture.string(
      //                           _svg_coyz6r,
      //                           allowDrawingOutsideViewBox: true,
      //                           fit: BoxFit.fill,
      //                         ),
      //                       ),
      //                       Pinned.fromSize(
      //                         bounds: Rect.fromLTWH(0.0, 0.0, 25.0, 25.0),
      //                         size: Size(25.0, 25.0),
      //                         child: Container(
      //                           decoration: BoxDecoration(),
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //           Pinned.fromSize(
      //             bounds: Rect.fromLTWH(34.0, 115.0, 56.0, 59.0),
      //             size: Size(333.0, 185.0),
      //             pinLeft: true,
      //             pinBottom: true,
      //             fixedWidth: true,
      //             fixedHeight: true,
      //             child:
      //                 // Adobe XD layer: 'Date Info' (group)
      //                 Stack(
      //               children: <Widget>[
      //                 Pinned.fromSize(
      //                   bounds: Rect.fromLTWH(-3.0, 28.0, 66.0, 31.0),
      //                   size: Size(56.0, 59.0),
      //                   pinLeft: true,
      //                   pinRight: true,
      //                   pinBottom: true,
      //                   fixedHeight: true,
      //                   child: Text(
      //                     'May 09th\n2021',
      //                     style: TextStyle(
      //                       fontFamily: 'Poppins',
      //                       fontSize: 14,
      //                       color: const Color(0xff9d9d9d),
      //                       fontWeight: FontWeight.w500,
      //                       height: 1.1666666666666667,
      //                     ),
      //                     textAlign: TextAlign.center,
      //                   ),
      //                 ),
      //                 Pinned.fromSize(
      //                   bounds: Rect.fromLTWH(15.0, 0.0, 25.0, 25.0),
      //                   size: Size(56.0, 59.0),
      //                   pinTop: true,
      //                   fixedWidth: true,
      //                   fixedHeight: true,
      //                   child:
      //                       // Adobe XD layer: 'Calendar Icon' (group)
      //                       Stack(
      //                     children: <Widget>[
      //                       Pinned.fromSize(
      //                         bounds: Rect.fromLTWH(0.0, 1.9, 25.0, 23.1),
      //                         size: Size(25.0, 25.0),
      //                         child: SvgPicture.string(
      //                           _svg_2fua5o,
      //                           allowDrawingOutsideViewBox: true,
      //                           fit: BoxFit.fill,
      //                         ),
      //                       ),
      //                       Pinned.fromSize(
      //                         bounds: Rect.fromLTWH(15.4, 15.4, 5.8, 5.8),
      //                         size: Size(25.0, 25.0),
      //                         child: SvgPicture.string(
      //                           _svg_16syn8,
      //                           allowDrawingOutsideViewBox: true,
      //                           fit: BoxFit.fill,
      //                         ),
      //                       ),
      //                       Pinned.fromSize(
      //                         bounds: Rect.fromLTWH(0.0, 7.7, 25.0, 1.9),
      //                         size: Size(25.0, 25.0),
      //                         child: SvgPicture.string(
      //                           _svg_l0a8re,
      //                           allowDrawingOutsideViewBox: true,
      //                           fit: BoxFit.fill,
      //                         ),
      //                       ),
      //                       Pinned.fromSize(
      //                         bounds: Rect.fromLTWH(6.7, 0.0, 1.9, 5.8),
      //                         size: Size(25.0, 25.0),
      //                         child: SvgPicture.string(
      //                           _svg_9yqjhj,
      //                           allowDrawingOutsideViewBox: true,
      //                           fit: BoxFit.fill,
      //                         ),
      //                       ),
      //                       Pinned.fromSize(
      //                         bounds: Rect.fromLTWH(16.3, 0.0, 1.9, 5.8),
      //                         size: Size(25.0, 25.0),
      //                         child: SvgPicture.string(
      //                           _svg_9n2cnq,
      //                           allowDrawingOutsideViewBox: true,
      //                           fit: BoxFit.fill,
      //                         ),
      //                       ),
      //                       Pinned.fromSize(
      //                         bounds: Rect.fromLTWH(0.0, 0.0, 25.0, 25.0),
      //                         size: Size(25.0, 25.0),
      //                         child: Container(
      //                           decoration: BoxDecoration(),
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //           Pinned.fromSize(
      //             bounds: Rect.fromLTWH(-16.0, 86.0, 204.0, 17.0),
      //             size: Size(333.0, 185.0),
      //             pinLeft: true,
      //             fixedWidth: true,
      //             fixedHeight: true,
      //             child: Text(
      //               'By The Tech Club',
      //               style: TextStyle(
      //                 fontFamily: 'Poppins',
      //                 fontSize: 14,
      //                 color: const Color(0xff9d9d9d),
      //                 fontWeight: FontWeight.w500,
      //                 height: 1.1666666666666667,
      //               ),
      //               textAlign: TextAlign.center,
      //             ),
      //           ),
      //           Pinned.fromSize(
      //             bounds: Rect.fromLTWH(24.0, 60.0, 202.0, 28.0),
      //             size: Size(333.0, 185.0),
      //             pinLeft: true,
      //             fixedWidth: true,
      //             fixedHeight: true,
      //             child: Text(
      //               'The Imitation Game',
      //               style: TextStyle(
      //                 fontFamily: 'Poppins',
      //                 fontSize: 22,
      //                 color: const Color(0xff404040),
      //                 fontWeight: FontWeight.w600,
      //               ),
      //               textAlign: TextAlign.left,
      //             ),
      //           ),
      //           Pinned.fromSize(
      //             bounds: Rect.fromLTWH(284.0, 38.0, 35.0, 35.0),
      //             size: Size(333.0, 185.0),
      //             child:
      //                 // Adobe XD layer: 'Bookmark Button' (group)
      //                 Stack(
      //               children: <Widget>[
      //                 // Adobe XD layer: 'Bookmark Circle' (shape)
      //                 Container(
      //                   width: 35.0,
      //                   height: 35.0,
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
      //                 Positioned(
      //                   left: 11,
      //                   top: 9,
      //                   child: SvgPicture.string(
      //                     _svg_d54sjf,
      //                     allowDrawingOutsideViewBox: true,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //           Pinned.fromSize(
      //             bounds: Rect.fromLTWH(24.0, 0.0, 55.0, 55.0),
      //             size: Size(333.0, 185.0),
      //             pinLeft: true,
      //             pinTop: true,
      //             fixedWidth: true,
      //             fixedHeight: true,
      //             child:
      //                 // Adobe XD layer: 'Club Logo' (group)
      //                 Stack(
      //               children: <Widget>[
      //                 Pinned.fromSize(
      //                   bounds: Rect.fromLTWH(0.0, 0.0, 55.0, 55.0),
      //                   size: Size(55.0, 55.0),
      //                   pinLeft: true,
      //                   pinRight: true,
      //                   pinTop: true,
      //                   pinBottom: true,
      //                   child:
      //                       // Adobe XD layer: 'Logo Circle' (shape)
      //                       Container(
      //                     decoration: BoxDecoration(
      //                       borderRadius: BorderRadius.all(
      //                           Radius.elliptical(9999.0, 9999.0)),
      //                       color: const Color(0xffffffff),
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
      //                   bounds: Rect.fromLTWH(5.0, 5.0, 45.0, 45.0),
      //                   size: Size(55.0, 55.0),
      //                   pinLeft: true,
      //                   pinRight: true,
      //                   pinTop: true,
      //                   pinBottom: true,
      //                   child:
      //                       // Adobe XD layer: 'Tech Club Logo' (shape)
      //                       Container(
      //                     decoration: BoxDecoration(
      //                       image: DecorationImage(
      //                         image: const AssetImage('assets/Tech Club Logo Big.png'),
      //                         fit: BoxFit.fill,
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ],
      //             ),
      //           ),
      //       ),
      //       Positioned(
      //         left: 0,
      //         top: 35,
      //         child: FlatButton(
      //           onPressed: () async{
      //             dynamic result = await Navigator.pushNamed(context, '/Home');
      //           },
      //           child: SvgPicture.string(
      //           _svg_see9ki,
      //           allowDrawingOutsideViewBox: true,
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // );
    );
  }
}

const String _svg_w4c8pt =
    '<svg viewBox="280.0 242.0 19.3 25.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(253.9, 220.6)" d="M 45.41818237304688 31.05908966064453 C 45.41818237304688 25.70871353149414 41.10947036743164 21.40000152587891 35.75909042358398 21.40000152587891 C 30.40871047973633 21.40000152587891 26.09999847412109 25.70871353149414 26.09999847412109 31.05908966064453 C 26.09999847412109 36.40946960449219 35.75909042358398 46.40000152587891 35.75909042358398 46.40000152587891 C 35.75909042358398 46.40000152587891 45.41818237304688 36.40946960449219 45.41818237304688 31.05908966064453 Z M 31.26098251342773 30.86970138549805 C 31.26098251342773 28.40757751464844 33.29697036743164 26.3715934753418 35.75909042358398 26.3715934753418 C 38.22121429443359 26.3715934753418 40.25719833374023 28.3602294921875 40.25719833374023 30.86970138549805 C 40.25719833374023 33.33182144165039 38.26855850219727 35.3678092956543 35.75909042358398 35.3678092956543 C 33.29697036743164 35.3678092956543 31.26098251342773 33.33182144165039 31.26098251342773 30.86970138549805 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_zgo1ml =
    '<svg viewBox="175.0 242.0 25.0 25.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(172.0, 239.0)" d="M 15.5 28 C 8.596441268920898 28.00000190734863 3.000001907348633 22.40356063842773 3.000001907348633 15.50000190734863 C 3.000001907348633 8.596441268920898 8.596443176269531 3.000001907348633 15.50000190734863 3.000001907348633 C 22.40356254577637 3.000001907348633 28.00000190734863 8.596443176269531 28.00000190734863 15.50000190734863 C 28.0000057220459 22.403564453125 22.40356063842773 28.0000057220459 15.5 28.00000190734863 Z M 15.5 4.923077583312988 C 9.658526420593262 4.923077583312988 4.923077583312988 9.658526420593262 4.923077583312988 15.5 C 4.923077583312988 21.34147262573242 9.658526420593262 26.07692337036133 15.5 26.07692337036133 C 21.34147262573242 26.07692337036133 26.07692337036133 21.34147262573242 26.07692337036133 15.49999809265137 C 26.07692337036133 9.658526420593262 21.34147262573242 4.923078060150146 15.5 4.923077583312988 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_coyz6r =
    '<svg viewBox="186.5 245.8 7.2 14.9" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(171.54, 238.85)" d="M 21.25 21.90384674072266 C 20.99442100524902 21.90532493591309 20.74876976013184 21.80498886108398 20.56730842590332 21.625 L 15.27884674072266 16.33653831481934 C 15.0988597869873 16.15507698059082 14.99852180480957 15.90942573547363 15 15.65384674072266 L 15 7.961538791656494 C 15 7.430495738983154 15.43049621582031 7.000000476837158 15.96153831481934 7.000000476837158 C 16.49258232116699 7.000000476837158 16.92307662963867 7.430495738983154 16.92307662963867 7.961538791656494 L 16.92307662963867 15.25961494445801 L 21.93269157409668 20.25961494445801 C 22.11472511291504 20.44016075134277 22.21711349487305 20.6859245300293 22.21711349487305 20.94230842590332 C 22.21711349487305 21.19869041442871 22.11472511291504 21.44445610046387 21.93269157409668 21.625 C 21.75123023986816 21.80498886108398 21.50558090209961 21.90532302856445 21.25 21.90384483337402 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2fua5o =
    '<svg viewBox="70.0 243.9 25.0 23.1" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(67.0, 238.92)" d="M 23.19230842590332 28.07692337036133 L 7.807692527770996 28.07692337036133 C 5.152477264404297 28.07692337036133 3.000000238418579 25.92444610595703 3.000000238418579 23.26923179626465 L 3.000000238418579 9.807693481445313 C 3.000000238418579 7.152477264404297 5.152478218078613 5 7.807694435119629 5.000000476837158 L 23.19230842590332 5.000000476837158 C 25.8475227355957 5.000000476837158 28 7.152478218078613 28 9.807693481445313 L 28 23.26923179626465 C 28 25.92444610595703 25.8475227355957 28.07692337036133 23.19230842590332 28.07692337036133 Z M 7.807692527770996 6.923077583312988 C 6.21456241607666 6.923077583312988 4.923076629638672 8.214564323425293 4.923077583312988 9.807694435119629 L 4.923077583312988 23.26923179626465 C 4.923077583312988 24.86236190795898 6.214563369750977 26.15384674072266 7.807692527770996 26.15384674072266 L 23.19230842590332 26.15384674072266 C 24.78543853759766 26.15384674072266 26.07692337036133 24.86236190795898 26.07692337036133 23.26923179626465 L 26.07692337036133 9.807693481445313 C 26.07692337036133 8.214563369750977 24.78543853759766 6.923077583312988 23.19230842590332 6.923077583312988 L 7.807692527770996 6.923077583312988 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_16syn8 =
    '<svg viewBox="85.4 257.4 5.8 5.8" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(66.38, 238.38)" d="M 23.80769348144531 24.76923179626465 L 19.96154022216797 24.76923179626465 C 19.43049621582031 24.76923179626465 19.00000190734863 24.33873748779297 19.00000190734863 23.80769348144531 L 19.00000190734863 19.96154022216797 C 19.00000190734863 19.43049621582031 19.43049621582031 19.00000190734863 19.96154022216797 19.00000190734863 L 23.80769348144531 19.00000190734863 C 24.33873748779297 19.00000190734863 24.76923179626465 19.43049621582031 24.76923179626465 19.96154022216797 L 24.76923179626465 23.80769348144531 C 24.76923179626465 24.33873748779297 24.33873748779297 24.76923179626465 23.80769348144531 24.76923179626465 Z M 20.9230785369873 22.84615516662598 L 22.84615516662598 22.84615516662598 L 22.84615516662598 20.9230785369873 L 20.9230785369873 20.9230785369873 L 20.9230785369873 22.84615516662598 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_l0a8re =
    '<svg viewBox="70.0 249.7 25.0 1.9" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(67.0, 238.69)" d="M 27.03846168518066 12.92307758331299 L 3.961538553237915 12.92307758331299 C 3.430495500564575 12.92307758331299 3.000000238418579 12.49258136749268 3.000000238418579 11.96153926849365 C 3.000000238418579 11.430495262146 3.430495500564575 11 3.961538553237915 11 L 27.03846168518066 11 C 27.56950569152832 11 28 11.43049621582031 28 11.96153926849365 C 28 12.49258232116699 27.56950569152832 12.92307758331299 27.03846168518066 12.92307758331299 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_9yqjhj =
    '<svg viewBox="76.7 242.0 1.9 5.8" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(66.73, 239.0)" d="M 10.96153831481934 8.769231796264648 C 10.430495262146 8.769231796264648 10 8.338735580444336 10 7.807692527770996 L 10 3.961538553237915 C 10 3.430495500564575 10.43049621582031 3.000000238418579 10.96153831481934 3.000000238418579 C 11.49258232116699 3.000000238418579 11.92307758331299 3.430495500564575 11.92307758331299 3.961538553237915 L 11.92307758331299 7.807692527770996 C 11.92307758331299 8.338736534118652 11.49258136749268 8.769231796264648 10.96153831481934 8.769231796264648 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_9n2cnq =
    '<svg viewBox="86.3 242.0 1.9 5.8" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(66.35, 239.0)" d="M 20.96153831481934 8.769231796264648 C 20.43049621582031 8.769231796264648 20 8.338735580444336 20 7.807692527770996 L 20 3.961538553237915 C 20 3.430495500564575 20.43049621582031 3.000000238418579 20.96153831481934 3.000000238418579 C 21.49258232116699 3.000000238418579 21.92307662963867 3.430495500564575 21.92307662963867 3.961538553237915 L 21.92307662963867 7.807692527770996 C 21.92307662963867 8.338736534118652 21.49258232116699 8.769231796264648 20.96153831481934 8.769231796264648 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_d54sjf =
    '<svg viewBox="188.0 181.0 12.8 17.4" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(180.5, 176.5)" d="M 20.28730392456055 21.85420036315918 L 13.89364910125732 17.03359031677246 L 7.500000953674316 21.85420036315918 L 7.500000953674316 6.428244590759277 C 7.500000953674316 5.363304138183594 8.317866325378418 4.5 9.326759338378906 4.5 L 18.46054649353027 4.5 C 19.46943473815918 4.5 20.28730392456055 5.363304615020752 20.28730392456055 6.428244590759277 L 20.28730392456055 21.85420036315918 Z" fill="url(#gradient)" fill-opacity="0.0" stroke="none" stroke-width="1" stroke-opacity="0.0" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(135.71, 181.0)" d="M 62.79208755493164 0 L 54.58391189575195 0 C 53.32068634033203 0 52.29299926757813 1.109349131584167 52.29299926757813 2.472882747650146 L 52.29299926757813 16.64911651611328 C 52.29299926757813 16.9116382598877 52.42893218994141 17.15216445922852 52.64519882202148 17.27229499816895 C 52.86146545410156 17.39245796203613 53.12181091308594 17.37205505371094 53.31967926025391 17.21943092346191 L 58.6879997253418 13.08030414581299 L 64.05635070800781 17.21939659118652 C 64.16860961914063 17.30594062805176 64.30083465576172 17.34992790222168 64.43379211425781 17.34992790222168 C 64.53528594970703 17.34992790222168 64.63718414306641 17.32427406311035 64.73082733154297 17.27222442626953 C 64.94709777832031 17.15209770202637 65.08300018310547 16.91156959533691 65.08300018310547 16.64904975891113 L 65.08300018310547 2.472882747650146 C 65.08300018310547 1.109349131584167 64.05528259277344 0 62.79208755493164 0 Z M 63.784423828125 15.28720951080322 L 59.06537628173828 11.64872646331787 C 58.95248413085938 11.56170558929443 58.82022857666016 11.51819515228271 58.6879997253418 11.51819515228271 C 58.55574035644531 11.51819515228271 58.42351531982422 11.56173992156982 58.31062316894531 11.64875984191895 L 53.59154510498047 15.28724384307861 L 53.59154510498047 2.472882747650146 C 53.59154510498047 1.882237315177917 54.0367317199707 1.401689887046814 54.58391189575195 1.401689887046814 L 62.79205322265625 1.401689887046814 C 63.33923721313477 1.401689887046814 63.784423828125 1.882237315177917 63.784423828125 2.472882747650146 L 63.784423828125 15.28720951080322 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_see9ki =
    '<svg viewBox="32.0 48.0 12.6 18.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="matrix(0.0, 1.0, -1.0, 0.0, 44.56, 48.0)" d="M 8.999999046325684 12.56341361999512 L 0 2.883406400680542 L 2.680851221084595 0 L 8.999999046325684 6.796600818634033 L 15.31914710998535 0 L 18 2.883406400680542 L 8.999999046325684 12.56341361999512 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
