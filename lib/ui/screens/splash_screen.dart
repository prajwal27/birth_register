import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:birth_register/ui/screens/BoardingView/on_boarding_screen.dart';
import 'package:birth_register/ui/screens/root_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:birth_register/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SplashScreen extends StatefulWidget {
  final SharedPreferences prefs;

  SplashScreen({this.prefs});
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kwhite,
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: Image.asset(
                  "assets/images/logo.png",
                  fit: BoxFit.fitHeight,
                ),
              ),
              SizedBox(height: 50),
              TypewriterAnimatedTextKit(
                text: ["BirthInfo"],
                textStyle: TextStyle(fontSize: 30.0,color: korange,fontFamily: "nunito"),
                speed: Duration(milliseconds: 150),
              )
            ],
          ),
        )

    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds:4 ),(){
      _handleCurrentScreen(widget.prefs);
    });
  }

  Widget _handleCurrentScreen(SharedPreferences prefs) {
    bool seen = (prefs.getBool('seen') ?? false);
    if (seen) {
      /*Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
        return RootScreen();
      }));*/
      Navigator.of(context).pushReplacementNamed("/root");
    } else {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
        return OnBoardingScreen(prefs: prefs,);
      }));
    }
  }
}
