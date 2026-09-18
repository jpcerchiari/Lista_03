import 'package:exercicio02/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('mostra título e autor', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Dom Casmurro'), findsOneWidget);
    expect(find.text('Machado de Assis'), findsOneWidget);
  });
}
