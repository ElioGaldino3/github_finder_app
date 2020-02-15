import 'package:github_finder_app/app/pages/repository/repository_controller.dart';
import 'package:github_finder_app/app/pages/home/home_controller.dart';
import 'package:github_finder_app/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:github_finder_app/app/app_widget.dart';
import 'package:github_finder_app/app/pages/home/home_page.dart';

import 'pages/repository/repository_page.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RepositoryController()),
        Bind((i) => HomeController()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/',
            child: (_, args) => HomePage(),
            transition: TransitionType.leftToRightWithFade),
        Router('/repository',
            child: (_, args) => RepositoryPage(),
            transition: TransitionType.rightToLeftWithFade),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
