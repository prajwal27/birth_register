import 'package:birth_register/utils/constants.dart';
import 'package:flutter/material.dart';

class GuardianInformationScreen extends StatefulWidget {
  @override
  _GuardianInformationScreenState createState() => _GuardianInformationScreenState();
}

class _GuardianInformationScreenState extends State<GuardianInformationScreen> {
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
                        padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "FATHER:",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
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
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            child: TextField(
                              readOnly: true,
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
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
                        padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "MOTHER:",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
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
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            child: TextField(
                              readOnly: true,
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

