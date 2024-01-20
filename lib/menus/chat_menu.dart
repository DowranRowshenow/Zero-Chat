import 'package:flutter/material.dart';

import '../components/message_item.dart';
import '../components/message_sender.dart';
import '../helpers/constants.dart' as constants;

class ChatMenu extends StatefulWidget {
  const ChatMenu({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ChatMenuState createState() => _ChatMenuState();
}

class _ChatMenuState extends State<ChatMenu> {
  @override
  void dispose() {
    constants.themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    constants.themeManager.addListener(themeListener);
    super.initState();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: constants.themeManager.drawerColor(),
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: const [
                MessageItem(
                  message: "asdasdasd",
                  sender: "Dowran",
                  date: "15:14",
                ),
                MessageItem(
                  message: "asdasdasd",
                  sender: "Dowran",
                  date: "15:14",
                  isLeft: true,
                ),
                MessageItem(
                  message: "asdasdasd",
                  sender: "Dowran",
                  date: "15:14",
                ),
                MessageItem(
                  message: "asdasdasd",
                  sender: "Dowran",
                  date: "15:14",
                  isLeft: true,
                ),
                MessageItem(
                  message: "asdasdasd",
                  sender: "Dowran",
                  date: "15:14",
                ),
                MessageItem(
                  message: "asdasdasd",
                  sender: "Dowran",
                  date: "15:14",
                  isLeft: true,
                ),
                MessageItem(
                  message:
                      "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM",
                  sender: "Dowran",
                  date: "15:14",
                ),
                MessageItem(
                  message:
                      "iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii",
                  sender: "Dowran",
                  date: "15:14",
                  isLeft: true,
                ),
                MessageItem(
                  message: "asdasdasd",
                  sender: "Dowran",
                  date: "15:14",
                  isLeft: true,
                ),
                MessageItem(
                  message: "asdasdasd",
                  sender: "Dowran",
                  date: "15:14",
                  isLeft: true,
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              children: [
                Expanded(child: Container()),
                const MessageSender(),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
