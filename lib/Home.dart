import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './EventsPage.dart';
import 'package:adobe_xd/page_link.dart';
import './ProfilePage.dart';
// import './EventDetails2.dart';
// import './Categories.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'dart:convert';
// import 'package:firebase_database/firebase_database.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    getdata();
  }

  getdata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Map data = json.decode(prefs.getString('data'));
    return data;
  }

  Widget build(BuildContext context) {
    final events = FutureBuilder(
        future: getdata(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            Map<dynamic, dynamic> values = snapshot.data;
            return new ListView.builder(
                itemCount: values.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
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
                                bounds: Rect.fromLTWH(11.0, 0.0, 338.0, 67.2),
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
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 338.0, 67.2),
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
                                          prefs.setString('eventId',
                                              values.keys.toList()[index]);
                                          if (values.values.toList()[index]
                                                  ['subEvents'] !=
                                              null) {
                                            Navigator.of(context)
                                                .pushNamed('/Events');
                                          } else {
                                            Navigator.of(context)
                                                .pushNamed('/EventDetails2');
                                          }
                                        },
                                        child: SvgPicture.string(
                                          _svg_rbwtgt,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 16.0, 242.0, 60.0),
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
                                bounds: Rect.fromLTWH(177.5, 20.0, 67.5, 53.0),
                                size: Size(349.0, 76.0),
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Logo' (group)
                                    Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 14.0, 67.5, 24.0),
                                      size: Size(67.5, 53.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      fixedHeight: true,
                                      child:
                                          // Adobe XD layer: 'Logo Background' (shape)
                                          SvgPicture.string(
                                        _svg_e0lvmc,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(1.5, 0.0, 64.0, 53.0),
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
                                bounds: Rect.fromLTWH(11.0, 50.0, 190.0, 15.0),
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
                                bounds: Rect.fromLTWH(11.0, 25.0, 159.0, 21.0),
                                size: Size(349.0, 76.0),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  values.values.toList()[index]['event_name'],
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
                });
          }
          return CircularProgressIndicator();
        });

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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Jay',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 22,
                color: const Color(0xff404040),
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Sunday, May 1',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                color: const Color(0xff9d9d9d),
              ),
            ),
            Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: const Color(0xff9d9d9d),
                ),
                children: [
                  TextSpan(
                    text: 'You have',
                  ),
                  TextSpan(
                    text: ' ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: '1',
                    style: TextStyle(
                      color: const Color(0xfffe4f70),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: ' ',
                    style: TextStyle(
                      color: const Color(0xb313c9bd),
                    ),
                  ),
                  TextSpan(
                    text: 'upcoming events!',
                  ),
                ],
              ),
            ),
            Text(
              'Recommended',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                color: const Color(0xff404040),
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 480,
              child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                image:
                                    AssetImage('assets/Background Image1.png'),
                                height: 160,
                                width: 300,
                                fit: BoxFit.fill,
                              ),
                              Text(
                                'Trending',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  color: const Color(0xfa404040),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Check out the hottest events right now!',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: const Color(0xfa9d9d9d),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            Text(
              'Events',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                color: const Color(0xff404040),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
            Expanded(child: events)
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 70.0,
        child: Stack(
          children: <Widget>[
            Pinned.fromSize(
              bounds: Rect.fromLTWH(0.0, 28.3, 375.0, 49.9),
              size: Size(375.0, 78.1),
              pinLeft: true,
              pinRight: true,
              pinBottom: true,
              fixedHeight: true,
              child:
                  // Adobe XD layer: 'Bottom Bar' (shape)
                  SvgPicture.string(
                _svg_2w8omz,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(297.0, 32.0, 40.0, 40.0),
              size: Size(375.0, 78.1),
              pinRight: true,
              pinBottom: true,
              fixedWidth: true,
              fixedHeight: true,
              child:
                  // Adobe XD layer: 'Calendar Button' (group)
                  PageLink(
                links: [
                  PageLinkInfo(
                    transition: LinkTransition.Fade,
                    ease: Curves.easeOut,
                    duration: 0.3,
                    pageBuilder: () => EventsPage(),
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
                          // Adobe XD layer: 'Calendar Circle' (shape)
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
                      bounds: Rect.fromLTWH(9.0, 9.0, 22.0, 22.0),
                      size: Size(40.0, 40.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child:
                          // Adobe XD layer: 'Calendar Icon' (group)
                          Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(14.9, 0.0, 2.6, 5.2),
                            size: Size(22.0, 22.0),
                            child: SvgPicture.string(
                              _svg_7sbw54,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 2.6, 22.0, 5.2),
                            size: Size(22.0, 22.0),
                            child: SvgPicture.string(
                              _svg_x7aajd,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(4.6, 0.0, 2.6, 5.2),
                            size: Size(22.0, 22.0),
                            child: SvgPicture.string(
                              _svg_udq5wv,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 9.1, 22.0, 12.9),
                            size: Size(22.0, 22.0),
                            child: SvgPicture.string(
                              _svg_q86o9f,
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
            Pinned.fromSize(
              bounds: Rect.fromLTWH(158.2, 0.0, 60.0, 60.0),
              size: Size(375.0, 78.1),
              pinTop: true,
              fixedWidth: true,
              fixedHeight: true,
              child:
                  // Adobe XD layer: 'Home Button' (group)
                  Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 60.0, 60.0),
                    size: Size(60.0, 60.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'Home Circle' (shape)
                        SvgPicture.string(
                      _svg_90a85a,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(12.3, 13.5, 35.4, 33.0),
                    size: Size(60.0, 60.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'Home Icon' (shape)
                        SvgPicture.string(
                      _svg_sxb1lv,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
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
                      bounds: Rect.fromLTWH(10.0, 9.0, 20.0, 21.9),
                      size: Size(40.0, 40.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child:
                          // Adobe XD layer: 'Profile Icon' (group)
                          Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(5.0, 0.0, 10.0, 10.0),
                            size: Size(20.0, 21.9),
                            child: Container(
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
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 12.4, 20.0, 9.5),
                            size: Size(20.0, 21.9),
                            child: SvgPicture.string(
                              _svg_lwl1au,
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
          ],
        ),
      ),
    );
  }
}

const String _svg_7sbw54 =
    '<svg viewBox="262.7 704.0 2.6 5.2" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-83.35, 704.0)" d="M 347.2890625 5.15625 C 346.5771179199219 5.15625 346 4.579136848449707 346 3.8671875 L 346 1.2890625 C 346 0.5771132707595825 346.5771179199219 0 347.2890625 0 C 348.0010070800781 0 348.578125 0.5771132707595825 348.578125 1.2890625 L 348.578125 3.8671875 C 348.578125 4.579136848449707 348.0010070800781 5.15625 347.2890625 5.15625 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x7aajd =
    '<svg viewBox="247.8 706.6 22.0 5.2" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(247.79, 646.58)" d="M 19.63671875 60 L 18.734375 60 L 18.734375 61.2890625 C 18.734375 62.71063995361328 17.57782745361328 63.8671875 16.15625 63.8671875 C 14.73467254638672 63.8671875 13.578125 62.71063995361328 13.578125 61.2890625 L 13.578125 60 L 8.421875 60 L 8.421875 61.2890625 C 8.421875 62.71063995361328 7.265327930450439 63.8671875 5.84375 63.8671875 C 4.422172069549561 63.8671875 3.265625 62.71063995361328 3.265625 61.2890625 L 3.265625 60 L 2.36328125 60 C 1.060168027877808 60 0 61.0601692199707 0 62.36328125 L 0 65.2421875 L 22 65.2421875 L 22 62.36328125 C 22 61.0601692199707 20.93983268737793 60 19.63671875 60 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_udq5wv =
    '<svg viewBox="252.3 704.0 2.6 5.2" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(146.34, 704.0)" d="M 107.2890625 5.15625 C 106.5771102905273 5.15625 106 4.579136848449707 106 3.8671875 L 106 1.2890625 C 106 0.5771132707595825 106.5771102905273 0 107.2890625 0 C 108.0010147094727 0 108.578125 0.5771132707595825 108.578125 1.2890625 L 108.578125 3.8671875 C 108.578125 4.579136848449707 108.0010147094727 5.15625 107.2890625 5.15625 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_q86o9f =
    '<svg viewBox="247.8 713.1 22.0 12.9" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(247.79, 501.11)" d="M 0 212 L 0 222.52734375 C 0 223.8304595947266 1.060168027877808 224.890625 2.36328125 224.890625 L 19.63671875 224.890625 C 20.93983268737793 224.890625 22 223.8304595947266 22 222.52734375 L 22 212 L 0 212 Z M 11.67735958099365 220.37890625 C 11.67735958099365 221.8004760742188 10.52081298828125 222.95703125 9.099234580993652 222.95703125 C 7.820140838623047 222.95703125 6.722504138946533 222.0029144287109 6.545902252197266 220.7377014160156 C 6.529445648193359 220.6196594238281 6.521109580993652 220.4989624023438 6.521109580993652 220.37890625 C 6.521109580993652 220.02294921875 6.809688091278076 219.734375 7.165640830993652 219.734375 C 7.521594047546387 219.734375 7.810172080993652 220.02294921875 7.810172080993652 220.37890625 C 7.810172080993652 220.4395751953125 7.814383506774902 220.5003356933594 7.822632789611816 220.5595397949219 C 7.91076135635376 221.1914520263672 8.459601402282715 221.66796875 9.099234580993652 221.66796875 C 9.810023307800293 221.66796875 10.38829708099365 221.0896911621094 10.38829708099365 220.37890625 C 10.38829708099365 219.6681213378906 9.810023307800293 219.08984375 9.099234580993652 219.08984375 C 8.743281364440918 219.08984375 8.454703330993652 218.80126953125 8.454703330993652 218.4453125 C 8.454703330993652 218.08935546875 8.743281364440918 217.80078125 9.099234580993652 217.80078125 C 9.810023307800293 217.80078125 10.38829708099365 217.2225036621094 10.38829708099365 216.51171875 C 10.38829708099365 215.8009338378906 9.810023307800293 215.22265625 9.099234580993652 215.22265625 C 8.484523773193359 215.22265625 7.95257043838501 215.6594390869141 7.83436393737793 216.2611694335938 C 7.76569938659668 216.6104583740234 7.426633358001709 216.8379364013672 7.077727317810059 216.7694091796875 C 6.728434562683105 216.7007751464844 6.500871658325195 216.3620147705078 6.569492816925049 216.0127258300781 C 6.806078433990479 214.8080139160156 7.869985103607178 213.93359375 9.099234580993652 213.93359375 C 10.52081298828125 213.93359375 11.67735958099365 215.0901489257813 11.67735958099365 216.51171875 C 11.67735958099365 217.2812042236328 11.33807849884033 217.9725341796875 10.80178546905518 218.4453125 C 11.33807849884033 218.9180908203125 11.67735958099365 219.6094207763672 11.67735958099365 220.37890625 Z M 15.47889137268066 222.3125 C 15.47889137268066 222.66845703125 15.1903133392334 222.95703125 14.83436012268066 222.95703125 C 14.47840690612793 222.95703125 14.18982887268066 222.66845703125 14.18982887268066 222.3125 L 14.18982887268066 215.22265625 L 13.18122386932373 215.22265625 C 12.825270652771 215.22265625 12.53669261932373 214.93408203125 12.53669261932373 214.578125 C 12.53669261932373 214.22216796875 12.825270652771 213.93359375 13.18122386932373 213.93359375 L 14.83436012268066 213.93359375 C 15.1903133392334 213.93359375 15.47889137268066 214.22216796875 15.47889137268066 214.578125 L 15.47889137268066 222.3125 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2w8omz =
    '<svg viewBox="-0.2 762.3 375.0 49.9" ><defs><filter id="shadow"><feDropShadow dx="0" dy="-3" stdDeviation="6"/></filter><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(13631.0, -7716.43)" d="M -13631.212890625 8528.576171875 L -13256.212890625 8528.36328125 L -13256.212890625 8479.013671875 C -13256.212890625 8479.013671875 -13382.3896484375 8478.5380859375 -13395.6328125 8478.869140625 C -13408.8759765625 8479.2001953125 -13408.1181640625 8515.166015625 -13443.68359375 8515.166015625 C -13479.2490234375 8515.166015625 -13473.5751953125 8479.2001953125 -13494.384765625 8478.869140625 C -13515.1943359375 8478.5380859375 -13631.212890625 8478.8486328125 -13631.212890625 8478.8486328125 L -13631.212890625 8528.576171875 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_90a85a =
    '<svg viewBox="158.0 753.0 60.0 60.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(158.0, 753.0)" d="M 30 0 C 46.56854248046875 0 60 13.43145942687988 60 30 C 60 46.56854248046875 46.56854248046875 60 30 60 C 13.43145942687988 60 0 46.56854248046875 0 30 C 0 13.43145942687988 13.43145942687988 0 30 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_sxb1lv =
    '<svg viewBox="170.3 766.5 35.4 33.0" ><path transform="translate(169.32, 764.5)" d="M 36.18679809570313 19.14639854431152 C 35.79667663574219 20.18594551086426 34.8302001953125 20.85776138305664 33.72347640991211 20.85776138305664 L 32.82300567626953 20.85776138305664 L 32.82300567626953 33.82262420654297 C 32.82300567626953 34.47322463989258 32.29498291015625 35.00125122070313 31.64438247680664 35.00125122070313 L 24.5726375579834 35.00125122070313 L 24.5726375579834 26.75088119506836 C 24.5726375579834 23.50141525268555 21.92898368835449 20.85776138305664 18.67951774597168 20.85776138305664 C 15.43005084991455 20.85776138305664 12.78639793395996 23.50141525268555 12.78639793395996 26.75088119506836 L 12.78639793395996 35.00125122070313 L 5.714653491973877 35.00125122070313 C 5.064053058624268 35.00125122070313 4.53602933883667 34.47322463989258 4.53602933883667 33.82262420654297 L 4.53602933883667 20.85776138305664 L 3.634381771087646 20.85776138305664 C 2.52765417098999 20.85776138305664 1.561182379722595 20.18712425231934 1.171057820320129 19.1475772857666 C 0.7809333205223083 18.10803031921387 1.067338824272156 16.96476554870605 1.901804804801941 16.23637580871582 L 15.66695499420166 3.200794696807861 C 17.35710144042969 1.601401925086975 20.00311470031738 1.601401925086975 21.69207954406738 3.200794696807861 L 35.490234375 16.26702117919922 C 36.28934097290039 16.96358680725098 36.57692337036133 18.10685348510742 36.18679809570313 19.14639854431152 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lwl1au =
    '<svg viewBox="-3465.0 6100.6 20.0 9.5" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-3465.0, 6090.63)" d="M 9.999875068664551 10.00000190734863 C 4.499943256378174 10.00000190734863 0 12.27391624450684 0 15.05314540863037 C 0 15.05314540863037 -0.00390625 15.05859375 0 17.5797176361084 C 0.00390625 20.1008415222168 19.9995002746582 20.1008415222168 19.9997501373291 17.5797176361084 C 20 15.05859375 19.9997501373291 15.05314540863037 19.9997501373291 15.05314540863037 C 19.9997501373291 12.27391624450684 15.49980449676514 10.00000190734863 9.999875068664551 10.00000190734863 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mgai8u =
    '<svg viewBox="24.0 652.0 338.0 67.2" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter><pattern id="image" patternUnits="userSpaceOnUse" width="4000.0" height="2599.0"><image xlink:href="null" x="0" y="0" width="4000.0" height="2599.0" /></pattern></defs><path transform="translate(24.0, 652.0)" d="M 11.45762825012207 0 L 326.5423889160156 0 C 332.8702392578125 0 338.0000305175781 6.015822410583496 338.0000305175781 13.43671703338623 L 338.0000305175781 53.74686813354492 C 338.0000305175781 61.16776275634766 332.8702392578125 67.18359375 326.5423889160156 67.18359375 L 11.45762825012207 67.18359375 C 5.129754066467285 67.18359375 0 61.16776275634766 0 53.74686813354492 L 0 13.43671703338623 C 0 6.015822410583496 5.129754066467285 0 11.45762825012207 0 Z" fill="url(#image)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_rbwtgt =
    '<svg viewBox="328.0 677.0 18.0 18.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(328.0, 676.96)" d="M 17.55813217163086 7.965863227844238 L 10.06999397277832 0.4776996076107025 C 9.479395866394043 -0.11289993673563 8.52153491973877 -0.11289993673563 7.930935859680176 0.4776996076107025 C 7.340336322784424 1.068299174308777 7.340336322784424 2.026159048080444 7.930935859680176 2.616758823394775 L 14.34884929656982 9.034642219543457 L 7.930935382843018 15.4524974822998 C 7.340335369110107 16.04309463500977 7.340335369110107 17.00095748901367 7.930935382843018 17.5915584564209 C 8.52153491973877 18.18215942382813 9.479395866394043 18.18215751647949 10.069993019104 17.5915584564209 L 17.55813217163086 10.10342216491699 C 18.14872932434082 9.51429271697998 18.14872932434082 8.556462287902832 17.55813217163086 7.965863227844238 Z M 8.554507255554199 7.512419700622559 L 2.609569311141968 1.246693730354309 C 2.01220440864563 0.6178856492042542 1.04463791847229 0.6178856492042542 0.4472730755805969 1.246693730354309 C -0.1500916630029678 1.875501990318298 -0.1500916182994843 2.895571947097778 0.4472730755805969 3.525144100189209 L 5.311461448669434 8.651646614074707 L 0.447272926568985 13.77814674377441 C -0.1500916928052902 14.406982421875 -0.1500916928052902 15.42776107788086 0.447272926568985 16.05659675598145 C 1.044637799263 16.68543434143066 2.012204170227051 16.68543434143066 2.609569311141968 16.05659675598145 L 8.554507255554199 9.790870666503906 C 9.151872634887695 9.162062644958496 9.151872634887695 8.141992568969727 8.554507255554199 7.512419700622559 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_e0lvmc =
    '<svg viewBox="190.5 690.0 67.5 24.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(190.5, 690.0)" d="M 2.288132667541504 0 L 65.21178436279297 0 C 66.47548675537109 0 67.49992370605469 2.149032831192017 67.49992370605469 4.799999713897705 L 67.49992370605469 19.19999885559082 C 67.49992370605469 21.85096740722656 66.47548675537109 23.99999809265137 65.21178436279297 23.99999809265137 L 2.288132667541504 23.99999809265137 C 1.024431943893433 23.99999809265137 0 21.85096740722656 0 19.19999885559082 L 0 4.799999713897705 C 0 2.149032831192017 1.024431943893433 0 2.288132667541504 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_7u199j =
    '<svg viewBox="13.0 668.0 242.0 60.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(13.0, 668.0)" d="M 8.203389167785645 0 L 233.7966003417969 0 C 238.3272094726563 0 242 5.372581958770752 242 12 L 242 48 C 242 54.62741851806641 238.3272094726563 60 233.7966003417969 60 L 8.203389167785645 60 C 3.672782421112061 60 0 54.62741851806641 0 48 L 0 12 C 0 5.372581958770752 3.672782421112061 0 8.203389167785645 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_w10n1t =
    '<svg viewBox="0.0 0.0 149.6 131.5" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-111.66, -29.85)" d="M 250.9952545166016 101.2203826904297 C 245.0546264648438 111.3499755859375 245.8639221191406 124.9703903198242 248.1775512695313 135.6729278564453 C 248.9508514404297 139.2560882568359 249.8509521484375 143.0302429199219 249.0494689941406 147.0814361572266 C 248.0695343017578 152.0280609130859 244.7759857177734 155.9650115966797 241.4745788574219 158.2442016601563 C 235.4572448730469 162.4002990722656 228.6791534423828 162.4300384521484 223.8264312744141 158.3224792480469 C 219.6327972412109 154.7721862792969 216.9497222900391 148.485595703125 212.6621246337891 145.1309661865234 C 205.4879760742188 139.5190734863281 195.4303741455078 143.2243347167969 186.6438751220703 148.7955474853516 C 180.427734375 152.7371673583984 173.5760345458984 157.7104034423828 167.9563293457031 155.0962066650391 C 164.0021514892578 153.2568817138672 161.61962890625 147.88134765625 160.5739593505859 141.9986572265625 C 160.0683441162109 139.1590270996094 159.7912750244141 136.0501708984375 158.5467987060547 133.904052734375 C 157.8063507080078 132.6282348632813 156.7716369628906 131.7860717773438 155.6962280273438 131.1004333496094 C 145.8703002929688 124.8388900756836 132.2999877929688 130.5353393554688 122.8466262817383 123.4175186157227 C 116.46142578125 118.610237121582 112.9753189086914 108.4806289672852 111.9781646728516 97.58868408203125 C 110.9810256958008 86.69673919677734 112.2051467895508 74.99549865722656 113.6781845092773 63.46331024169922 C 114.7254180908203 55.27165222167969 116.098258972168 46.49454498291016 120.2120895385742 39.76182556152344 C 124.5638580322266 32.63932800292969 131.2699584960938 29.3582820892334 137.0305786132813 29.89990425109863 C 142.7911987304688 30.4415283203125 147.7284240722656 34.28298187255859 151.9565124511719 39.0073127746582 C 157.2397003173828 44.91506958007813 161.9608917236328 52.50091934204102 168.9127807617188 54.29641723632813 C 173.6480712890625 55.51898193359375 178.8780059814453 53.87845611572266 183.9529876708984 52.90478897094727 C 192.4358062744141 51.27679061889648 200.7636566162109 51.51786041259766 209.0304260253906 51.88729095458984 C 216.9450225830078 52.24106597900391 224.9049835205078 52.72320556640625 232.2294006347656 55.57377243041992 C 237.4123840332031 57.591552734375 241.3352813720703 61.93549346923828 246.1613464355469 64.71248626708984 C 249.3030548095703 66.52207946777344 252.8846588134766 66.68487548828125 255.7962951660156 69.12531280517578 C 259.3841552734375 72.13240814208984 262.4288024902344 77.75839996337891 260.8274536132813 84.98265838623047 C 259.3043212890625 91.85625457763672 254.1541900634766 95.84327697753906 250.9952545166016 101.2203826904297 Z" fill="url(#gradient)" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-168.6, -262.91)" d="M 194.0365600585938 366.2191467285156 C 194.0365600585938 366.2191467285156 183.5923461914063 348.9200744628906 186.5227355957031 333.3977355957031 C 187.7546691894531 326.8825988769531 186.9625854492188 320.1420593261719 184.0400390625 314.1904602050781 C 182.6487426757813 311.3690185546875 181.0018615722656 308.6809692382813 179.1200256347656 306.1600646972656" fill="none" fill-opacity="0.98" stroke="#535461" stroke-width="2" stroke-opacity="0.98" stroke-miterlimit="10" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-132.67, -192.83)" d="M 144.991455078125 226.2827453613281 C 145.5941467285156 228.5807189941406 143.1834411621094 236.3356628417969 143.1834411621094 236.3356628417969 C 143.1834411621094 236.3356628417969 137.2741394042969 230.7644348144531 136.6698913574219 228.4664611816406 C 136.064697265625 226.1685180664063 137.4369659423828 223.8150939941406 139.7348937988281 223.2098999023438 C 142.0328369140625 222.604736328125 144.3862915039063 223.9769592285156 144.991455078125 226.2749328613281 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-188.4, -238.58)" d="M 210.9341278076172 282.9601135253906 C 210.192138671875 285.2173767089844 203.9525146484375 290.416015625 203.9525146484375 290.416015625 C 203.9525146484375 290.416015625 202.0192565917969 282.5280151367188 202.7628326416016 280.2707824707031 C 203.5051116943359 278.0139465332031 205.9365997314453 276.7866516113281 208.1932678222656 277.5293579101563 C 210.4499359130859 278.2720947265625 211.6772613525391 280.7035522460938 210.9345397949219 282.9602355957031 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-209.72, -346.09)" d="M 237.6714782714844 412.2948303222656 C 235.8916320800781 413.8601989746094 227.8800048828125 415.2064208984375 227.8800048828125 415.2064208984375 C 227.8800048828125 415.2064208984375 230.1936340332031 407.4217529296875 231.9734649658203 405.8485412597656 C 233.7534637451172 404.2750549316406 236.4719543457031 404.4429626464844 238.0451354980469 406.2232055664063 C 239.6183166503906 408.0034484863281 239.4504241943359 410.7219543457031 237.670166015625 412.2951354980469 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-215.16, -442.89)" d="M 243.4775085449219 526.5364379882813 C 241.9888305664063 528.3883056640625 234.3200073242188 531.0604248046875 234.3200073242188 531.0604248046875 C 234.3200073242188 531.0604248046875 235.2842712402344 522.9954833984375 236.77294921875 521.145263671875 C 238.2616577148438 519.2937622070313 240.9694213867188 518.999755859375 242.8208618164063 520.488525390625 C 244.6723022460938 521.977294921875 244.9662780761719 524.68505859375 243.4775390625 526.5364990234375 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-136.97, -280.31)" d="M 143.9119262695313 334.8857421875 C 145.9797973632813 336.0535278320313 154.0869293212891 335.6965942382813 154.0869293212891 335.6965942382813 C 154.0869293212891 335.6965942382813 150.2047729492188 328.5631713867188 148.1384735107422 327.4000854492188 C 146.7972564697266 326.5973510742188 145.1261596679688 326.5853271484375 143.7735290527344 327.3687133789063 C 142.4208984375 328.1520690917969 141.5996704101563 329.6074829101563 141.62841796875 331.1702880859375 C 141.6571655273438 332.733154296875 142.5314178466797 334.1573791503906 143.9119567871094 334.8904418945313 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-134.68, -387.94)" d="M 142.3140716552734 462.900390625 C 144.6371154785156 463.3966064453125 152.2730560302734 460.62744140625 152.2730560302734 460.62744140625 C 152.2730560302734 460.62744140625 146.4372863769531 454.982666015625 144.1095733642578 454.48486328125 C 141.7861328125 453.9890747070313 139.5006713867188 455.470703125 139.0048675537109 457.7941284179688 C 138.5090484619141 460.1175537109375 139.9906463623047 462.4030151367188 142.3140716552734 462.8988647460938 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-157.51, -495.66)" d="M 168.5419769287109 590.3412475585938 C 170.7475891113281 591.2225341796875 178.7420043945313 589.7840576171875 178.7420043945313 589.7840576171875 C 178.7420043945313 589.7840576171875 173.9409790039063 583.23291015625 171.7353668212891 582.3515625 C 169.5555419921875 581.569091796875 167.1474914550781 582.65283203125 166.2877197265625 584.8033447265625 C 165.4279479980469 586.953857421875 166.4250793457031 589.3990478515625 168.5435485839844 590.3350219726563 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-132.67, -192.83)" d="M 144.991455078125 226.2827453613281 C 145.5941467285156 228.5807189941406 143.1834411621094 236.3356628417969 143.1834411621094 236.3356628417969 C 143.1834411621094 236.3356628417969 137.2741394042969 230.7644348144531 136.6698913574219 228.4664611816406 C 136.064697265625 226.1685180664063 137.4369659423828 223.8150939941406 139.7348937988281 223.2098999023438 C 142.0328369140625 222.604736328125 144.3862915039063 223.9769592285156 144.991455078125 226.2749328613281 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-188.4, -238.58)" d="M 210.9341278076172 282.9601135253906 C 210.192138671875 285.2173767089844 203.9525146484375 290.416015625 203.9525146484375 290.416015625 C 203.9525146484375 290.416015625 202.0192565917969 282.5280151367188 202.7628326416016 280.2707824707031 C 203.5051116943359 278.0139465332031 205.9365997314453 276.7866516113281 208.1932678222656 277.5293579101563 C 210.4499359130859 278.2720947265625 211.6772613525391 280.7035522460938 210.9345397949219 282.9602355957031 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-209.72, -346.09)" d="M 237.6714782714844 412.2948303222656 C 235.8916320800781 413.8601989746094 227.8800048828125 415.2064208984375 227.8800048828125 415.2064208984375 C 227.8800048828125 415.2064208984375 230.1936340332031 407.4217529296875 231.9734649658203 405.8485412597656 C 233.7534637451172 404.2750549316406 236.4719543457031 404.4429626464844 238.0451354980469 406.2232055664063 C 239.6183166503906 408.0034484863281 239.4504241943359 410.7219543457031 237.670166015625 412.2951354980469 Z" fill="#fc6681" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-215.16, -442.89)" d="M 243.4775085449219 526.5364379882813 C 241.9888305664063 528.3883056640625 234.3200073242188 531.0604248046875 234.3200073242188 531.0604248046875 C 234.3200073242188 531.0604248046875 235.2842712402344 522.9954833984375 236.77294921875 521.145263671875 C 238.2616577148438 519.2937622070313 240.9694213867188 518.999755859375 242.8208618164063 520.488525390625 C 244.6723022460938 521.977294921875 244.9662780761719 524.68505859375 243.4775390625 526.5364990234375 Z" fill="#fc6681" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-136.97, -280.31)" d="M 143.9119262695313 334.8857421875 C 145.9797973632813 336.0535278320313 154.0869293212891 335.6965942382813 154.0869293212891 335.6965942382813 C 154.0869293212891 335.6965942382813 150.2047729492188 328.5631713867188 148.1384735107422 327.4000854492188 C 146.7972564697266 326.5973510742188 145.1261596679688 326.5853271484375 143.7735290527344 327.3687133789063 C 142.4208984375 328.1520690917969 141.5996704101563 329.6074829101563 141.62841796875 331.1702880859375 C 141.6571655273438 332.733154296875 142.5314178466797 334.1573791503906 143.9119567871094 334.8904418945313 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-134.68, -387.94)" d="M 142.3140716552734 462.900390625 C 144.6371154785156 463.3966064453125 152.2730560302734 460.62744140625 152.2730560302734 460.62744140625 C 152.2730560302734 460.62744140625 146.4372863769531 454.982666015625 144.1095733642578 454.48486328125 C 141.7861328125 453.9890747070313 139.5006713867188 455.470703125 139.0048675537109 457.7941284179688 C 138.5090484619141 460.1175537109375 139.9906463623047 462.4030151367188 142.3140716552734 462.8988647460938 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-157.51, -495.66)" d="M 168.5419769287109 590.3412475585938 C 170.7475891113281 591.2225341796875 178.7420043945313 589.7840576171875 178.7420043945313 589.7840576171875 C 178.7420043945313 589.7840576171875 173.9409790039063 583.23291015625 171.7353668212891 582.3515625 C 169.5555419921875 581.569091796875 167.1474914550781 582.65283203125 166.2877197265625 584.8033447265625 C 165.4279479980469 586.953857421875 166.4250793457031 589.3990478515625 168.5435485839844 590.3350219726563 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_42ror7 =
    '<svg viewBox="15.8 29.9 126.6 76.0" ><defs><linearGradient id="gradient" x1="0.499923" y1="0.999814" x2="0.499923" y2="-0.000088"><stop offset="0.0" stop-color="#40808080" stop-opacity="0.25" /><stop offset="0.54" stop-color="#1f808080" stop-opacity="0.12" /><stop offset="1.0" stop-color="#1a808080" stop-opacity="0.1" /></linearGradient></defs><path transform="translate(-700.93, -217.48)" d="M 843.2882690429688 318.3372802734375 C 843.2882690429688 318.3372802734375 843.1630859375 318.1697998046875 842.9893188476563 317.98193359375 L 843.0394287109375 317.9647521972656 C 843.0394287109375 317.9647521972656 840.8040771484375 312.3778686523438 841.3018188476563 310.0188293457031 C 841.7996215820313 307.6597900390625 839.3153686523438 301.9492797851563 839.3153686523438 301.9492797851563 C 839.3153686523438 301.9492797851563 835.6508178710938 294.4448547363281 837.38525390625 288.4556274414063 C 837.583251953125 287.7502746582031 837.7328491210938 287.0321655273438 837.8329467773438 286.306396484375 C 838.35107421875 282.7592163085938 838.16796875 282.0281982421875 837.2991943359375 280.7320556640625 L 837.2036743164063 280.5927124023438 C 837.3108520507813 280.4884033203125 837.3955688476563 280.3632202148438 837.4525756835938 280.224853515625 C 838.19775390625 278.2384033203125 833.9773559570313 274.6380004882813 835.0997924804688 271.2849731445313 C 836.1361083984375 268.1776733398438 833.43896484375 261.765869140625 833.0381469726563 260.8438415527344 L 833.0381469726563 260.8438415527344 L 832.9927978515625 260.7389526367188 L 832.858154296875 260.7828063964844 C 832.8807373046875 259.9821166992188 833.1959838867188 259.2174682617188 833.7442016601563 258.633544921875 L 833.7691650390625 258.6084594726563 C 834.1417846679688 258.2656860351563 834.5941162109375 258.0136108398438 834.9432373046875 257.645751953125 L 834.963623046875 257.6222839355469 C 834.998046875 257.5894165039063 835.0340576171875 257.5565490722656 835.0669555664063 257.5221252441406 C 835.4129028320313 257.1589050292969 835.6492309570313 256.6204223632813 835.4613647460938 256.1539611816406 C 835.290771484375 255.7281646728516 834.811767578125 255.4683380126953 834.6990356445313 255.0237731933594 C 834.6719360351563 254.8238830566406 834.6552124023438 254.6227111816406 834.64892578125 254.4210815429688 C 834.5582275390625 253.794921875 833.94921875 253.4020080566406 833.3966064453125 253.0920715332031 C 832.7094116210938 252.703857421875 831.98779296875 252.3093719482422 831.1941528320313 252.2999877929688 C 830.1203002929688 252.2999877929688 829.1591186523438 253.0200653076172 828.0930786132813 253.1092834472656 C 827.7299194335938 253.1406097412109 827.3527221679688 253.0967864990234 827.00830078125 253.2173156738281 C 826.745849609375 253.3265686035156 826.5047607421875 253.4813079833984 826.2960815429688 253.6743927001953 C 826.1734008789063 253.7709045410156 826.0572509765625 253.87548828125 825.9485473632813 253.9874725341797 C 825.70751953125 254.212890625 825.50244140625 254.47900390625 825.5117797851563 254.79833984375 C 825.5291748046875 255.0315551757813 825.638427734375 255.2482604980469 825.8154907226563 255.4010314941406 C 825.1199340820313 256.3471069335938 824.8785400390625 257.5523681640625 825.1560668945313 258.6934204101563 C 825.43359375 259.8343811035156 826.20166015625 260.7941284179688 827.2540893554688 261.3150634765625 C 827.2666015625 261.401123046875 827.2791748046875 261.4888000488281 827.2916259765625 261.5811157226563 C 827.4481811523438 262.7567443847656 827.5405883789063 264.4192199707031 827.1226196289063 265.7215881347656 C 825.3396606445313 266.6405029296875 822.56103515625 268.1385498046875 822.0632934570313 268.8038330078125 C 821.985107421875 268.9177856445313 821.9610595703125 269.0603637695313 821.99755859375 269.193603515625 C 821.9834594726563 269.2546691894531 821.980224609375 269.3177490234375 821.9881591796875 269.3798828125 C 821.5983276367188 269.4691772460938 821.0802001953125 269.3798828125 820.4494018554688 268.8038330078125 C 818.9591674804688 267.4388427734375 814.2426147460938 263.3406372070313 814.2426147460938 263.3406372070313 C 814.2426147460938 263.3406372070313 812.1324462890625 258.1263427734375 810.6422119140625 259.1141357421875 C 809.1519775390625 260.1018676757813 812.3797607421875 264.9498291015625 812.3797607421875 264.9498291015625 L 819.4459228515625 272.5263366699219 C 819.4459228515625 272.5263366699219 819.69482421875 274.1402282714844 822.3012084960938 273.2714233398438 C 823.1621704101563 272.9849853515625 823.9401245117188 272.7110290527344 824.5975952148438 272.4746704101563 L 824.7540893554688 272.6077270507813 C 824.1671752929688 276.0421752929688 823.8634033203125 280.619384765625 826.0283813476563 281.9624633789063 C 826.1979370117188 282.1872253417969 826.3203125 282.44384765625 826.388427734375 282.7169799804688 C 826.37744140625 282.7576904296875 826.366455078125 282.7999572753906 826.3571166992188 282.8406372070313 C 826.1912231445313 283.5260620117188 826.08642578125 284.2249145507813 826.0440673828125 284.9288330078125 C 825.6359252929688 285.8619384765625 825.447998046875 286.8763427734375 825.49462890625 287.8937072753906 L 824.6649169921875 299.7139282226563 C 824.6649169921875 299.7139282226563 824.541259765625 302.3203125 825.4100341796875 304.3067932128906 C 826.2788696289063 306.2932739257813 829.0103759765625 316.2256164550781 827.1476440429688 316.9707336425781 L 827.3245239257813 316.9942321777344 C 826.7907104492188 317.5436706542969 825.8921508789063 318.37646484375 825.2081298828125 318.5408325195313 C 824.168701171875 318.7881469726563 824.4598388671875 320.3817138671875 826.7640991210938 320.6478271484375 C 829.068359375 320.9139404296875 829.345458984375 320.8920288085938 830.9656372070313 319.5410766601563 C 832.3931884765625 318.3514404296875 832.6202392578125 317.8191528320313 832.653076171875 317.7049255371094 L 832.7344970703125 317.7158508300781 C 832.7344970703125 317.7158508300781 831.86572265625 314.488037109375 832.7344970703125 313.123046875 C 833.603271484375 311.7579956054688 830.7495727539063 303.4411010742188 830.7495727539063 303.4411010742188 C 830.7256469726563 302.37841796875 830.7647705078125 301.315185546875 830.8670043945313 300.2571105957031 C 831.3052978515625 301.404541015625 831.6183471679688 302.1997375488281 831.6183471679688 302.1997375488281 C 831.6183471679688 302.1997375488281 832.363525390625 305.8001098632813 833.2322998046875 306.42626953125 C 834.10107421875 307.0524291992188 838.6954956054688 315.613525390625 837.9503173828125 319.3375854492188 L 837.8642578125 319.7711791992188 L 838.0740356445313 319.7101440429688 L 838.0928344726563 319.7101440429688 C 837.8063354492188 320.4192504882813 837.2850341796875 321.5400390625 836.708984375 321.9517822265625 C 835.8402099609375 322.5779113769531 836.708984375 323.938232421875 838.9443969726563 323.3167419433594 C 841.1798095703125 322.6953125 841.4270629882813 322.5716552734375 842.4210815429688 320.7103881835938 C 843.4151000976563 318.8491516113281 843.2882690429688 318.3372802734375 843.2882690429688 318.3372802734375 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-778.83, -391.08)" d="M 904.7314453125 458.7815246582031 L 904.186767578125 458.1099853515625 C 903.629638671875 459.1451721191406 903.364013671875 460.3121948242188 903.418212890625 461.4865417480469 L 902.6072998046875 473.0437316894531 C 902.6072998046875 473.0437316894531 902.4852294921875 475.5922241210938 903.335205078125 477.5348510742188 C 904.1851806640625 479.4774780273438 906.855712890625 489.1875610351563 905.0352783203125 489.9154663085938 L 910.4906005859375 490.6527709960938 C 910.4906005859375 490.6527709960938 909.6405029296875 487.4969482421875 910.4906005859375 486.1616821289063 C 911.340576171875 484.8263854980469 908.5478515625 476.6942138671875 908.5478515625 476.6942138671875 C 908.5478515625 476.6942138671875 908.3052978515625 469.8973388671875 910.611083984375 468.31787109375 C 912.9168701171875 466.7384033203125 904.7314453125 458.7815246582031 904.7314453125 458.7815246582031 Z" fill="#555388" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-778.71, -559.72)" d="M 905.536865234375 658.1063842773438 C 905.536865234375 658.1063842773438 904.038818359375 659.8564453125 903.0244140625 660.09912109375 C 902.010009765625 660.3417358398438 902.2933959960938 661.8977661132813 904.5459594726563 662.1591796875 C 906.7985229492188 662.420654296875 907.0693359375 662.398681640625 908.6550903320313 661.0775146484375 C 910.2408447265625 659.75634765625 910.311279296875 659.2601318359375 910.311279296875 659.2601318359375 C 910.311279296875 659.2601318359375 909.9981689453125 658.0860595703125 909.6194458007813 658.06103515625 C 909.2405395507813 658.0359497070313 905.536865234375 658.1063842773438 905.536865234375 658.1063842773438 Z" fill="#603556" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-778.83, -391.08)" d="M 905.1046142578125 459.1463623046875 L 904.1966552734375 458.1100769042969 C 903.6395263671875 459.1452331542969 903.3739013671875 460.3122253417969 903.4281005859375 461.486572265625 L 902.6171875 473.0438537597656 C 902.6171875 473.0438537597656 902.4951171875 475.59228515625 903.3450927734375 477.534912109375 C 904.195068359375 479.4775695800781 906.8656005859375 489.1876220703125 905.045166015625 489.91552734375 L 910.4989013671875 490.6528625488281 C 910.4989013671875 490.6528625488281 909.64892578125 487.4969787597656 910.4989013671875 486.1617126464844 C 911.348876953125 484.8265075683594 908.5562744140625 476.6943359375 908.5562744140625 476.6943359375 C 908.5562744140625 476.6943359375 908.3135986328125 469.8974304199219 910.6195068359375 468.3179321289063 C 912.92529296875 466.7384643554688 905.1046142578125 459.1463623046875 905.1046142578125 459.1463623046875 Z" fill="#2f2e41" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.500014" y1="1.000076" x2="0.500014" y2="0.0"><stop offset="0.0" stop-color="#40808080" stop-opacity="0.25" /><stop offset="0.54" stop-color="#1f808080" stop-opacity="0.12" /><stop offset="1.0" stop-color="#1a808080" stop-opacity="0.1" /></linearGradient></defs><path transform="translate(-196.82, -191.24)" d="M 328.4960021972656 275.1534729003906 C 328.4960021972656 275.1534729003906 326.9791564941406 245.3782958984375 320.7520446777344 234.8401489257813 C 320.7520446777344 234.8401489257813 316.1858215332031 226.499755859375 312.3694458007813 224.067138671875 L 312.3694458007813 223.1060180664063 C 306.1423034667969 218.7949523925781 298.4797668457031 223.1060180664063 298.4797668457031 223.1060180664063 L 298.4797668457031 223.5317993164063 L 296.883056640625 224.8623657226563 L 289.6932373046875 224.8373413085938 C 289.0344848632813 224.0432739257813 288.0559997558594 223.5841674804688 287.0242919921875 223.5849914550781 L 254.2169342041016 223.5850219726563 C 253.2474670410156 223.5839538574219 252.3219451904297 223.9893798828125 251.6653594970703 224.7026977539063 L 244.198486328125 224.7026977539063 C 244.198486328125 224.7026977539063 243.7586212158203 224.1908264160156 242.6017913818359 223.6758117675781 L 242.6017913818359 223.1060180664063 C 236.3747100830078 218.7949523925781 228.7121429443359 223.1060180664063 228.7121429443359 223.1060180664063 L 228.7121429443359 224.2628479003906 C 228.5300903320313 224.383056640625 228.3683929443359 224.5315551757813 228.2331237792969 224.7026977539063 C 228.2331237792969 224.7026977539063 221.9262084960938 228.9292297363281 220.4891662597656 234.2014465332031 C 220.4891662597656 234.2014465332031 212.7452239990234 257.4317626953125 212.5855560302734 275.6324768066406 C 212.4258880615234 293.8332214355469 219.4513244628906 296.387939453125 223.1221466064453 296.8669128417969 C 226.7929840087891 297.345947265625 233.3394165039063 296.7103881835938 239.7261962890625 280.5869140625 L 242.4405517578125 271.1680297851563 C 242.4405517578125 271.1680297851563 242.9195861816406 265.5795593261719 248.6676788330078 269.0923156738281 C 254.415771484375 272.6050415039063 259.5236206054688 267.1763000488281 259.5236206054688 267.1763000488281 L 281.0789489746094 267.1763000488281 C 281.0789489746094 267.1763000488281 288.2562561035156 271.6407470703125 294.8089294433594 268.1217651367188 C 294.8089294433594 268.1217651367188 297.3636169433594 264.7687072753906 299.7586669921875 276.105224609375 C 299.7586669921875 276.105224609375 307.1034545898438 299.4153442382813 318.4384155273438 297.0203247070313 C 329.7733459472656 294.6253051757813 328.4960021972656 275.1534729003906 328.4960021972656 275.1534729003906 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-288.13, -195.24)" d="M 320.8399963378906 229.5303649902344 L 320.8399963378906 227.8084411621094 C 320.8399963378906 227.8084411621094 328.3538208007813 223.5819244384766 334.4588623046875 227.8084411621094 L 334.4588623046875 229.3738403320313 L 320.8399963378906 229.5303649902344 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-656.73, -195.24)" d="M 757.840087890625 229.5303649902344 L 757.840087890625 227.8084411621094 C 757.840087890625 227.8084411621094 765.3538818359375 223.5819244384766 771.4588623046875 227.8084411621094 L 771.4588623046875 229.3738403320313 L 757.840087890625 229.5303649902344 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-288.13, -195.24)" d="M 320.8399963378906 229.5303649902344 L 320.8399963378906 227.8084411621094 C 320.8399963378906 227.8084411621094 328.3538208007813 223.5819244384766 334.4588623046875 227.8084411621094 L 334.4588623046875 229.3738403320313 L 320.8399963378906 229.5303649902344 Z" fill="#000000" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-656.73, -195.24)" d="M 757.840087890625 229.5303649902344 L 757.840087890625 227.8084411621094 C 757.840087890625 227.8084411621094 765.3538818359375 223.5819244384766 771.4588623046875 227.8084411621094 L 771.4588623046875 229.3738403320313 L 757.840087890625 229.5303649902344 Z" fill="#000000" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-202.93, -202.79)" d="M 258.1777648925781 236.921875 L 250.8204803466797 236.921875 C 250.8204803466797 236.921875 248.9420318603516 234.7303466796875 242.6804809570313 234.8868713378906 C 236.4189300537109 235.0434265136719 235.1666259765625 236.921875 235.1666259765625 236.921875 C 235.1666259765625 236.921875 228.9833679199219 241.0701293945313 227.5745239257813 246.2359161376953 C 227.5745239257813 246.2359161376953 219.9824066162109 269.0122680664063 219.8258666992188 286.8576354980469 C 219.6693267822266 304.7030029296875 226.5570220947266 307.2076416015625 230.1573944091797 307.67724609375 C 233.7577819824219 308.1468505859375 240.1758575439453 307.5206909179688 246.4374084472656 291.7102966308594 L 249.0985412597656 282.4745483398438 C 249.0985412597656 282.4745483398438 249.5681762695313 276.9956970214844 255.2035675048828 280.4395446777344 C 260.8389282226563 283.8833923339844 265.8481750488281 278.5610656738281 265.8481750488281 278.5610656738281 L 286.9808654785156 278.5610656738281 C 286.9808654785156 278.5610656738281 294.0250854492188 282.9441833496094 300.4431457519531 279.5003051757813 C 300.4431457519531 279.5003051757813 302.94775390625 276.2129821777344 305.2958374023438 287.3272399902344 C 305.2958374023438 287.3272399902344 312.4966125488281 310.1818542480469 323.6108703613281 307.8337707519531 C 334.7250671386719 305.4857177734375 333.4727783203125 286.3880310058594 333.4727783203125 286.3880310058594 C 333.4727783203125 286.3880310058594 331.9856567382813 257.193603515625 325.8806457519531 246.862060546875 C 325.8806457519531 246.862060546875 320.0104675292969 236.1391754150391 316.0970153808594 235.6695709228516 C 316.0970153808594 235.6695709228516 307.6439514160156 234.1041870117188 304.3565979003906 235.5130310058594 L 302.4781494140625 237.0784149169922 L 258.1777648925781 236.921875 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_849x8u =
    '<svg viewBox="29.3 40.5 17.8 17.8" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-303.32, -248.38)" d="M 343.8826904296875 294.8158264160156 L 342.06689453125 296.4219055175781 C 341.7487487792969 296.7020263671875 341.2720336914063 296.7020263671875 340.9538879394531 296.4219055175781 L 339.1349182128906 294.8158264160156 C 338.9549865722656 294.6572875976563 338.851318359375 294.4295043945313 338.8500366210938 294.189697265625 L 338.8500366210938 289.7705993652344 C 338.8508911132813 289.3060913085938 339.2276611328125 288.9299926757813 339.6921997070313 288.9299926757813 L 343.3317260742188 288.9299926757813 C 343.55517578125 288.9295959472656 343.7696228027344 289.0181884765625 343.9276733398438 289.1761779785156 C 344.085693359375 289.334228515625 344.1742858886719 289.5487060546875 344.1738586425781 289.7721557617188 L 344.1738586425781 294.1865539550781 C 344.1719055175781 294.4284362792969 344.0657958984375 294.6577453613281 343.8827209472656 294.8158264160156 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-303.32, -303.04)" d="M 343.8826904296875 355.5426940917969 L 342.06689453125 353.9382019042969 C 341.7487487792969 353.6581115722656 341.2720336914063 353.6581115722656 340.9538879394531 353.9382019042969 L 339.1349182128906 355.5442199707031 C 338.9549865722656 355.7027587890625 338.851318359375 355.9306030273438 338.8500366210938 356.17041015625 L 338.8500366210938 360.5848083496094 C 338.849609375 360.8082885742188 338.9381713867188 361.0227661132813 339.0962219238281 361.1807556152344 C 339.2542419433594 361.3388061523438 339.4687194824219 361.4273986816406 339.6921997070313 361.4269714355469 L 343.3317260742188 361.4269714355469 C 343.5549011230469 361.4273986816406 343.7691650390625 361.3390197753906 343.9270935058594 361.1813049316406 C 344.0850830078125 361.0236206054688 344.1738586425781 360.8096008300781 344.1738586425781 360.5863647460938 L 344.1738586425781 356.1719970703125 C 344.1719055175781 355.9301147460938 344.0657958984375 355.7007751464844 343.8826904296875 355.5426940917969 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-269.61, -282.13)" d="M 304.7611389160156 333.9758911132813 L 306.3672485351563 332.1568908691406 C 306.6472778320313 331.8387145996094 306.6472778320313 331.3620300292969 306.3672485351563 331.0438842773438 L 304.7611389160156 329.2248840332031 C 304.6024780273438 329.0451049804688 304.374755859375 328.9414978027344 304.1349792480469 328.9400024414063 L 299.7206115722656 328.9400024414063 C 299.256103515625 328.9408569335938 298.8800048828125 329.3176879882813 298.8800048828125 329.7821655273438 L 298.8800048828125 333.4216918945313 C 298.8795776367188 333.6451721191406 298.9682006835938 333.859619140625 299.126220703125 334.0176696777344 C 299.2842407226563 334.1756896972656 299.4986572265625 334.2642822265625 299.72216796875 334.2638854980469 L 304.1365661621094 334.2638854980469 C 304.3762817382813 334.2612915039063 304.6035461425781 334.156494140625 304.7611389160156 333.975830078125 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-324.25, -282.12)" d="M 365.4683837890625 333.9674072265625 L 363.8654174804688 332.1468505859375 C 363.5846252441406 331.8289794921875 363.5846252441406 331.3517456054688 363.8654174804688 331.0338745117188 L 365.4714965820313 329.2149047851563 C 365.6300354003906 329.0349426269531 365.8578186035156 328.9312744140625 366.09765625 328.9299926757813 L 370.5120239257813 328.9299926757813 C 370.7355346679688 328.9295654296875 370.9499816894531 329.0181884765625 371.1080017089844 329.1762084960938 C 371.2660217285156 329.3341979980469 371.3546142578125 329.5487060546875 371.3541870117188 329.7721862792969 L 371.3541870117188 333.4116821289063 C 371.3546142578125 333.6348876953125 371.2662048339844 333.84912109375 371.1085510253906 334.0071105957031 C 370.9508666992188 334.1650390625 370.73681640625 334.2538757324219 370.5136108398438 334.2538757324219 L 366.0992431640625 334.2538757324219 C 365.8575134277344 334.2535095214844 365.627685546875 334.1491088867188 365.4683837890625 333.9674072265625 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_t5ghue =
    '<svg viewBox="107.1 39.0 4.5 3.8" ><path transform="translate(-577.54, -210.1)" d="M 684.6800537109375 252.8369140625 L 686.87158203125 249.0800018310547 L 689.2196655273438 252.8369140625 L 684.6800537109375 252.8369140625 Z" fill="none" fill-opacity="0.98" stroke="#e2e2ec" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_26vdoc =
    '<svg viewBox="43.6 41.6 98.4 63.9" ><path transform="translate(108.24, 55.23)" d="M 0 0 L 3.522114753723145 3.522114753723145" fill="none" fill-opacity="0.98" stroke="#e2e2ec" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="10" stroke-linecap="butt" /><path transform="translate(108.24, 55.23)" d="M 3.600383758544922 0 L 0 3.443845510482788" fill="none" fill-opacity="0.98" stroke="#e2e2ec" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="10" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-346.87, -568.13)" d="M 400.6775817871094 672.1636962890625 C 401.1471862792969 671.80517578125 401.5933227539063 671.3809814453125 401.7294921875 670.869140625 C 401.8743591308594 670.3043823242188 401.5517272949219 669.7251586914063 400.9953002929688 669.551025390625 C 400.3206787109375 669.34130859375 399.6005859375 669.7216796875 399.0526733398438 670.1067504882813 C 398.5048217773438 670.4918212890625 397.8802185058594 670.9317626953125 397.1648559570313 670.8502807617188 C 397.9052734375 670.31494140625 398.2606201171875 669.4414672851563 398.0540161132813 668.6587524414063 C 398.0191650390625 668.4882202148438 397.9328308105469 668.33251953125 397.806640625 668.212646484375 C 397.4325256347656 667.885498046875 396.7531433105469 668.0263671875 396.3054504394531 668.2830810546875 C 394.87939453125 669.1017456054688 394.4818115234375 670.6812744140625 394.4739379882813 672.1041870117188 C 394.3299255371094 671.5907592773438 394.4520263671875 671.0569458007813 394.4473571777344 670.5293579101563 C 394.442626953125 670.0018310546875 394.2673034667969 669.4195556640625 393.7225646972656 669.13623046875 C 393.3741149902344 668.9856567382813 392.996826171875 668.91357421875 392.6174011230469 668.9248657226563 C 391.9771728515625 668.9061279296875 391.2617492675781 668.957763671875 390.8250427246094 669.34130859375 C 390.2818603515625 669.8109130859375 390.4227294921875 670.6139526367188 390.8954772949219 671.1367797851563 C 391.3682250976563 671.6596069335938 392.0882873535156 671.98828125 392.7504577636719 672.3499755859375 C 393.2560729980469 672.6254272460938 393.7663879394531 672.9463500976563 394.0763244628906 673.381591796875 C 394.115966796875 673.439208984375 394.1490478515625 673.501220703125 394.1749572753906 673.5662231445313 L 398.1932983398438 673.5662231445313 C 399.076171875 673.2031860351563 399.91064453125 672.7320556640625 400.6775817871094 672.1636962890625 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-840.55, -565.04)" d="M 977.68896484375 665.9405517578125 C 977.68896484375 665.9405517578125 976.9610595703125 668.132080078125 976.1109619140625 668.7332153320313 C 975.260986328125 669.3342895507813 976.1109619140625 670.6759033203125 978.3026123046875 670.0684204101563 C 980.494140625 669.4611206054688 980.73046875 669.340576171875 981.700927734375 667.52001953125 C 982.6715087890625 665.6995239257813 982.551025390625 665.2141723632813 982.551025390625 665.2141723632813 C 982.551025390625 665.2141723632813 981.8231201171875 664.2437133789063 981.4552001953125 664.3642578125 C 981.08740234375 664.4847412109375 977.68896484375 665.9405517578125 977.68896484375 665.9405517578125 Z" fill="#603556" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-784.17, -253.79)" d="M 916.808837890625 300.19091796875 C 916.808837890625 300.19091796875 906.9766845703125 305.6524963378906 909.282470703125 304.0746154785156 C 910.832275390625 303.0148620605469 910.73828125 300.2018737792969 910.509765625 298.4689636230469 C 910.437744140625 297.928955078125 910.3531494140625 297.4937133789063 910.3016357421875 297.2495422363281 C 910.2718505859375 297.1117858886719 910.2530517578125 297.0350952148438 910.2530517578125 297.0350952148438 C 910.2530517578125 297.0350952148438 915.021240234375 294.173583984375 914.7535400390625 295.8939208984375 L 914.7535400390625 295.8939208984375 C 914.7535400390625 295.9095764160156 914.7535400390625 295.9252014160156 914.7457275390625 295.9408569335938 C 914.72265625 296.0558166503906 914.7105712890625 296.1726989746094 914.709716796875 296.2899475097656 C 914.6768798828125 298.058837890625 916.808837890625 300.19091796875 916.808837890625 300.19091796875 Z" fill="#c87486" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-702.86, -257.01)" d="M 824.8231201171875 308.7534790039063 C 824.8231201171875 308.7534790039063 823.97314453125 310.0887451171875 822.517333984375 308.7534790039063 C 821.0615234375 307.418212890625 816.4483032226563 303.4123840332031 816.4483032226563 303.4123840332031 C 816.4483032226563 303.4123840332031 814.3851318359375 298.3139343261719 812.92626953125 299.2860412597656 C 811.46728515625 300.2581481933594 814.626220703125 304.9918518066406 814.626220703125 304.9918518066406 L 821.5452270507813 312.3961486816406 C 821.5452270507813 312.3961486816406 821.787841796875 313.9740295410156 824.337890625 313.1240539550781 C 826.8878784179688 312.2740478515625 828.7084350585938 311.5461120605469 828.7084350585938 311.5461120605469 L 824.8231201171875 308.7534790039063 Z" fill="#c87486" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-789.98, -375.41)" d="M 915.8300170898438 439.5299987792969" fill="none" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-789.47, -368.21)" d="M 931.2149047851563 468.0229187011719 L 926.3621826171875 469.722900390625 L 926.1571655273438 469.7824096679688 L 926.2416381835938 469.3581848144531 C 926.9695434570313 465.7170715332031 922.4847412109375 457.3406982421875 921.6284790039063 456.7333374023438 C 920.7722778320313 456.1259155273438 920.0474243164063 452.6022644042969 920.0474243164063 452.6022644042969 C 920.0474243164063 452.6022644042969 918.45703125 444.5906677246094 918.21435546875 442.8969116210938 C 918.1533203125 442.4726867675781 917.9310302734375 442.1345825195313 917.6617431640625 441.6680603027344 C 917.2556762695313 440.9611206054688 916.940185546875 440.2059020996094 916.7225341796875 439.4201965332031 C 916.1887817382813 437.5417175292969 914.9442749023438 434.2074584960938 915.4013671875 432.3211669921875 C 915.4937133789063 431.9376525878906 915.116455078125 432.9176025390625 915.2448120117188 432.54345703125 L 915.3184204101563 432.3368225097656 L 925.1458740234375 431 C 925.3089599609375 431.1979370117188 925.4615478515625 431.4043579101563 925.60302734375 431.6183166503906 C 926.3465576171875 432.7218933105469 926.2980346679688 432.7218933105469 926.45458984375 434.8195190429688 C 926.3869018554688 436.0850524902344 926.2083129882813 437.3421630859375 925.9207153320313 438.5764465332031 C 924.5980224609375 444.4669799804688 927.5816650390625 452.351806640625 927.5816650390625 452.351806640625 C 927.5816650390625 452.351806640625 930.009521484375 457.9355163574219 929.5242919921875 460.2413635253906 C 929.0390014648438 462.5471496582031 931.2149047851563 468.0229187011719 931.2149047851563 468.0229187011719 Z" fill="#2f2e41" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-787.78, -368.21)" d="M 923.9177856445313 431.6167297363281 C 922.4635620117188 433.4404296875 913.1478881835938 434.8571166992188 913.2637939453125 434.2778930664063 C 913.2987060546875 434.0780029296875 913.2835693359375 433.8725891113281 913.219970703125 433.679931640625 C 913.3125 433.2951965332031 913.42431640625 432.9153747558594 913.5548706054688 432.5418701171875 L 913.6284790039063 432.3352661132813 L 923.460693359375 431 C 923.6237182617188 431.1974487304688 923.7763061523438 431.4033203125 923.9177856445313 431.6167297363281 Z" fill="#000000" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-785.2, -266.15)" d="M 917.1138305664063 310 C 917.1138305664063 310 913.1065063476563 311.2178344726563 912.0107421875 314.010498046875 C 910.9149169921875 316.8031616210938 912.8418579101563 316.9550170898438 912.8418579101563 316.9550170898438 C 912.8418579101563 316.9550170898438 909.3980102539063 326.0342407226563 910.3106689453125 330.7616882324219 C 910.3106689453125 330.7616882324219 910.7959594726563 331.3690795898438 910.6754150390625 331.974853515625 C 910.5548095703125 332.5806884765625 920.7501831054688 331.0043334960938 921.4765625 329.0617065429688 C 922.202880859375 327.1190490722656 918.0781860351563 323.6000366210938 919.1707153320313 320.3221435546875 C 920.2633666992188 317.0442199707031 917.1138305664063 310 917.1138305664063 310 Z" fill="#dfe5ee" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-791.54, -255.11)" d="M 922.1156616210938 297.5014038085938 C 922.1088256835938 297.5379028320313 922.0966796875 297.5732421875 922.0796508789063 297.6062622070313 C 921.9137573242188 297.9193420410156 921.38623046875 297.5765380859375 921.5693969726563 298.046142578125 C 920.8649291992188 298.7537231445313 920.6426391601563 300.1703491210938 919.567138671875 300.1703491210938 C 918.9824829101563 300.172119140625 918.4048461914063 300.0409851074219 917.878173828125 299.786865234375 C 917.80615234375 299.2467956542969 917.7216186523438 298.8116149902344 917.669921875 298.5674438476563 C 918.1395874023438 298.2887573242188 921.896484375 296.1128845214844 922.1218872070313 297.2117919921875 L 922.1218872070313 297.2117919921875 C 922.1394653320313 297.3077392578125 922.1372680664063 297.4062805175781 922.1156616210938 297.5014038085938 Z" fill="#000000" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lb60fx =
    '<svg viewBox="121.2 35.6 13.2 20.9" ><path transform="translate(-764.71, -289.77)" d="M 896.6224975585938 343.0890502929688 L 889.8255615234375 346.244873046875 C 889.8255615234375 346.244873046875 885.2123413085938 342.7258605957031 885.9402465820313 341.7568969726563 C 886.668212890625 340.7879638671875 892.3740234375 338 892.3740234375 338 C 892.3740234375 338 898.2003784179688 339.2053527832031 896.6224975585938 343.0890502929688 Z" fill="#000000" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-764.71, -288.48)" d="M 896.6292724609375 341.5621948242188 L 889.8323364257813 344.718017578125 C 889.8323364257813 344.718017578125 885.2191772460938 341.1974487304688 885.9486083984375 340.2269287109375 C 886.6781005859375 339.2564086914063 892.38232421875 336.4700012207031 892.38232421875 336.4700012207031 C 892.38232421875 336.4700012207031 898.2071533203125 337.6722106933594 896.6292724609375 341.5621948242188 Z" fill="#dfe5ee" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-783.29, -222.37)" d="M 910.2029418945313 261.6431884765625 C 909.609619140625 261.5837097167969 908.9960327148438 261.5179443359375 908.4810180664063 261.2189636230469 C 908.1820678710938 261.0467834472656 907.9080810546875 260.7618713378906 907.898681640625 260.4159545898438 C 907.8876953125 260.0089416503906 908.2305297851563 259.691162109375 908.5452270507813 259.432861328125 C 908.7493286132813 259.2443237304688 908.985107421875 259.09326171875 909.2417602539063 258.9867553710938 C 909.578369140625 258.8693237304688 909.9462280273438 258.9115905761719 910.301513671875 258.8818359375 C 911.3472290039063 258.794189453125 912.2833251953125 258.08349609375 913.333740234375 258.0897827148438 C 914.10546875 258.0897827148438 914.8145751953125 258.4842529296875 915.4861450195313 258.8646545410156 C 916.0230102539063 259.1683044433594 916.6194458007813 259.5534057617188 916.7086791992188 260.1638793945313 C 916.714599609375 260.3608093261719 916.7308349609375 260.5572509765625 916.7572021484375 260.7525024414063 C 916.8683471679688 261.1876525878906 917.3363647460938 261.4412841796875 917.50390625 261.857666015625 C 917.68701171875 262.3131713867188 917.4553833007813 262.8406982421875 917.1172485351563 263.196044921875 C 916.7791137695313 263.5513610839844 916.3345947265625 263.7955932617188 915.9791870117188 264.12744140625 C 915.312255859375 264.7458190917969 914.9409790039063 265.6194458007813 914.9585571289063 266.5287475585938 C 914.9664916992188 266.5880126953125 914.957275390625 266.6483154296875 914.9319458007813 266.7025146484375 C 914.8775024414063 266.7681884765625 914.7979736328125 266.8079528808594 914.7127685546875 266.8120727539063 C 914.3261108398438 266.8841247558594 913.8486938476563 266.9232177734375 913.6170043945313 266.6038818359375 C 913.3853149414063 266.2845458984375 913.5684814453125 265.7523193359375 913.303955078125 265.4376831054688 C 912.9674072265625 265.0322570800781 912.2598266601563 265.354736328125 911.8043212890625 265.0885925292969 C 911.6507568359375 264.9890441894531 911.53076171875 264.8455810546875 911.4598999023438 264.6768798828125 C 911.0842895507813 263.8676147460938 911.5147094726563 263.2320556640625 911.6712646484375 262.458740234375 C 911.8543701171875 261.5555419921875 910.840087890625 261.7073974609375 910.2029418945313 261.6431884765625 Z" fill="#000000" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-783.95, -221.7)" d="M 910.98291015625 260.8532104492188 C 910.3896484375 260.7937316894531 909.7760009765625 260.7279663085938 909.260986328125 260.4290161132813 C 908.9620361328125 260.2568054199219 908.68798828125 259.9718933105469 908.6787109375 259.6259460449219 C 908.667724609375 259.2189331054688 909.010498046875 258.9011535644531 909.3251953125 258.6429138183594 C 909.529296875 258.4543151855469 909.76513671875 258.3032836914063 910.021728515625 258.1967468261719 C 910.3583984375 258.079345703125 910.7261962890625 258.1216125488281 911.08154296875 258.0918579101563 C 912.127197265625 258.0041809082031 913.0633544921875 257.2935180664063 914.11376953125 257.2997741699219 C 914.885498046875 257.2997741699219 915.594482421875 257.6942443847656 916.26611328125 258.0746459960938 C 916.802978515625 258.3783264160156 917.3994140625 258.763427734375 917.4886474609375 259.3739318847656 C 917.49462890625 259.5708312988281 917.5108642578125 259.7672729492188 917.5372314453125 259.9624938964844 C 917.6483154296875 260.3976745605469 918.1163330078125 260.6512756347656 918.2838134765625 261.0676574707031 C 918.467041015625 261.523193359375 918.2353515625 262.0507202148438 917.897216796875 262.4060363769531 C 917.55908203125 262.7614135742188 917.114501953125 263.005615234375 916.7591552734375 263.3374633789063 C 916.0899658203125 263.9570007324219 915.7178955078125 264.8332824707031 915.7369384765625 265.7450256347656 C 915.744873046875 265.8042907714844 915.7357177734375 265.8645935058594 915.7103271484375 265.9187622070313 C 915.656005859375 265.9844665527344 915.576416015625 266.0242309570313 915.4912109375 266.0283508300781 C 915.1046142578125 266.1003723144531 914.627197265625 266.1394958496094 914.3953857421875 265.8201599121094 C 914.1636962890625 265.5008239746094 914.346923828125 264.9685974121094 914.0823974609375 264.6539306640625 C 913.745849609375 264.24853515625 913.0382080078125 264.5709838867188 912.582763671875 264.3048706054688 C 912.42919921875 264.2053527832031 912.3092041015625 264.0618896484375 912.2384033203125 263.8931884765625 C 911.8594970703125 263.0823059082031 912.29150390625 262.4420776367188 912.4481201171875 261.6609497070313 C 912.6328125 260.7671203613281 911.618408203125 260.9205017089844 910.98291015625 260.8532104492188 Z" fill="#2f2e41" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_elo20i =
    '<svg viewBox="144.0 503.5 227.0 142.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(144.04, 503.52)" d="M 15 0 L 212 0 C 220.2842712402344 0 227 6.531735897064209 227 14.58904075622559 L 227 142 L 0 142 L 0 14.58904075622559 C 0 6.531735897064209 6.715728759765625 0 15 0 Z" fill="#ffffff" fill-opacity="0.96" stroke="none" stroke-width="1" stroke-opacity="0.96" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_kuo91b =
    '<svg viewBox="0.0 20.2 127.4 108.2" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-139.02, -177.91)" d="M 264.2062377929688 251.7595520019531 L 266.43798828125 238.3069305419922 L 238.5735626220703 232.4035491943359 L 239.7173919677734 198.0881805419922 L 226.0808410644531 198.0881805419922 L 225.0326690673828 229.5347137451172 L 187.5228729248047 221.5878143310547 L 188.3061828613281 198.0879974365234 L 174.6696166992188 198.0879974365234 L 173.9819793701172 218.7189788818359 L 146.5758972167969 212.9127197265625 L 144.3441314697266 226.3653564453125 L 173.5211486816406 232.5467987060547 L 172.6321105957031 259.2176513671875 L 141.2465667724609 252.5684204101563 L 139.0148010253906 266.0210266113281 L 172.1711120605469 273.0455322265625 L 171.0646209716797 306.23974609375 L 184.7011413574219 306.23974609375 L 185.7119903564453 275.9143981933594 L 223.2218017578125 283.8612670898438 L 222.4758605957031 306.2398681640625 L 236.1123657226563 306.2398681640625 L 236.7626800537109 286.7300415039063 L 258.8769226074219 291.4151916503906 L 261.1087036132813 277.9625854492188 L 237.2235565185547 272.9022521972656 L 238.1125946044922 246.2313537597656 L 264.2062377929688 251.7595520019531 Z M 223.6827850341797 270.0333557128906 L 186.1729888916016 262.0864868164063 L 187.06201171875 235.4156188964844 L 224.5718231201172 243.3624877929688 L 223.6827850341797 270.0333557128906 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-234.31, -260.19)" d="M 322.7401428222656 352.309814453125 L 323.6292114257813 325.6389770507813 L 286.1194152832031 317.6919860839844 L 286.0929870605469 318.4834899902344 L 319.8673706054688 325.6389770507813 L 319.0046997070313 351.518310546875 L 322.7401428222656 352.309814453125 Z" fill="#000000" fill-opacity="0.2" stroke="none" stroke-width="1" stroke-opacity="0.2" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-389.34, -91.29)" d="M 479.1214904785156 142.90771484375 L 480.1696472167969 111.4609985351563 L 476.4077758789063 111.4609985351563 L 475.385986328125 142.1161956787109 L 479.1214904785156 142.90771484375 Z" fill="#000000" fill-opacity="0.2" stroke="none" stroke-width="1" stroke-opacity="0.2" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-465.31, -309.13)" d="M 568.16943359375 377.447998046875 L 568.1430053710938 378.2393493652344 L 590.501220703125 382.9762268066406 L 590.6290893554688 382.206298828125 L 568.16943359375 377.447998046875 Z" fill="#000000" fill-opacity="0.2" stroke="none" stroke-width="1" stroke-opacity="0.2" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-158.34, -91.29)" d="M 197.0714416503906 132.0919494628906 L 197.7590637207031 111.4609985351563 L 193.9971923828125 111.4609985351563 L 193.3359985351563 131.3006286621094 L 197.0714416503906 132.0919494628906 Z" fill="#000000" fill-opacity="0.2" stroke="none" stroke-width="1" stroke-opacity="0.2" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-459.2, -492.38)" d="M 560.7114868164063 601.198974609375 L 560.68505859375 601.9903564453125 L 579.0639038085938 605.8841552734375 L 579.1915893554688 605.1141967773438 L 560.7114868164063 601.198974609375 Z" fill="#000000" fill-opacity="0.2" stroke="none" stroke-width="1" stroke-opacity="0.2" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-228.2, -443.44)" d="M 278.6614379882813 541.4429931640625 L 278.635009765625 542.2344360351563 L 312.4093627929688 549.389892578125 L 311.6635131835938 571.7685546875 L 315.4251708984375 571.7685546875 L 316.1712646484375 549.389892578125 L 278.6614379882813 541.4429931640625 Z" fill="#000000" fill-opacity="0.2" stroke="none" stroke-width="1" stroke-opacity="0.2" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-24.11, -158.37)" d="M 57.75735473632813 238.8796081542969 L 61.49280548095703 239.6709136962891 L 62.38187408447266 213.0002136230469 L 33.20487976074219 206.8187713623047 L 35.30880737304688 194.135986328125 L 31.67490005493164 193.3659973144531 L 29.44300079345703 206.8187713623047 L 58.6199951171875 213.0002136230469 L 57.75735473632813 238.8796081542969 Z" fill="#000000" fill-opacity="0.2" stroke="none" stroke-width="1" stroke-opacity="0.2" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(0.0, -337.8)" d="M 3.761877536773682 425.9117126464844 L 5.865807056427002 413.2289733886719 L 2.231714248657227 412.458984375 L 0 425.9117126464844 L 33.15625 432.936279296875 L 32.0498046875 466.1305541992188 L 35.81150054931641 466.1305541992188 L 36.91812896728516 432.936279296875 L 3.761877536773682 425.9117126464844 Z" fill="#000000" fill-opacity="0.2" stroke="none" stroke-width="1" stroke-opacity="0.2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_juqimq =
    '<svg viewBox="124.6 11.6 25.2 115.6" ><path transform="translate(-738.61, -139.14)" d="M 888.0543212890625 159.2100524902344 C 886.5592041015625 163.6365509033203 884.2667236328125 167.6697082519531 879.5946044921875 167.6697082519531 C 874.9225463867188 167.6697082519531 871.3980102539063 163.874755859375 871.1349487304688 159.2100524902344 C 870.7985229492188 153.2494506835938 874.8146362304688 150.7256774902344 879.594482421875 150.7503662109375 C 885.2411499023438 150.7794799804688 889.8284301757813 153.9569396972656 888.0543212890625 159.2100524902344 Z" fill="#2f2e41" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-702.76, -327.73)" d="M 838.1044311523438 381.009033203125 L 833.2186279296875 399.3895568847656 C 833.2186279296875 399.3895568847656 826.7039794921875 401.0182495117188 827.4019775390625 402.6468505859375 C 828.0999755859375 404.2755432128906 835.0799560546875 401.4835815429688 835.0799560546875 401.4835815429688 L 841.3619384765625 386.127685546875 L 838.1044311523438 381.009033203125 Z" fill="#ffb9b9" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-769.32, -593.03)" d="M 908.6220092773438 706.8037109375 C 908.6220092773438 706.8037109375 913.0426025390625 711.224365234375 910.250732421875 714.2489013671875 L 916.0673217773438 714.2489013671875 L 912.3447265625 704.9423828125 L 908.6220092773438 706.8037109375 Z" fill="#ffb9b9" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-739.61, -629.35)" d="M 883.46875 750.426025390625 C 883.46875 750.426025390625 883.46875 748.5153198242188 881.6051635742188 749.6618041992188 C 879.7416381835938 750.8082885742188 873.736572265625 753.865478515625 873.736572265625 753.865478515625 C 873.736572265625 753.865478515625 869.59521484375 756.1583251953125 875.6001586914063 756.5404663085938 C 881.6051635742188 756.9225463867188 887.4031372070313 755.5850830078125 887.4031372070313 754.8207397460938 C 887.4031372070313 754.0564575195313 886.781982421875 750.3968505859375 886.781982421875 750.3968505859375 C 886.781982421875 750.3968505859375 885.5394287109375 751.7634887695313 883.46875 750.426025390625 Z" fill="#2f2e41" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-653.47, -531.67)" d="M 798.1195678710938 649.166015625 L 797.8870239257813 656.843994140625 L 802.3076171875 657.5418701171875 L 802.3076171875 650.0966796875 L 798.1195678710938 649.166015625 Z" fill="#ffb9b9" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5fm82o =
    '<svg viewBox="127.8 26.9 39.0 104.7" ><path transform="translate(-764.59, -208.23)" d="M 902.8369140625 237.2038726806641 C 902.8369140625 237.2038726806641 905.8616333007813 244.1838073730469 903.5349731445313 246.5104675292969 C 901.208251953125 248.8371124267578 907.0249633789063 246.5104675292969 907.0249633789063 246.5104675292969 C 907.0249633789063 246.5104675292969 910.049560546875 242.08984375 912.3762817382813 241.857177734375 C 912.3762817382813 241.857177734375 908.88623046875 239.995849609375 909.118896484375 235.1099090576172 L 902.8369140625 237.2038726806641 Z" fill="#ffb9b9" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-717.49, -359.31)" d="M 851.67138671875 422.1322326660156 L 851.2060546875 433.0675048828125 C 851.2060546875 433.0675048828125 842.8302001953125 454.9380798339844 846.0872802734375 460.0567016601563 C 849.3446655273438 465.1753540039063 857.0226440429688 474.4819641113281 857.0226440429688 474.4819641113281 C 857.0226440429688 474.4819641113281 861.4432373046875 472.387939453125 861.4432373046875 471.2246398925781 C 861.4432373046875 471.2246398925781 857.0226440429688 460.2893676757813 853.2999267578125 457.7300415039063 C 853.2999267578125 457.7300415039063 853.5325927734375 453.3094482421875 857.0226440429688 448.6561279296875 L 860.2799072265625 460.0567016601563 L 861.6759033203125 477.5065307617188 C 861.6759033203125 477.5065307617188 865.6311645507813 478.9025573730469 867.0272216796875 478.2045593261719 C 867.0272216796875 478.2045593261719 870.0518798828125 467.0366516113281 867.9578857421875 460.5220336914063 L 867.4925537109375 442.6068420410156 C 867.4925537109375 442.6068420410156 873.5418090820313 433.7655639648438 865.8638305664063 423.2956848144531 L 864.7006225585938 419.5730895996094 C 864.7006225585938 419.5730895996094 852.8345947265625 420.7363891601563 851.67138671875 422.1322326660156 Z" fill="#2f2e41" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-739.09, -641.54)" d="M 884.2011108398438 765.5565795898438 C 884.2011108398438 765.5565795898438 884.2011108398438 763.2299194335938 882.1070556640625 764.6259155273438 C 880.0130615234375 766.0219116210938 873.2657470703125 769.7445068359375 873.2657470703125 769.7445068359375 C 873.2657470703125 769.7445068359375 868.6124877929688 772.5364379882813 875.3598022460938 773.0017700195313 C 882.1070556640625 773.4671020507813 888.6217041015625 771.8384399414063 888.6217041015625 770.9077758789063 C 888.6217041015625 769.9771728515625 887.9237060546875 765.5208129882813 887.9237060546875 765.5208129882813 C 887.9237060546875 765.5208129882813 886.5277709960938 767.1851806640625 884.2011108398438 765.5565795898438 Z" fill="#2f2e41" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-737.81, -237.69)" d="M 877.9219360351563 275.2714538574219 L 885.2334594726563 271.0791931152344 C 885.2334594726563 271.0791931152344 896.06982421875 271.316162109375 895.371826171875 276.9001159667969 C 895.371826171875 276.9001159667969 893.2777709960938 284.1127014160156 892.5798950195313 283.4147033691406 L 891.1838989257813 282.0187072753906 C 891.1838989257813 282.0187072753906 886.0652465820313 292.4886169433594 886.0652465820313 294.5826416015625 C 886.0442504882813 295.9297790527344 885.8086547851563 297.2649536132813 885.3672485351563 298.5379638671875 L 872.8033447265625 300.3992919921875 C 872.8033447265625 300.3992919921875 874.1993408203125 292.4887084960938 872.1053466796875 291.0927124023438 C 870.0114135742188 289.6967468261719 869.3134155273438 285.9740905761719 871.4073486328125 282.716796875 C 872.2034301757813 281.4659729003906 872.8953857421875 280.1517944335938 873.4759521484375 278.7875061035156 C 874.2144165039063 277.0782470703125 875.6056518554688 275.735107421875 877.3397827148438 275.05712890625 L 877.3397827148438 275.05712890625 L 877.9219360351563 275.2714538574219 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-811.98, -260.87)" d="M 968.3797607421875 299.3829956054688 C 968.3797607421875 299.3829956054688 980.7111206054688 309.3876037597656 978.6170654296875 311.4815979003906 C 976.5230712890625 313.5755920410156 965.1224975585938 321.9515380859375 965.1224975585938 321.9515380859375 C 965.1224975585938 321.9515380859375 963.9591674804688 328.9314575195313 961.6324462890625 328.6988525390625 C 959.3058471679688 328.4661865234375 962.0977783203125 320.0901794433594 962.0977783203125 320.0901794433594 L 971.8698120117188 310.7836303710938 L 966.5183715820313 305.1996765136719 L 968.3797607421875 299.3829956054688 Z" fill="#ffb9b9" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wphjkb =
    '<svg viewBox="15.3 0.0 142.5 128.2" ><path transform="translate(-755.82, -108.92)" d="M 892.801025390625 117.1917877197266 C 892.801025390625 115.4771270751953 894.0999145507813 114.0409851074219 895.8063354492188 113.8693237304688 C 895.6965942382813 113.8583908081055 895.5852661132813 113.8524322509766 895.4724731445313 113.8524322509766 C 893.6283569335938 113.8524322509766 892.1331787109375 115.3475036621094 892.1331787109375 117.1917724609375 C 892.1331787109375 119.0360488891602 893.6283569335938 120.5311126708984 895.4724731445313 120.5311126708984 C 895.5852661132813 120.5311279296875 895.6965942382813 120.5251693725586 895.8065795898438 120.5142593383789 C 894.1001586914063 120.3427047729492 892.8011474609375 118.9066696166992 892.801025390625 117.1917877197266 Z" fill="#2f2e41" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-723.61, -162.0)" d="M 860.750244140625 179.2637634277344 C 860.750244140625 179.2637634277344 860.6806030273438 178.8756256103516 857.95361328125 179.8983001708984 C 855.2265625 180.9209289550781 853.5917358398438 188.4676666259766 854.9552612304688 192.8991394042969 C 855.5048217773438 194.6849975585938 855.0578002929688 195.9726257324219 854.3282470703125 196.8735504150391 C 851.5905151367188 200.2543487548828 852.6681518554688 205.3321990966797 856.6560668945313 207.0707092285156 C 856.7686157226563 207.1197814941406 856.8834838867188 207.1682891845703 857.0006713867188 207.2162322998047 L 858.7050170898438 208.2388916015625 C 858.7050170898438 208.2388916015625 856.5322875976563 205.3799896240234 857.61962890625 201.7229156494141 C 858.5638427734375 198.6069641113281 858.6805419921875 195.2988128662109 857.9580078125 192.1241149902344 C 857.8331909179688 191.5885314941406 857.6914672851563 191.0364990234375 857.530517578125 190.4731140136719 C 856.1669921875 185.7007446289063 856.8302001953125 186.2518920898438 861.6026000976563 181.4795074462891 C 861.6026000976563 181.4795074462891 864.3296508789063 183.5248107910156 866.7158203125 184.5474700927734 C 869.10205078125 185.5700988769531 871.1473388671875 186.5927734375 869.44287109375 190.0015869140625 C 867.7384033203125 193.4104461669922 863.6478881835938 196.4783782958984 866.375 200.9098968505859 C 869.10205078125 205.3413696289063 869.44287109375 203.6369476318359 869.10205078125 205.3413696289063 L 869.10205078125 205.3413696289063 L 868.7611083984375 207.0457916259766 L 870.806396484375 205.0004577636719 L 869.4429931640625 207.7275390625 C 869.4429931640625 207.7275390625 873.8743286132813 207.7275390625 875.2379760742188 204.3186950683594 L 875.9196166992188 205.0004577636719 C 875.9196166992188 205.0004577636719 878.6467895507813 200.2281036376953 873.5335083007813 195.7966003417969 C 873.5335083007813 195.7966003417969 871.8291015625 194.7739715576172 874.2152709960938 191.3651580810547 C 876.6015014648438 187.9563140869141 874.7688598632813 180.6272888183594 871.7008666992188 179.2637634277344 C 868.6329345703125 177.9002227783203 860.750244140625 179.2637634277344 860.750244140625 179.2637634277344 Z" fill="#2f2e41" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-285.23, 0.0)" d="M 355.1775512695313 7.343661785125732 L 351.7243041992188 5.98110294342041 L 348.27099609375 4.618544578552246 L 351.1776733398438 2.309362649917603 L 354.0843505859375 0 L 354.6309204101563 3.671921253204346 L 355.1775512695313 7.343661785125732 Z" fill="#f2f2f2" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-272.8, -121.21)" d="M 339.9973754882813 154.5092620849609 L 336.5443115234375 153.1466979980469 L 333.0910034179688 151.7839660644531 L 335.8329772949219 149.8919677734375 L 338.5749206542969 148 L 339.2862548828125 151.2545471191406 L 339.9973754882813 154.5092620849609 Z" fill="#f2f2f2" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-245.92, -275.18)" d="M 307.1775817871094 343.3436584472656 L 303.7242736816406 341.9810791015625 L 300.27099609375 340.6185302734375 L 303.1776428222656 338.309326171875 L 306.0843200683594 336 L 306.6309509277344 339.6719055175781 L 307.1775817871094 343.3436584472656 Z" fill="#f2f2f2" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-83.81, -469.22)" d="M 108.8588256835938 576.7935791015625 L 105.5974197387695 578.5667724609375 L 102.3359985351563 580.3402099609375 L 102.4308395385742 576.6289672851563 L 102.5258712768555 572.9180297851563 L 105.6922607421875 574.8557739257813 L 108.8588256835938 576.7935791015625 Z" fill="#f2f2f2" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-69.07, -92.48)" d="M 90.85883331298828 116.7935562133789 L 87.59741973876953 118.5667877197266 L 84.33599853515625 120.3402252197266 L 84.43083953857422 116.6290283203125 L 84.52587127685547 112.9179992675781 L 87.69225311279297 114.8557815551758 L 90.85883331298828 116.7935562133789 Z" fill="#f2f2f2" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-305.65, -603.49)" d="M 343.9903564453125 726.1754150390625 C 346.2184143066406 729.9751586914063 350.7120971679688 731.4793701171875 350.7120971679688 731.4793701171875 C 350.7120971679688 731.4793701171875 351.5933227539063 726.8233032226563 349.3652648925781 723.0238037109375 C 347.1372375488281 719.2241821289063 342.6436157226563 717.7198486328125 342.6436157226563 717.7198486328125 C 342.6436157226563 717.7198486328125 341.762451171875 722.3758544921875 343.9903564453125 726.1754150390625 Z" fill="#f2f2f2" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-280.41, -629.55)" d="M 320.144287109375 750.9078979492188 C 323.9974365234375 753.0419311523438 325.6116333007813 757.4971923828125 325.6116333007813 757.4971923828125 C 325.6116333007813 757.4971923828125 320.9786071777344 758.4925537109375 317.12548828125 756.3584594726563 C 313.2722778320313 754.224365234375 311.6580200195313 749.7691040039063 311.6580200195313 749.7691040039063 C 311.6580200195313 749.7691040039063 316.2909851074219 748.773681640625 320.144287109375 750.9078979492188 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-623.8, -606.59)" d="M 733.1234130859375 726.1278686523438 C 730.5355834960938 729.6920776367188 730.9586791992188 734.4119262695313 730.9586791992188 734.4119262695313 C 730.9586791992188 734.4119262695313 735.5775146484375 733.3528442382813 738.1654663085938 729.7886352539063 C 740.7532958984375 726.2242431640625 740.3302001953125 721.5045166015625 740.3302001953125 721.5045166015625 C 740.3302001953125 721.5045166015625 735.711181640625 722.5636596679688 733.1234130859375 726.1278686523438 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-613.47, -593.63)" d="M 724.5672607421875 713.9033813476563 C 724.1566772460938 718.2889404296875 720.7219848632813 721.5536499023438 720.7219848632813 721.5536499023438 C 720.7219848632813 721.5536499023438 717.9530639648438 717.7081298828125 718.3635864257813 713.3226928710938 C 718.774169921875 708.9371948242188 722.2088012695313 705.6724853515625 722.2088012695313 705.6724853515625 C 722.2088012695313 705.6724853515625 724.9779663085938 709.5180053710938 724.5672607421875 713.9033813476563 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-835.17, -250.91)" d="M 989.9199829101563 287.5158996582031 L 989.0150756835938 294.3938903808594 L 989.9199829101563 296.5658569335938 C 989.9199829101563 296.5658569335938 993.9019775390625 291.6788940429688 992.6348876953125 288.9638977050781 C 991.3680419921875 286.2489013671875 989.9199829101563 287.5158996582031 989.9199829101563 287.5158996582031 Z" fill="url(#gradient)" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_emp5xq =
    '<svg viewBox="144.0 503.5 227.0 142.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(144.04, 503.52)" d="M 15 0 L 212 0 C 220.2842712402344 0 227 6.531735897064209 227 14.58904075622559 L 227 142 L 0 142 L 0 14.58904075622559 C 0 6.531735897064209 6.715728759765625 0 15 0 Z" fill="#ffffff" fill-opacity="0.98" stroke="none" stroke-width="1" stroke-opacity="0.98" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_pdp23n =
    '<svg viewBox="114.3 268.0 247.7 60.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(114.34, 268.0)" d="M 8.39509391784668 0 L 239.2601776123047 0 C 243.8966674804688 0 247.6552886962891 5.372581958770752 247.6552886962891 12 L 247.6552886962891 48 C 247.6552886962891 54.62741851806641 243.8966674804688 60 239.2601776123047 60 L 8.39509391784668 60 C 3.758611440658569 60 0 54.62741851806641 0 48 L 0 12 C 0 5.372581958770752 3.758611440658569 0 8.39509391784668 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_cs1cob =
    '<svg viewBox="177.2 675.0 94.1 60.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(177.18, 675.0)" d="M 3.191005945205688 0 L 90.94367218017578 0 C 92.70601654052734 0 94.13468933105469 5.37258243560791 94.13468933105469 12 L 94.13468933105469 48 C 94.13468933105469 54.62742233276367 92.70601654052734 60 90.94367218017578 60 L 3.191005945205688 60 C 1.428662061691284 60 0 54.62742233276367 0 48 L 0 12 C 0 5.37258243560791 1.428662061691284 0 3.191005945205688 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_t3qb8j =
    '<svg viewBox="335.0 43.2 27.0 29.3" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(335.0, 43.2)" d="M 13.49995136260986 29.3478889465332 C 15.62860679626465 29.3478889465332 17.35527610778809 27.70566558837891 17.35527610778809 25.67939949035645 L 9.644627571105957 25.67939949035645 C 9.644627571105957 27.70566558837891 11.37129783630371 29.3478889465332 13.49995136260986 29.3478889465332 Z M 26.48100471496582 20.7664966583252 C 25.31663513183594 19.57652854919434 23.13795471191406 17.78642463684082 23.13795471191406 11.92257690429688 C 23.13795471191406 7.468807697296143 19.85457420349121 3.903497219085693 15.42731475830078 3.028792858123779 L 15.42731475830078 1.834243059158325 C 15.42731475830078 0.8213969469070435 14.56427955627441 0 13.49995136260986 0 C 12.43562602996826 0 11.57258987426758 0.8213969469070435 11.57258987426758 1.834243059158325 L 11.57258987426758 3.028793573379517 C 7.145328998565674 3.903498649597168 3.861944437026978 7.468807697296143 3.861944437026978 11.92257785797119 C 3.861944437026978 17.78642463684082 1.683268070220947 19.5765323638916 0.5188963413238525 20.7664966583252 C 0.1572903245687485 21.13621139526367 -0.003021733835339546 21.57814598083496 -8.31964825920295e-06 22.01091003417969 C 0.006621124688535929 22.95096206665039 0.7822661995887756 23.84515380859375 1.934584259986877 23.84515380859375 L 25.06531524658203 23.84515380859375 C 26.2176342010498 23.84515380859375 26.99388313293457 22.95096206665039 26.99990844726563 22.01091003417969 C 27.00292015075684 21.57814598083496 26.84260940551758 21.13563537597656 26.48100471496582 20.7664966583252 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
