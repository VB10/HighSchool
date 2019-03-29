import 'package:flutter/material.dart';
import 'package:highschool/component/box/sized.dart';
import 'package:highschool/util/styles/color.dart';
import 'package:highschool/util/styles/text.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String title = "Eğitim Yönetim Sistemi";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      this.title,
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontFamily: "PermanentMarker"),
                    ),
                  ),
                ),
              ),
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
                                "Sicil Kimlik veya TC. No Giriniz",
                                Icons.account_circle),
                            style: inputTextStyle,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            textAlign: TextAlign.left,
                            decoration: inputDecoration(
                                "Şifrenizi Giriniz", Icons.account_circle),
                            style: inputTextStyle,
                          ),
                          SizedBox(
                            height: 20,
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
          )),
    );
  }
}
