import 'package:flutter/material.dart';

const inputTextStyle = TextStyle(
    color: Color.fromRGBO(112, 112, 112, 1),
    fontWeight: FontWeight.w400,
    fontFamily: "Poppins",
    fontStyle: FontStyle.normal,
    fontSize: 14.0);
const inputOutlineBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
  borderSide: BorderSide(
      style: BorderStyle.solid, color: Color.fromRGBO(196, 201, 223, 0.15)),
);
inputDecoration(String hint, IconData icon) {
  return InputDecoration(
    hintText: hint,
    suffixIcon: Icon(icon),
    border: inputOutlineBorder,
    filled: true,
    fillColor: Colors.white,
    hasFloatingPlaceholder: true,
  );
}

const buttonTextStyle = TextStyle(
    color: const Color(0xffffffff),
    fontWeight: FontWeight.w400,
    fontFamily: "Poppins",
    fontStyle: FontStyle.normal,
    fontSize: 18.0);
