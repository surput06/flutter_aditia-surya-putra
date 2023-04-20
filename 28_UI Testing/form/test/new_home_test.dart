import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form/new_home.dart';

void main() {
  testWidgets('MyApp menampilkan welcome message', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Selamat Datang di MyApp'), findsOneWidget);
  });

  testWidgets('tekan button menampilkan dialog', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle();
    expect(find.text('Hello!'), findsOneWidget);
    expect(find.text('Terima kasih telah mengklik saya.'), findsOneWidget);
    await tester.tap(find.text('OK'));
    await tester.pumpAndSettle();
    expect(find.text('Hello!'), findsNothing);
  });
}
