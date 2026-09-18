import 'package:exercicio01/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('mostra a lista de linguagens', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Dart'), findsOneWidget);
    expect(find.text('Kotlin'), findsOneWidget);
  });
}
