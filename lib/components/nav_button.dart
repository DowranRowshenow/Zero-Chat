import 'package:flutter/material.dart';

import '../helpers/constants.dart' as constants;
import 'on_hover.dart';

class NavButton extends StatefulWidget {
  const NavButton({
    Key? key,
    required this.title,
    required this.onTap,
    required this.icon,
    this.isActive = false,
  }) : super(key: key);
  final String title;
  final VoidCallback onTap;
  final IconData icon;
  final bool isActive;

  @override
  // ignore: library_private_types_in_public_api
  _NavButtonState createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  @override
  Widget build(BuildContext context) {
    return OnHover(
      builder: ((isHovered) {
        return GestureDetector(
          onTap: widget.onTap,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: widget.isActive
                      ? constants.themeManager.navButtonColor()
                      : constants.buttonColor,
                  borderRadius:
                      BorderRadius.circular(constants.buttonBorderRadius),
                ),
                child: Icon(
                  widget.icon,
                  color: widget.isActive
                      ? Colors.white.withOpacity(0.9)
                      : constants.themeManager.isDark()
                          ? Colors.white70
                          : Colors.black87,
                ),
              ),
              Text(widget.title),
            ],
          ),
        );
      }),
    );
  }
}
