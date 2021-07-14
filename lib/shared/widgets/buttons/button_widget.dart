import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {

  final String label;
  final TextStyle textStyle;
  final Color background;
  final VoidCallback onTap;
  final double radius;

  const ButtonWidget({
    Key? key,
    required this.label,
    required this.textStyle,
    required this.background,
    required this.onTap,
    this.radius = 0
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return new TextButton(
      style: new ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          new RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius)
          )
        ),
        backgroundColor: MaterialStateProperty.all<Color>(background)
      ),
      onPressed: onTap,
      child: new Center(
        child: new Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: new Text(
            label,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
