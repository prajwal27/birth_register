import 'package:birth_register/models/slider.dart';
import 'package:birth_register/ui/widgets/buttons.dart';
import 'package:birth_register/utils/constants.dart';
import 'package:birth_register/utils/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SlideItem extends StatelessWidget {
  final int index;
  final SharedPreferences prefs;

  SlideItem(this.index, this.prefs);

  @override
  Widget build(BuildContext context) {

    onPressed (){
      prefs.setBool('seen', true);
      Navigator.of(context).pushReplacementNamed("/root");
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.width * 0.6,
          width: MediaQuery.of(context).size.height * 0.8,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(sliderArrayList[index].sliderImageUrl))),
        ),
        SizedBox(
          height: 60.0,
        ),
        BoldText(sliderArrayList[index].sliderHeading, 20.5, kblack),
        SizedBox(
          height: 15.0,
        ),
        Center(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: index != 2
                  ? NormalText(sliderArrayList[index].sliderSubHeading,kblack, 12.5)
                  : Column(
                      children: <Widget>[
                        NormalText(sliderArrayList[index].sliderSubHeading,kblack, 12.5),
                        SizedBox(
                          height: 50,
                        ),
                        WideButton("Lets go !!",onPressed),
                      ],
                    )),
        ),
      ],
    );
  }
}
