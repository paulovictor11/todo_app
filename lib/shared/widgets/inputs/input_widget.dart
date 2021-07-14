import 'package:flutter/material.dart';
import 'package:todo_app/shared/themes/app_colors.dart';
import 'package:todo_app/shared/themes/app_text_style.dart';

class InputWidget extends StatelessWidget {

  final String label;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final IconData icon;
  final String? initialValue;
  final String? Function(String?)? validator;
  final bool isPass;

  const InputWidget({
    Key? key,
    required this.label,
    required this.keyboardType,
    required this.controller,
    required this.icon,
    this.initialValue,
    this.validator,
    this.isPass = false,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return new TextFormField(
      keyboardType: keyboardType,
      controller: controller,
      obscureText: isPass,
      validator: validator,
      initialValue: initialValue,
      decoration: new InputDecoration(
        isDense: true,
        hintText: label,
        hintStyle: AppTextStyles.input,
        prefixIcon: new Icon(
          icon, size: 26,
          color: AppColors.body,
        ),
        border: new OutlineInputBorder()
      ),
    );
  }
}
