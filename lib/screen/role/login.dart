import 'package:flutter/material.dart';
import 'package:highschool/screen/login/header.dart';
import 'package:highschool/screen/login/login.dart';
import 'package:highschool/util/device/index.dart' as helper;

class LoginRolePage extends StatefulWidget {
  @override
  _LoginRoleState createState() => _LoginRoleState();
}

class _LoginRoleState extends State<LoginRolePage> {
  double bottomInsight;
  double deviceHeight;

  @override
  Widget build(BuildContext context) {
    bottomInsight = helper.HelperDevice.deviceBottomInsight(context);
    deviceHeight = helper.HelperDevice.deviceHeight(context);

    var headerStack = LoginHeaderWidget(title: "Education System");
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            Container(
              height: deviceHeight * 0.5,
              child: headerStack,
            ),
            Container(
                margin: EdgeInsets.only(top: deviceHeight * 0.5 - 30),
                child: Container(
                  height: deviceHeight * 0.25,
                  color: Colors.transparent,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: Container(
                          color: Colors.red,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                )),
            // AnimatedContainer(
            //     duration: Duration(milliseconds: 500),
            //     curve: Curves.linear,
            //     margin: EdgeInsets.only(top: marginTopHelper(bottomInsight)),
            //     child: bodyWidget),
          ],
        ));
  }
}
