import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:windows_single_instance/windows_single_instance.dart';
import 'package:window_manager/window_manager.dart';
import 'package:zero_chat/screens/login_screen.dart';

import 'screens/home_screen.dart';
import 'components/scroll_behavior.dart';
import 'helpers/constants.dart' as constants;

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await WindowsSingleInstance.ensureSingleInstance(args, "instance_checker",
      onSecondWindow: (args) {});
  await windowManager.ensureInitialized();
  if (Platform.isWindows) {
    WindowManager.instance.setMinimumSize(const Size(800, 600));
    WindowManager.instance.setTitle("Zero Chat");
  }
  runApp(const MyApp());
  windowManager.waitUntilReadyToShow().then((value) async {
    //await windowManager.setTitleBarStyle(TitleBarStyle.hidden);
    //await WindowManager.instance.center();
    //await WindowManager.instance.show();
    //await WindowManager.instance.setFullScreen(true);
    //await WindowManager.instance.setSkipTaskbar(false);
    //await windowManager.setAsFrameless();
  });
}

bool iSFullScreen = false;

bool _onKey(KeyEvent event) {
  final key = event.logicalKey.keyLabel;

  if (event is KeyDownEvent) {
    if (key == "F11") {
      iSFullScreen = !iSFullScreen;
      WindowManager.instance.setFullScreen(iSFullScreen);
    }
    //print("Key down: $key");
  } else if (event is KeyUpEvent) {
    //print("Key up: $key");
  } else if (event is KeyRepeatEvent) {
    //print("Key repeat: $key");
  }

  return false;
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    constants.themeManager.removeListener(themeListener);
    ServicesBinding.instance.keyboard.removeHandler(_onKey);
    super.dispose();
  }

  @override
  void initState() {
    ServicesBinding.instance.keyboard.addHandler(_onKey);
    constants.themeManager.addListener(themeListener);
    super.initState();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zero Chat',
      theme: ThemeData(
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.white,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: constants.colorPrimary,
          elevation: 1,
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: constants.themeManager.accentColor(),
          brightness: Brightness.light,
        ),
        textSelectionTheme: const TextSelectionThemeData(
            selectionColor: constants.textHighlightColor),
        //scaffoldBackgroundColor: constants.bgOutColor.withOpacity(0.5),
        //splashColor: Colors.transparent,
        //highlightColor: Colors.black.withOpacity(0.2),
        //splashFactory: InkRipple.splashFactory,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          backgroundColor: constants.blueGrey950.withOpacity(1),
          elevation: 1,
        ),
        splashColor: Colors.transparent,
        highlightColor: Colors.black.withOpacity(0.2),
        splashFactory: InkRipple.splashFactory,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: constants.themeManager.accentColor(),
          brightness: Brightness.dark,
        ),
        textSelectionTheme: const TextSelectionThemeData(
          selectionColor: constants.textHighlightColor,
          cursorColor: constants.cursorColor,
        ),
      ),
      themeMode: constants.themeManager.themeMode,
      builder: (context, child) {
        return ScrollConfiguration(
            behavior: GlowlessScrollBehavior(), child: child!);
      },
      home: 1 == 1 ? const LoginScreen() : const HomeScreen(),
    );
  }
}
