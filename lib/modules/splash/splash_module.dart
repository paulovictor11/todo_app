import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/splash_page.dart';

class SplashModule extends Module {

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    new ChildRoute('/', child: (_, args) => new Splashpage())
  ];
}