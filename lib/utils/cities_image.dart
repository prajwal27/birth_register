import 'package:birth_register/utils/constants.dart';
import 'package:birth_register/utils/text_styles.dart';
import 'package:flutter/material.dart';

class CitiesImage extends StatelessWidget {
  final String imgUrl;
  final String city;

  CitiesImage(this.imgUrl, this.city);

  @override
  Widget build(BuildContext context) {
      return Container(
        width: 150,
        height: 150,
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(24),
                width: 150,
                height: 150,
                child: ClipRRect(
                    borderRadius: new BorderRadius.all(Radius.circular(15.0)),
                    child: Image.asset(
                      imgUrl,
                      fit: BoxFit.cover,
                    ))),
            Container(
              width: 160,
              height: 160,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: NormalText(city,kblack, 20)),
            )
          ],
        ),
      );

  }
}
