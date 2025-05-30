import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gocoach/main.dart';

void main() {
  testWidgets('MyApp widget test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.byType(MaterialApp), findsOneWidget);

    final MaterialApp materialApp = tester.widget(find.byType(MaterialApp));
    expect(materialApp.debugShowCheckedModeBanner, isFalse);

    expect(materialApp.title, 'Go Coach');

    expect(find.byType(Scaffold), findsOneWidget);
  });
}
