import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutUs extends StatelessWidget {
  AboutUs({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 302,
            top: 750,
            child: SizedBox(
              width: 36.0,
              height: 36.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 36.0, 36.0),
                    size: Size(36.0, 36.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                    // Adobe XD layer: 'Social Background' (shape)
                    SvgPicture.string(
                      _svg_t8mx6y,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(6.6, 10.0, 22.8, 16.0),
                    size: Size(36.0, 36.0),
                    child:
                    // Adobe XD layer: 'Youtube Logo' (shape)
                    SvgPicture.string(
                      _svg_h8r6a3,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 246,
            top: 750,
            child: SizedBox(
              width: 36.0,
              height: 36.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 36.0, 36.0),
                    size: Size(36.0, 36.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                    // Adobe XD layer: 'Social Background' (shape)
                    SvgPicture.string(
                      _svg_x9p9xs,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 9.0, 16.1, 16.0),
                    size: Size(36.0, 36.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                    // Adobe XD layer: 'Linkedin Icon' (group)
                    Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(5.4, 5.0, 10.6, 11.0),
                          size: Size(16.1, 16.0),
                          child: SvgPicture.string(
                            _svg_vgawgd,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.1, 5.4, 3.3, 10.6),
                          size: Size(16.1, 16.0),
                          child: SvgPicture.string(
                            _svg_a2994i,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 3.4, 3.3),
                          size: Size(16.1, 16.0),
                          child: SvgPicture.string(
                            _svg_ohuxxi,
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
          Positioned(
            left: 190,
            top: 750,
            child: SizedBox(
              width: 36.0,
              height: 36.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 36.0, 36.0),
                    size: Size(36.0, 36.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                    // Adobe XD layer: 'Social Background' (shape)
                    SvgPicture.string(
                      _svg_vg5czu,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 10.0, 16.0, 16.0),
                    size: Size(36.0, 36.0),
                    child:
                    // Adobe XD layer: 'Web Icon' (shape)
                    SvgPicture.string(
                      _svg_fgw2iy,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 134,
            top: 750,
            child: SizedBox(
              width: 36.0,
              height: 36.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 36.0, 36.0),
                    size: Size(36.0, 36.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                    // Adobe XD layer: 'Social Background' (shape)
                    SvgPicture.string(
                      _svg_x9p9xs,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 10.0, 16.0, 16.0),
                    size: Size(36.0, 36.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                    // Adobe XD layer: 'Instagram Icon' (shape)
                    SvgPicture.string(
                      _svg_pdwfmb,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 78,
            top: 750,
            child: SizedBox(
              width: 36.0,
              height: 36.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 36.0, 36.0),
                    size: Size(36.0, 36.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                    // Adobe XD layer: 'Social Background' (shape)
                    SvgPicture.string(
                      _svg_7e8qy6,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(14.0, 10.0, 8.4, 16.0),
                    size: Size(36.0, 36.0),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                    // Adobe XD layer: 'Facebook Icon' (shape)
                    SvgPicture.string(
                      _svg_gzdh7g,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 184,
            top: 616,
            child: Container(
              width: 172.7,
              height: 100.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/Sync Logo.png'),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.7), BlendMode.dstIn),
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x24000000),
                    offset: Offset(0, 3),
                    blurRadius: 80,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 59,
            top: 616,
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/Tech Club Logo Big.png'),
                  fit: BoxFit.fill,
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x26000000),
                    offset: Offset(0, 3),
                    blurRadius: 80,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 44,
            top: 423,
            child: Text(
              'Lorem ipsum dolor sit amet, consetetur \nsadipscing elitr, sed diam nonumy \neirmod tempor invidunt ut labore et \ndolore magna aliquyam erat, sed diam \nvoluptua. At vero eos et accusam et \njusto duo dolores et ea rebum. Stet clita \nkasd gubergren, no sea takimata \nsanctus est Lorem ipsum dolor sit amet.',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                color: const Color(0xff9d9d9d),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Positioned(
            left: 42,
            top: 164,
            child: Container(
              width: 330.0,
              height: 226.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: const AssetImage('assets/Aftermovie.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 33,
            top: 110,
            child: Text(
              'About Us',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                color: const Color(0xff404040),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Positioned(
            left: 176,
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

const String _svg_t8mx6y =
    '<svg viewBox="282.0 720.0 36.0 36.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(282.0, 720.0)" d="M 15 0 L 21 0 C 29.28427124023438 0 36 6.715728759765625 36 15 L 36 21 C 36 29.28427124023438 29.28427124023438 36 21 36 L 15 36 C 6.715728759765625 36 0 29.28427124023438 0 21 L 0 15 C 0 6.715728759765625 6.715728759765625 0 15 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_h8r6a3 =
    '<svg viewBox="288.6 730.0 22.8 16.0" ><path transform="translate(285.53, 638.11)" d="M 14.61904525756836 107.894660949707 C 12.06069564819336 107.8140106201172 9.627801895141602 107.7512817382813 7.194906711578369 107.6571960449219 C 6.67069149017334 107.6347961425781 6.137515544891357 107.5541458129883 5.626741886138916 107.4331741333008 C 4.66792106628418 107.2091522216797 4.004811763763428 106.6311721801758 3.66429591178894 105.685791015625 C 3.390987157821655 104.9241104125977 3.29241681098938 104.1400299072266 3.220729351043701 103.3425064086914 C 3.063912868499756 101.4696655273438 3.063912868499756 99.59683227539063 3.14008092880249 97.72399139404297 C 3.184885740280151 96.66660308837891 3.211768388748169 95.60025024414063 3.494038105010986 94.57421875 C 3.66429615020752 93.96039581298828 3.870397567749023 93.36001586914063 4.367730140686035 92.91645050048828 C 4.891944885253906 92.44599914550781 5.505769729614258 92.16372680664063 6.204722881317139 92.13236999511719 C 8.122364044189453 92.03827667236328 10.03552532196045 91.92178344726563 11.95316505432129 91.90386199951172 C 14.53391647338867 91.87698364257813 17.11915016174316 91.91282653808594 19.69989967346191 91.96211242675781 C 20.81553649902344 91.98451232910156 21.94013404846191 92.04275512695313 23.04681015014648 92.18613433837891 C 24.05939674377441 92.32054901123047 24.81659698486328 92.88508605957031 25.21983909606934 93.87078857421875 C 25.52899169921875 94.62799072265625 25.64548492431641 95.42103576660156 25.71269226074219 96.22751617431641 C 25.88742828369141 98.24820709228516 25.89191055297852 100.2688980102539 25.79333877563477 102.2895965576172 C 25.74405288696289 103.3156204223633 25.69476890563965 104.3461303710938 25.40353775024414 105.3452758789063 C 25.07198333740234 106.4922790527344 24.36854934692383 107.2494735717773 23.19466590881348 107.5093460083008 C 22.73765754699707 107.60791015625 22.26272964477539 107.6437530517578 21.7967586517334 107.6616821289063 C 19.35938453674316 107.7468032836914 16.92648887634277 107.8229751586914 14.61904525756836 107.894660949707 Z M 12.1413459777832 102.8003692626953 C 14.18444061279297 101.7429733276367 16.20513153076172 100.6945495605469 18.26614952087402 99.62371063232422 C 16.20961380004883 98.54840087890625 14.18892097473145 97.49549102783203 12.1413459777832 96.42465209960938 C 12.1413459777832 98.56184387207031 12.1413459777832 100.6631774902344 12.1413459777832 102.8003692626953 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vgawgd =
    '<svg viewBox="50.4 734.0 10.6 11.0" ><path transform="translate(-123.11, 572.94)" d="M 173.4986572265625 172.0462951660156 C 173.4986572265625 171.9701385498047 173.4986572265625 171.8971557617188 173.4986572265625 171.8241729736328 C 173.4986572265625 168.4067230224609 173.4986572265625 164.992431640625 173.4986572265625 161.5749816894531 C 173.4986572265625 161.4797821044922 173.4923095703125 161.4036254882813 173.6319274902344 161.4036254882813 C 174.6409759521484 161.4099731445313 175.6532135009766 161.4067993164063 176.6622619628906 161.4067993164063 C 176.6876525878906 161.4067993164063 176.7130279541016 161.4131469726563 176.7542877197266 161.4194946289063 C 176.7542877197266 161.8637390136719 176.7542877197266 162.3016204833984 176.7542877197266 162.7426910400391 C 176.7669677734375 162.7458648681641 176.7764892578125 162.7522125244141 176.7891845703125 162.7553863525391 C 176.9161071777344 162.5903778076172 177.0366821289063 162.4190368652344 177.1699676513672 162.2572021484375 C 177.5570831298828 161.7812347412109 178.0425720214844 161.4321899414063 178.6137390136719 161.2227630615234 C 178.9246978759766 161.1085357666016 179.2642211914063 161.0387268066406 179.5910491943359 161.0228576660156 C 180.0416412353516 161.0038146972656 180.5017395019531 161.0101623535156 180.9459838867188 161.0863189697266 C 181.6757965087891 161.2100677490234 182.3199462890625 161.5337371826172 182.85302734375 162.0636444091797 C 183.3575592041016 162.5618286132813 183.6907348632813 163.1615447998047 183.8715972900391 163.8374176025391 C 183.966796875 164.1959838867188 184.0270843505859 164.5640563964844 184.0841979980469 164.9289703369141 C 184.1222839355469 165.1828308105469 184.1413269042969 165.4430236816406 184.1413269042969 165.6968688964844 C 184.1444854736328 167.7593994140625 184.1444854736328 169.8219299316406 184.1444854736328 171.8844604492188 C 184.1444854736328 171.9352416992188 184.1413269042969 171.9860076904297 184.1381530761719 172.0526428222656 C 184.0778503417969 172.0526428222656 184.0270843505859 172.0526428222656 183.976318359375 172.0526428222656 C 183.0021667480469 172.0526428222656 182.0311889648438 172.0494689941406 181.0570373535156 172.0558166503906 C 180.8952026367188 172.0558166503906 180.8666534423828 172.0018768310547 180.8666534423828 171.8559112548828 C 180.8698272705078 169.9583740234375 180.8761749267578 168.0576782226563 180.8634796142578 166.16015625 C 180.8603057861328 165.8269653320313 180.8285827636719 165.4810943603516 180.7429046630859 165.1606140136719 C 180.5874176025391 164.5989685058594 180.2320251464844 164.1928100585938 179.6672058105469 163.9865570068359 C 179.1912384033203 163.8120422363281 178.7089233398438 163.7803039550781 178.2202606201172 163.904052734375 C 177.6808319091797 164.0404968261719 177.3095855712891 164.3990631103516 177.0303497314453 164.8718566894531 C 176.8145751953125 165.2367706298828 176.7733154296875 165.6397552490234 176.7701416015625 166.0427398681641 C 176.7574615478516 167.9688262939453 176.7637939453125 169.8917388916016 176.7637939453125 171.8178253173828 C 176.7637939453125 171.8908081054688 176.7637939453125 171.9637908935547 176.7637939453125 172.0431213378906 C 175.6690673828125 172.0462951660156 174.5933837890625 172.0462951660156 173.4986572265625 172.0462951660156 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_a2994i =
    '<svg viewBox="45.1 734.4 3.3 10.6" ><path transform="translate(39.75, 558.92)" d="M 8.593698501586914 180.8023071289063 C 8.593698501586914 182.4935760498047 8.590524673461914 184.1848602294922 8.596871376037598 185.8761291503906 C 8.596871376037598 186.0284423828125 8.565139770507813 186.0855560302734 8.396964073181152 186.0823822021484 C 7.429161071777344 186.0728607177734 6.461357593536377 186.0728607177734 5.493554592132568 186.0823822021484 C 5.334897994995117 186.0823822021484 5.299993991851807 186.0284423828125 5.299993991851807 185.8824768066406 C 5.30316686630249 182.4840698242188 5.30316686630249 179.0824737548828 5.299993991851807 175.6840515136719 C 5.299993991851807 175.547607421875 5.338071346282959 175.5000152587891 5.477688789367676 175.5000152587891 C 6.455011367797852 175.5063629150391 7.432333946228027 175.5063629150391 8.412830352783203 175.5000152587891 C 8.565139770507813 175.5000152587891 8.593697547912598 175.55712890625 8.593697547912598 175.6935729980469 C 8.593698501586914 177.3975372314453 8.593698501586914 179.1015014648438 8.593698501586914 180.8023071289063 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ohuxxi =
    '<svg viewBox="45.0 729.0 3.4 3.3" ><path transform="translate(42.37, 724.23)" d="M 4.297293663024902 4.770211696624756 C 5.341252326965332 4.744826793670654 5.966357707977295 5.503203392028809 5.969531059265137 6.432929039001465 C 5.97270393371582 7.384866714477539 5.306347846984863 8.095647811889648 4.25921630859375 8.092473983764648 C 3.285066843032837 8.092473983764648 2.596498727798462 7.394386291503906 2.599671840667725 6.407544136047363 C 2.602844953536987 5.484164714813232 3.272374391555786 4.738480567932129 4.297293663024902 4.770211696624756 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x9p9xs =
    '<svg viewBox="35.0 720.0 36.0 36.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(35.0, 720.0)" d="M 15 0 L 21 0 C 29.28427124023438 0 36 6.715728759765625 36 15 L 36 21 C 36 29.28427124023438 29.28427124023438 36 21 36 L 15 36 C 6.715728759765625 36 0 29.28427124023438 0 21 L 0 15 C 0 6.715728759765625 6.715728759765625 0 15 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vg5czu =
    '<svg viewBox="170.0 720.0 36.0 36.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(170.0, 720.0)" d="M 15 0 L 21 0 C 29.28427124023438 0 36 6.715728759765625 36 15 L 36 21 C 36 29.28427124023438 29.28427124023438 36 21 36 L 15 36 C 6.715728759765625 36 0 29.28427124023438 0 21 L 0 15 C 0 6.715728759765625 6.715728759765625 0 15 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fgw2iy =
    '<svg viewBox="180.0 730.0 16.0 16.0" ><path transform="translate(177.0, 712.2)" d="M 8.417910575866699 22.47164535522461 C 8.119402885437012 23.33731460571289 7.940298080444336 24.26268768310547 7.880597114562988 25.23283767700195 L 10.44776153564453 25.23283767700195 L 10.44776153564453 22.47164535522461 L 8.417910575866699 22.47164535522461 L 8.417910575866699 22.47164535522461 Z M 8.880597114562988 21.35224151611328 L 10.44776153564453 21.35224151611328 L 10.44776153564453 19.14328575134277 C 9.820896148681641 19.77015113830566 9.298507690429688 20.51642036437988 8.880597114562988 21.35224151611328 L 8.880597114562988 21.35224151611328 Z M 7.656716346740723 21.35224151611328 C 7.985074996948242 20.5910472869873 8.402985572814941 19.87462997436523 8.895523071289063 19.23283767700195 C 7.626866340637207 19.63582229614258 6.537313461303711 20.39701652526855 5.746268749237061 21.35224151611328 L 7.656716346740723 21.35224151611328 L 7.656716346740723 21.35224151611328 Z M 17.02985191345215 22.47164535522461 L 14.76119518280029 22.47164535522461 C 15.02985191345215 23.33731460571289 15.19403076171875 24.26268768310547 15.23880672454834 25.23283767700195 L 17.86567306518555 25.23283767700195 C 17.79104614257813 24.23283767700195 17.49253845214844 23.30746459960938 17.02985191345215 22.47164535522461 L 17.02985191345215 22.47164535522461 Z M 14.11940383911133 25.23283767700195 C 14.07462692260742 24.26268768310547 13.8805980682373 23.33731460571289 13.58209037780762 22.47164535522461 L 11.55223846435547 22.47164535522461 L 11.55223846435547 25.23283767700195 L 14.11940383911133 25.23283767700195 L 14.11940383911133 25.23283767700195 Z M 13.11940383911133 21.35224151611328 C 12.71641826629639 20.51642036437988 12.17910480499268 19.77015113830566 11.55223846435547 19.14328575134277 L 11.55223846435547 21.35224151611328 L 13.11940383911133 21.35224151611328 L 13.11940383911133 21.35224151611328 Z M 14.34328365325928 21.35224151611328 L 16.25373268127441 21.35224151611328 C 15.44776153564453 20.41194152832031 14.35821056365967 19.63582229614258 13.10447883605957 19.23283767700195 C 13.59701538085938 19.87462997436523 14.01492595672607 20.5910472869873 14.34328365325928 21.35224151611328 L 14.34328365325928 21.35224151611328 Z M 4.970149517059326 29.11343574523926 L 7.23880672454834 29.11343574523926 C 6.970149993896484 28.24776458740234 6.805970191955566 27.32239151000977 6.761194229125977 26.35224151611328 L 4.134328365325928 26.35224151611328 C 4.223880767822266 27.35224151611328 4.507462501525879 28.29254150390625 4.970149517059326 29.11343574523926 L 4.970149517059326 29.11343574523926 Z M 7.880597114562988 26.35224151611328 C 7.925373077392578 27.32239151000977 8.119402885437012 28.24776458740234 8.417910575866699 29.11343574523926 L 10.44776153564453 29.11343574523926 L 10.44776153564453 26.35224151611328 L 7.880597114562988 26.35224151611328 L 7.880597114562988 26.35224151611328 Z M 8.880597114562988 30.23283767700195 C 9.298507690429688 31.06866073608398 9.835822105407715 31.81492805480957 10.44776153564453 32.44179534912109 L 10.44776153564453 30.23283767700195 L 8.880597114562988 30.23283767700195 L 8.880597114562988 30.23283767700195 Z M 7.656716346740723 30.23283767700195 L 5.731343269348145 30.23283767700195 C 6.537313461303711 31.17313766479492 7.626866340637207 31.94925689697266 8.880597114562988 32.35224151611328 C 8.402985572814941 31.72537612915039 7.985074996948242 31.00895881652832 7.656716346740723 30.23283767700195 L 7.656716346740723 30.23283767700195 Z M 14.76119518280029 29.11343574523926 L 17.02985191345215 29.11343574523926 C 17.49253845214844 28.27761459350586 17.77612113952637 27.35224151611328 17.86567306518555 26.35224151611328 L 15.23880672454834 26.35224151611328 C 15.19402980804443 27.32239151000977 15.02985095977783 28.24776458740234 14.76119518280029 29.11343574523926 L 14.76119518280029 29.11343574523926 Z M 13.58209037780762 29.11343574523926 C 13.8805980682373 28.24776458740234 14.05970191955566 27.32239151000977 14.11940383911133 26.35224151611328 L 11.55223846435547 26.35224151611328 L 11.55223846435547 29.11343574523926 L 13.58209037780762 29.11343574523926 L 13.58209037780762 29.11343574523926 Z M 13.11940383911133 30.23283767700195 L 11.55223846435547 30.23283767700195 L 11.55223846435547 32.44179534912109 C 12.17910480499268 31.82985496520996 12.71641826629639 31.08358573913574 13.11940383911133 30.23283767700195 L 13.11940383911133 30.23283767700195 Z M 14.34328365325928 30.23283767700195 C 14.01492595672607 30.99403381347656 13.59701538085938 31.71045112609863 13.10447788238525 32.35224151611328 C 14.37313461303711 31.94925689697266 15.46268749237061 31.18806266784668 16.25373077392578 30.23283767700195 L 14.34328365325928 30.23283767700195 L 14.34328365325928 30.23283767700195 Z M 7.238805770874023 22.47164535522461 L 4.970149517059326 22.47164535522461 C 4.507462501525879 23.30746459960938 4.223880767822266 24.24776458740234 4.134328365325928 25.23283767700195 L 6.761194229125977 25.23283767700195 C 6.820896148681641 24.27761459350586 6.985074996948242 23.33731651306152 7.238805770874023 22.47164535522461 L 7.238805770874023 22.47164535522461 Z M 11 33.80000305175781 C 6.582089424133301 33.80000305175781 3 30.21791458129883 3 25.80000305175781 C 3 21.3820915222168 6.582089424133301 17.80000305175781 11 17.80000305175781 C 15.4179105758667 17.80000305175781 19 21.3820915222168 19 25.80000305175781 C 19 30.21791458129883 15.4179105758667 33.80000305175781 11 33.80000305175781 L 11 33.80000305175781 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pdwfmb =
    '<svg viewBox="45.0 730.0 16.0 16.0" ><path transform="translate(45.0, 730.0)" d="M 8 1.422222256660461 C 10.13333320617676 1.422222256660461 10.39999961853027 1.422222256660461 11.20000076293945 1.51111114025116 C 12 1.51111114025116 12.44444465637207 1.688889026641846 12.71111106872559 1.777777791023254 C 13.06666660308838 1.955555558204651 13.33333301544189 2.133333444595337 13.60000038146973 2.400000095367432 C 13.86666679382324 2.666666746139526 14.0444450378418 2.9333336353302 14.22222232818604 3.288888931274414 C 14.31111145019531 3.555555582046509 14.48888874053955 4 14.48888874053955 4.800000190734863 C 14.48888874053955 5.600000381469727 14.57777786254883 5.8666672706604 14.57777786254883 8 C 14.57777786254883 10.13333320617676 14.57777786254883 10.39999961853027 14.48888874053955 11.20000076293945 C 14.48888874053955 12 14.31110954284668 12.44444465637207 14.22222137451172 12.71111106872559 C 14.04444408416748 13.06666660308838 13.86666584014893 13.33333301544189 13.59999942779541 13.60000038146973 C 13.33333301544189 13.86666679382324 13.06666564941406 14.0444450378418 12.71111011505127 14.22222232818604 C 12.44444370269775 14.31111145019531 11.99999904632568 14.48888874053955 11.19999980926514 14.48888874053955 C 10.39999961853027 14.48888874053955 10.13333320617676 14.57777786254883 8 14.57777786254883 C 5.866666793823242 14.57777786254883 5.600000381469727 14.57777786254883 4.800000190734863 14.48888874053955 C 4 14.48888874053955 3.555555582046509 14.31110954284668 3.288888931274414 14.22222137451172 C 2.933333396911621 14.04444408416748 2.666666746139526 13.86666584014893 2.400000095367432 13.59999942779541 C 2.133333444595337 13.33333301544189 1.955555558204651 13.06666564941406 1.777777791023254 12.71111011505127 C 1.688888907432556 12.44444370269775 1.51111114025116 11.99999904632568 1.51111114025116 11.19999980926514 C 1.51111114025116 10.39999961853027 1.422222256660461 10.13333320617676 1.422222256660461 8 C 1.422222256660461 5.866666793823242 1.422222256660461 5.600000381469727 1.51111114025116 4.800000190734863 C 1.51111114025116 4 1.688888907432556 3.555555582046509 1.777777791023254 3.288888931274414 C 1.955555558204651 2.933333396911621 2.133333444595337 2.666666746139526 2.400000095367432 2.400000095367432 C 2.666666746139526 2.04444432258606 2.933333396911621 1.866666555404663 3.288888931274414 1.777777791023254 C 3.555555582046509 1.688888907432556 4 1.51111114025116 4.800000190734863 1.51111114025116 C 5.600000381469727 1.422222256660461 5.866666793823242 1.422222256660461 8 1.422222256660461 M 8 0 C 5.866666793823242 0 5.511110782623291 0 4.711111545562744 0.08888889104127884 C 3.822222471237183 0.08888889104127884 3.288889169692993 0.2666666805744171 2.755555629730225 0.4444444477558136 C 2.222222328186035 0.6222222447395325 1.777777791023254 0.8888888955116272 1.333333373069763 1.333333373069763 C 0.8888888955116272 1.777777791023254 0.6222222447395325 2.222222328186035 0.4444444477558136 2.755555391311646 C 0.1777777820825577 3.288888931274414 0.08888889104127884 3.822222471237183 0.08888889104127884 4.711111545562744 C 0 5.511110782623291 0 5.866666793823242 0 8 C 0 10.13333320617676 0 10.48888874053955 0.08888889104127884 11.28888893127441 C 0.08888889104127884 12.17777729034424 0.2666666805744171 12.71111106872559 0.4444444477558136 13.24444389343262 C 0.6222222447395325 13.77777767181396 0.8888888955116272 14.22222232818604 1.333333373069763 14.66666698455811 C 1.777777791023254 15.11111164093018 2.222222328186035 15.37777709960938 2.755555391311646 15.55555534362793 C 3.288888692855835 15.7333345413208 3.822222471237183 15.91111087799072 4.711111545562744 15.91111087799072 C 5.511110782623291 16 5.866666793823242 16 8 16 C 10.13333320617676 16 10.48888874053955 16 11.28888893127441 15.91111087799072 C 12.17777729034424 15.91111087799072 12.71111106872559 15.73333263397217 13.24444389343262 15.55555534362793 C 13.77777767181396 15.37777709960938 14.22222232818604 15.11111164093018 14.66666698455811 14.66666698455811 C 15.11111164093018 14.22222232818604 15.37777709960938 13.77777767181396 15.55555534362793 13.24444389343262 C 15.7333345413208 12.71111011505127 15.91111087799072 12.17777729034424 15.91111087799072 11.28888893127441 C 15.91111087799072 10.39999961853027 16 10.13333320617676 16 8 C 16 5.866666793823242 16 5.511110782623291 15.91111087799072 4.711111545562744 C 15.91111087799072 3.822222471237183 15.73333263397217 3.288889169692993 15.55555534362793 2.755555629730225 C 15.37777709960938 2.222222328186035 15.11111164093018 1.777777791023254 14.66666698455811 1.333333492279053 C 14.22222232818604 0.8888890147209167 13.77777767181396 0.6222223043441772 13.24444389343262 0.4444445669651031 C 12.71111011505127 0.2666667997837067 12.17777729034424 0.0888889878988266 11.28888893127441 0.0888889878988266 C 10.48888874053955 0 10.13333320617676 0 8 0 M 8 3.911111116409302 C 5.688889026641846 3.911111116409302 3.911111116409302 5.688889026641846 3.911111116409302 8 C 3.911111116409302 10.31111145019531 5.777777671813965 12.08888912200928 8 12.08888912200928 C 10.31111145019531 12.08888912200928 12.08888912200928 10.22222232818604 12.08888912200928 8 C 12.08888912200928 5.777777671813965 10.31111145019531 3.911111116409302 8 3.911111116409302 M 8 10.66666698455811 C 6.488889217376709 10.66666698455811 5.333333492279053 9.511111259460449 5.333333492279053 8 C 5.333333492279053 6.488889217376709 6.488889217376709 5.333333492279053 8 5.333333492279053 C 9.511111259460449 5.333333492279053 10.66666698455811 6.488889217376709 10.66666698455811 8 C 10.66666698455811 9.511111259460449 9.511111259460449 10.66666698455811 8 10.66666698455811 M 12.26666736602783 2.755555391311646 C 11.73333358764648 2.755555391311646 11.28888893127441 3.200000047683716 11.28888893127441 3.733333110809326 C 11.28888893127441 4.266666412353516 11.73333358764648 4.711111068725586 12.26666736602783 4.711111068725586 C 12.80000019073486 4.711111068725586 13.24444484710693 4.266666412353516 13.24444484710693 3.733333110809326 C 13.24444389343262 3.200000047683716 12.80000019073486 2.755555391311646 12.26666736602783 2.755555391311646" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_7e8qy6 =
    '<svg viewBox="58.0 720.0 36.0 36.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="translate(58.0, 720.0)" d="M 15 0 L 21 0 C 29.28427124023438 0 36 6.715728759765625 36 15 L 36 21 C 36 29.28427124023438 29.28427124023438 36 21 36 L 15 36 C 6.715728759765625 36 0 29.28427124023438 0 21 L 0 15 C 0 6.715728759765625 6.715728759765625 0 15 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gzdh7g =
    '<svg viewBox="72.0 730.0 8.4 16.0" ><path transform="translate(-8.0, 730.0)" d="M 85.42222595214844 16 L 85.42222595214844 8.711111068725586 L 87.91111755371094 8.711111068725586 L 88.26667785644531 5.8666672706604 L 85.42222595214844 5.8666672706604 L 85.42222595214844 4.088889122009277 C 85.42222595214844 3.288889169692993 85.68890380859375 2.666667222976685 86.84445190429688 2.666667222976685 L 88.35556030273438 2.666667222976685 L 88.35556030273438 0.08888889104127884 C 88 0.08888889104127884 87.11111450195313 0 86.13333129882813 0 C 84 0 82.4888916015625 1.333333373069763 82.4888916015625 3.733333110809326 L 82.4888916015625 5.866666793823242 L 80 5.866666793823242 L 80 8.711111068725586 L 82.4888916015625 8.711111068725586 L 82.4888916015625 16 L 85.42222595214844 16 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ah28f4 =
    '<svg viewBox="32.0 48.0 12.6 18.0" ><defs><linearGradient id="gradient" x1="0.017181" y1="0.087972" x2="0.984024" y2="0.895426"><stop offset="0.0" stop-color="#fffe4f70"  /><stop offset="1.0" stop-color="#ffcb6bd8"  /></linearGradient></defs><path transform="matrix(0.0, 1.0, -1.0, 0.0, 44.56, 48.0)" d="M 8.999999046325684 12.56341361999512 L 0 2.883406400680542 L 2.680851221084595 0 L 8.999999046325684 6.796600818634033 L 15.31914710998535 0 L 18 2.883406400680542 L 8.999999046325684 12.56341361999512 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
