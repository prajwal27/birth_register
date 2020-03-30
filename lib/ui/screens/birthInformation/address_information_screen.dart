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
                            address_line_1,
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
                                hintText: line_1,
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
                            address_line_2,
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
                                hintText: line_2,
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
                            address_line_3,
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
                                hintText: line_3,
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
                            district,
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
                                hintText: district,
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
                            province,
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
                                hintText: province,
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
                            country,
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
                                hintText: country,
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
                            pincode,
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
                                hintText: pincode,
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
                            phone,
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
                                hintText: phone,
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

