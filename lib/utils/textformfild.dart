import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mymoney/controller/conteiner_color_change_keypade.dart';

import 'color.dart';

textFromFieldDesign({String hint, iconWidget, iconWidget1}) {
  return TextFormField(
    cursorColor: appColor,
    decoration: InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(
        color: gray,
        fontSize: 15,
        fontFamily: "Nunito",
        fontWeight: FontWeight.w400,
      ),
      prefixIcon: iconWidget,
      suffixIcon: iconWidget1,
      /*Icon(
        Icons.email_outlined,
        color: gray,
      ),*/
      border: UnderlineInputBorder(
        borderSide: BorderSide(
          color: gray,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: gray,
        ),
      ),
    ),
  );
}

textFromFieldDesign1({String hint, iconWidget, iconWidget1}) {
  return TextFormField(
    cursorColor: appColor,
    decoration: InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(
        color: gray2,
        fontSize: 19,
        fontFamily: "Nunito",
        fontWeight: FontWeight.w400,
      ),
      prefixIcon: iconWidget,
      suffixIcon: iconWidget1,
      /*Icon(
        Icons.email_outlined,
        color: gray,
      ),*/
      border: UnderlineInputBorder(
        borderSide: BorderSide(
          color: gray,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: gray,
        ),
      ),
    ),
  );
}

textFromFieldDesign2({String hint, iconWidget, iconWidget1}) {
  return TextFormField(
    cursorColor: appColor,
    decoration: InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(
        color: gray2,
        fontSize: 19,
        fontFamily: "Nunito",
        fontWeight: FontWeight.w400,
      ),
      prefixIcon: iconWidget,
      suffixIcon: iconWidget1,
      /*Icon(
        Icons.email_outlined,
        color: gray,
      ),*/
      border: UnderlineInputBorder(
        borderSide: BorderSide(
          color: gray1,
          width: 1,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: gray1,
          width: 1,
        ),
      ),
    ),
  );
}

textForKeypad(String textNum, colorBackGround) {
  return Container(
    height: 62,
    width: 62,
    decoration: BoxDecoration(
      color: colorBackGround,
      shape: BoxShape.circle,
    ),
    child: Center(
      child: Text(
        textNum,
        style: TextStyle(
          color: appColor,
          fontSize: 36,
          fontFamily: "NunitoSemiBold",
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}
