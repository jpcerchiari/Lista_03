import 'package:exercicio05/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('cadastra produto e troca o estado vazio', (tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Nenhum produto cadastrado.'), findsOneWidget);

    final campos = find.byType(TextField);
    await tester.enterText(campos.at(0), 'Teclado');
    await tester.enterText(campos.at(1), '120');
    await tester.enterText(campos.at(2), '5');
    await tester.tap(find.text('Cadastrar'));
    await tester.pump();

    expect(find.text('Teclado'), findsOneWidget);
    expect(find.text('R\$ 120.00 • Quantidade: 5'), findsOneWidget);
    expect(find.text('Nenhum produto cadastrado.'), findsNothing);
  });
}
