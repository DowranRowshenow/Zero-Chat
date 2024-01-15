import 'package:flutter/material.dart';

class RippleContainer extends StatelessWidget {
  const RippleContainer({
    Key? key,
    required this.onTap,
    required this.child,
    this.margin = const EdgeInsets.all(0),
    this.padding = const EdgeInsets.all(0),
    this.width = 150,
    this.height = 217,
    this.text,
    this.color = Colors.blue,
    this.borderRadius = 0,
    this.border = const Border(),
    this.hoverColor = const Color.fromARGB(10, 0, 0, 0),
    this.highlightColor = const Color.fromARGB(40, 0, 0, 0),
  }) : super(key: key);

  final double height;
  final double width;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Color color;
  final Color hoverColor;
  final Color highlightColor;
  final VoidCallback onTap;
  final Widget child;
  final String? text;
  final double borderRadius;
  final Border border;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        children: [
          Material(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius),
            child: InkWell(
              onTap: onTap,
              hoverColor: hoverColor,
              highlightColor: highlightColor,
              borderRadius: BorderRadius.circular(borderRadius),
              child: Container(
                padding: padding,
                //width: width,
                //height: height,
                decoration: border == const Border()
                    ? BoxDecoration(
                        borderRadius: BorderRadius.circular(borderRadius),
                        color: Colors.transparent,
                      )
                    : BoxDecoration(
                        borderRadius: BorderRadius.circular(borderRadius),
                        color: Colors.transparent,
                        border: border,
                      ),
                alignment: Alignment.center,
                child: child,
              ),
            ),
          ),
          text != null
              ? const Padding(padding: EdgeInsets.all(5))
              : Container(),
          text != null
              ? Text(
                  text!,
                  style: const TextStyle(color: Colors.white, fontSize: 13),
                )
              : Container(),
        ],
      ),
    );
  }
}
