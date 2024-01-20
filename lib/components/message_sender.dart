import 'package:flutter/material.dart';
import 'package:zero_chat/components/form_input_field.dart';

import '../helpers/constants.dart' as constants;

class MessageSender extends StatelessWidget {
  const MessageSender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 420,
      padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
      constraints: const BoxConstraints(maxWidth: 420),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: constants.borderWidth,
        ),
        color: constants.bgColorDark,
        borderRadius: BorderRadius.circular(3),
      ),
      child: Row(
        children: const [
          Icon(Icons.mic, color: Colors.grey),
          Expanded(
            child: FormInputField(
              hint: "Type a message...",
              borderColor: Colors.transparent,
              color: Colors.transparent,
            ),
          ),
          Icon(Icons.add_box, color: Colors.grey),
          SizedBox(width: 5),
          Icon(Icons.send, color: Colors.grey),
          SizedBox(width: 2),
        ],
      ),
    );
  }
}
