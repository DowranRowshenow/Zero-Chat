import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

bool isSmallScreen() {
  return SizeConfig.screenWidth < 600;
}

bool isMediumScreen() {
  return SizeConfig.screenWidth >= 600 && SizeConfig.screenWidth < 1000;
}

bool isLargeScreen() {
  return SizeConfig.screenWidth >= 1000 && SizeConfig.screenWidth <= 1920;
}

bool isUltraLargeScreen() {
  return SizeConfig.screenWidth > 1920;
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 900.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  return (inputWidth / 1440.0) * screenWidth;
}
