import 'package:flutter/material.dart';
import 'package:zero_chat/components/profile_pic.dart';
import 'package:zero_chat/components/ripple_container.dart';

import '../helpers/constants.dart' as constants;
import '../helpers/size_config.dart';

class MessageItem extends StatefulWidget {
  const MessageItem({
    Key? key,
    required this.message,
    required this.sender,
    required this.date,
    this.isLeft = false,
  }) : super(key: key);
  final String message;
  final String sender;
  final String date;
  final bool isLeft;

  @override
  State<MessageItem> createState() => _MessageItemState();
}

class _MessageItemState extends State<MessageItem> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    setState(() {
      // Update your UI based on the new window size
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: widget.isLeft
          ? Row(
              children: [
                Expanded(
                  child: Container(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RippleContainer(
                      onTap: (() {}),
                      alignment: Alignment.topLeft,
                      highlightColor: const Color.fromARGB(255, 255, 255, 255),
                      padding: const EdgeInsets.all(15),
                      constraints: BoxConstraints(
                        maxWidth: SizeConfig.appretiatedLength,
                      ),
                      borderRadius: constants.messageRadius,
                      decoration: BoxDecoration(
                        color: constants.buttonColor2.withAlpha(230),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(constants.messageRadius),
                          topRight: Radius.circular(constants.messageRadius),
                          bottomLeft: Radius.circular(constants.messageRadius),
                        ),
                      ),
                      child: Text(
                        widget.message,
                        style: TextStyle(
                          color: Colors.white.withAlpha(220),
                        ),
                      ),
                    ),
                    const Text(
                      "19:54 PM",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: const ProfilePic(isOnline: true),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Caesar",
                      style: TextStyle(
                        color: Color.fromARGB(255, 44, 107, 47),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RippleContainer(
                      onTap: (() {}),
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.all(15),
                      constraints: BoxConstraints(
                        maxWidth: SizeConfig.appretiatedLength,
                      ),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(constants.messageRadius),
                          topRight: Radius.circular(constants.messageRadius),
                          bottomRight: Radius.circular(constants.messageRadius),
                        ),
                        color: Colors.white12,
                      ),
                      child: Text(
                        widget.message,
                        style: TextStyle(
                          color: Colors.white.withAlpha(220),
                        ),
                      ),
                    ),
                    const Text(
                      "19:54 PM",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
    );
  }
}
