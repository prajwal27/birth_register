import 'package:birth_register/utils/constants.dart';
import 'package:flutter/material.dart';

class PersonalInformationScreen extends StatefulWidget {
  @override
  _PersonalInformationScreenState createState() => _PersonalInformationScreenState();
}

class _PersonalInformationScreenState extends State<PersonalInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Card(
                elevation: 4.0,
                color: kwhite,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 2),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "NAME:",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                            decoration: new BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: new Border.all(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            child: new TextField(
                              readOnly: true,
                              textAlign: TextAlign.start,
                              decoration: new InputDecoration(
                                hintText: 'NAME',
                                border: InputBorder.none,

                              ),
                            ),
                          )
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 20, 10, 2),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "MIDDLE NAME:",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                            decoration: new BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: new Border.all(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            child: new TextField(
                              readOnly: true,
                              textAlign: TextAlign.start,
                              decoration: new InputDecoration(
                                hintText: 'MIDDLE NAME',
                                border: InputBorder.none,

                              ),
                            ),
                          )
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 20, 10, 2),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "LAST NAME:",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                            decoration: new BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: new Border.all(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            child: new TextField(
                              readOnly: true,
                              textAlign: TextAlign.start,
                              decoration: new InputDecoration(
                                hintText: 'LAST NAME',
                                border: InputBorder.none,

                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 4.0,
                color: kwhite,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 2),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "SEX:",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                            decoration: new BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: new Border.all(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            child: new TextField(
                              readOnly: true,
                              textAlign: TextAlign.start,
                              decoration: new InputDecoration(
                                hintText: 'FEMALE',
                                border: InputBorder.none,

                              ),
                            ),
                          )
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 4.0,
                color: kwhite,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 2),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Date Of Birth:",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                            decoration: new BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: new Border.all(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            child: new TextField(
                              readOnly: true,
                              textAlign: TextAlign.start,
                              decoration: new InputDecoration(
                                hintText: '27th April, 1999',
                                border: InputBorder.none,

                              ),
                            ),
                          )
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

