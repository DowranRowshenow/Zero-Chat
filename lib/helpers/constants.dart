import 'package:flutter/material.dart';

import 'themes.dart';
import 'navigate.dart';

// SETTINGS
ThemeManager themeManager = ThemeManager();
Navigate navigate = Navigate();
GlobalKey<ScaffoldState> scaffold = GlobalKey();

// ENUMS
enum MenuState { chat, dashboard, clients, payments, settings }

enum ScreenState { home, register }

// CONTROLLERS
final emailAddressController = TextEditingController();
final passwordController = TextEditingController();
final searchBarController = TextEditingController();

// INTEGERS AND DOUBLES
const double borderRadius = 7;
const double bgBorderRadius = 7;
const double inputBorderRadius = 3;
const double buttonBorderRadius = 3;
const double splashRadius = 18;
const double messageRadius = 15;

const double borderWidth = 0.4;

// COLORS
const bgOutColor = Color.fromARGB(255, 181, 187, 249);
const bgOutColorDark = Color.fromARGB(255, 36, 37, 41);

const bgColor = Color.fromARGB(255, 231, 234, 255);
const bgColorDark = Color.fromARGB(255, 36, 37, 41);
const drawerColorDark =
    Color.fromARGB(255, 25, 27, 29); //Color.fromARGB(255, 36, 37, 48);

const activeButtonColor = Color.fromARGB(255, 75, 59, 128);
const buttonColor = Color.fromARGB(63, 201, 207, 218);
const buttonColor2 = Color.fromARGB(255, 244, 75, 151);

const cursorColor = Colors.grey;
//const textHighlightColor = Color.fromARGB(150, 60, 60, 60);
const textHighlightColor = Color.fromARGB(210, 47, 42, 51);

// EXTENDED COLORS
const colorAccent = Color(0xFF4e82ab);
const colorPrimary = Color(0xFF2d5575);

const blueGrey800 = Color(0xFF37474F);
const blueGrey900 = Color(0xFF263238);
const blueGrey950 = Color(0xFF21272b);

const grey90 = Color(0xFF263228);
const grey900 = Color(0xFF212121);
const grey1000 = Color(0xFF1a1a1a);

const darkSurface = Color(0xFF121212);
const darkBackground = Color(0xFF656565);
const darkAdvBackground = Color(0xFF4e4d4d);
