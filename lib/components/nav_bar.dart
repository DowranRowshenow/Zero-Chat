import 'dart:io';

import 'package:flutter/material.dart';
import 'package:zero_chat/components/form_input_field.dart';

import 'nav_button.dart';
import '../helpers/size_config.dart';
import '../helpers/constants.dart' as constants;

class NavBar extends StatelessWidget {
  const NavBar({Key? key, required this.onTap}) : super(key: key);
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(),
    );
  }
}
