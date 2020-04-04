import 'package:birth_register/ui/screens/boardingView/on_boarding_screen.dart';
import 'package:birth_register/ui/screens/dashboard/hospitals.dart';
import 'package:birth_register/ui/screens/authentication/login_page.dart';
import 'package:birth_register/ui/screens/main_screen.dart';
import 'package:birth_register/ui/screens/root_screen.dart';
import 'package:birth_register/ui/screens/authentication/signup_page.dart';
import 'package:birth_register/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firestore.instance.settings(timestampsInSnapshotsEnabled: true);
  SharedPreferences.getInstance().then((prefs) {
    runApp(MyApp(prefs: prefs));
  });
}

class MyApp extends StatelessWidget {
  final SharedPreferences prefs;
  MyApp({this.prefs});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/onboard': (BuildContext context) => OnBoardingScreen(),
        '/root': (BuildContext context) => RootScreen(),
        '/signin': (BuildContext context) => LoginPage(),
        '/signup': (BuildContext context) => SignUpPage(),
        '/main': (BuildContext context) => Home(),
        '/hospitals': (BuildContext context) => HospitalsPage(),
      },
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.grey,
      ),
      home: SplashScreen(prefs: prefs),
    );
  }
}
