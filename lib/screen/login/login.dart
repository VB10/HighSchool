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

//TODO FIX DESIGN FOR ATOMIC 
class _LoginPageState extends State<LoginPage> {
  String title = "School Education System";
  FocusNode myFocusNode;
  final _formKey = GlobalKey<FormState>();

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
    var body = Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Material(
              shadowColor: Colors.black,
              elevation: 10.0,
              child: TextFormField(
                focusNode: myFocusNode,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Please enter user number";
                  }
                },
                textAlign: TextAlign.left,
                maxLines: 1,
                decoration: inputDecoration(
                    "School Number", Icons.supervised_user_circle),
                style: inputTextStyle,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Material(
              shadowColor: Colors.black,
              elevation: 10.0,
              child: TextFormField(
                textAlign: TextAlign.left,
                maxLines: 1,
                obscureText: true,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Please enter password";
                  }
                },
                decoration: inputDecoration("School Password", Icons.lock_open),
                style: inputTextStyle,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomBox(
              child: RaisedButton(
                onPressed: () {
               

                  if (_formKey.currentState.validate()) {
                     Navigator.pushNamed(context, '/feeds');
                  } else {
                  }
                },
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
    var content = Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          fit: StackFit.loose,
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              height:
                  bottomInsight == 0 ? deviceHeight * 0.5 : deviceHeight * 0.2,
              child: headerStack,
              curve: Curves.linear,
            ),
            AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.linear,
                margin: EdgeInsets.only(
                  top: bottomInsight == 0
                      ? deviceHeight * 0.5 - 30
                      : deviceHeight * 0.2,
                ),
                child: body),
          ],
        ));

    return content;
  }
}
