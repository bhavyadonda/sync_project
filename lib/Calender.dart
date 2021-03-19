import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './Homepage.dart';
import 'package:adobe_xd/page_link.dart';
import './ProfilePage.dart';
import './Home.dart';
import './EventDetails1.dart';
import './Filters.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:table_calendar/table_calendar.dart';

class Calender extends StatefulWidget {
  Calender({Key key}) : super(key: key);

  @override
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  CalendarController _controller;
  DateTime dateSelected = DateTime(2021, 1, 1);
  List items = [];
  bool filter = false;
  bool morning = false;
  bool afternoon = false;
  bool evening = false;
  bool night = false;
  String _selecteddate;
  Map<String, bool> categories = {
    'P': false,
    'Q': false,
    'R': false,
    'S': false
  };
  String _selectedClub;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
    getdata();
  }

  String convertDateTimeDisplay(String date) {
    final DateFormat displayFormater = DateFormat('yyyy-MM-dd HH:mm:ss.SSS');
    final DateFormat serverFormater = DateFormat('yyyy-MM-dd');
    final DateTime displayDate = displayFormater.parse(date);
    final String formatted = serverFormater.format(displayDate);
    return formatted;
  }

  getdata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      filter = prefs.getBool('filter_applied');
      morning = prefs.getBool('morning');
      afternoon = prefs.getBool('afternoon');
      evening = prefs.getBool('evening');
      night = prefs.getBool('night');
      _selecteddate = convertDateTimeDisplay(prefs.getString('date'));
    });
    Map data = json.decode(prefs.getString('data'));
    return data;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                icon: Icon(Icons.menu), color: Colors.purple, onPressed: () {}),
            Container(
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
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x45000000),
                    offset: Offset(0, 3),
                    blurRadius: 80,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: PageLink(
                links: [
                  PageLinkInfo(
                    transition: LinkTransition.Fade,
                    ease: Curves.easeOut,
                    duration: 0.3,
                  ),
                ],
                child: SvgPicture.string(
                  _svg_t3qb8j,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Our Events',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  color: const Color(0xff404040),
                  fontWeight: FontWeight.w600,
                ),
              ),
              MaterialButton(
                child: Icon(Icons.forward),
                onPressed: () {
                  Navigator.of(context).pushNamed('/Filters');
                },
              )
            ],
          ),
          TableCalendar(
            calendarController: _controller,
            onDaySelected: (date, event, _) {
              setState(() {
                dateSelected = date;
              });
            },
          ),
          Text(
            'Upcoming Events',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              color: const Color(0xff404040),
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 680,
            child: FutureBuilder(
                future: getdata(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    Map<dynamic, dynamic> values = snapshot.data;
                    return new ListView.builder(
                        itemCount: values.length,
                        itemBuilder: (BuildContext context, int index) {
                          if (filter == true) {
                          } else {
                            if (values.values.toList()[index]
                                    ['event_start_date'] ==
                                convertDateTimeDisplay(
                                    dateSelected.toLocal().toString())) {
                              return Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(30, 0, 30, 20),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 0,
                                    ),
                                    SizedBox(
                                      width: 349.0,
                                      height: 76.0,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                11.0, 0.0, 338.0, 67.2),
                                            size: Size(349.0, 76.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child:
                                                // Adobe XD layer: 'Fest Background' (group)
                                                Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 338.0, 67.2),
                                                  size: Size(338.0, 67.2),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/Background Image1.png'),
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      304.0, 25.0, 18.0, 18.0),
                                                  size: Size(338.0, 67.2),
                                                  child:
                                                      // Adobe XD layer: 'Next Button' (shape)
                                                      GestureDetector(
                                                    onTap: () async {
                                                      SharedPreferences prefs =
                                                          await SharedPreferences
                                                              .getInstance();
                                                      prefs.setString(
                                                          'eventId',
                                                          values.keys
                                                              .toList()[index]);
                                                      if (values.values
                                                                      .toList()[
                                                                  index]
                                                              ['subEvents'] !=
                                                          null) {
                                                        Navigator.of(context)
                                                            .pushNamed(
                                                                '/Events');
                                                      } else {
                                                        Navigator.of(context)
                                                            .pushNamed(
                                                                '/EventDetails2');
                                                      }
                                                    },
                                                    child: SvgPicture.string(
                                                      _svg_rbwtgt,
                                                      allowDrawingOutsideViewBox:
                                                          true,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 16.0, 242.0, 60.0),
                                            size: Size(349.0, 76.0),
                                            pinLeft: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child:
                                                // Adobe XD layer: 'Gradient Background' (shape)
                                                SvgPicture.string(
                                              _svg_7u199j,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                177.5, 20.0, 67.5, 53.0),
                                            size: Size(349.0, 76.0),
                                            pinBottom: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child:
                                                // Adobe XD layer: 'Logo' (group)
                                                Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 14.0, 67.5, 24.0),
                                                  size: Size(67.5, 53.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  fixedHeight: true,
                                                  child:
                                                      // Adobe XD layer: 'Logo Background' (shape)
                                                      SvgPicture.string(
                                                    _svg_e0lvmc,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      1.5, 0.0, 64.0, 53.0),
                                                  size: Size(67.5, 53.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child:
                                                      // Adobe XD layer: 'Club Logo' (shape)
                                                      Container(
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: const AssetImage(
                                                            'assets/Montage Logo1.png'),
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                11.0, 50.0, 190.0, 15.0),
                                            size: Size(349.0, 76.0),
                                            pinLeft: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Text(
                                              values.values.toList()[index]
                                                  ['event_start_date'],
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 13,
                                                color: const Color(0xffffffff),
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                11.0, 25.0, 159.0, 21.0),
                                            size: Size(349.0, 76.0),
                                            pinLeft: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Text(
                                              values.values.toList()[index]
                                                  ['event_name'],
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 18,
                                                color: const Color(0xffffffff),
                                                fontWeight: FontWeight.w700,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            } else {
                              return SizedBox();
                            }
                          }
                        });
                  }
                  return CircularProgressIndicator();
                }),
          ),
          SizedBox(
            width: 412.0,
            height: 78.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 28.4, 375.0, 49.8),
                  size: Size(375.0, 78.1),
                  pinLeft: true,
                  pinRight: true,
                  pinBottom: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'Bottom Bar' (shape)
                      SvgPicture.string(
                    _svg_11kh35,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(279.0, 0.0, 60.0, 60.0),
                  size: Size(375.0, 78.1),
                  child:
                      // Adobe XD layer: 'Calendar Button' (group)
                      Stack(
                    children: <Widget>[
                      // Adobe XD layer: 'Calendar Circle' (shape)
                      Container(
                        width: 60.0,
                        height: 60.0,
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
                      Transform.translate(
                        offset: Offset(13.2, 13.0),
                        child:
                            // Adobe XD layer: 'Calendar Icon' (group)
                            SizedBox(
                          width: 33.0,
                          height: 33.0,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(22.4, 0.0, 3.9, 7.8),
                                size: Size(33.2, 33.2),
                                child: SvgPicture.string(
                                  _svg_3xt7jb,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 3.9, 33.2, 7.9),
                                size: Size(33.2, 33.2),
                                child: SvgPicture.string(
                                  _svg_nil5yt,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(6.9, 0.0, 3.9, 7.8),
                                size: Size(33.2, 33.2),
                                child: SvgPicture.string(
                                  _svg_3lgccj,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 13.8, 33.2, 19.5),
                                size: Size(33.2, 33.2),
                                child: SvgPicture.string(
                                  _svg_6bgj4g,
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
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(167.5, 32.0, 40.0, 40.0),
                  size: Size(375.0, 78.1),
                  child:
                      // Adobe XD layer: 'Home Button' (group)
                      GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/Home');
                    },
                    child: Stack(
                      children: <Widget>[
                        SvgPicture.string(
                          _svg_cyebqd,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(38.0, 32.0, 40.0, 40.0),
                  size: Size(375.0, 78.1),
                  pinLeft: true,
                  pinBottom: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'Profile Button' (group)
                      PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => ProfilePage(),
                      ),
                    ],
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 40.0, 40.0),
                          size: Size(40.0, 40.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child:
                              // Adobe XD layer: 'Profile Circle' (shape)
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
                          bounds: Rect.fromLTWH(10.0, 9.0, 20.1, 22.0),
                          size: Size(40.0, 40.0),
                          child:
                              // Adobe XD layer: 'Profile Icon' (group)
                              Stack(
                            children: <Widget>[
                              Transform.translate(
                                offset: Offset(5.0, 0.0),
                                child: Container(
                                  width: 10.0,
                                  height: 10.0,
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
                              Transform.translate(
                                offset: Offset(0.0, 12.5),
                                child: SvgPicture.string(
                                  _svg_gfhvpx,
                                  allowDrawingOutsideViewBox: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_t3qb8j =
    '<svg viewBox="335.0 43.2 27.0 29.3" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(335.0, 43.2)" d="M 13.49995136260986 29.3478889465332 C 15.62860679626465 29.3478889465332 17.35527610778809 27.70566558837891 17.35527610778809 25.67939949035645 L 9.644627571105957 25.67939949035645 C 9.644627571105957 27.70566558837891 11.37129783630371 29.3478889465332 13.49995136260986 29.3478889465332 Z M 26.48100471496582 20.7664966583252 C 25.31663513183594 19.57652854919434 23.13795471191406 17.78642463684082 23.13795471191406 11.92257690429688 C 23.13795471191406 7.468807697296143 19.85457420349121 3.903497219085693 15.42731475830078 3.028792858123779 L 15.42731475830078 1.834243059158325 C 15.42731475830078 0.8213969469070435 14.56427955627441 0 13.49995136260986 0 C 12.43562602996826 0 11.57258987426758 0.8213969469070435 11.57258987426758 1.834243059158325 L 11.57258987426758 3.028793573379517 C 7.145328998565674 3.903498649597168 3.861944437026978 7.468807697296143 3.861944437026978 11.92257785797119 C 3.861944437026978 17.78642463684082 1.683268070220947 19.5765323638916 0.5188963413238525 20.7664966583252 C 0.1572903245687485 21.13621139526367 -0.003021733835339546 21.57814598083496 -8.31964825920295e-06 22.01091003417969 C 0.006621124688535929 22.95096206665039 0.7822661995887756 23.84515380859375 1.934584259986877 23.84515380859375 L 25.06531524658203 23.84515380859375 C 26.2176342010498 23.84515380859375 26.99388313293457 22.95096206665039 26.99990844726563 22.01091003417969 C 27.00292015075684 21.57814598083496 26.84260940551758 21.13563537597656 26.48100471496582 20.7664966583252 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_e0lvmc =
    '<svg viewBox="190.5 690.0 67.5 24.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(190.5, 690.0)" d="M 2.288132667541504 0 L 65.21178436279297 0 C 66.47548675537109 0 67.49992370605469 2.149032831192017 67.49992370605469 4.799999713897705 L 67.49992370605469 19.19999885559082 C 67.49992370605469 21.85096740722656 66.47548675537109 23.99999809265137 65.21178436279297 23.99999809265137 L 2.288132667541504 23.99999809265137 C 1.024431943893433 23.99999809265137 0 21.85096740722656 0 19.19999885559082 L 0 4.799999713897705 C 0 2.149032831192017 1.024431943893433 0 2.288132667541504 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_7u199j =
    '<svg viewBox="13.0 668.0 242.0 60.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(13.0, 668.0)" d="M 8.203389167785645 0 L 233.7966003417969 0 C 238.3272094726563 0 242 5.372581958770752 242 12 L 242 48 C 242 54.62741851806641 238.3272094726563 60 233.7966003417969 60 L 8.203389167785645 60 C 3.672782421112061 60 0 54.62741851806641 0 48 L 0 12 C 0 5.372581958770752 3.672782421112061 0 8.203389167785645 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_rbwtgt =
    '<svg viewBox="328.0 677.0 18.0 18.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(328.0, 676.96)" d="M 17.55813217163086 7.965863227844238 L 10.06999397277832 0.4776996076107025 C 9.479395866394043 -0.11289993673563 8.52153491973877 -0.11289993673563 7.930935859680176 0.4776996076107025 C 7.340336322784424 1.068299174308777 7.340336322784424 2.026159048080444 7.930935859680176 2.616758823394775 L 14.34884929656982 9.034642219543457 L 7.930935382843018 15.4524974822998 C 7.340335369110107 16.04309463500977 7.340335369110107 17.00095748901367 7.930935382843018 17.5915584564209 C 8.52153491973877 18.18215942382813 9.479395866394043 18.18215751647949 10.069993019104 17.5915584564209 L 17.55813217163086 10.10342216491699 C 18.14872932434082 9.51429271697998 18.14872932434082 8.556462287902832 17.55813217163086 7.965863227844238 Z M 8.554507255554199 7.512419700622559 L 2.609569311141968 1.246693730354309 C 2.01220440864563 0.6178856492042542 1.04463791847229 0.6178856492042542 0.4472730755805969 1.246693730354309 C -0.1500916630029678 1.875501990318298 -0.1500916182994843 2.895571947097778 0.4472730755805969 3.525144100189209 L 5.311461448669434 8.651646614074707 L 0.447272926568985 13.77814674377441 C -0.1500916928052902 14.406982421875 -0.1500916928052902 15.42776107788086 0.447272926568985 16.05659675598145 C 1.044637799263 16.68543434143066 2.012204170227051 16.68543434143066 2.609569311141968 16.05659675598145 L 8.554507255554199 9.790870666503906 C 9.151872634887695 9.162062644958496 9.151872634887695 8.141992568969727 8.554507255554199 7.512419700622559 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_11kh35 =
    '<svg viewBox="-0.2 762.4 375.0 49.8" ><defs><filter id="shadow"><feDropShadow dx="0" dy="-3" stdDeviation="6"/></filter><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(13631.0, -7716.43)" d="M -13631.212890625 8528.576171875 L -13256.212890625 8528.36328125 L -13256.212890625 8479.013671875 C -13256.212890625 8479.013671875 -13263.8671875 8478.6826171875 -13277.1103515625 8479.013671875 C -13290.353515625 8479.3447265625 -13289.595703125 8515.310546875 -13325.1611328125 8515.310546875 C -13360.7265625 8515.310546875 -13355.052734375 8479.3447265625 -13375.8623046875 8479.013671875 C -13396.671875 8478.6826171875 -13631.212890625 8478.8486328125 -13631.212890625 8478.8486328125 L -13631.212890625 8528.576171875 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';

const String _svg_3xt7jb =
    '<svg viewBox="274.8 708.4 3.9 7.8" ><path transform="translate(-71.18, 708.4)" d="M 347.9465026855469 7.786113739013672 C 346.8714904785156 7.786113739013672 346.0000305175781 6.914653301239014 346.0000305175781 5.839585304260254 L 346.0000305175781 1.946528434753418 C 346.0000305175781 0.8714607954025269 346.8714904785156 0 347.9465026855469 0 C 349.0215759277344 0 349.8930358886719 0.8714607954025269 349.8930358886719 1.946528434753418 L 349.8930358886719 5.839585304260254 C 349.8930358886719 6.914653301239014 349.0215759277344 7.786113739013672 347.9465026855469 7.786113739013672 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nil5yt =
    '<svg viewBox="252.4 712.3 33.2 7.9" ><path transform="translate(252.38, 652.3)" d="M 29.6521167755127 60 L 28.28954696655273 60 L 28.28954696655273 61.946533203125 C 28.28954696655273 64.09316253662109 26.54312133789063 65.83958435058594 24.3964900970459 65.83958435058594 C 22.24985885620117 65.83958435058594 20.50343322753906 64.09316253662109 20.50343322753906 61.946533203125 L 20.50343322753906 60 L 12.71731948852539 60 L 12.71731948852539 61.946533203125 C 12.71731948852539 64.09316253662109 10.97089385986328 65.83958435058594 8.824262619018555 65.83958435058594 C 6.67763090133667 65.83958435058594 4.931205272674561 64.09316253662109 4.931205272674561 61.946533203125 L 4.931205272674561 60 L 3.5686354637146 60 C 1.600890040397644 60 0 61.60089111328125 0 63.56863403320313 L 0 67.91588592529297 L 33.22075271606445 67.91588592529297 L 33.22075271606445 63.56863403320313 C 33.22075271606445 61.60089111328125 31.61986351013184 60 29.6521167755127 60 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3lgccj =
    '<svg viewBox="259.3 708.4 3.9 7.8" ><path transform="translate(153.25, 708.4)" d="M 107.9465255737305 7.786113739013672 C 106.871467590332 7.786113739013672 106.0000076293945 6.914653301239014 106.0000076293945 5.839585304260254 L 106.0000076293945 1.946528434753418 C 106.0000076293945 0.8714607954025269 106.871467590332 0 107.9465255737305 0 C 109.021598815918 0 109.8930587768555 0.8714607954025269 109.8930587768555 1.946528434753418 L 109.8930587768555 5.839585304260254 C 109.8930587768555 6.914653301239014 109.021598815918 7.786113739013672 107.9465255737305 7.786113739013672 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6bgj4g =
    '<svg viewBox="252.4 722.2 33.2 19.5" ><path transform="translate(252.38, 510.16)" d="M 0 212.0000152587891 L 0 227.8966522216797 C 0 229.8643951416016 1.600890040397644 231.4652862548828 3.5686354637146 231.4652862548828 L 29.6521167755127 231.4652862548828 C 31.61986351013184 231.4652862548828 33.22075271606445 229.8643951416016 33.22075271606445 227.8966522216797 L 33.22075271606445 212.0000152587891 L 0 212.0000152587891 Z M 17.63321304321289 224.6524505615234 C 17.63321304321289 226.7990570068359 15.88678741455078 228.5454864501953 13.74015522003174 228.5454864501953 C 11.80868053436279 228.5454864501953 10.15121078491211 227.1047515869141 9.884536743164063 225.1942291259766 C 9.859685897827148 225.0159759521484 9.847098350524902 224.8337249755859 9.847098350524902 224.6524505615234 C 9.847098350524902 224.1149444580078 10.28286170959473 223.6791839599609 10.82036304473877 223.6791839599609 C 11.35786437988281 223.6791839599609 11.79362678527832 224.1149444580078 11.79362678527832 224.6524505615234 C 11.79362678527832 224.7440643310547 11.79998683929443 224.8358001708984 11.81244277954102 224.9252166748047 C 11.94552040100098 225.8794097900391 12.77428722381592 226.5989837646484 13.74015522003174 226.5989837646484 C 14.8134708404541 226.5989837646484 15.68668365478516 225.7257537841797 15.68668365478516 224.6524505615234 C 15.68668365478516 223.5791473388672 14.8134708404541 222.7059173583984 13.74015522003174 222.7059173583984 C 13.2026538848877 222.7059173583984 12.76689147949219 222.2701568603516 12.76689147949219 221.7326507568359 C 12.76689147949219 221.1951446533203 13.2026538848877 220.7593841552734 13.74015522003174 220.7593841552734 C 14.8134708404541 220.7593841552734 15.68668365478516 219.8861541748047 15.68668365478516 218.8128509521484 C 15.68668365478516 217.7395477294922 14.8134708404541 216.8663177490234 13.74015522003174 216.8663177490234 C 12.81192111968994 216.8663177490234 12.00865364074707 217.5258941650391 11.83015727996826 218.4345245361328 C 11.72647190093994 218.9619598388672 11.21447086334229 219.3054656982422 10.6876106262207 219.2019805908203 C 10.16016674041748 219.0983428955078 9.81653881072998 218.5868072509766 9.920158386230469 218.0593719482422 C 10.27741146087646 216.2402191162109 11.88394641876221 214.9198150634766 13.74015522003174 214.9198150634766 C 15.88678741455078 214.9198150634766 17.63321304321289 216.6662445068359 17.63321304321289 218.8128509521484 C 17.63321304321289 219.9748077392578 17.12088584899902 221.0187530517578 16.31106567382813 221.7326507568359 C 17.12088584899902 222.4465484619141 17.63321304321289 223.4904937744141 17.63321304321289 224.6524505615234 Z M 23.37365531921387 227.5722503662109 C 23.37365531921387 228.1097564697266 22.93789291381836 228.5454864501953 22.400390625 228.5454864501953 C 21.86289024353027 228.5454864501953 21.42712783813477 228.1097564697266 21.42712783813477 227.5722503662109 L 21.42712783813477 216.8663177490234 L 19.90409851074219 216.8663177490234 C 19.36659812927246 216.8663177490234 18.93083381652832 216.4305572509766 18.93083381652832 215.8930511474609 C 18.93083381652832 215.3555450439453 19.36659812927246 214.9198150634766 19.90409851074219 214.9198150634766 L 22.400390625 214.9198150634766 C 22.93789291381836 214.9198150634766 23.37365531921387 215.3555450439453 23.37365531921387 215.8930511474609 L 23.37365531921387 227.5722503662109 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cyebqd =
    '<svg viewBox="158.0 753.0 40.0 40.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(158.0, 753.0)" d="M 20 0 C 31.04569625854492 0 40 8.954306602478027 40 20 C 40 31.04569625854492 31.04569625854492 40 20 40 C 8.954306602478027 40 0 31.04569625854492 0 20 C 0 8.954306602478027 8.954306602478027 0 20 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(165.21, 760.0)" d="M 24.45757102966309 13.4313497543335 C 24.19749069213867 14.12438106536865 23.55317306518555 14.57225799560547 22.81535720825195 14.57225799560547 L 22.21504211425781 14.57225799560547 L 22.21504211425781 23.21549987792969 C 22.21504211425781 23.64923477172852 21.86302757263184 24.00125122070313 21.42929458618164 24.00125122070313 L 16.71479797363281 24.00125122070313 L 16.71479797363281 18.50100517272949 C 16.71479797363281 16.33469390869141 14.95236110687256 14.57225799560547 12.78605079650879 14.57225799560547 C 10.6197395324707 14.57225799560547 8.857303619384766 16.33469390869141 8.857303619384766 18.50100517272949 L 8.857303619384766 24.00125122070313 L 4.142808437347412 24.00125122070313 C 3.709074974060059 24.00125122070313 3.357059240341187 23.64923477172852 3.357059240341187 23.21549987792969 L 3.357059240341187 14.57225799560547 L 2.755960702896118 14.57225799560547 C 2.018142461776733 14.57225799560547 1.373827934265137 14.12516689300537 1.113744854927063 13.43213558197021 C 0.8536618947982788 12.73910427093506 1.044598937034607 11.97692775726318 1.60090959072113 11.49133491516113 L 10.77767562866211 2.800946712493896 C 11.90443992614746 1.734684705734253 13.66844844818115 1.734684705734253 14.79442501068115 2.800946712493896 L 23.99319458007813 11.51176452636719 C 24.52593231201172 11.97614192962646 24.71765518188477 12.73831939697266 24.45757102966309 13.4313497543335 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_gfhvpx =
    '<svg viewBox="-3465.0 6100.7 20.1 9.5" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-3465.0, 6090.7)" d="M 10.04962348937988 10.00000190734863 C 4.522334575653076 10.00000190734863 8.635443009552546e-06 12.28522682189941 8.635443009552546e-06 15.07828044891357 C 8.635443009552546e-06 15.07828044891357 -0.003917044494301081 15.08375549316406 8.635443009552546e-06 17.6174201965332 C 0.00393431494012475 20.15108299255371 20.0989875793457 20.15108299255371 20.09923934936523 17.6174201965332 C 20.09948921203613 15.08375549316406 20.09923934936523 15.07828044891357 20.09923934936523 15.07828044891357 C 20.09923934936523 12.28522682189941 15.57690906524658 10.00000190734863 10.04962348937988 10.00000190734863 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
