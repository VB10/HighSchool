import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:highschool/component/box/sized.dart';
import 'package:highschool/util/const/images.dart';
import 'package:highschool/util/styles/color.dart';
import 'package:highschool/util/styles/text.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String title = "School Education System";

  @override
  Widget build(BuildContext context) {
    var child2 = Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        children: <Widget>[
          Material(
            shadowColor: Colors.black,
            elevation: 10.0,
            child: TextField(
              textAlign: TextAlign.left,
              maxLines: 1,
              decoration: inputDecoration(
                  "School Number", Icons.supervised_user_circle),
              style: inputTextStyle,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Material(
            shadowColor: Colors.black,
            elevation: 10.0,
            child: TextField(
              textAlign: TextAlign.left,
              maxLines: 1,
              decoration: inputDecoration("School Password", Icons.lock_open),
              style: inputTextStyle,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          CustomBox(
            child: RaisedButton(
              onPressed: () => {},
              color: LOGIN_submitButtonColor,
              child: Container(
                child: Text(
                  "Giriş Yap",
                  textAlign: TextAlign.center,
                  style: buttonTextStyle,
                ),
              ),
            ),
            height: 50,
          )
        ],
      ),
    );
    var headerStack = Stack(
      children: <Widget>[
        Positioned.fill(
          child: Image.asset(
            LOGIN_highSchool,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          color: LOGIN_imageBackgroundColor,
          alignment: Alignment.center,
          child: Text(
            this.title,
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: "PermanentMarker"),
          ),
        )
      ],
    );
    return Scaffold(
        body: Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: headerStack,
        ),
        Expanded(
          flex: 1,
          child: child2,
        )
      ],
    ));
  }
}
