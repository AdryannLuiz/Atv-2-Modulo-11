import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:myapp/main.dart';

void main() {
  testWidgets('Testa presença de texto "Meu Aplicativo"', (WidgetTester tester) async {
    // Build nosso app e aciona a primeira renderização.
    await tester.pumpWidget(const App());

    // Verifique se o texto 'Meu Aplicativo' está presente.
    expect(find.text('Meu Aplicativo'), findsOneWidget);
    expect(find.text('Outro Texto'), findsNothing);

    // Simule um toque no botão flutuante
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verifique se o texto ainda está presente.
    expect(find.text('Meu Aplicativo'), findsOneWidget);
  });
}