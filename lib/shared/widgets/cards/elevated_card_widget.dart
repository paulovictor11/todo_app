import 'package:flutter/material.dart';
import 'package:todo_app/shared/themes/app_colors.dart';

class ElevatedCardWidget extends StatelessWidget {

  final Widget child;
  final double? height;
  final double? width;
  final double radius;

  const ElevatedCardWidget({
    Key? key,
    required this.child,
    this.height,
    this.width,
    this.radius = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: width, height: height,
      decoration: new BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [
          new BoxShadow(
            color: AppColors.shadow,
            offset: const Offset(1.1, 1.1),
            blurRadius: 8
          )
        ]
      ),
      child: child,
    );
  }
}
