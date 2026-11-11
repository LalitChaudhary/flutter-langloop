import 'package:flutter_test/flutter_test.dart';
import 'package:langloop/main.dart';

void main() {
  testWidgets('demo profile opens LangLoop', (tester) async {
    await tester.pumpWidget(const LangLoopApp());
    await tester.tap(find.text('Open LangLoop'));
    await tester.pumpAndSettle();
    expect(find.text('Deck'), findsOneWidget);
    expect(find.textContaining('score'), findsWidgets);
  });
}
