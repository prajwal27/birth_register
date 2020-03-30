import 'package:birth_register/utils/constants.dart';
import 'package:birth_register/utils/forms.dart';
import 'package:birth_register/utils/text_styles.dart';
import 'package:flutter/material.dart';



class ImageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        alignment: AlignmentDirectional.topStart,
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              "assets/images/home1.jpg",
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 60.0, left: 20, right: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  BoldText("What are you", 30.0, kwhite),
                  BoldText("Looking for?", 30.0, kwhite)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 60.0, left: 20, right: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: NormalForm(Icons.search, "Where do you want to go"),
            ),
          )
        ],
      ),
    );
  }
}
