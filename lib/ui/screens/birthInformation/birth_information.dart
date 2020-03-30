import 'package:birth_register/ui/screens/BirthInformation/address_information_screen.dart';
import 'package:birth_register/ui/screens/BirthInformation/guardian_information_screen.dart';
import 'package:birth_register/ui/screens/BirthInformation/personal_information_screen.dart';
import 'package:birth_register/ui/widgets/custom_alert_dialog.dart';
import 'package:birth_register/utils/constants.dart';
import 'package:birth_register/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BirthInformation extends StatefulWidget {
  @override
  _BirthInformationState createState() => _BirthInformationState();
}

class _BirthInformationState extends State<BirthInformation> with SingleTickerProviderStateMixin {
  TabController tabController;
  int sexRadio, natureRadio;

  @override
  void initState() {
    super.initState();
    sexRadio = 0;
    natureRadio = 0;
    tabController = new TabController(length: 5, vsync: this);
  }
  setSexRadio(int val) {
    setState(() {
      sexRadio = val;
    });
  }

  setNatureRadio(int val) {
    setState(() {
      natureRadio = val;
    });
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kwhite,
        title: BoldText("Birth Information", 25, kblack),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.file_download, color: kwhite),
            backgroundColor: korange,
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  // return object of type Dialog
                  return CustomAlertDialog(
                    content: "Download PDF Version",
                    title: "CONFIRM",
                    onPressed: () {
                      //TODO download PDF version of the BIRTH INFORMATION.
                    },
                  );
                },
              );
            },
            label: Text("PDF", style: TextStyle(color: Colors.black),)
        ),
        backgroundColor: kwhite,
        appBar: TabBar(
          isScrollable: true,
          labelColor: korange,
          unselectedLabelColor:kgreyDark,
          labelStyle:
          TextStyle(fontFamily: "nunito", fontWeight: FontWeight.bold),
          controller: tabController,
          indicatorColor: korange,
          tabs: <Widget>[
            Tab(text: "Personal"),
            Tab(text: "Guardian"),
            Tab(text: "Address"),
            Tab(text: "Education"),
            Tab(text: "SSI Credentials"),
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            PersonalInformationScreen(),
            GuardianInformationScreen(),
            AddressInformationScreen(),
            Icon(FontAwesomeIcons.book),
            Icon(FontAwesomeIcons.userSecret)
          ],
          controller: tabController,
        ),
      ),
    );
  }
}
