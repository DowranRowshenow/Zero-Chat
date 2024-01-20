import 'package:flutter/material.dart';
import 'package:zero_chat/components/profile_pic.dart';

class ContactsItem extends StatelessWidget {
  const ContactsItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.date,
    this.badge = "",
    this.isActive = false,
    this.isOnline = false,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String date;
  final String badge;
  final bool isActive;
  final bool isOnline;
  final double space = -6;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: isActive ? Colors.white.withOpacity(0.1) : Colors.transparent,
      contentPadding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
      onTap: () {},
      leading: ProfilePic(isOnline: isOnline),
      title: Transform.translate(
        offset: Offset(space, 0),
        child: Text(
          title,
          softWrap: false,
          textWidthBasis: TextWidthBasis.parent,
          overflow: TextOverflow.fade,
          style: TextStyle(color: Colors.white.withAlpha(220), fontSize: 15),
        ),
      ),
      subtitle: Transform.translate(
        offset: Offset(space, 0),
        child: Text(
          subtitle,
          softWrap: false,
          textWidthBasis: TextWidthBasis.parent,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: Colors.grey, fontSize: 13),
        ),
      ),
      trailing: Container(
        padding: const EdgeInsets.all(3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              date,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(6, 1, 6, 1),
              decoration: BoxDecoration(
                color: badge == "" ? Colors.transparent : Colors.white24,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                badge,
                style: TextStyle(
                  color: Colors.white.withAlpha(220),
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
