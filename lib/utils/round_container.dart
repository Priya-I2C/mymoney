import 'package:flutter/material.dart';
import 'package:mymoney/utils/color.dart';

roundContainer({String textNum, Color colorBox, Color colorBorder,Color textColor}) {
  return Container(
    height: 60,
    width: 60,
    decoration: BoxDecoration(
      color: colorBox,
      shape: BoxShape.circle,
      border: Border.all(
        color: colorBorder == null ? transPrent : colorBorder,
        width: 2,
      ),
    ),
    child: Center(
      child: Text(
        textNum == null ? "" : textNum,
        style: TextStyle(
          color: textColor==null?black:textColor,
          fontFamily: "NunitoBold",
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  );
}
