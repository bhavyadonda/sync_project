import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:sync_project/Homepage.dart';
import 'EventDetails2.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class register extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  String selectedCategory;
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    Map events = {};
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Map userdata = json.decode(prefs.getString('userData'));
    Map data = json.decode(prefs.getString('data'));

    if(userdata.containsKey('registeration')){
    for (var k = 0; k < userdata['registeration'].keys.toList().length; k++) {
      for (var i = 0; i < data.length; i++) {
        if (data.values.toList()[i]['subEvents'] == null &&
            data.keys.toList()[i] ==
                userdata['registeration']
                    [userdata['registeration'].keys.toList()[k]]) {
          events[data.keys.toList()[i]] = data.values.toList()[i];
        } else {
          for (var j = 0;
              j < data.values.toList()[i]['subEvents'].length;
              j++) {
            if (data.values.toList()[i]['subEvents'].keys.toList()[j] ==
                userdata['registeration'].values.toList()[k]) {
              events[data.values.toList()[i]['subEvents'].keys.toList()[j]] =
                  data.values.toList()[i]['subEvents'].values.toList()[j];
            }
          }
        }
      }
    }}
    print(events);
    return events;
  }

  Widget build(BuildContext context) {
    final events = FutureBuilder(
        future: getData(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            Map<dynamic, dynamic> values = snapshot.data;
            // List<int> eventNumbers = [];
            // for (int i = 0; i < values.length; i++) {
            //   if (values.values
            //       .toList()[i]['categories']
            //       .contains(selectedCategory)) {
            //     eventNumbers.add(i);
            //   }
            // }
            // print(selectedCategory);
            // print(eventNumbers);

            return Column(
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(13, 20, 0, 10),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Registered',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        color: const Color(0xff404040),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: List.generate(values.length, (index) {
                      return Center(
                        child: SizedBox(
                          width: 183.0,
                          height: 191.0,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 167.9, 142.0),
                                size: Size(168.0, 191.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                fixedHeight: true,
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/Donation Image.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 142.0, 168.0, 49.0),
                                size: Size(168.0, 191.0),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Category Background' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                    ),
                                    color: const Color(0xfaffffff),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x28000000),
                                        offset: Offset(0, 3),
                                        blurRadius: 6,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(5.0, 114.0, 35.0, 35.0),
                                size: Size(168.0, 191.0),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Club Logo' (group)
                                    Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 35.0, 35.0),
                                      size: Size(35.0, 35.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child:
                                          // Adobe XD layer: 'Logo CIrcle' (shape)
                                          Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(
                                                  9999.0, 9999.0)),
                                          color: const Color(0xfaffffff),
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color(0x28000000),
                                              offset: Offset(0, 3),
                                              blurRadius: 6,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(5.0, 5.0, 25.0, 25.0),
                                      size: Size(35.0, 35.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child:
                                          // Adobe XD layer: 'Tech Club Logo' (shape)
                                          Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(13.0),
                                          image: DecorationImage(
                                            image: const AssetImage(
                                                'assets/Tech Club Logo.png'),
                                            fit: BoxFit.cover,
                                            colorFilter: new ColorFilter.mode(
                                                Colors.black.withOpacity(0.98),
                                                BlendMode.dstIn),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(141.3, 157.7, 16.7, 16.7),
                                size: Size(168.0, 191.0),
                                child:
                                    // Adobe XD layer: 'Continue Button' (shape)
                                    GestureDetector(
                                      onTap: () async{
                                        SharedPreferences prefs =
                                                      await SharedPreferences
                                                          .getInstance();
                                                  prefs.setString(
                                                      'eventId',
                                                      values.keys
                                                          .toList()[index]);
                                                          print(prefs.getString('eventId'));
                                                  Navigator.of(context)
                                                      .pushNamed(
                                                          '/EventDetails2');
                                      },
                                         child: SvgPicture.string(
                                        _svg_kf2adx,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(5.0, 149.0, 145.0, 20.0),
                                size: Size(168.0, 191.0),
                                pinLeft: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  values.values.toList()[index]['event_name'],
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    color: const Color(0xfa404040),
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(1.0, 169.0, 84.0, 15.0),
                                size: Size(168.0, 191.0),
                                pinLeft: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  'By ',
                                  // values.values.toList()[eventNumbers[index]]
                                  //     ['club']
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    color: const Color(0xfa9d9d9d),
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            );
          }
          return CircularProgressIndicator();
        });

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 30,
          backgroundColor: const Color(0xffffffff),
        ),
        body: events
        // body: Column(
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.fromLTRB(13, 20, 0, 20),
        //       child: Container(
        //         alignment: Alignment.centerLeft,
        //         child: Text(
        //           'Trending',
        //           style: TextStyle(
        //             fontFamily: 'Poppins',
        //             fontSize: 22,
        //             color: const Color(0xff404040),
        //             fontWeight: FontWeight.w600,
        //           ),
        //           textAlign: TextAlign.left,
        //         ),
        //       ),
        //     ),
        //     Expanded(
        //       child: GridView.count(
        //         crossAxisCount: 2,
        //         children: List.generate(7, (index) {
        //           return Center(
        //             child: SizedBox(
        //               width: 183.0,
        //               height: 191.0,
        //               child: Stack(
        //                 children: <Widget>[
        //                   Pinned.fromSize(
        //                     bounds: Rect.fromLTWH(0.0, 0.0, 167.9, 142.0),
        //                     size: Size(168.0, 191.0),
        //                     pinLeft: true,
        //                     pinRight: true,
        //                     pinTop: true,
        //                     fixedHeight: true,
        //                     child: Container(
        //                       decoration: BoxDecoration(
        //                         image: DecorationImage(
        //                           image: AssetImage('assets/Donation Image.png'),
        //                           fit: BoxFit.fill,
        //                         ),
        //                       ),
        //                     ),
        //                   ),
        //                   Pinned.fromSize(
        //                     bounds: Rect.fromLTWH(0.0, 142.0, 168.0, 49.0),
        //                     size: Size(168.0, 191.0),
        //                     pinLeft: true,
        //                     pinRight: true,
        //                     pinBottom: true,
        //                     fixedHeight: true,
        //                     child:
        //                     // Adobe XD layer: 'Category Background' (shape)
        //                     Container(
        //                       decoration: BoxDecoration(
        //                         borderRadius: BorderRadius.only(
        //                           bottomRight: Radius.circular(15.0),
        //                           bottomLeft: Radius.circular(15.0),
        //                         ),
        //                         color: const Color(0xfaffffff),
        //                         boxShadow: [
        //                           BoxShadow(
        //                             color: const Color(0x28000000),
        //                             offset: Offset(0, 3),
        //                             blurRadius: 6,
        //                           ),
        //                         ],
        //                       ),
        //                     ),
        //                   ),
        //                   Pinned.fromSize(
        //                     bounds: Rect.fromLTWH(5.0, 114.0, 35.0, 35.0),
        //                     size: Size(168.0, 191.0),
        //                     pinLeft: true,
        //                     fixedWidth: true,
        //                     fixedHeight: true,
        //                     child:
        //                     // Adobe XD layer: 'Club Logo' (group)
        //                     Stack(
        //                       children: <Widget>[
        //                         Pinned.fromSize(
        //                           bounds: Rect.fromLTWH(0.0, 0.0, 35.0, 35.0),
        //                           size: Size(35.0, 35.0),
        //                           pinLeft: true,
        //                           pinRight: true,
        //                           pinTop: true,
        //                           pinBottom: true,
        //                           child:
        //                           // Adobe XD layer: 'Logo CIrcle' (shape)
        //                           Container(
        //                             decoration: BoxDecoration(
        //                               borderRadius: BorderRadius.all(
        //                                   Radius.elliptical(9999.0, 9999.0)),
        //                               color: const Color(0xfaffffff),
        //                               boxShadow: [
        //                                 BoxShadow(
        //                                   color: const Color(0x28000000),
        //                                   offset: Offset(0, 3),
        //                                   blurRadius: 6,
        //                                 ),
        //                               ],
        //                             ),
        //                           ),
        //                         ),
        //                         Pinned.fromSize(
        //                           bounds: Rect.fromLTWH(5.0, 5.0, 25.0, 25.0),
        //                           size: Size(35.0, 35.0),
        //                           pinLeft: true,
        //                           pinRight: true,
        //                           pinTop: true,
        //                           pinBottom: true,
        //                           child:
        //                           // Adobe XD layer: 'Tech Club Logo' (shape)
        //                           Container(
        //                             decoration: BoxDecoration(
        //                               borderRadius: BorderRadius.circular(13.0),
        //                               image: DecorationImage(
        //                                 image: const AssetImage('assets/Tech Club Logo.png'),
        //                                 fit: BoxFit.cover,
        //                                 colorFilter: new ColorFilter.mode(
        //                                     Colors.black.withOpacity(0.98),
        //                                     BlendMode.dstIn),
        //                               ),
        //                             ),
        //                           ),
        //                         ),
        //                       ],
        //                     ),
        //                   ),
        //                   Pinned.fromSize(
        //                     bounds: Rect.fromLTWH(141.3, 157.7, 16.7, 16.7),
        //                     size: Size(168.0, 191.0),
        //                     child:
        //                     // Adobe XD layer: 'Continue Button' (shape)
        //                     PageLink(
        //                       links: [
        //                         PageLinkInfo(
        //                           transition: LinkTransition.Fade,
        //                           ease: Curves.linear,
        //                           duration: 0.3,
        //                           pageBuilder: () => EventDetails2(),
        //                         ),
        //                       ],
        //                       child: SvgPicture.string(
        //                         _svg_kf2adx,
        //                         allowDrawingOutsideViewBox: true,
        //                         fit: BoxFit.fill,
        //                       ),
        //                     ),
        //                   ),
        //                   Pinned.fromSize(
        //                     bounds: Rect.fromLTWH(5.0, 149.0, 145.0, 20.0),
        //                     size: Size(168.0, 191.0),
        //                     pinLeft: true,
        //                     pinBottom: true,
        //                     fixedWidth: true,
        //                     fixedHeight: true,
        //                     child: Text(
        //                       'Donation Drive',
        //                       style: TextStyle(
        //                         fontFamily: 'Poppins',
        //                         fontSize: 16,
        //                         color: const Color(0xfa404040),
        //                         fontWeight: FontWeight.w600,
        //                       ),
        //                       textAlign: TextAlign.left,
        //                     ),
        //                   ),
        //                   Pinned.fromSize(
        //                     bounds: Rect.fromLTWH(1.0, 169.0, 84.0, 15.0),
        //                     size: Size(168.0, 191.0),
        //                     pinLeft: true,
        //                     pinBottom: true,
        //                     fixedWidth: true,
        //                     fixedHeight: true,
        //                     child: Text(
        //                       'By RC NMIMS',
        //                       style: TextStyle(
        //                         fontFamily: 'Poppins',
        //                         fontSize: 12,
        //                         color: const Color(0xfa9d9d9d),
        //                         height: 1.4,
        //                       ),
        //                       textAlign: TextAlign.center,
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           );
        //         }),
        //       ),
        //     ),
        //   ],
        // ),
        );
  }
}

