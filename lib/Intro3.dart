import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './Intro4.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Intro3 extends StatelessWidget {
  Intro3({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[ //156, 39
          Positioned(
            left: 188,
            top: 730,
            child: Text(
                '(3/5)',
                style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            color: const Color(0xffb6b6b6),
            fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.left,
              ),
          ),
          Positioned(
            left: 68,
            top: 667,
            child: PageLink(
                links: [
            PageLinkInfo(
              transition: LinkTransition.Fade,
              ease: Curves.easeOut,
              duration: 0.3,
              pageBuilder: () => Intro4(),
            ),
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
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(117.0, 12.0, 44.0, 21.0),
                  size: Size(273.0, 48.0),
                  child: Text(
                    'Next',
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
            left: 55,
            top: 540,
            child: Text(
              'Lorem ipsum dolor sit amet, consetetur \nsadipscing elitr, sed diam nonumy \neirmod tempor invidunt ut labore et',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 17,
                color: const Color(0xff9d9d9d),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Positioned(
            left: 55,
            top: 497,
            child: Text(
              'Register from the app itself!',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 24,
                color: const Color(0xff404040),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Positioned(
            left: 61,
            top: 206,
            child: SizedBox(
                width: 273.0,
                height: 226.0,
                child: Stack(
            children: <Widget>[
              Transform.translate(
                offset: Offset(0.0, 212.5),
                child: Container(
                  width: 273.0,
                  height: 13.9,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    color: const Color(0xffe6e6e6),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(184.3, 69.3),
                child: SvgPicture.string(
                  _svg_qtq0gq,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(194.8, 59.5),
                child: Container(
                  width: 17.8,
                  height: 17.8,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    color: const Color(0xffffb8b8),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(178.8, 57.1),
                child: SvgPicture.string(
                  _svg_1bqpbh,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(206.1, 66.0),
                child: Transform.rotate(
                  angle: -0.3487,
                  child: Container(
                    width: 1.9,
                    height: 3.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xffffb8b8),
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(25.2, 0.0),
                child: SvgPicture.string(
                  _svg_p1e15z,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Transform.translate(
                offset: Offset(66.1, 55.2),
                child: Container(
                  width: 25.7,
                  height: 2.4,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.0, -1.0),
                      end: Alignment(0.0, 1.0),
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
                offset: Offset(66.1, 63.5),
                child: Container(
                  width: 44.8,
                  height: 2.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffe6e6e6),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(66.1, 71.8),
                child: Container(
                  width: 44.8,
                  height: 2.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffe6e6e6),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(41.6, 55.3),
                child: Container(
                  width: 19.1,
                  height: 19.1,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.0, -1.0),
                      end: Alignment(0.0, 1.0),
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
                offset: Offset(66.1, 105.3),
                child: Container(
                  width: 25.7,
                  height: 2.4,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.0, -1.0),
                      end: Alignment(0.0, 1.0),
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
                offset: Offset(66.1, 113.6),
                child: Container(
                  width: 44.8,
                  height: 2.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffe6e6e6),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(66.1, 121.9),
                child: Container(
                  width: 44.8,
                  height: 2.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffe6e6e6),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(41.6, 105.4),
                child: Container(
                  width: 19.1,
                  height: 19.1,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.0, -1.0),
                      end: Alignment(0.0, 1.0),
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
                offset: Offset(66.1, 155.5),
                child: Container(
                  width: 25.7,
                  height: 2.4,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.0, -1.0),
                      end: Alignment(0.0, 1.0),
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
                offset: Offset(66.1, 163.7),
                child: Container(
                  width: 44.8,
                  height: 2.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffe6e6e6),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(66.1, 172.0),
                child: Container(
                  width: 44.8,
                  height: 2.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffe6e6e6),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(41.6, 155.5),
                child: Container(
                  width: 19.1,
                  height: 19.1,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.0, -1.0),
                      end: Alignment(0.0, 1.0),
                      colors: [
                        const Color(0xfffe4f70),
                        const Color(0xffcb6bd8)
                      ],
                      stops: [0.0, 1.0],
                    ),
                  ),
                ),
              ),
            ],
                ),
              ),
          ),
          Positioned(
            left: 13,
            top: 108,
            child: SizedBox(
                width: 385.0,
                height: 7.0,
                child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 349.0, 7.0),
                size: Size(349.0, 7.0),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child:
                    // Adobe XD layer: 'Bar' (shape)
                    Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: const Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x1a000000),
                        offset: Offset(0, 3),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 209.4, 7.0),
                size: Size(349.0, 7.0),
                pinLeft: true,
                pinTop: true,
                pinBottom: true,
                fixedWidth: true,
                child:
                    // Adobe XD layer: 'Progress' (shape)
                    Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    gradient: LinearGradient(
                      begin: Alignment(0.0, -1.0),
                      end: Alignment(0.0, 1.0),
                      colors: [
                        const Color(0xfffe4f70),
                        const Color(0xffcb6bd8)
                      ],
                      stops: [0.0, 1.0],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x1a000000),
                        offset: Offset(0, 3),
                        blurRadius: 6,
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

const String _svg_qtq0gq =
    '<svg viewBox="-23223.7 -23100.3 75.9 152.5" ><path transform="translate(-24044.63, -23591.93)" d="M 888.54345703125 539.7939453125 L 888.54345703125 541.482177734375 C 888.54345703125 541.482177734375 891.58447265625 552.2864990234375 887.86767578125 552.2864990234375 C 884.15087890625 552.2864990234375 882.79931640625 541.8197631835938 882.79931640625 541.8197631835938 L 882.79931640625 539.7939453125 L 888.54345703125 539.7939453125 Z" fill="#ffb8b8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-23947.02, -23515.79)" d="M 723.345947265625 425.1656799316406 L 724.0217895507813 422.464599609375 C 724.0217895507813 422.464599609375 727.7385864257813 414.023681640625 730.779541015625 415.7119140625 C 733.8204956054688 417.4001159667969 729.427978515625 423.815185546875 729.427978515625 423.815185546875 L 728.752197265625 425.5033569335938 L 723.345947265625 425.1656799316406 Z" fill="#ffb8b8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-23733.15, -23641.89)" d="M 531.1109619140625 672.1404418945313 L 531.7869262695313 677.8800048828125 L 538.2066650390625 678.892822265625 L 538.2066650390625 671.4650268554688 L 531.1109619140625 672.1404418945313 Z" fill="#ffb8b8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-23789.17, -23639.22)" d="M 622.6010131835938 667.783447265625 L 623.2765502929688 676.2242431640625 L 630.7103271484375 675.2113037109375 L 629.3585205078125 667.1080322265625 L 622.6010131835938 667.783447265625 Z" fill="#ffb8b8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-23726.22, -23531.42)" d="M 521.1353759765625 495.8260498046875 L 519.7839965820313 496.16357421875 L 523.5005493164063 531.9529418945313 L 523.5005493164063 564.028564453125 L 532.9613037109375 562.3402099609375 L 537.69189453125 505.9551391601563 L 552.2210083007813 533.6412353515625 L 559.316650390625 561.6652221679688 L 570.4669799804688 559.639404296875 L 561.343994140625 524.5250854492188 L 555.2620239257813 491.0990600585938 L 521.1353759765625 495.8260498046875 Z" fill="#2f2e41" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-23964.5, -23726.22)" d="M 766.1718139648438 760.1828002929688 C 766.1718139648438 760.1828002929688 763.130859375 758.1569213867188 762.1171264648438 759.5075073242188 C 761.103515625 760.8580932617188 756.7109375 767.6107788085938 756.7109375 767.6107788085938 C 756.7109375 767.6107788085938 745.8984985351563 778.7528686523438 756.7109375 778.4151611328125 C 756.7109375 778.4151611328125 763.8065795898438 778.4151611328125 765.158203125 774.3634643554688 C 765.158203125 774.3634643554688 765.49609375 772.3377075195313 767.8612670898438 772.3377075195313 C 770.2265014648438 772.3377075195313 772.9296264648438 769.9742431640625 772.9296264648438 768.6236572265625 C 772.9296264648438 767.2731323242188 770.5643920898438 760.4539184570313 769.55078125 761.5000610351563 C 768.5370483398438 762.5462646484375 766.1718139648438 760.1828002929688 766.1718139648438 760.1828002929688 Z" fill="#2f2e41" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-24033.62, -23726.22)" d="M 871.5731201171875 760.1828002929688 C 871.5731201171875 760.1828002929688 874.6141357421875 758.1569213867188 875.6277465820313 759.5075073242188 C 876.6414794921875 760.8580932617188 881.0339965820313 767.6107788085938 881.0339965820313 767.6107788085938 C 881.0339965820313 767.6107788085938 891.846435546875 778.7528686523438 881.0339965820313 778.4151611328125 C 881.0339965820313 778.4151611328125 873.9382934570313 778.4151611328125 872.5867919921875 774.3634643554688 C 872.5867919921875 774.3634643554688 872.2488403320313 772.3377075195313 869.8836669921875 772.3377075195313 C 867.5184936523438 772.3377075195313 864.8153076171875 769.9742431640625 864.8153076171875 768.6236572265625 C 864.8153076171875 767.2731323242188 867.1805419921875 760.4539184570313 868.1942138671875 761.5000610351563 C 869.2078247070313 762.5462646484375 871.5731201171875 760.1828002929688 871.5731201171875 760.1828002929688 Z" fill="#2f2e41" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_1bqpbh =
    '<svg viewBox="-23229.2 -23112.6 74.8 81.9" ><path transform="translate(-23728.62, -23436.69)" d="M 523.7050170898438 342.5154724121094 L 528.4351806640625 348.2550354003906 L 536.8822631835938 341.1646423339844 L 530.8006591796875 336.4380187988281 L 523.7050170898438 342.5154724121094 Z" fill="#ffb8b8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-23965.68, -23520.31)" d="M 763.3035888671875 432.0511169433594 L 763.579833984375 429.5525512695313 L 773.0651245117188 424.1065063476563 L 785.9509887695313 422.884765625 C 787.6253662109375 422.7260131835938 789.1112060546875 423.9541320800781 789.2691650390625 425.6272888183594 L 794.0514526367188 476.2813110351563 L 795.7409057617188 480.6705627441406 C 795.7409057617188 480.6705627441406 766.0064697265625 497.5523681640625 759.2489013671875 485.0599365234375 L 764.3172607421875 458.7243041992188 L 753.8427124023438 438.8038024902344 L 763.3035888671875 432.0511169433594 Z" fill="#d0cde1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-24016.9, -23520.93)" d="M 837.489990234375 424.2213745117188 C 837.6964111328125 424.1870727539063 837.8983764648438 424.1296081542969 838.0919189453125 424.0499877929688 C 839.3641967773438 423.5921020507813 840.7863159179688 424.0247802734375 841.5873413085938 425.1134338378906 L 856.7496337890625 445.8303527832031 L 862.4937744140625 469.8025817871094 L 854.3844604492188 469.8025817871094 L 848.9782104492188 453.5960083007813 L 840.1932373046875 442.1162414550781 L 837.489990234375 424.2213745117188 Z" fill="#d0cde1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-23690.21, -23449.76)" d="M 481.0732727050781 367.5765991210938 L 478.3700561523438 368.2520141601563 L 470.2606811523438 375.3424072265625 L 472.9639282226563 359.1358032226563 L 466.2060241699219 357.7850341796875 L 460.968994140625 384.9650268554688 L 464.6855163574219 388.6788330078125 L 485.8038635253906 380.069091796875 L 481.0732727050781 367.5765991210938 Z" fill="#d0cde1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-23959.34, -23496.37)" d="M 758.64794921875 395.0772399902344 C 758.64794921875 395.0772399902344 754.9842529296875 389.7012634277344 752.8873901367188 391.4713745117188 C 750.79052734375 393.2415161132813 744.911865234375 396.7135925292969 743.6731567382813 393.9653015136719 C 742.4344482421875 391.2169799804688 747.195068359375 386.1819458007813 750.7879028320313 384.978271484375 C 754.3806762695313 383.7745971679688 760.6897583007813 382.1748962402344 762.6685180664063 387.4827270507813 C 763.8596801757813 390.8503112792969 764.257080078125 394.4471740722656 763.8296508789063 397.9932556152344 L 758.64794921875 395.0772399902344 Z" fill="#2f2e41" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_p1e15z =
    '<svg viewBox="-23382.8 -23169.6 112.9 226.2" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(-23695.86, -23248.84)" d="M 426.001220703125 132.9530944824219 L 424.7572631835938 132.9530944824219 L 424.7572631835938 98.90016937255859 C 424.7572937011719 88.01543426513672 415.9267578125 79.19150543212891 405.0337219238281 79.19149780273438 L 332.8345642089844 79.19149780273438 C 321.9414978027344 79.19149780273438 313.1109619140625 88.01545715332031 313.1109924316406 98.90033721923828 L 313.1109619140625 285.7162475585938 C 313.1109924316406 296.6011352539063 321.9415283203125 305.4250793457031 332.8345642089844 305.4250183105469 L 405.0335998535156 305.4250183105469 C 415.9267272949219 305.4250183105469 424.7572937011719 296.60107421875 424.7572326660156 285.7161865234375 L 424.7572021484375 157.1922912597656 L 426.001220703125 157.1922912597656 L 426.001220703125 132.9530944824219 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-23707.91, -23260.21)" d="M 417.8812866210938 95.68641662597656 L 408.4568786621094 95.68641662597656 C 409.3370361328125 97.84255981445313 409.0852661132813 100.2950439453125 407.7854309082031 102.2277374267578 C 406.485595703125 104.1604461669922 404.3082275390625 105.3197784423828 401.9778747558594 105.3199615478516 L 360.6159973144531 105.3199615478516 C 358.2861328125 105.3199615478516 356.1086730957031 104.1607818603516 354.8086853027344 102.2281646728516 C 353.5085754394531 100.2950286865234 353.2568054199219 97.842529296875 354.1369018554688 95.68637084960938 L 345.3344421386719 95.68638610839844 C 337.1996459960938 95.68638610839844 330.6051025390625 102.2760009765625 330.6051025390625 110.4046783447266 L 330.6051025390625 296.946533203125 C 330.6051025390625 305.0751953125 337.1996459960938 311.6648254394531 345.3344421386719 311.664794921875 L 417.8812866210938 311.6648254394531 C 426.0160827636719 311.664794921875 432.6106262207031 305.0751647949219 432.6106262207031 296.9464416503906 L 432.6106262207031 110.4046173095703 C 432.6106262207031 102.2760467529297 426.0161437988281 95.68644714355469 417.88134765625 95.68641662597656 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
