import 'package:birth_register/ui/screens/Dashboard/hospitals.dart';
import 'package:birth_register/ui/screens/Dashboard/overview_screen.dart';
import 'package:birth_register/ui/widgets/buttons.dart';
import 'package:birth_register/utils/best_rated_image.dart';
import 'package:birth_register/utils/cities_image.dart';
import 'package:birth_register/utils/recommendation_image.dart';
import 'package:birth_register/utils/constants.dart';
import 'package:birth_register/utils/image_container.dart';
import 'package:birth_register/utils/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


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
        title: BoldText("Dashboard", 25, kblack),
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
                      BoldText("Hospitals Near You", 20.0, kblack),
                      SizedBox(
                        width: 60,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) {
                            return HospitalsPage();
                          }));
                        },
                        child: BoldText("More", 15.0, korange)
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
                      BoldText("Upcoming Vaccination", 20.0, kblack),
                      SizedBox(
                        width: 60,
                      ),
                      GestureDetector(
                        onTap: () {

                        },
                        child: BoldText("More", 15.0, korange)
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
                      child: BoldText("Other Features", 20.0, kblack)),
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



  Widget buildContainer() {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return OverViewPage();
        }));
      },
      child: Container(
        width: 320,
        height: 50,
        child: Container(
            width: 300,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(15.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 150,
                  height: 150,
                  child: ClipRRect(
                      borderRadius: new BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15)),
                      child: Image.asset(
                        "assets/images/hotel.jpg",
                        fit: BoxFit.fitHeight,
                      )),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    BoldText("Plaza", 20.5, kblack),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        BoldText("5 Stars", 15.0, korangelite),
                        Icon(
                          Icons.location_on,
                          color: kgreyDark,
                          size: 15.0,
                        ),
                        NormalText("Oran", kgreyDark, 15.0)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 50.0,
                          decoration: BoxDecoration(
                            color: korange,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: kwhite,
                                size: 15.0,
                              ),
                              BoldText("4.5", 15.0, kwhite)
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        NormalText("(1024 Reviews)", kgreyDark, 11.0),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    BoldText("Book& Save 30% !", 14.0, Colors.red),
                    SizedBox(height: 14),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(
                          width: 90,
                        ),
                        BoldText("More", 12.0, kblack),
                        Icon(
                          Icons.navigate_next,
                          size: 15.0,
                        ),
                      ],
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }

  Row imagesRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SquaredIcon(Icons.airplanemode_active, "Flights"),
        SquaredIcon(FontAwesomeIcons.hotel, "Hotels"),
        SquaredIcon(Icons.directions_car, "Cars"),
      ],
    );
  }
}
