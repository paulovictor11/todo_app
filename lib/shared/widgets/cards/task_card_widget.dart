import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:todo_app/shared/themes/app_colors.dart';
import 'package:todo_app/shared/themes/app_text_style.dart';
import 'package:todo_app/shared/widgets/cards/elevated_card_widget.dart';

class TaskCardWidget extends StatelessWidget {

  final IconData icon;
  final String label;
  final String caption;
  final double percent;
  final VoidCallback onTap;

  const TaskCardWidget({
    Key? key,
    required this.icon,
    required this.label,
    required this.caption,
    required this.percent,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: onTap,
      child: new ElevatedCardWidget(
        width: double.maxFinite,
        child: new Stack(
          children: [
            _menuButton(),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Padding(
                  padding: const EdgeInsets.all(12),
                  child: _circleBorderAvatar(icon),
                ),
                new SizedBox(height: 16),
                new Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: new Text(caption, style: AppTextStyles.captionBoldBody),
                ),
                new Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: new Text(label, style: AppTextStyles.titleListTile),
                ),
                new Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: new LinearProgressIndicator(value: percent, color: AppColors.primary, minHeight: 15),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _menuButton() => new Positioned(
    right: 8, top: 12,
    child: new InkWell(
      onTap: () {},
      child: new Icon(
        FontAwesomeIcons.ellipsisV, size: 20,
        color: AppColors.grey.withOpacity(0.5)
      ),
    ),
  );

  Widget _circleBorderAvatar(IconData icon) => new Container(
    height: 40, width: 40,
    decoration: new BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      border: Border.all(width: 2, color: AppColors.stroke)
    ),
    child: new Icon(
      icon, size: 18,
      color: AppColors.primary,
    ),
  );
}
