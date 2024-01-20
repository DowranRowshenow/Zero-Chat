import 'package:flutter/material.dart';
import 'package:zero_chat/menus/chat_menu.dart';

import '../menus/dashboard_menu.dart';
import '../menus/clients_menu.dart';
import '../menus/payments_menu.dart';
import '../menus/settings_menu.dart';
import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import 'constants.dart' as constants;

class Navigate {
  constants.ScreenState currentScreen = constants.ScreenState.home;
  constants.MenuState currentMenu = constants.MenuState.chat;

  String getMenuTitle() {
    switch (currentMenu) {
      case constants.MenuState.chat:
        return "ROOM";
      case constants.MenuState.dashboard:
        return "DASHBOARD";
      case constants.MenuState.clients:
        return "CLIENTS";
      case constants.MenuState.payments:
        return "PAYMENTS";
      case constants.MenuState.settings:
        return "SETTINGS";
    }
  }

  Widget getCurrentMenu() {
    switch (currentMenu) {
      case constants.MenuState.chat:
        return const ChatMenu();
      case constants.MenuState.dashboard:
        return const DashboardMenu();
      case constants.MenuState.clients:
        return const ClientsMenu();
      case constants.MenuState.payments:
        return const PaymentsMenu();
      case constants.MenuState.settings:
        return const SettingsMenu();
    }
  }

  void changeMenu(constants.MenuState state) {
    currentMenu = state;
  }

  void changeScreen(BuildContext context, constants.ScreenState state) {
    switch (state) {
      case constants.ScreenState.home:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
        break;
      case constants.ScreenState.register:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
        break;
    }
  }
}
