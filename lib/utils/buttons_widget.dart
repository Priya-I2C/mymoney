import 'package:flutter/material.dart';

import 'color.dart';

loginButton({String textLabel, onTapButton}) {
  return Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.blue.withOpacity(0.3),
          spreadRadius: 4,
          blurRadius: 10,
          offset: Offset(0, 1),
        )
      ],
      borderRadius: BorderRadius.all(
        Radius.circular(25),
      ),
    ),
    child: MaterialButton(
      height: 46,
      minWidth: 200,
      onPressed: onTapButton,
      color: appColor,
      // elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(
          25,
        ),
      ),
      child: Text(
        textLabel,
        style: TextStyle(
          color: white,
          fontSize: 19,
          fontFamily: "NunitoBold",
        ),
      ),
    ),
  );
}

changePasswordButton({String textLabel, onTapButton}) {
  return Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.blue.withOpacity(0.3),
          spreadRadius: 4,
          blurRadius: 10,
          offset: Offset(0, 1),
        )
      ],
      borderRadius: BorderRadius.all(
        Radius.circular(25),
      ),
    ),
    child: MaterialButton(
      height: 46,
      minWidth: 200,
      onPressed: onTapButton,
      color: appColor,
      // elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(
          25,
        ),
      ),
      child: Text(
        textLabel,
        style: TextStyle(
          color: white,
          fontSize: 19,
          fontFamily: "NunitoBold",
        ),
      ),
    ),
  );
}

resetButton({String textLabel, onTapButton}) {
  return Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.blue.withOpacity(0.3),
          spreadRadius: 4,
          blurRadius: 10,
          offset: Offset(0, 1),
        )
      ],
      borderRadius: BorderRadius.all(
        Radius.circular(25),
      ),
    ),
    child: MaterialButton(
      height: 49,
      minWidth: 201,
      onPressed: onTapButton,
      color: appColor,
      // elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(
          25,
        ),
      ),
      child: Text(
        textLabel,
        style: TextStyle(
          color: white,
          fontSize: 19,
          fontFamily: "NunitoSemiBold",
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}

signUpButton({String textLabel, onTapButton}) {
  return Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.blue.withOpacity(0.3),
          spreadRadius: 4,
          blurRadius: 10,
          offset: Offset(0, 1),
        )
      ],
      borderRadius: BorderRadius.all(
        Radius.circular(25),
      ),
    ),
    child: MaterialButton(
      height: 49,
      minWidth: 201,
      onPressed: onTapButton,
      color: appColor,
      // elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(
          25,
        ),
      ),
      child: Text(
        textLabel,
        style: TextStyle(
          color: white,
          fontSize: 19,
          fontFamily: "NunitoBold",
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}
