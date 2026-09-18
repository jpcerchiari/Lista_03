import 'package:exercicio04/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('adiciona e remove uma tarefa', (tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.enterText(find.byType(TextField), 'Estudar Flutter');
    await tester.tap(find.text('Adicionar'));
    await tester.pump();
    expect(find.text('Estudar Flutter'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.delete));
    await tester.pump();
    expect(find.text('Estudar Flutter'), findsNothing);
  });
}
