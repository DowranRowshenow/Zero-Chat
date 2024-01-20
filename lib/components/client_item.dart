import 'package:flutter/material.dart';

import '../helpers/constants.dart' as constants;

class ClientItem extends StatefulWidget {
  const ClientItem({Key? key}) : super(key: key);

  @override
  State<ClientItem> createState() => _ClientItemState();
}

class _ClientItemState extends State<ClientItem> {
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
      height: 60,
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(constants.borderRadius),
        color: constants.themeManager.itemColor(),
        border: Border.all(
          color: constants.themeManager.textColor().withOpacity(0.3),
          width: 0.5,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: const [
                    Text("#1"),
                  ],
                ),
                Row(
                  children: const [
                    Text("Röwşenow"),
                  ],
                ),
                Row(
                  children: const [
                    Text("Döwran"),
                  ],
                ),
                Row(
                  children: const [
                    Text("15.11.2023"),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.verified,
                      color: Colors.greenAccent.withOpacity(0.6),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.more_vert),
                    SizedBox(width: 20),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
