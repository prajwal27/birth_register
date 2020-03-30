import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'slider_view.dart';


class OnBoardingScreen extends StatefulWidget {
  final SharedPreferences prefs;

  OnBoardingScreen({this.prefs});
  @override
  State<StatefulWidget> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SliderLayoutView(prefs:widget.prefs),
      ),
    );
  }

}

