import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:xlo_clone/app/./modules/base/base_page.dart';

main() {
  testWidgets('BasePage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(BasePage(title: 'Base')));
    final titleFinder = find.text('Base');
    expect(titleFinder, findsOneWidget);
  });
}
