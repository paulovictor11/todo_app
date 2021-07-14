import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/app_module.dart';
import 'modules/app_widget.dart';

void main() => runApp(new ModularApp(
  module: new AppModule(),
  child: new AppWidget()
));