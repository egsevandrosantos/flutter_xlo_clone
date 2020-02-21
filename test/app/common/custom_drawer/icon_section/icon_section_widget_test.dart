import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:xlo_clone/app/common/custom_drawer/icon_section/icon_section_widget.dart';

main() {
  testWidgets('IconSectionWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(IconSectionWidget()));
    final textFinder = find.text('IconSection');
    expect(textFinder, findsOneWidget);
  });
}
