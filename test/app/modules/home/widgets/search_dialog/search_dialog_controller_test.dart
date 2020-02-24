import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:xlo_clone/app/modules/home/widgets/search_dialog/search_dialog_controller.dart';
import 'package:xlo_clone/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  SearchDialogController searchdialog;

  setUp(() {
    searchdialog = HomeModule.to.get<SearchDialogController>();
  });

  group('SearchDialogController Test', () {
    test("First Test", () {
      expect(searchdialog, isInstanceOf<SearchDialogController>());
    });

    test("Set Value", () {
      expect(searchdialog.value, equals(0));
      searchdialog.increment();
      expect(searchdialog.value, equals(1));
    });
  });
}
