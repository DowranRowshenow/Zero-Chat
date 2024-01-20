import 'package:flutter/material.dart';

import '../helpers/constants.dart' as constants;

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
    this.isOnline = false,
  }) : super(key: key);
  final bool isOnline;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Icon(
            Icons.person,
            size: 38,
            color: constants.bgColorDark,
          ),
        ),
        Transform.translate(
          offset: const Offset(-4, -2),
          child: Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: isOnline ? Colors.black : Colors.transparent,
              ),
              color: isOnline ? Colors.greenAccent : Colors.transparent,
            ),
            child: const SizedBox(width: 1),
          ),
        ),
      ],
    );
  }
}
