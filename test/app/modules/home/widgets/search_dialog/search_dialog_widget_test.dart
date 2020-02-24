import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:xlo_clone/app/modules/home/widgets/search_dialog/search_dialog_widget.dart';

main() {
  testWidgets('SearchDialogWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(SearchDialogWidget()));
    final textFinder = find.text('SearchDialog');
    expect(textFinder, findsOneWidget);
  });
}
