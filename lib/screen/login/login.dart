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
    //TODO WRAP STACK !! look https://medium.com/flutter-community/a-deep-dive-into-stack-in-flutter-3264619b3a77
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 3,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Image.asset(
                      LOGIN_highSchool,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    color: LOGIN_imageBackgroundColor,
                    child: Center(
                      child: Text(
                        this.title,
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontFamily: "PermanentMarker"),
                      ),
                    ),
                  )
                ],
              )),
          Expanded(
            flex: 4,
            child: Container(
                color: LOGIN_backgroundColor,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        textAlign: TextAlign.left,
                        decoration: inputDecoration(
                            "School Number", Icons.supervised_user_circle),
                        style: inputTextStyle,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        textAlign: TextAlign.left,
                        decoration: inputDecoration(
                            "School Password", Icons.lock_open),
                        style: inputTextStyle,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      CustomSizedBox(
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
                )),
          )
        ],
      ),
    );
  }
}