const String _svg_1pc24i =
    '<svg viewBox="144.0 503.5 167.9 142.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter><pattern id="image" patternUnits="userSpaceOnUse" width="5020.0" height="3347.0"><image xlink:href="null" x="0" y="0" width="5020.0" height="3347.0" /></pattern></defs><path transform="translate(144.04, 503.52)" d="M 11.09796619415283 0 L 156.8512573242188 0 C 162.9804992675781 0 167.9492340087891 6.531735897064209 167.9492340087891 14.58904075622559 L 167.9492340087891 142 L 0 142 L 0 14.58904075622559 C 0 6.531735897064209 4.968729019165039 0 11.09796619415283 0 Z" fill="url(#image)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_kf2adx =
    '<svg viewBox="285.4 661.2 16.7 16.7" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(285.38, 661.16)" d="M 16.25827980041504 7.378737449645996 L 9.32447624206543 0.4449088573455811 C 8.777599334716797 -0.1019696891307831 7.890646457672119 -0.1019696891307831 7.34376859664917 0.4449088573455811 C 6.796889781951904 0.9917874932289124 6.796889781951904 1.878738880157471 7.34376859664917 2.425617456436157 L 13.28657531738281 8.36839771270752 L 7.343768119812012 14.31114959716797 C 6.796888828277588 14.8580265045166 6.796888828277588 15.74498081207275 7.343768119812012 16.29186248779297 C 7.890646457672119 16.83874320983887 8.777599334716797 16.83874130249023 9.324474334716797 16.29186248779297 L 16.25827980041504 9.358057022094727 C 16.8051586151123 8.812540054321289 16.8051586151123 7.925616264343262 16.25827980041504 7.378737449645996 Z M 7.921177864074707 6.958861827850342 L 2.416332006454468 1.156975865364075 C 1.863189101219177 0.5747171640396118 0.9672497510910034 0.5747171640396118 0.4141067564487457 1.156975865364075 C -0.1390362232923508 1.739234685897827 -0.1390361785888672 2.683790922164917 0.4141067564487457 3.266756772994995 L 4.918209075927734 8.013753890991211 L 0.4141066074371338 12.76074886322021 C -0.1390362530946732 13.34303283691406 -0.1390362530946732 14.28824520111084 0.4141066074371338 14.87052917480469 C 0.9672496318817139 15.45281505584717 1.863188862800598 15.45281505584717 2.416332006454468 14.87052917480469 L 7.921177864074707 9.068642616271973 C 8.474321365356445 8.486384391784668 8.474321365356445 7.541828632354736 7.921177864074707 6.958861827850342 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2t4eai =
    '<svg viewBox="144.0 503.5 167.9 142.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter><pattern id="image" patternUnits="userSpaceOnUse" width="4928.0" height="3264.0"><image xlink:href="null" x="0" y="0" width="4928.0" height="3264.0" /></pattern></defs><path transform="translate(144.04, 503.52)" d="M 11.09796619415283 0 L 156.8512573242188 0 C 162.9804992675781 0 167.9492340087891 6.531735897064209 167.9492340087891 14.58904075622559 L 167.9492340087891 142 L 0 142 L 0 14.58904075622559 C 0 6.531735897064209 4.968729019165039 0 11.09796619415283 0 Z" fill="url(#image)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_felhe2 =
    '<svg viewBox="144.0 503.5 167.9 142.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter><pattern id="image" patternUnits="userSpaceOnUse" width="2200.0" height="3300.0"><image xlink:href="null" x="0" y="0" width="2200.0" height="3300.0" /></pattern></defs><path transform="translate(144.04, 503.52)" d="M 11.09796619415283 0 L 156.8512573242188 0 C 162.9804992675781 0 167.9492340087891 6.531735897064209 167.9492340087891 14.58904075622559 L 167.9492340087891 142 L 0 142 L 0 14.58904075622559 C 0 6.531735897064209 4.968729019165039 0 11.09796619415283 0 Z" fill="url(#image)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_7ohdcc =
    '<svg viewBox="144.0 503.5 167.9 142.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter><pattern id="image" patternUnits="userSpaceOnUse" width="4000.0" height="2667.0"><image xlink:href="null" x="0" y="0" width="4000.0" height="2667.0" /></pattern></defs><path transform="translate(144.04, 503.52)" d="M 11.09796619415283 0 L 156.8512573242188 0 C 162.9804992675781 0 167.9492340087891 6.531735897064209 167.9492340087891 14.58904075622559 L 167.9492340087891 142 L 0 142 L 0 14.58904075622559 C 0 6.531735897064209 4.968729019165039 0 11.09796619415283 0 Z" fill="url(#image)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_u64muu =
    '<svg viewBox="144.0 503.5 167.9 142.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter><pattern id="image" patternUnits="userSpaceOnUse" width="3300.0" height="2200.0"><image xlink:href="null" x="0" y="0" width="3300.0" height="2200.0" /></pattern></defs><path transform="translate(144.04, 503.52)" d="M 11.09796619415283 0 L 156.8512573242188 0 C 162.9804992675781 0 167.9492340087891 6.531735897064209 167.9492340087891 14.58904075622559 L 167.9492340087891 142 L 0 142 L 0 14.58904075622559 C 0 6.531735897064209 4.968729019165039 0 11.09796619415283 0 Z" fill="url(#image)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_lc0uo6 =
    '<svg viewBox="144.0 503.5 167.9 142.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter><pattern id="image" patternUnits="userSpaceOnUse" width="4439.0" height="3171.0"><image xlink:href="null" x="0" y="0" width="4439.0" height="3171.0" /></pattern></defs><path transform="translate(144.04, 503.52)" d="M 11.09796619415283 0 L 156.8512573242188 0 C 162.9804992675781 0 167.9492340087891 6.531735897064209 167.9492340087891 14.58904075622559 L 167.9492340087891 142 L 0 142 L 0 14.58904075622559 C 0 6.531735897064209 4.968729019165039 0 11.09796619415283 0 Z" fill="url(#image)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_hcjqko =
    '<svg viewBox="144.0 503.5 167.9 142.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter><pattern id="image" patternUnits="userSpaceOnUse" width="6720.0" height="4480.0"><image xlink:href="null" x="0" y="0" width="6720.0" height="4480.0" /></pattern></defs><path transform="translate(144.04, 503.52)" d="M 11.09796619415283 0 L 156.8512573242188 0 C 162.9804992675781 0 167.9492340087891 6.531735897064209 167.9492340087891 14.58904075622559 L 167.9492340087891 142 L 0 142 L 0 14.58904075622559 C 0 6.531735897064209 4.968729019165039 0 11.09796619415283 0 Z" fill="url(#image)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_ah28f4 =
    '<svg viewBox="32.0 48.0 12.6 18.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="matrix(0.0, 1.0, -1.0, 0.0, 44.56, 48.0)" d="M 8.999999046325684 12.56341361999512 L 0 2.883406400680542 L 2.680851221084595 0 L 8.999999046325684 6.796600818634033 L 15.31914710998535 0 L 18 2.883406400680542 L 8.999999046325684 12.56341361999512 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
