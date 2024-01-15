import 'package:zero_chat/components/top_bar.dart';
import 'package:flutter/material.dart';

import '../helpers/size_config.dart';

class SettingsMenu extends StatelessWidget {
  const SettingsMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TopBar(),
        SizedBox(height: getProportionateScreenHeight(20)),
      ],
    );
  }
}
