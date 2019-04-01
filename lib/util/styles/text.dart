import 'package:flutter/material.dart';

const inputTextStyle = TextStyle(
    color: Color.fromRGBO(112, 112, 112, 1),
    fontWeight: FontWeight.w400,
    fontFamily: "Poppins",
    fontStyle: FontStyle.normal,
  
    fontSize: 14.0);
const inputOutlineBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
    borderSide: BorderSide());
inputDecoration(String hint, IconData icon) {
  return InputDecoration(
    hintText: hint,
    suffixIcon: Icon(icon),
  
    enabledBorder: OutlineInputBorder(
      // width: 0.0 produces a thin "hairline" border
      
      borderSide:
          const BorderSide(color: Color.fromRGBO(196, 201, 223, 1), width: 0.0),
    ),
    focusedBorder:
        OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
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
