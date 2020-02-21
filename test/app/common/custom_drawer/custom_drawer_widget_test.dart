import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:xlo_clone/app/common/custom_drawer/custom_drawer_widget.dart';

main() {
  testWidgets('CustomDrawerWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CustomDrawerWidget()));
    final textFinder = find.text('CustomDrawer');
    expect(textFinder, findsOneWidget);
  });
}
