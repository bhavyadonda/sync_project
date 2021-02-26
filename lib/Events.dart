import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  int _showData = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
                  _svg_ah28f4,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
            ),
            Container(
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
            SizedBox(
              width: 25,
              height: 10,
              child: const DecoratedBox(
                decoration: const BoxDecoration(
                    color: Colors.white
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [ // padding = 25
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 25, 0, 25),
            child: Container(
              width:  MediaQuery.of(context).size.width - 40,
              height: MediaQuery.of(context).size.height - 614,
              child: Card(
                elevation: 10,
                shadowColor: Colors.black38,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Logo
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
                            child: Image.asset(
                              'assets/Tech Club Logo Big.png',
                              height: 60,
                              width: 60,
                            ),
                          ),
                          // Card 2
                          Container(
                            width: 317,
                            height: 100,
                            child: Card(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
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
                                  Stack(
                                    children: <Widget>[
                                      // Adobe XD layer: 'Bookmark Circle' (shape)
                                      Container(
                                        width: 50.0, // og = 35 x 35
                                        height: 50.0,
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
                                        left: 16,
                                        top: 13,
                                        child: SvgPicture.string(
                                          _svg_d54sjf,
                                          width: 25,
                                          height: 25,
                                          fit: BoxFit.fitWidth,
                                          allowDrawingOutsideViewBox: true,
                                          matchTextDirection: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(35, 0, 35, 25),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Day 1 - 06th Jan \'21',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                color: const Color(0xff404040),
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            GestureDetector(
                              onTap: (){
                                setState(() => _showData = index);
                              },
                              child: SvgPicture.string(
                                _svg_qlatz8,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                        _showData == 1 ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: ['Kia','Samsung'].map((e){
                              // make changes in the UI here for your company card
                              return Card(child: Text(e));
                            }).toList()
                        ) : SizedBox(),
                      ],
                    ),
                  );
                }
            ),
          ),
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