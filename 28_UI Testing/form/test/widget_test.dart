import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form/contact.dart';
import 'package:form/main.dart';

void main() {
  testWidgets('Test Appbar and Body Widget', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    //test tittle contacts
    expect(find.text('Contacts'), findsOneWidget);

    //test tittle mempunyai leading icon
    expect(find.byIcon(Icons.smartphone), findsOneWidget);

    //test body mempunyai singlechildscrollview
    expect(find.byType(SingleChildScrollView), findsOneWidget);

    ////test body mempunyai card
    expect(find.byType(Card), findsOneWidget);

    //test body mempunyai Column widget.
    expect(find.byType(Column), findsOneWidget);

    //test body mempunyai Container widget dengan Icon.
    expect(find.descendant(of: find.byType(Container).at(0), matching: find.byIcon(Icons.phone_android)), findsOneWidget);

    //test body mempunyai Divider widget.
    expect(find.byType(Divider), findsOneWidget);
  });
}
