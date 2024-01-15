import 'package:flutter/material.dart';

import 'constants.dart' as constants;

class ThemeManager with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.dark;

  get themeMode => _themeMode;

  toggleTheme() {
    _themeMode = isDark() ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }

  bool isDark() {
    bool isDark = true;
    _themeMode == ThemeMode.dark ? isDark = true : isDark = false;
    return isDark;
  }

  Color alertColor() {
    Color color = Colors.transparent;
    _themeMode == ThemeMode.dark
        ? color = constants.bgColorDark
        : color = Colors.white;
    return color;
  }

  Color bgColor() {
    Color color = Colors.transparent;
    _themeMode == ThemeMode.dark
        ? color = constants.bgColorDark
        : color = constants.bgColor;
    return color;
  }

  Color bgOutColor() {
    Color color = Colors.transparent;
    _themeMode == ThemeMode.dark
        ? color = constants.bgOutColorDark
        : color = constants.bgOutColor;
    return color;
  }

  Color drawerColor() {
    Color color = Colors.transparent;
    _themeMode == ThemeMode.dark
        ? color = constants.drawerColorDark
        : color = Colors.white;
    return color;
  }

  Color dashboardColor() {
    Color color = Colors.transparent;
    _themeMode == ThemeMode.dark
        ? color = constants.bgColorDark
        : color = Colors.white;
    return color;
  }

  Color iconColor() {
    Color color = Colors.transparent;
    _themeMode == ThemeMode.dark
        ? color = Colors.white.withOpacity(0.5)
        : color = Colors.black.withOpacity(0.5);
    return color;
  }

  Color itemColor() {
    Color color = Colors.transparent;
    _themeMode == ThemeMode.dark
        ? color = Colors.white.withOpacity(0.1)
        : color = Colors.white.withOpacity(0.3);
    return color;
  }

  Color headerColor() {
    Color color = Colors.transparent;
    _themeMode == ThemeMode.dark
        ? color = Colors.black.withOpacity(0.2)
        : color = Colors.white.withOpacity(0.7);
    return color;
  }

  Color shadowColor() {
    Color color = Colors.transparent;
    _themeMode == ThemeMode.dark
        ? color = Colors.black.withOpacity(0.1)
        : color = Colors.black.withOpacity(0.5);
    return color;
  }

  Color navButtonColor() {
    Color color = Colors.transparent;
    _themeMode == ThemeMode.dark
        ? color = constants.activeButtonColor.withOpacity(0.5)
        : color = constants.activeButtonColor;
    return color;
  }

  Color accentColor() {
    Color color = Colors.transparent;
    _themeMode == ThemeMode.dark
        ? color = Colors.white.withOpacity(0.1)
        : color = Colors.white.withOpacity(1);
    return color;
  }

  Color textColor() {
    Color color = Colors.transparent;
    _themeMode == ThemeMode.dark
        ? color = Colors.white.withOpacity(0.8)
        : color = Colors.black.withOpacity(0.8);
    return color;
  }

  Color textHintColor() {
    Color color = Colors.transparent;
    _themeMode == ThemeMode.dark
        ? color = Colors.white.withOpacity(0.5)
        : color = Colors.black.withOpacity(0.5);
    return color;
  }

  Color text2Color() {
    Color color = Colors.transparent;
    _themeMode == ThemeMode.dark
        ? color = Colors.white.withOpacity(0.8)
        : color = constants.colorPrimary;
    return color;
  }

  Color productSubtitleColor() {
    Color color = Colors.transparent;
    _themeMode == ThemeMode.dark ? color = Colors.white : color = Colors.black;
    return color;
  }

  Color tileColor() {
    Color color = Colors.transparent;
    _themeMode == ThemeMode.dark
        ? color = Colors.white.withOpacity(0.1)
        : color = Colors.black.withOpacity(0.1);
    return color;
  }
}
