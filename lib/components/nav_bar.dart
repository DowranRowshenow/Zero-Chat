import 'package:flutter/material.dart';
import 'package:zero_chat/components/contacts_item.dart';
import 'package:zero_chat/components/form_input_field.dart';

import '../helpers/constants.dart' as constants;

class NavBar extends StatelessWidget {
  const NavBar({Key? key, required this.onTap}) : super(key: key);
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: double.infinity,
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(width: constants.borderWidth, color: Colors.grey),
        ),
      ),
      child: Column(
        children: [
          Container(
            color: constants.bgColorDark,
            margin: const EdgeInsets.all(1),
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: const FormInputField(
              padding: 5,
              hint: "Search",
              icon: Icons.search,
            ),
          ),
          Expanded(
            child: ListView(
              controller: ScrollController(),
              children: const [
                ContactsItem(
                  title: "Dowran Rowshenow Rowshenowich",
                  subtitle: "Some text message with long content",
                  date: "10:49 AM",
                  badge: "2",
                ),
                ContactsItem(
                  title: "Zack Fox",
                  subtitle: "Thank You!",
                  date: "7:19 PM",
                  badge: "18",
                  isOnline: true,
                ),
                ContactsItem(
                  title: "Arthur Cooper",
                  subtitle: "Ok",
                  date: "1:21 AM",
                  badge: "123",
                  isActive: true,
                ),
                ContactsItem(
                  title: "Dowran Rowshenow Rowshenowich",
                  subtitle: "Some text message with long content",
                  date: "10:49 AM",
                  badge: "2",
                ),
                ContactsItem(
                  title: "Zack Fox",
                  subtitle: "Thank You!",
                  date: "7:19 PM",
                  badge: "18",
                  isOnline: true,
                ),
                ContactsItem(
                  title: "Arthur Cooper",
                  subtitle: "Ok",
                  date: "1:21 AM",
                  badge: "123",
                ),
                ContactsItem(
                  title: "Dowran Rowshenow Rowshenowich",
                  subtitle: "Some text message with long content",
                  date: "10:49 AM",
                  badge: "2",
                ),
                ContactsItem(
                  title: "Zack Fox",
                  subtitle: "Thank You!",
                  date: "7:19 PM",
                  badge: "18",
                  isOnline: true,
                ),
                ContactsItem(
                  title: "Arthur Cooper",
                  subtitle: "Ok",
                  date: "1:21 AM",
                  badge: "123",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
