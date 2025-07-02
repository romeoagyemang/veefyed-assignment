import 'package:flutter_test/flutter_test.dart';

import 'package:veefyed/main.dart';

void main() {
  testWidgets('Scanner button is present and tappable',
      (WidgetTester tester) async {
    // Build app
    await tester.pumpWidget(ProductScannerApp());

    // Look for the scan button
    expect(find.text('Scan Product'), findsOneWidget);

    // Tap the scan button
    await tester.tap(find.text('Scan Product'));

    // Wait for animation
    await tester.pump();

    // Should now show loading indicator
    expect(find.text('Scanning Product...'), findsOneWidget);
  });
}
