import 'package:flutter/material.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sync_project/Homepage.dart';

class PrivacyPolicy extends StatelessWidget {
  PrivacyPolicy({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 50,
            top: 161,
            child: SizedBox(
              width: 302.0,
              height: 605.0,
              child: Text(
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: const Color(0xff9d9d9d),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            left: 40,
            top: 110,
            child: Text(
              'Terms & Conditions',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 22,
                color: const Color(0xff404040),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
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
          Positioned(
            left: 0,
            top: 35,
            child: FlatButton(
              onPressed: () async{
                dynamic result = await Navigator.pushNamed(context, '/');
              },
              child: SvgPicture.string(
              _svg_ah28f4,
              allowDrawingOutsideViewBox: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_ah28f4 =
    '<svg viewBox="32.0 48.0 12.6 18.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="matrix(0.0, 1.0, -1.0, 0.0, 44.56, 48.0)" d="M 8.999999046325684 12.56341361999512 L 0 2.883406400680542 L 2.680851221084595 0 L 8.999999046325684 6.796600818634033 L 15.31914710998535 0 L 18 2.883406400680542 L 8.999999046325684 12.56341361999512 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
