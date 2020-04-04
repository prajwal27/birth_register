import 'package:birth_register/models/slider.dart';
import 'package:birth_register/ui/screens/boardingView/slider_dots.dart';
import 'package:birth_register/ui/screens/boardingView/slider_items.dart';
import 'package:birth_register/utils/constants.dart';
import 'package:birth_register/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SliderLayoutView extends StatefulWidget {
  final SharedPreferences prefs;

  SliderLayoutView({this.prefs});
  @override
  State<StatefulWidget> createState() => _SliderLayoutViewState();
}

class _SliderLayoutViewState extends State<SliderLayoutView> {
  static int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: _currentPage);

  @override
  void initState() {
    super.initState();
    //TODO: automatic movement of onboard screen.
   /* Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        setState(() {
          _currentPage++;
        });
        //_currentPage++;
      } else {
        setState(() {
          _currentPage = 0;
        });
        //_currentPage = 0;
      }
    });*/
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  void onPressed(){
    widget.prefs.setBool(seen, true);
    Navigator.of(context).pushReplacementNamed("/root");
  }

  @override
  Widget build(BuildContext context) => topSliderLayout();

  Widget topSliderLayout() => Container(
    child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: _pageController,
              onPageChanged: _onPageChanged,
              itemCount: sliderArrayList.length,
              itemBuilder: (ctx, i) => SlideItem(i, widget.prefs),
            ),
            Stack(
              alignment: AlignmentDirectional.topStart,
              children: <Widget>[
                _currentPage <2 ?
                GestureDetector(
                  onTap: () {
                    _pageController.jumpToPage(_currentPage+1);
                    //_onPageChanged(_currentPage+1);
                  },
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 15.0, bottom: 15.0),
                      child: BoldText(next,14,kblack),

                    ),
                  ),
                ): Container(),

                _currentPage <2 ?GestureDetector(
                  onTap: onPressed,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.0, bottom: 15.0),
                      child: BoldText(skip,14,kblack),

                    ),
                  ),
                ): Container(),


                Container(
                  alignment: AlignmentDirectional.bottomCenter,
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      for (int i = 0; i < sliderArrayList.length; i++)
                        if (i == _currentPage)
                          SlideDots(true)
                        else
                          SlideDots(false)
                    ],
                  ),
                ),
              ],
            )
          ],
        )),
  );
}