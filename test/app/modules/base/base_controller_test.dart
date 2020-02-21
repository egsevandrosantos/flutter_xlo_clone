import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:xlo_clone/app/./modules/base/base_controller.dart';
import 'package:xlo_clone/app/./modules/base/base_module.dart';

void main() {
  initModule(BaseModule());
  BaseController base;

  setUp(() {
    base = BaseModule.to.get<BaseController>();
  });

  group('BaseController Test', () {
    test("First Test", () {
      expect(base, isInstanceOf<BaseController>());
    });

    test("Set Value", () {
      expect(base.value, equals(0));
      base.increment();
      expect(base.value, equals(1));
    });
  });
}
