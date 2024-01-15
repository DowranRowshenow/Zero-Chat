import 'package:flutter/material.dart';

import '../helpers/constants.dart' as constants;

class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          constants.navigate.getMenuTitle(),
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(child: Container()),
        IconButton(
          onPressed: () {
            constants.themeManager.toggleTheme();
            setState(() {});
          },
          splashRadius: constants.splashRadius,
          icon: Icon(
            constants.themeManager.isDark()
                ? Icons.light_mode
                : Icons.dark_mode,
          ),
        ),
      ],
    );
  }
}
