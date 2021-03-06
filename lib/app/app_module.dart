import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:spirit_coffe/app/core/auth/auth_store.dart';
import 'package:spirit_coffe/app/modules/login/login_module.dart';
import 'core/utils/constants.dart';
import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => AuthStore()),
    Bind((i) =>
        Dio(BaseOptions(baseUrl: URL_BASE, connectTimeout: 30000, headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        }))),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: LoginModule()),
    ModuleRoute('/home', module: HomeModule()),
  ];
}
