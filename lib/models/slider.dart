
import 'package:birth_register/utils/constants.dart';
import 'package:flutter/cupertino.dart';

class Slider {
  final String sliderImageUrl;
  final String sliderHeading;
  final String sliderSubHeading;

  Slider(
      {@required this.sliderImageUrl,
        @required this.sliderHeading,
        @required this.sliderSubHeading});
}

final sliderArrayList = [
  Slider(
      sliderImageUrl: 'assets/images/logo.png',
      sliderHeading: slider_heading_1,
      sliderSubHeading: slider_desc),
  Slider(
      sliderImageUrl: 'assets/images/logo.png',
      sliderHeading: slider_heading_2,
      sliderSubHeading: slider_desc),
  Slider(
      sliderImageUrl: 'assets/images/logo.png',
      sliderHeading: slider_heading_3,
      sliderSubHeading: slider_desc),
];