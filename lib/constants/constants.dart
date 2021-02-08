import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

// file to keep constants suchs as fonts, colors, etc

// fonts

// -------------- colors -------------

// Main blue color
const kMainBlue = const Color(0xffb74093);

// Main color for text
const kTextColor = const Color(0xff17134B);

// white background color
const kWhiteBackground = const Color(0xffFFFFFF);

// grey secondary color
const kGreySecondaryColor = const Color(0xff6B737E);


// ----------- screen sizes for responsive design ----------

// both screen dimensions

Size kScreenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

// returns screen height

double kScreenHeight(BuildContext context) {
  return kScreenSize(context).height;
}

// returns screen width

double kScreenWidth(BuildContext context) {
  return kScreenSize(context).width;
}