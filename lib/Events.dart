import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'methods.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';

class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  String uid;
  String id;
  bool bookmarked = false;
  void isBookmarked() {
    setState(() {
      if (bookmarked) {
        bookmarked = false;
      } else {
        bookmarked = true;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    getdata();
    getEventData();
  }

  Future<Map> getEventData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    uid = prefs.getString('uid');
    Map data = json.decode(prefs.getString('data'));
    Map events = {};
    Map userdata = json.decode(prefs.getString('userData'));
    print(userdata);
    var bookmarkdata=[];
    if(userdata['bookmark']!=null){
      bookmarkdata = userdata['bookmark'].values.toList();
    }
    id = prefs.getString('eventId');
    print(id);
    if (bookmarkdata.contains(id)) {
      setState(() {
        bookmarked = true;
      });
    } else {
      setState(() {
        bookmarked = false;
      });
    }
    print(bookmarkdata);

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

  getdata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Map data = json.decode(prefs.getString('data'));
    data = data[prefs.getString('eventId')];
    return data;
  }

  Widget build(BuildContext context) {
    final events = FutureBuilder(
        future: getdata(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            Map<dynamic, dynamic> values = snapshot.data['subEvents'];
            return ListView.builder(
                itemCount: values.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.11,
                            width: MediaQuery.of(context).size.width,
                            child: Stack(
                              children: [
                                Positioned(
                                  child: SizedBox(
                                    width: 324.0,
                                    height: 76.0,
                                    child: Stack(
                                      children: <Widget>[
                                        Pinned.fromSize(
                                          bounds: Rect.fromLTWH(
                                              11.0, 0.0, 313.0, 67.2),
                                          size: Size(324.0, 76.0),
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
                                                    0.0, 0.0, 313.0, 67.2),
                                                size: Size(313.0, 67.2),
                                                pinLeft: true,
                                                pinRight: true,
                                                pinTop: true,
                                                pinBottom: true,
                                                child:
                                                // Adobe XD layer: 'Background Image' (shape)
                                                Container(
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: const AssetImage(
                                                        // Enter Variable
                                                          'assets/Background Image1.png'),
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Pinned.fromSize(
                                                bounds: Rect.fromLTWH(
                                                    281.5, 25.0, 16.7, 16.7),
                                                size: Size(313.0, 67.2),
                                                child:
                                                // Adobe XD layer: 'Continue Button' (shape)
                                                GestureDetector(
                                                  onTap: () async {
                                                    SharedPreferences prefs =
                                                    await SharedPreferences
                                                        .getInstance();
                                                    prefs.setString(
                                                        'eventId',
                                                        values.keys
                                                            .toList()[index]);
                                                    Navigator.of(context)
                                                        .pushNamed(
                                                        '/EventDetails2');
                                                  },
                                                  child: SvgPicture.string(
                                                    _svg_e5s8jc,
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
                                          size: Size(324.0, 76.0),
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
                                          size: Size(324.0, 76.0),
                                          pinBottom: true,
                                          fixedWidth: true,
                                          fixedHeight: true,
                                          child:
                                          // Adobe XD layer: 'Club Info' (group)
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
                                                        // Enter Variable
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
                                              11.0, 50.0, 198.0, 15.0),
                                          size: Size(324.0, 76.0),
                                          pinLeft: true,
                                          fixedWidth: true,
                                          fixedHeight: true,
                                          child: Text(
                                            values.values
                                                .toList()[index]
                                            ['event_start_date']
                                                .toString().split(' ')[0] +
                                                " | " +
                                                values.values
                                                    .toList()[index]
                                                ['event_start_time']
                                                    .toString()
                                                    .split(' ')[1]
                                                    .substring(0, 5) +
                                                " - " +
                                                values.values
                                                    .toList()[index]
                                                ['event_end_time']
                                                    .toString()
                                                    .split(' ')[1]
                                                    .substring(0, 5),
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 10.5,
                                              color: const Color(0xffffffff),
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Pinned.fromSize(
                                          bounds: Rect.fromLTWH(
                                              11.0, 25.0, 196.0, 21.0),
                                          size: Size(324.0, 76.0),
                                          pinLeft: true,
                                          fixedWidth: true,
                                          fixedHeight: true,
                                          child: Text(
                                            // Enter Variable
                                            values.values
                                                .toList()[index]['event_name']
                                                .toString(),
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
                                )
                              ],
                            ),
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
        elevation: 0,
        toolbarHeight: 30,
        backgroundColor: const Color(0xffffffff),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.90,
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.90,
                      height: MediaQuery.of(context).size.height * 0.15,
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
                      child: Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.90,
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'The Tech Week',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 23,
                                        color: const Color(0xff404040),
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      'By The Tech Club',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 17,
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
                                    isBookmarked();
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
                                        setState(() {
                                          bookmarked = !bookmarked;
                                        });

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
                                        setState(() {
                                          bookmarked = !bookmarked;
                                        });

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
                                      userdata['bookmark']= {id:id};

                                      Navigator.pop(context);
                                      showAlertDialog(
                                          context,
                                          '/Home',
                                          'Bookmark Created Successfully',
                                          'You will now be notified for the bookmarked event.');
                                    }

                                    prefs.setString('userData', json.encode(userdata));
                                  },
                                  child: bookmarked == true?
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
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
                                      SvgPicture.string(
                                        _svg_bdggjb,
                                        allowDrawingOutsideViewBox: true,
                                      ),
                                    ],
                                  ) :
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
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
                                      // IconButton(
                                      //   icon: (bookmarked ? Icon(Icons.bookmark_border) : Icon(Icons.bookmark)),
                                      //   onPressed: isBookmarked,
                                      // ),
                                      SvgPicture.string(
                                        _svg_d54sjf,
                                        allowDrawingOutsideViewBox: true,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
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
              ],
            ),
          ),
          Expanded(child: events),
        ],
      ),
    );
  }
}

// class _CardWidgetState extends State<CardWidget> {
//   // responsible for toggle
//   bool _showData = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(height: 10.0),
//           // list card containing country name
//           GestureDetector(
//               onTap: (){
//                 setState(() => _showData = !_showData);
//               },
//               child: Container(
//                   width: MediaQuery.of(context).size.width,
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(0.0, 3.0))]
//                   ),
//                   child: Padding(
//                       padding: EdgeInsets.all(15.0),
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             // add your other icon here
//                             Text(widget.title)
//                           ]
//                       )
//                   )
//               )
//           ),
//
//           // this is the company card which is toggling based upon the bool
//           _showData ? Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: ['Kia','Samsung'].map((e){
//                 // make changes in the UI here for your company card
//                 return Card(child: Text(e));
//               }).toList()
//           ) : SizedBox() // else blank
//         ]
//     );
//   }
// }

const String _svg_qlatz8 =
    '<svg viewBox="348.0 276.5 14.0 14.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(346.0, 274.52)" d="M 8.984618186950684 15.96923828125 C 5.127120018005371 15.96923828125 1.999999284744263 12.84211730957031 2 8.984617233276367 C 2 5.127120018005371 5.127119541168213 1.999999046325684 8.984617233276367 1.999999046325684 C 12.84211921691895 1.999999046325684 15.96923732757568 5.127120018005371 15.96923732757568 8.984621047973633 C 15.96923732757568 12.84211730957031 12.84211921691895 15.96923637390137 8.984621047973633 15.96923828125 M 8.984618186950684 14.57231426239014 C 12.07061767578125 14.57231426239014 14.57231426239014 12.07061767578125 14.57231426239014 8.984619140625 C 14.57231426239014 5.898618698120117 12.07061767578125 3.39692211151123 8.984618186950684 3.39692211151123 C 5.898619651794434 3.39692211151123 3.396923780441284 5.898618698120117 3.396923780441284 8.984619140625 C 3.396923780441284 12.07061767578125 5.89862060546875 14.57231521606445 8.984619140625 14.57231426239014 M 5.492309093475342 10.38154220581055 L 8.984618186950684 6.889232635498047 L 12.47692775726318 10.38154220581055 L 5.492309093475342 10.38154220581055 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_d54sjf =
    '<svg viewBox="188.0 181.0 12.8 17.4" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(180.5, 176.5)" d="M 20.28730392456055 21.85420036315918 L 13.89364910125732 17.03359031677246 L 7.500000953674316 21.85420036315918 L 7.500000953674316 6.428244590759277 C 7.500000953674316 5.363304138183594 8.317866325378418 4.5 9.326759338378906 4.5 L 18.46054649353027 4.5 C 19.46943473815918 4.5 20.28730392456055 5.363304615020752 20.28730392456055 6.428244590759277 L 20.28730392456055 21.85420036315918 Z" fill="url(#gradient)" fill-opacity="0.0" stroke="none" stroke-width="1" stroke-opacity="0.0" stroke-miterlimit="4" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(135.71, 181.0)" d="M 62.79208755493164 0 L 54.58391189575195 0 C 53.32068634033203 0 52.29299926757813 1.109349131584167 52.29299926757813 2.472882747650146 L 52.29299926757813 16.64911651611328 C 52.29299926757813 16.9116382598877 52.42893218994141 17.15216445922852 52.64519882202148 17.27229499816895 C 52.86146545410156 17.39245796203613 53.12181091308594 17.37205505371094 53.31967926025391 17.21943092346191 L 58.6879997253418 13.08030414581299 L 64.05635070800781 17.21939659118652 C 64.16860961914063 17.30594062805176 64.30083465576172 17.34992790222168 64.43379211425781 17.34992790222168 C 64.53528594970703 17.34992790222168 64.63718414306641 17.32427406311035 64.73082733154297 17.27222442626953 C 64.94709777832031 17.15209770202637 65.08300018310547 16.91156959533691 65.08300018310547 16.64904975891113 L 65.08300018310547 2.472882747650146 C 65.08300018310547 1.109349131584167 64.05528259277344 0 62.79208755493164 0 Z M 63.784423828125 15.28720951080322 L 59.06537628173828 11.64872646331787 C 58.95248413085938 11.56170558929443 58.82022857666016 11.51819515228271 58.6879997253418 11.51819515228271 C 58.55574035644531 11.51819515228271 58.42351531982422 11.56173992156982 58.31062316894531 11.64875984191895 L 53.59154510498047 15.28724384307861 L 53.59154510498047 2.472882747650146 C 53.59154510498047 1.882237315177917 54.0367317199707 1.401689887046814 54.58391189575195 1.401689887046814 L 62.79205322265625 1.401689887046814 C 63.33923721313477 1.401689887046814 63.784423828125 1.882237315177917 63.784423828125 2.472882747650146 L 63.784423828125 15.28720951080322 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ah28f4 =
    '<svg viewBox="32.0 48.0 12.6 18.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="matrix(0.0, 1.0, -1.0, 0.0, 44.56, 48.0)" d="M 8.999999046325684 12.56341361999512 L 0 2.883406400680542 L 2.680851221084595 0 L 8.999999046325684 6.796600818634033 L 15.31914710998535 0 L 18 2.883406400680542 L 8.999999046325684 12.56341361999512 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_e5s8jc =
    '<svg viewBox="305.5 677.0 16.7 16.7" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(305.5, 676.96)" d="M 16.25827980041504 7.378737449645996 L 9.32447624206543 0.4449088573455811 C 8.777599334716797 -0.1019696891307831 7.890646457672119 -0.1019696891307831 7.34376859664917 0.4449088573455811 C 6.796889781951904 0.9917874932289124 6.796889781951904 1.878738880157471 7.34376859664917 2.425617456436157 L 13.28657531738281 8.36839771270752 L 7.343768119812012 14.31114959716797 C 6.796888828277588 14.8580265045166 6.796888828277588 15.74498081207275 7.343768119812012 16.29186248779297 C 7.890646457672119 16.83874320983887 8.777599334716797 16.83874130249023 9.324474334716797 16.29186248779297 L 16.25827980041504 9.358057022094727 C 16.8051586151123 8.812540054321289 16.8051586151123 7.925616264343262 16.25827980041504 7.378737449645996 Z M 7.921177864074707 6.958861827850342 L 2.416332006454468 1.156975865364075 C 1.863189101219177 0.5747171640396118 0.9672497510910034 0.5747171640396118 0.4141067564487457 1.156975865364075 C -0.1390362232923508 1.739234685897827 -0.1390361785888672 2.683790922164917 0.4141067564487457 3.266756772994995 L 4.918209075927734 8.013753890991211 L 0.4141066074371338 12.76074886322021 C -0.1390362530946732 13.34303283691406 -0.1390362530946732 14.28824520111084 0.4141066074371338 14.87052917480469 C 0.9672496318817139 15.45281505584717 1.863188862800598 15.45281505584717 2.416332006454468 14.87052917480469 L 7.921177864074707 9.068642616271973 C 8.474321365356445 8.486384391784668 8.474321365356445 7.541828632354736 7.921177864074707 6.958861827850342 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_e0lvmc =
    '<svg viewBox="190.5 690.0 67.5 24.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(190.5, 690.0)" d="M 2.288132667541504 0 L 65.21178436279297 0 C 66.47548675537109 0 67.49992370605469 2.149032831192017 67.49992370605469 4.799999713897705 L 67.49992370605469 19.19999885559082 C 67.49992370605469 21.85096740722656 66.47548675537109 23.99999809265137 65.21178436279297 23.99999809265137 L 2.288132667541504 23.99999809265137 C 1.024431943893433 23.99999809265137 0 21.85096740722656 0 19.19999885559082 L 0 4.799999713897705 C 0 2.149032831192017 1.024431943893433 0 2.288132667541504 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_7u199j =
    '<svg viewBox="13.0 668.0 242.0 60.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(13.0, 668.0)" d="M 8.203389167785645 0 L 233.7966003417969 0 C 238.3272094726563 0 242 5.372581958770752 242 12 L 242 48 C 242 54.62741851806641 238.3272094726563 60 233.7966003417969 60 L 8.203389167785645 60 C 3.672782421112061 60 0 54.62741851806641 0 48 L 0 12 C 0 5.372581958770752 3.672782421112061 0 8.203389167785645 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_bdggjb =
    '<svg viewBox="4.3 2.1 13.6 18.7" ><defs><linearGradient id="gradient" x1="0.0" y1="0.0" x2="1.0" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-0.67, -0.86)" d="M 5.970602512359619 21.66046905517578 C 5.803862571716309 21.6599235534668 5.640063285827637 21.61351013183594 5.494998931884766 21.52569961547852 C 5.189751148223877 21.34244155883789 5.00058650970459 20.99777984619141 4.999984264373779 20.62377548217773 L 4.999983787536621 5.415494441986084 C 4.972677230834961 4.121750831604004 5.924486637115479 3.045077800750732 7.135345458984375 3 L 16.45329475402832 3.000000238418579 C 17.66415786743164 3.045077323913574 18.615966796875 4.121750831604004 18.58865928649902 5.415494441986084 L 18.58865928649902 20.62377548217773 C 18.58658027648926 20.99191665649414 18.40185737609863 21.33126449584961 18.10334968566895 21.51533126831055 C 17.80303764343262 21.70051574707031 17.43304061889648 21.70051574707031 17.13272857666016 21.51533126831055 L 11.62931537628174 18.18754577636719 L 6.455911636352539 21.50496673583984 C 6.309886455535889 21.60177612304688 6.142409801483154 21.65544128417969 5.970602512359619 21.66046905517578 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
