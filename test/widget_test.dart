// /test/sample_test.dart
import 'package:britany/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Prueba simple', () {
    expect(1 + 1, 2);
  });
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Construye el widget en el entorno del test.
    await tester.pumpWidget(MyApp());

    // Verifica que el contador comienza en 0.
    expect(find.text('0'), findsOneWidget);

    // Simula un clic en el botón de incrementar.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pumpAndSettle();

    // Verifica que el contador ha incrementado a 1.
    expect(find.text('1'), findsOneWidget);
  });
}
