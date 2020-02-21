import 'package:xlo_clone/app/common/custom_drawer/icon_section/icon_section_controller.dart';
import 'package:xlo_clone/app/common/custom_drawer/custom_header/custom_header_controller.dart';
import 'package:xlo_clone/app/common/custom_drawer/custom_drawer_controller.dart';
import 'package:xlo_clone/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:xlo_clone/app/app_widget.dart';
import 'package:xlo_clone/app/modules/base/base_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => IconSectionController()),
        Bind((i) => CustomHeaderController()),
        Bind((i) => CustomDrawerController()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: BaseModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
