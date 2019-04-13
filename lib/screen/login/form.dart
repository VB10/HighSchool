import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:highschool/component/box/sized.dart';
import 'package:highschool/model/user.dart';
import 'package:highschool/util/const/service.dart';
import 'package:highschool/util/styles/color.dart';
import 'package:highschool/util/styles/text.dart';
import 'package:http/http.dart' as http;

class LoginFormWidget extends StatefulWidget {
  @override
  _LoginFormWidgetState createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final formKey = GlobalKey<FormState>();
  FocusNode myFocusNode;
  TextEditingController _usernameTEC = new TextEditingController();
  TextEditingController _passwordTEC = new TextEditingController();

  String testVal;
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  void clear() {
    this._usernameTEC.clear();
    this._passwordTEC.clear();
  }

  Future getUserControl() async {
    User user = new User("veli", "12345");
    String json = jsonEncode(user);
    final response = await http.post(BASE_URL + "api/login",
        body: json, headers: {"Content-Type": "application/json"});
    if (response.statusCode == ResponseStatus.StatusOK.value) {
      print("oke");
    } else if (response.statusCode == ResponseStatus.StatusNotFound.value) {
      print("err");
    } else {
      print("it's have any error ${response.statusCode}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Form(
        key: formKey,
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
                controller: this._usernameTEC,
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
                controller: _passwordTEC,
                maxLines: 1,
                obscureText: true,
                onSaved: (value) {},
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
                  if (formKey.currentState.validate()) {
                    getUserControl();
                    // Navigator.pushNamed(context, '/feeds');
                  } else {}
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
  }
}
