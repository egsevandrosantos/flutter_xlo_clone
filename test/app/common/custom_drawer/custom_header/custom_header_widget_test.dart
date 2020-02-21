import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:xlo_clone/app/common/custom_drawer/custom_header/custom_header_widget.dart';

main() {
  testWidgets('CustomHeaderWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CustomHeaderWidget()));
    final textFinder = find.text('CustomHeader');
    expect(textFinder, findsOneWidget);
  });
}
