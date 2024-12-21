import 'package:firstapp/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Test de la page de connexion et redirection',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Bienvenue! Veuillez vous connecter.'), findsOneWidget);

    expect(find.byType(TextField), findsNWidgets(2));

    expect(find.text('Se connecter'), findsOneWidget);

    await tester.tap(find.text('Se connecter'));
    await tester.pumpAndSettle();

    expect(find.text('Page d\'accueil'), findsOneWidget);
  });
}
