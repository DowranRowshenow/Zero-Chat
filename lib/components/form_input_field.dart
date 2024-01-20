import 'package:flutter/material.dart';

import '../helpers/constants.dart' as constants;

class FormInputField extends StatelessWidget {
  const FormInputField({
    Key? key,
    this.hint = "",
    this.textInputType = TextInputType.text,
    this.icon = Icons.abc,
    this.padding = 10,
    this.borderColor = Colors.grey,
    this.color = constants.drawerColorDark,
  }) : super(key: key);
  final TextInputType textInputType;
  final IconData icon;
  final String hint;
  final double padding;
  final Color borderColor;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(constants.inputBorderRadius),
        border: Border.all(
          color: borderColor,
          width: constants.borderWidth,
        ),
        color: color,
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(0, 2, 5, 0),
            child: icon == Icons.abc
                ? Container()
                : Icon(
                    icon,
                    size: 20,
                    color: Colors.grey,
                  ),
          ),
          Flexible(
            child: TextField(
              autocorrect: false,
              enableSuggestions: false,
              obscureText:
                  textInputType == TextInputType.visiblePassword ? true : false,
              style: TextStyle(
                color: Colors.white.withAlpha(220),
                decorationColor: Colors.black,
              ),
              keyboardType: textInputType,
              decoration: InputDecoration.collapsed(
                hintText: hint,
                hintStyle: const TextStyle(color: Colors.white70),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
