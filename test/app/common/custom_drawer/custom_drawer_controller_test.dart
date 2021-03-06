import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:xlo_clone/app/common/custom_drawer/custom_drawer_controller.dart';
import 'package:xlo_clone/app/app_module.dart';

void main() {
  initModule(AppModule());
  CustomDrawerController customdrawer;

  setUp(() {
    customdrawer = AppModule.to.get<CustomDrawerController>();
  });

  group('CustomDrawerController Test', () {
    test("First Test", () {
      expect(customdrawer, isInstanceOf<CustomDrawerController>());
    });
  });
}
