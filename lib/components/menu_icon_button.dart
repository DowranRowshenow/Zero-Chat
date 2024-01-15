import 'package:flutter/material.dart';

import '../helpers/constants.dart' as constants;

class MenuIconButton extends StatelessWidget {
  const MenuIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.menu),
      splashRadius: constants.splashRadius,
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
    );
  }
}
