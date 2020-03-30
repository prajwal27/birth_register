import 'package:birth_register/utils/constants.dart';
import 'package:flutter/material.dart';

class AddressInformationScreen extends StatefulWidget {
  @override
  _AddressInformationScreenState createState() => _AddressInformationScreenState();
}

class _AddressInformationScreenState extends State<AddressInformationScreen> {
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
                            "ADDRESS LINE 1:",
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
                                hintText: 'LINE 1',
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
                            "ADDRESS LINE 2:",
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
                                hintText: 'LINE 2',
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
                            "ADDRESS LINE 3:",
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
                                hintText: 'LINE 3',
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
                            "DISTRICT:",
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
                                hintText: 'DISTRICT',
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
                            "PROVINCE",
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
                                hintText: 'PROVINCE',
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
                            "COUNTRY:",
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
                                hintText: 'COUNTRY',
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
                            "PINCODE:",
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
                                hintText: '560098',
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
                            "PHONE:",
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
                                hintText: '9632****17',
                                border: InputBorder.none,

                              ),
                            ),
                          )
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

