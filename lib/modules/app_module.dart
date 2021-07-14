import 'package:flutter_modular/flutter_modular.dart';

import 'splash/splash_module.dart';
import 'home/home_module.dart';

class AppModule extends Module {

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    new ModuleRoute('/', module: new SplashModule()),
    new ModuleRoute('/home', module: new HomeModule()),
  ];
}