import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:xlo_clone/app/common/custom_drawer/custom_header/custom_header_controller.dart';
import 'package:xlo_clone/app/app_module.dart';

void main() {
  initModule(AppModule());
  CustomHeaderController customheader;

  setUp(() {
    customheader = AppModule.to.get<CustomHeaderController>();
  });

  group('CustomHeaderController Test', () {
    test("First Test", () {
      expect(customheader, isInstanceOf<CustomHeaderController>());
    });

    test("Set Value", () {
      expect(customheader.value, equals(0));
      customheader.increment();
      expect(customheader.value, equals(1));
    });
  });
}
