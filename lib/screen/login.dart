import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                      "Eğitim Yönetim Sistemi",
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
                  child: Stack(
                    children: <Widget>[
                      Container(
                        color: Colors.green,
                      ),
                      Container(
                        color: Colors.blue,
                        width: 300.0,
                      ),
                      Container(
                        color: Colors.pink,
                        height: 150.0,
                        width: 150.0,
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}
