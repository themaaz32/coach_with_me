import 'package:coach_with_me/global/Constants.dart';
import 'package:flutter/material.dart';

class TextWidgets{

  smallTextStyle({color : greyTextColor,weight : FontWeight.w300, spacing : 1.0}) => TextStyle(
      color: color,
      fontSize: smallFontSize,
      fontFamily: robotoFontFamily,
      fontWeight: weight,
      letterSpacing: spacing
  );

  normalTextStyle({color : greyTextColor,weight : FontWeight.w300, spacing : 1.0}) => TextStyle(
    color: color,
    fontSize: normallFontSize,
    fontFamily: robotoFontFamily,
    fontWeight: weight,
    letterSpacing: spacing
  );

  mediumTextStyle({color : greyTextColor, weight : FontWeight.w300,spacing : 1.0}) => TextStyle(
    color: color,
    fontSize: mediumFontSize,
    fontFamily: robotoFontFamily,
    fontWeight: weight,
      letterSpacing: spacing
  );

  largeTextStyle({color : greyTextColor,weight : FontWeight.w300,spacing : 1.0}) => TextStyle(
    color: color,
    fontSize: largeFontSize,
    fontFamily: robotoFontFamily,
    fontWeight: weight,
      letterSpacing: spacing
  );

  veryLargeTextStyle({color : greyTextColor,weight : FontWeight.w300,spacing : 1.0}) => TextStyle(
    color: color,
    fontSize: veryLargeFontSize,
    fontFamily: robotoFontFamily,
    fontWeight: weight,
      letterSpacing: spacing
  );

}