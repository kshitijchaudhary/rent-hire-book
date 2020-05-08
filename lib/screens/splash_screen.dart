import 'package:ekitaab_pasal/login/login.dart';
import 'package:flutter/material.dart';
import 'package:ekitaab_pasal/login/login.dart' show Login;
import 'package:ekitaab_pasal/widgets/light_color.dart';
import 'package:ekitaab_pasal/widgets/text_style.dart';
import 'package:ekitaab_pasal/widgets/extention.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
     Future.delayed(Duration(seconds: 2)).then((_) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => Login()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/logo.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned.fill(
            child: Opacity(
              opacity: .6,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [LightColor.purpleExtraLight, LightColor.purple],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      tileMode: TileMode.mirror,
                      stops: [.5, 6]),
                ),
              ),
            ),
          ),
         Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: SizedBox(),
                ),
                Image.asset('assets/logo.png', color: Colors.white,height: 100,),
                Text(
                  "e - Kitaab Pasal",
                  style: TextStyles.h1Style.white,
                ),
                Text(
                  "HIRE AND RENT BOOK",
                  style: TextStyles.bodySm.white.bold,
                ),
                Expanded(
                  flex: 7,
                  child: SizedBox(),
                ),
              ],
            ).alignTopCenter,
        ],
      ),
    );
  }
}
