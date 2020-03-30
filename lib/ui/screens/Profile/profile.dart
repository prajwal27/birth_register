import 'package:birth_register/business/auth.dart';
import 'package:birth_register/utils/constants.dart';
import 'package:birth_register/utils/text_styles.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: AppBar(
        backgroundColor: kwhite,
        title: BoldText("Profile", 25, kblack),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 6,
              color: kgreyFill,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: kgreyDark,
                      radius: 50,
                      child: Icon(Icons.person,size: 50,),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      BoldText("ABC",20.0,kblack),
                      Row(
                        children: <Widget>[
                          NormalText("Current Location",kgreyDark,16),
                          Icon(
                            Icons.location_on,
                            color: kgreyDark,
                            size: 15.0,
                          ),
                        ],
                      ),
                    ],
                  ),


                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              height: 6,
              color: kgreyFill,
            ),
            ProfileItem(Icons.settings,"Settings"),
            ProfileItem(Icons.help,"Ask - Chatbot"),
            ProfileItem(Icons.phone,"Contact Us"),
            Container(
              height: 6,
              color: kgreyFill,
            ),
            ProfileItem(Icons.library_books,"Terms and Conditions"),
            ProfileItem(Icons.share,"Share"),
            ProfileItem(Icons.info,"About Us"),
            ProfileItem(Icons.exit_to_app,"Sign Out"),


          ],
        ),
      ),
    );
  }

  void _logOut() async {
    Auth.signOut();
  }

  Widget ProfileItem(IconData icon, String text) {
    return GestureDetector(
      onTap: () {
        if(icon == Icons.exit_to_app) {
          _logOut();
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,bottom: 9),
        child: Row(
          children: <Widget>[
            Icon(icon, color: korange,size: 40,),
            SizedBox(width: 8,),
            NormalText(text,kblack,20.0)
          ],
        ),
      ),
    );
  }
}
