import 'package:exercicio03/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('mostra nome e nota', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Ana'), findsOneWidget);
    expect(find.text('Nota: 8.5'), findsOneWidget);
  });
}
