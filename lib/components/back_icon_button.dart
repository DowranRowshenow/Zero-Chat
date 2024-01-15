import 'package:flutter/material.dart';

import '../helpers/constants.dart' as constants;

class BackIconButton extends StatelessWidget {
  const BackIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
      splashRadius: constants.splashRadius,
    );
  }
}
