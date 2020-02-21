import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:xlo_clone/app/common/custom_drawer/icon_section/icon_section_controller.dart';
import 'package:xlo_clone/app/app_module.dart';

void main() {
  initModule(AppModule());
  IconSectionController iconsection;

  setUp(() {
    iconsection = AppModule.to.get<IconSectionController>();
  });

  group('IconSectionController Test', () {
    test("First Test", () {
      expect(iconsection, isInstanceOf<IconSectionController>());
    });

    test("Set Value", () {
      // expect(iconsection.value, equals(0));
      // iconsection.increment();
      // expect(iconsection.value, equals(1));
    });
  });
}
