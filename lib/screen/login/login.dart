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
  FocusNode myFocusNode;

  double deviceWidth;
  double deviceHeight;
  double bottomInsight;

  double height = 20;
  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    bottomInsight = MediaQuery.of(context).viewInsets.bottom;
    var child2 = Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        children: <Widget>[
          Material(
            shadowColor: Colors.black,
            elevation: 10.0,
            child: TextField(
              focusNode: myFocusNode,
              onTap: () => {},
              textAlign: TextAlign.left,
              maxLines: 1,
              decoration: inputDecoration(
                  "School Number", Icons.supervised_user_circle),
              style: inputTextStyle,
            ),
          ),
          SizedBox(
            height: 10,
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
            height: 20,
          ),
          CustomBox(
            child: RaisedButton(
              onPressed: () =>
                  {print(MediaQuery.of(context).viewInsets.bottom)},
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
    var finalx = Scaffold(
        body: Stack(
      fit: StackFit.loose,
      children: <Widget>[
        Container(
          height: bottomInsight == 0 ? deviceHeight * 0.5 : deviceHeight * 0.2,
          child: headerStack,
        ),
        Container(
          margin: EdgeInsets.only(
            top: bottomInsight == 0
                ? deviceHeight * 0.5 - 30
                : deviceHeight * 0.2,
          ),
          height: deviceHeight * 0.5,
          child: child2,
        ),
      ],
    ));
    var finalx2 = Scaffold(
        body: Stack(
      fit: StackFit.loose,
      children: <Widget>[
        Container(
          height: deviceHeight * 0.2,
          child: headerStack,
        ),
        Container(
          margin: EdgeInsets.only(top: deviceHeight * 0.2),
          child: child2,
        ),
      ],
    ));

    return LayoutBuilder(
      builder: (context, constraints) {
        // keyboard open
        if (constraints.hasBoundedHeight) {
          return finalx;
        } else {
          return finalx2;
        }
      },
    );
  }
}
