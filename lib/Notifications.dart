import 'dart:convert';
// import 'dart:js_util';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:adobe_xd/adobe_xd.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  getdata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List messages = json.decode(prefs.getString('messages') ?? '');
    print(messages);
    return messages;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageLink(
            links: [
              PageLinkInfo(
                transition: LinkTransition.PushRight,
                ease: Curves.easeOut,
                duration: 0.3,
              ),
            ],
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: const DecoratedBox(
                decoration: const BoxDecoration(
                    color: Colors.black12
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 88.0,
                  height: 89.0,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 88.2, 89.3),
                        size: Size(88.2, 89.3),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child:
                        // Adobe XD layer: 'Bell Gradient Circle' (shape)
                        SvgPicture.string(
                          _svg_bmep7c,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(12.6, 30.0, 27.0, 29.3),
                        size: Size(88.2, 89.3),
                        child:
                        // Adobe XD layer: 'Bell Icon' (shape)
                        SvgPicture.string(
                          _svg_kcgqpm,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 140.0,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 272, //272
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  bottomLeft: Radius.circular(50.0),
                ),
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
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 120,
                child: Container(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 13, 0),
                    child: Text(
                      'Notifications',
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
              ),
              FutureBuilder(
                future: getdata(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    List<dynamic> values = snapshot.data;
                    return new Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          width: 260,
                          height: MediaQuery.of(context).size.height - 250,
                          child: ListView.builder(
                              itemCount: values.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(10, 0, 10, 10),
                                  child: SizedBox(
                                    width: 239.0,
                                    height: 120.0,
                                    child: Stack(
                                      children: <Widget>[
                                        Pinned.fromSize(
                                          bounds: Rect.fromLTWH(
                                              0.0, 18.0, 239.0, 100.0),
                                          size: Size(239.0, 120.0),
                                          pinLeft: true,
                                          pinRight: true,
                                          pinTop: true,
                                          pinBottom: true,
                                          child:
                                          // Adobe XD layer: 'Notification Rectan…' (shape)
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(15.0),
                                              color: const Color(0xffffffff),
                                              boxShadow: [
                                                BoxShadow(
                                                  color:
                                                  const Color(0x29000000),
                                                  offset: Offset(0, 3),
                                                  blurRadius: 6,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Pinned.fromSize(
                                          bounds: Rect.fromLTWH(
                                              35.0, 75.0, 187.0, 38.0),
                                          size: Size(239.0, 120.0),
                                          pinLeft: true,
                                          pinRight: true,
                                          pinBottom: true,
                                          fixedHeight: true,
                                          child: SingleChildScrollView(
                                              child: Text(
                                                values[index]['body'],
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 13,
                                                  color: const Color(0xff9d9d9d),
                                                ),
                                                textAlign: TextAlign.right,
                                              )),
                                        ),
                                        Pinned.fromSize(
                                          bounds: Rect.fromLTWH(
                                              131.0, 45.0, 91.0, 25.0),
                                          size: Size(239.0, 120.0),
                                          pinRight: true,
                                          fixedWidth: true,
                                          fixedHeight: true,
                                          child: Text(
                                            values[index]['title'],
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 20,
                                              color: const Color(0xff404040),
                                              fontWeight: FontWeight.w600,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Pinned.fromSize(
                                          bounds: Rect.fromLTWH(
                                              0.0, 27.0, 47.0, 17.0),
                                          size: Size(239.0, 120.0),
                                          pinLeft: true,
                                          fixedWidth: true,
                                          fixedHeight: true,
                                          child: Text(
                                            '11:00 AM',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              color: const Color(0xff9d9d9d),
                                            ),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                        Pinned.fromSize(
                                          bounds: Rect.fromLTWH(
                                              187.0, 0.0, 35.0, 35.0),
                                          size: Size(239.0, 120.0),
                                          pinRight: true,
                                          pinTop: true,
                                          fixedWidth: true,
                                          fixedHeight: true,
                                          child:
                                          // Adobe XD layer: 'Club Logo' (group)
                                          Stack(
                                            children: <Widget>[
                                              Pinned.fromSize(
                                                bounds: Rect.fromLTWH(
                                                    0.0, 0.0, 35.0, 35.0),
                                                size: Size(35.0, 35.0),
                                                pinLeft: true,
                                                pinRight: true,
                                                pinTop: true,
                                                pinBottom: true,
                                                child:
                                                // Adobe XD layer: 'Logo CIrcle' (shape)
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.all(
                                                        Radius.elliptical(
                                                            9999.0,
                                                            9999.0)),
                                                    color:
                                                    const Color(0xffffffff),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: const Color(
                                                            0x29000000),
                                                        offset: Offset(0, 3),
                                                        blurRadius: 6,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Pinned.fromSize(
                                                bounds: Rect.fromLTWH(
                                                    5.0, 5.0, 25.0, 25.0),
                                                size: Size(35.0, 35.0),
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
                                                          'assets/Tech Club Logo.png'),
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
                                );
                              }),
                        ),
                      ),
                    );
                  } else {
                    return SizedBox();
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 25, 20, 0),
                child: Container(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Developed by',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 17,
                          color: const Color(0xff9d9d9d),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        width: 160.0,
                        height: 45.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage(
                                'assets/Tech Club Logo Horizontal.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

const String _svg_bmep7c =
    '<svg viewBox="58.9 361.4 88.2 89.3" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 147.12, 450.63)" d="M 44.11832809448242 89.26658630371094 C 68.48420715332031 89.26658630371094 88.23665618896484 69.28357696533203 88.23665618896484 44.63329315185547 C 88.23665618896484 19.98300933837891 68.48420715332031 0 44.11832809448242 0 C 19.75245094299316 0 0 19.98300933837891 0 44.63329315185547 C 0 69.28357696533203 19.75245094299316 89.26658630371094 44.11832809448242 89.26658630371094 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kcgqpm =
    '<svg viewBox="71.5 391.3 27.0 29.3" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(71.5, 391.33)" d="M 13.49995136260986 29.3478889465332 C 15.62860679626465 29.3478889465332 17.35527610778809 27.70566558837891 17.35527610778809 25.67939949035645 L 9.644627571105957 25.67939949035645 C 9.644627571105957 27.70566558837891 11.37129783630371 29.3478889465332 13.49995136260986 29.3478889465332 Z M 26.48100471496582 20.7664966583252 C 25.31663513183594 19.57652854919434 23.13795471191406 17.78642463684082 23.13795471191406 11.92257690429688 C 23.13795471191406 7.468807697296143 19.85457420349121 3.903497219085693 15.42731475830078 3.028792858123779 L 15.42731475830078 1.834243059158325 C 15.42731475830078 0.8213969469070435 14.56427955627441 0 13.49995136260986 0 C 12.43562602996826 0 11.57258987426758 0.8213969469070435 11.57258987426758 1.834243059158325 L 11.57258987426758 3.028793573379517 C 7.145328998565674 3.903498649597168 3.861944437026978 7.468807697296143 3.861944437026978 11.92257785797119 C 3.861944437026978 17.78642463684082 1.683268070220947 19.5765323638916 0.5188963413238525 20.7664966583252 C 0.1572903245687485 21.13621139526367 -0.003021733835339546 21.57814598083496 -8.31964825920295e-06 22.01091003417969 C 0.006621124688535929 22.95096206665039 0.7822661995887756 23.84515380859375 1.934584259986877 23.84515380859375 L 25.06531524658203 23.84515380859375 C 26.2176342010498 23.84515380859375 26.99388313293457 22.95096206665039 26.99990844726563 22.01091003417969 C 27.00292015075684 21.57814598083496 26.84260940551758 21.13563537597656 26.48100471496582 20.7664966583252 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
