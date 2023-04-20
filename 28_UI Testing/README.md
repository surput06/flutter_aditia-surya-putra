<h1 align:center> UI Testing </h1>

UI testing di Flutter tujuannya adalah untuk memastikan bahwa aplikasi berfungsi dengan baik dan memenuhi standar kualitas antarmuka pengguna. Ada beberapa metode yang dapat digunakan dalam pengujian UI di Flutter, seperti widget testing atau integration testing. Widget testing dilakukan dengan menguji widget secara terpisah, sedangkan integration testing dilakukan dengan menguji hubungan antara widget dengan dependencynya.

Ada beberapa framework yang dapat digunakan dalam pengujian UI di Flutter, seperti flutter_driver, integration_test, dan selenium. Dalam melakukan pengujian UI di Flutter, perlu diperhatikan beberapa hal, seperti menguji fitur-fitur yang paling penting terlebih dahulu, melakukan pengujian secara teratur untuk meminimalkan risiko kerusakan pada aplikasi, dan memastikan pengujian yang dilakukan konsisten.

## Contoh UI Testing menggunakan test bawaan flutter

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
