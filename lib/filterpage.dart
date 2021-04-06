import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sync_project/Calender.dart';
import './Categories.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class FilterPage extends StatefulWidget {
  FilterPage({Key key}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  bool morning = false;
  bool afternoon = false;
  bool evening = false;
  bool night = false;
  DateTime _selecteddate;
  double len = 250;
  double wid = 250;
  List<String> _Clubs = ['A', 'B', 'C', 'D'];
  Map<String, bool> categories = {
    'P': false,
    'Q': false,
    'R': false,
    'S': false
  };
  String _selectedClub;
  bool checkBoxValue = true;
  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('az');
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 30,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          // On pressing Clear All, Club A is being selected
          // After selecting the date, when selecting the time, the date is reversed, so it has to be selected again
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
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(13, 0, 0, 0),
                    child: Text(
                      'Set Filters',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        color: const Color(0xff404040),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.fromLTRB(0, 2.5, 21, 0),
                    child: GestureDetector(
                      child: Text(
                        'Clear all',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: const Color(0xff9d9d9d),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      onTap: () {
                        setState(() {
                          _selectedClub = 'A';
                          _selecteddate = DateTime(2021, 3, 1);
                          if (morning == true) {
                            morning = false;
                          }
                          if (afternoon == true) {
                            afternoon = false;
                          }
                          if (evening == true) {
                            evening = false;
                          }
                          if (night == true) {
                            night = false;
                          }
                          for (var i = 0;
                              i < categories.keys.toList().length;
                              i++) {
                            var element = categories[categories.keys.toList()[i]];
                            if (element == true) {
                              element = false;
                            }
                          }
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(21, 15, 0, 0),
              child: Text(
                'Clubs',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  color: const Color(0xff404040),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.90,
                height: 48.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  color: const Color(0x1a9d9d9d),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 25, 0),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    icon: SvgPicture.string(
                      _svg_2a2k3i,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                      ),
                    underline: SizedBox(),
                    hint:  Text(
                      'Select Clubs',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        color: const Color(0xffb6b6b6),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    value: _selectedClub,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedClub = newValue;
                      });
                      print(_selectedClub);
                    },
                    items: _Clubs.map((location) {
                      return DropdownMenuItem(
                        child: new Text(location),
                        value: location,
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(21, 25, 0, 0),
              child: Text(
                'Preffered Dates',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  color: const Color(0xff404040),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            CalendarTimeline(
              initialDate: DateTime(2021, 4, 1),
              firstDate: DateTime(2021, 1, 1),
              lastDate: DateTime(2021, 12, 31),
              onDateSelected: (date) => {
                _selecteddate = date,
                print(_selecteddate),
              },
              leftMargin: 20,
              monthColor: Color(0xff404040),//Colors.blueGrey,
              dayColor: Color(0xff404040),
              activeDayColor: Color(0xff404040), //Color(0xffffffff),
              activeBackgroundDayColor: Color(0x1a9d9d9d), //Colors.black12,// Colour!!!!!!!!!!!
              dotsColor: Color(0x1a9d9d9d), //Color(0xff404040),
              locale: 'en_ISO',
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(21, 20, 0, 0),
              child: Text(
                'Preffered Time',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  color: const Color(0xff404040),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 5, 30, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Morning',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 17,
                              color: const Color(0xff404040),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '00:00 AM - 11:59 AM',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 13,
                              color: const Color(0xff9d9d9d),
                              fontWeight: FontWeight.w300,
                              height: 1.1666666666666667,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Checkbox(
                        value: this.morning,
                        onChanged: (bool value) {
                          setState(() {
                            morning = value;
                          });
                          print(morning);
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Afternoon',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 17,
                              color: const Color(0xff404040),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '12:00 PM - 3:59 PM',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 13,
                              color: const Color(0xff9d9d9d),
                              fontWeight: FontWeight.w300,
                              height: 1.1666666666666667,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Checkbox(
                        value: this.afternoon,
                        onChanged: (bool value) {
                          setState(() {
                            afternoon = value;
                          });
                          print(afternoon);
                        },
                      ),
                      // Checkbox(
                      //   tristate: true,
                      //   checkColor: Colors.red,
                      //   onChanged: (bool newValue) {
                      //     setState(() {
                      //       checkBoxValue = newValue;
                      //     });
                      //     Text('Remember me');
                      //   },
                      // ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Evening',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 17,
                              color: const Color(0xff404040),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '00:00 AM - 11:59 AM',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 13,
                              color: const Color(0xff9d9d9d),
                              fontWeight: FontWeight.w300,
                              height: 1.1666666666666667,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Checkbox(
                        value: this.evening,
                        onChanged: (bool value) {
                          setState(() {
                            evening = value;
                          });
                          print(evening);
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Night',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 17,
                              color: const Color(0xff404040),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '00:00 AM - 11:59 AM',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 13,
                              color: const Color(0xff9d9d9d),
                              fontWeight: FontWeight.w300,
                              height: 1.1666666666666667,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Checkbox(
                        value: this.night,
                        onChanged: (bool value) {
                          setState(() {
                            night = value;
                          });
                          print(night);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(21, 10, 0, 0),
              child: Text(
                'Tags',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  color: const Color(0xff404040),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(13, 5, 0, 0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.07,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                        child: Container(
                          width: 100,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 91.0, 34.0),
                                size: Size(91.0, 34.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(17.0),
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
                                ),
                              ),
                              Center(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      categories[categories.keys
                                          .toList()[index]] ^= true;
                                    });
                                    print(categories);
                                  },
                                  child: Text(
                                    categories.keys.toList()[index],
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      color: const Color(0xffffffff),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 50),
              child: MaterialButton(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.80,
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
                          child: Container(
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
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(145.0, 12.0, 54.0, 21.0),
                          size: Size(333.0, 48.0),
                          child: Text(
                            'Apply',
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
                  onPressed: () async {
                    SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                    prefs.setBool('morning', morning);
                    prefs.setBool('afternoon', afternoon);
                    prefs.setBool('evening', evening);
                    prefs.setBool('night', night);
                    prefs.setString('date', _selecteddate.toString());
                    prefs.setString('club', _selectedClub);
                    for (var i = 0; i < categories.keys.toList().length; i++) {
                      prefs.setBool(categories.keys.toList()[i],
                          categories.values.toList()[i]);
                    }
                    // prefs.setString('categories', categories.toString());
                    prefs.setBool('filter_applied', true);
                    Navigator.of(context).pushNamed('/Calender');
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const String _svg_ah28f4 =
    '<svg viewBox="32.0 48.0 12.6 18.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="matrix(0.0, 1.0, -1.0, 0.0, 44.56, 48.0)" d="M 8.999999046325684 12.56341361999512 L 0 2.883406400680542 L 2.680851221084595 0 L 8.999999046325684 6.796600818634033 L 15.31914710998535 0 L 18 2.883406400680542 L 8.999999046325684 12.56341361999512 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5k2qjp =
    '<svg viewBox="21.0 380.9 15.1 10.4" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(20.8, 338.76)" d="M 11.56051349639893 45.39964294433594 L 11.31691551208496 45.39964294433594 C 11.22833442687988 45.04531860351563 11.09546375274658 44.64670562744141 10.87401008605957 44.22594451904297 C 10.14321708679199 42.85293960571289 8.836647987365723 42.09999847412109 7.220044612884521 42.09999847412109 C 5.581295967102051 42.09999847412109 4.274726867675781 42.85293960571289 3.566078424453735 44.22594451904297 C 3.344625949859619 44.66884613037109 3.211754083633423 45.11175155639648 3.123173236846924 45.4660758972168 C 1.395843386650085 45.7761116027832 0.2000000029802322 47.12697219848633 0.2000000029802322 48.92073822021484 C 0.2000000029802322 50.73664474487305 1.484424471855164 52.1539421081543 3.256044387817383 52.41968536376953 C 3.344625473022461 52.44182968139648 3.455351829528809 52.46397399902344 3.543932914733887 52.46397399902344 L 11.56051349639893 52.46397399902344 C 13.66431140899658 52.46397399902344 15.25876808166504 50.93595504760742 15.25876808166504 48.92073440551758 C 15.25876808166504 46.88337326049805 13.70860195159912 45.39964294433594 11.56051349639893 45.39964294433594 Z M 11.56051349639893 50.69235992431641 L 3.898256778717041 50.69235992431641 C 2.569541692733765 50.69235992431641 1.971619963645935 49.78440093994141 1.971619963645935 48.92073822021484 C 1.971619963645935 47.85776519775391 2.746703624725342 47.14911651611328 3.898256778717041 47.14911651611328 C 4.363306999206543 47.14911651611328 4.761921405792236 46.77264785766602 4.784066677093506 46.28545379638672 C 4.784066677093506 46.28545379638672 4.806211948394775 45.59894943237305 5.160536289215088 44.95673751831055 C 5.559150695800781 44.20379638671875 6.24565315246582 43.82733154296875 7.197898387908936 43.82733154296875 C 8.172289848327637 43.82733154296875 8.858792304992676 44.20380020141602 9.27955150604248 44.95673751831055 C 9.633874893188477 45.59894943237305 9.678166389465332 46.28545379638672 9.678166389465332 46.28545379638672 C 9.700311660766602 46.7504997253418 10.09892654418945 47.12697219848633 10.5639762878418 47.12697219848633 L 11.56051254272461 47.12697219848633 C 12.71206569671631 47.12697219848633 13.48714733123779 47.83562088012695 13.48714733123779 48.89859008789063 C 13.48714923858643 49.78440093994141 12.88922786712646 50.69235992431641 11.56051349639893 50.69235992431641 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_8wfb7x =
    '<svg viewBox="27.3 376.1 13.7 10.7" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-1.47, 355.34)" d="M 39.90396118164063 26.44703674316406 L 39.77109146118164 26.44703674316406 C 39.70465469360352 26.20343780517578 39.61607360839844 25.93769645690918 39.46105575561523 25.64980888366699 C 38.95171356201172 24.67541694641113 38.02161407470703 24.1439323425293 36.87005996704102 24.1439323425293 C 36.71504592895508 24.1439323425293 36.58217239379883 24.1439323425293 36.42715454101563 24.16607666015625 C 36.18355941772461 22.2615852355957 34.56695556640625 20.79999923706055 32.59602737426758 20.79999923706055 C 30.8022632598877 20.79999923706055 29.25209617614746 22.01798820495605 28.83133697509766 23.7674617767334 C 28.74275588989258 24.12178611755371 28.96420860290527 24.47611045837402 29.31853294372559 24.56468963623047 C 29.6728572845459 24.65327072143555 30.02718162536621 24.43181800842285 30.11576080322266 24.07749366760254 C 30.38150405883789 22.92594146728516 31.40018463134766 22.12871360778809 32.57388305664063 22.12871360778809 C 33.96903228759766 22.12871360778809 35.09843826293945 23.25811958312988 35.09843826293945 24.65327072143555 C 34.74411773681641 24.8968677520752 34.45622634887695 25.22904777526855 34.25692367553711 25.64980697631836 C 33.9025993347168 26.3363094329834 33.88045120239258 27.00066757202148 33.88045120239258 27.08924865722656 C 33.88045120239258 27.44357299804688 34.14619445800781 27.75360679626465 34.52266311645508 27.7757511138916 C 34.87698745727539 27.79789733886719 35.1870231628418 27.51000785827637 35.20916748046875 27.13353729248047 C 35.2313117980957 26.84564971923828 35.36418533325195 25.4726448059082 36.84791564941406 25.4726448059082 C 38.35379409790039 25.4726448059082 38.50881195068359 26.86779403686523 38.50881195068359 27.13353729248047 C 38.53095245361328 27.48786163330078 38.81884384155273 27.7757511138916 39.17316818237305 27.7757511138916 L 39.85967254638672 27.7757511138916 C 40.63475799560547 27.7757511138916 41.14409637451172 28.24080085754395 41.14409637451172 28.94944953918457 C 41.14409637451172 29.52522468566895 40.74547958374023 30.12314796447754 39.85967254638672 30.12314796447754 L 39.06244277954102 30.12314796447754 C 38.68597412109375 30.12314796447754 38.39808654785156 30.41103744506836 38.39808654785156 30.78750228881836 C 38.39808654785156 31.16397285461426 38.68597412109375 31.45186042785645 39.06244277954102 31.45186042785645 L 39.85967254638672 31.45186042785645 C 41.34340286254883 31.45186042785645 42.47281265258789 30.36674499511719 42.47281265258789 28.94944953918457 C 42.53924560546875 27.510009765625 41.43198394775391 26.44703674316406 39.90396118164063 26.44703674316406 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_j3vz3q =
    '<svg viewBox="30.5 372.0 1.3 2.8" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-12.52, 369.9)" d="M 43.66436004638672 4.868156433105469 C 44.04082870483398 4.868156433105469 44.32871627807617 4.580267906188965 44.32871627807617 4.203798770904541 L 44.32871627807617 2.764357328414917 C 44.32871627807617 2.387887954711914 44.04082870483398 2.099999904632568 43.66436004638672 2.099999904632568 C 43.28788757324219 2.099999904632568 43 2.387887954711914 43 2.764357328414917 L 43 4.203798770904541 C 43 4.580267906188965 43.28788757324219 4.868156433105469 43.66436004638672 4.868156433105469 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_4z4jwi =
    '<svg viewBox="23.1 379.4 2.8 1.3" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(13.33, 344.05)" d="M 10.46435642242432 36.62871551513672 L 11.9037971496582 36.62871551513672 C 12.28026676177979 36.62871551513672 12.56815528869629 36.34082794189453 12.56815528869629 35.96435546875 C 12.56815528869629 35.58788681030273 12.28026676177979 35.29999923706055 11.9037971496582 35.29999923706055 L 10.46435642242432 35.29999923706055 C 10.08788681030273 35.29999923706055 9.799999237060547 35.58788681030273 9.799999237060547 35.96435546875 C 9.799999237060547 36.34082794189453 10.08788776397705 36.62871551513672 10.46435642242432 36.62871551513672 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_1qbi84 =
    '<svg viewBox="34.7 374.1 2.3 2.3" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-27.24, 362.35)" d="M 62.56435775756836 14.1473970413208 C 62.74152374267578 14.1473970413208 62.89653778076172 14.08096122741699 63.02941131591797 13.94808959960938 L 64.04808807373047 12.92940807342529 C 64.31383514404297 12.66366577148438 64.31383514404297 12.24290561676025 64.04808807373047 11.99930763244629 C 63.78234481811523 11.73356437683105 63.36158752441406 11.73356437683105 63.11798858642578 11.99930763244629 L 62.09930801391602 13.01798820495605 C 61.83356475830078 13.28373241424561 61.83356475830078 13.70449256896973 62.09930801391602 13.94808959960938 C 62.21003341674805 14.08096122741699 62.38719940185547 14.1473970413208 62.56435775756836 14.1473970413208 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_s6n209 =
    '<svg viewBox="25.3 374.1 2.3 2.3" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(5.78, 362.35)" d="M 20.71798896789551 13.94808769226074 C 20.85086250305176 14.08095932006836 21.02802276611328 14.14739608764648 21.18303871154785 14.14739608764648 C 21.36020088195801 14.14739608764648 21.51521873474121 14.08095932006836 21.64809036254883 13.94808769226074 C 21.91383361816406 13.68234443664551 21.91383361816406 13.2615852355957 21.64809036254883 13.01798820495605 L 20.62940788269043 11.99930763244629 C 20.3636646270752 11.73356246948242 19.94290542602539 11.73356246948242 19.69930839538574 11.99930763244629 C 19.43356323242188 12.26504898071289 19.43356323242188 12.6858081817627 19.69930839538574 12.92940711975098 L 20.71798896789551 13.94808769226074 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nahds6 =
    '<svg viewBox="21.0 422.0 20.0 20.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(21.0, 422.0)" d="M 2.5 9.375 L 0.625 9.375 C 0.2800000011920929 9.375 0 9.655000686645508 0 10 C 0 10.34500026702881 0.2800000011920929 10.625 0.625 10.625 L 2.5 10.625 C 2.845000028610229 10.625 3.125000238418579 10.34500026702881 3.125000238418579 10 C 3.125000238418579 9.655000686645508 2.845000028610229 9.375 2.5 9.375 Z M 10 3.125000238418579 C 10.34500026702881 3.125000238418579 10.625 2.845000028610229 10.625 2.5 L 10.625 0.625 C 10.625 0.2800000011920929 10.34500026702881 0 10 0 C 9.655000686645508 0 9.375 0.2800000011920929 9.375 0.625 L 9.375 2.5 C 9.375 2.845000028610229 9.655000686645508 3.125000238418579 10 3.125000238418579 Z M 16.01313781738281 4.862483978271484 L 17.3262767791748 3.549346923828125 C 17.56813812255859 3.307484149932861 17.56813812255859 2.915588855743408 17.3262767791748 2.673725843429565 C 17.08441352844238 2.431863069534302 16.69248580932617 2.431863069534302 16.45062065124512 2.673725843429565 L 15.13748455047607 3.986863374710083 C 14.89562129974365 4.228725910186768 14.89562129974365 4.620621204376221 15.13748455047607 4.862483978271484 C 15.37937927246094 5.104379177093506 15.77127552032471 5.104379177093506 16.01313781738281 4.862483978271484 Z M 4.631242275238037 14.49375915527344 L 3.318104982376099 15.80689716339111 C 3.076242208480835 16.04875946044922 3.076242208480835 16.44065475463867 3.318104982376099 16.68251800537109 C 3.559967517852783 16.92437934875488 3.951863050460815 16.92437934875488 4.1937255859375 16.68251800537109 L 5.506863594055176 15.36937999725342 C 5.748725891113281 15.12751770019531 5.748725891113281 14.73562145233154 5.506863594055176 14.49375915527344 C 5.265000820159912 14.25189685821533 4.873137474060059 14.25186347961426 4.631242275238037 14.49375915527344 Z M 4.255000591278076 5.138758659362793 C 4.499379634857178 5.383137702941895 4.894999980926514 5.383137702941895 5.138725757598877 5.138758659362793 C 5.382483959197998 4.894379615783691 5.382483959197998 4.498758316040039 5.138725757598877 4.255033016204834 L 3.813137531280518 2.928758382797241 C 3.568758487701416 2.68437933921814 3.173137426376343 2.68437933921814 2.929379224777222 2.928758382797241 C 2.68500018119812 3.173137426376343 2.68500018119812 3.568758487701416 2.929379224777222 3.812516450881958 L 4.255000591278076 5.138758659362793 Z M 10 16.875 C 9.655000686645508 16.875 9.375 17.15500068664551 9.375 17.5 L 9.375 19.375 C 9.375 19.72000122070313 9.655000686645508 20 10 20 C 10.34500026702881 20 10.625 19.72000122070313 10.625 19.375 L 10.625 17.5 C 10.625 17.15500068664551 10.34500026702881 16.875 10 16.875 Z M 15.74499988555908 14.86124324798584 C 15.50062084197998 14.61686229705811 15.10500049591064 14.61686229705811 14.86124324798584 14.86124324798584 C 14.61686229705811 15.10565376281738 14.61686229705811 15.50124263763428 14.86124324798584 15.74499988555908 L 16.18686485290527 17.07062339782715 C 16.43124198913574 17.31500244140625 16.82686424255371 17.31500244140625 17.07062149047852 17.07062339782715 C 17.31437873840332 16.82621002197266 17.31500053405762 16.43062400817871 17.07062149047852 16.18686485290527 L 15.74499988555908 14.86124324798584 Z M 19.375 9.375 L 17.5 9.375 C 17.15500068664551 9.375 16.875 9.655000686645508 16.875 10 C 16.875 10.34500026702881 17.15500068664551 10.625 17.5 10.625 L 19.375 10.625 C 19.72000122070313 10.625 20 10.34500026702881 20 10 C 20 9.655000686645508 19.72000122070313 9.375 19.375 9.375 Z M 10 4.371242046356201 C 6.891242504119873 4.371242046356201 4.371242046356201 6.891242504119873 4.371242046356201 10 C 4.371242046356201 13.1087589263916 6.891242504119873 15.62875843048096 10 15.62875843048096 C 13.1087589263916 15.62875843048096 15.62875843048096 13.1087589263916 15.62875843048096 10 C 15.62875843048096 6.891242504119873 13.1087589263916 4.371242046356201 10 4.371242046356201 Z M 10 14.37375926971436 C 7.58437967300415 14.37375926971436 5.626241683959961 12.41562175750732 5.626241683959961 10 C 5.626241683959961 7.58437967300415 7.58437967300415 5.626241683959961 10 5.626241683959961 C 12.41562175750732 5.626241683959961 14.37375926971436 7.58437967300415 14.37375926971436 10 C 14.37375926971436 12.41562175750732 12.41562175750732 14.37375926971436 10 14.37375926971436 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_dko6b1 =
    '<svg viewBox="289.0 414.0 10.3 6.8" ><path transform="translate(289.0, 411.42)" d="M 0 6 L 3.41796875 9.41796875" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(286.42, 414.0)" d="M 6 6.8359375 L 12.8359375 0" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_2a2k3i =
    '<svg viewBox="360.0 363.0 9.4 6.1" ><path transform="translate(358.0, 361.0)" d="M 6.699999809265137 8.100000381469727 L 2 3.400000095367432 L 3.400000095367432 2 L 6.699999809265137 5.300000190734863 L 10 2 L 11.39999961853027 3.400000095367432 L 6.699999809265137 8.100000381469727 Z" fill="#9d9d9d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
