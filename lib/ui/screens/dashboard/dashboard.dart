import 'package:birth_register/ui/screens/Dashboard/hospitals.dart';
import 'package:birth_register/utils/cities_image.dart';
import 'package:birth_register/utils/recommendation_image.dart';
import 'package:birth_register/utils/constants.dart';
import 'package:birth_register/utils/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kwhite,
        title: BoldText(dashboard, 25, kblack),
        centerTitle: true,
        elevation: 0.0,
    ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16.0,bottom: 16.0),
              child: Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      BoldText(hospital_near_you, 20.0, kblack),
                      SizedBox(
                        width: 60,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) {
                            return HospitalsPage();
                          }));
                        },
                        child: BoldText(more, 15.0, korange)
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: korange,
                      )
                    ],
                  ),
                ),

                Container(
                  width: 400,
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      RecommendationImage("assets/images/kenya1.jpg", "Kenyatta", "2KM away",0),
                      RecommendationImage("assets/images/kenya2.jpg", "Karen", "5KM away",0),
                      RecommendationImage("assets/images/ibis.jpg", "M P Shah", "10KM away",0),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      BoldText(upcoming_vaccination, 20.0, kblack),
                      SizedBox(
                        width: 60,
                      ),
                      GestureDetector(
                        onTap: () {

                        },
                        child: BoldText(more, 15.0, korange)
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: korange,
                      )
                    ],
                  ),
                ),

                Container(
                  width: 400,
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      RecommendationImage("assets/images/vaccine.jpg", "Polio", "Tomorrow",1),
                      RecommendationImage("assets/images/vaccine.jpg", "Measles", "1st June, 2020",1),
                      RecommendationImage("assets/images/vaccine.jpg", "Malaria", "14th July 2020",1),
                    ],
                  ),
                ),
                /*Padding(
                  padding: const EdgeInsets.only( top: 10,bottom: 16.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: BoldText("Best Rated Places", 20.0, kblack)),
                ),
                Container(
                  width: 400,
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      BestRatedImage(
                          "assets/images/sheraton.jpg", "Sheraton", "Oran", 4.5),
                      BestRatedImage(
                          "assets/images/Meridien.jpg", "Meridien", "Oran", 4.8),
                      BestRatedImage("assets/images/ibis.jpg", "Ibis", "Oran", 3.1),
                    ],

                  ),
                ),*/
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 16.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: BoldText(other_features, 20.0, kblack)),
                ),
                Row(
                  children: <Widget>[
                    CitiesImage("assets/images/medical_history.png",""),
                    SizedBox(width: 28,),
                    CitiesImage("assets/images/first_aid.png",""),

                  ],
                ),
                SizedBox(height: 28,),
                Row(
                  children: <Widget>[
                    CitiesImage("assets/images/pill.png",""),
                    SizedBox(width: 28,),
                    CitiesImage("assets/images/video-lesson.png",""),
                  ],

                ),

              ]),
            ),
          ],
        ),
      ),
    );
  }


}
