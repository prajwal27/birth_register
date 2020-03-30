import 'package:birth_register/ui/screens/BirthInformation/birth_information.dart';
import 'package:birth_register/ui/screens/Dashboard/dashboard.dart';
import 'package:birth_register/ui/screens/Notifications/notifications.dart';
import 'package:birth_register/ui/screens/Profile/profile.dart';
import 'package:birth_register/utils/constants.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final FirebaseUser firebaseUser;

  Home({this.firebaseUser});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _cIndex = 0;

  PageController _pageController;

  @override
  void initState() {
    super.initState();
    print(widget.firebaseUser);
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
      _pageController.animateToPage(index,
          duration: Duration(milliseconds: 300), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
          selectedIndex: _cIndex,
          showElevation: true,
          backgroundColor: kwhite,
          items: [
            BottomNavyBarItem(
              icon: Icon(Icons.home),
              activeColor: korange,
              inactiveColor: kgreyDark,
              title: Text(
                info,
                style: TextStyle(fontFamily: "nunito"),
              ),
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.line_style),
              title: Text(
                dashboard,
                style: TextStyle(fontFamily: "nunito"),
              ),
              inactiveColor: kgreyDark,
              activeColor: korange,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.notifications),
              title: Text(
                notifications,
                style: TextStyle(fontFamily: "nunito"),
              ),
              inactiveColor: kgreyDark,
              activeColor: korange,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.person),
              title: Text(
                profile,
                style: TextStyle(fontFamily: "nunito"),
              ),
              inactiveColor: kgreyDark,
              activeColor: korange,
            )
          ],
          onItemSelected: (index) {
            _incrementTab(index);
          }),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _cIndex = index);
          },
          children: <Widget>[
            BirthInformation(),
            Dashboard(),
            Notifications(),
            Profile(),
          ],
        ),
      ),
    );
  }
}
