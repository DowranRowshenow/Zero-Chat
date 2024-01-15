import 'package:flutter/material.dart';

import '../helpers/constants.dart' as constants;

class FormInputField extends StatelessWidget {
  const FormInputField({
    Key? key,
    this.hint = "",
    this.textInputType = TextInputType.text,
  }) : super(key: key);
  final TextInputType textInputType;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(constants.inputBorderRadius),
        border: Border.all(
          color: Colors.white,
          width: constants.borderWidth,
        ),
        color: constants.themeManager.drawerColor(),
      ),
      child: Flexible(
        child: TextField(
          autocorrect: false,
          enableSuggestions: false,
          obscureText:
              textInputType == TextInputType.visiblePassword ? true : false,
          style: const TextStyle(
            color: Colors.white,
            decorationColor: Colors.black,
          ),
          keyboardType: textInputType,
          decoration: InputDecoration.collapsed(
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.white70),
          ),
        ),
      ),
    );
  }
}
