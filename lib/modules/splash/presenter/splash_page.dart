import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_app/shared/themes/app_colors.dart';
import 'package:todo_app/shared/themes/app_text_style.dart';

class Splashpage extends StatefulWidget {
  const Splashpage({ Key? key }) : super(key: key);

  @override
  _SplashpageState createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {

  @override
  void initState() {
    Future
      .delayed(new Duration(seconds: 2))
      .then((_) => Modular.to.pushNamed('/home'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: AppColors.primary,
      body: new Center(
        child: new Text(
          'ToDo',
          style: AppTextStyles.titleHomeBackground,
        ),
      ),
    );
  }
}