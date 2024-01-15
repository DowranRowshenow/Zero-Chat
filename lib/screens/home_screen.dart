import 'package:flutter/material.dart';

import '../helpers/size_config.dart';
import '../components/nav_bar.dart';
import '../helpers/constants.dart' as constants;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void dispose() {
    constants.themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
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
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: constants.themeManager.bgOutColor(),
      body: Row(
        children: [
          NavBar(onTap: () {
            setState(() {});
          }),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenHeight(30)),
              margin: EdgeInsets.fromLTRB(
                0,
                getProportionateScreenHeight(15),
                getProportionateScreenHeight(15),
                getProportionateScreenHeight(15),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(constants.bgBorderRadius),
                color: constants.themeManager.bgColor(),
                boxShadow: [
                  BoxShadow(
                    color: constants.themeManager.shadowColor(),
                    spreadRadius: 0.1,
                    blurRadius: 1,
                  ),
                ],
              ),
              child: constants.navigate.getCurrentMenu(),
            ),
          ),
        ],
      ),
    );
  }
}
