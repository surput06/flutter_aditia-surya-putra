<h1 align="center">
20_Flutter State Management (Provider)
</h1>

## State Management 
State management digunakan untuk mengelola data dan memastikan bahwa tampilan aplikasi selalu konsisten dengan data yang tersimpan di dalamnya. Provider merupakan salah satu package yang populer digunakan untuk mengatasi masalah state management di Flutter.

## Global state 
Merupakan state yang dapat diakses olelh widget secara global 

## Provider
Provider adalah sebuah package atau library di Flutter yang membantu pengembang untuk mengelola state aplikasi dengan mudah. Provider menyediakan sebuah solusi untuk masalah state management yang umum dihadapi oleh para pengembang Flutter. Dengan menggunakan Provider, pengembang dapat membagikan state di seluruh widget tree dan membuat aplikasi Flutter yang lebih mudah di maintain.

## Penggunaan Provider

### Instal provider 
Daftar kan di pubspec yaml 
#
      flutter pub add provider
      
### Membuat provider 
Buat file contact dart dan definisi kan state dalam bentuk class
      
      import 'package:flutter/material.dart';
      class Contact with ChangeNotifier {
        List<Map<String, String>> _contacts = [];
        List<Map<String, String>> get contacts => _contacts;
        void add(Map<String, String> contact) {
        _contacts.add(contact);
        notifyListeners();
        }
      }
 
 ### Mendaftarkan Provider
 - Import pada main.dart
 - Daftarkan para runApp menggunakan multi provider 
          
        import 'package: flutter/material.dart'; import 'package:provider/provider.dart';
        import 'package: phonebookapp/stores/contact.dart' as contact_store;
        void main() {
        }
        runApp(
        MultiProvider( providers: [
        ],
        ChangeNotifierProvider(create: () => contact_store.Contact())
        child: MyWidget(),
        
### Menggunakan Provider 
Simpan pada sebuah variabel dan aksek menggunakan getter 
 


      // build
      final contactProvider = Provider.of<contact_store. Contact>(context);
      // return
      ListView.builder(
      itemCount: contactProvider.contacts.length, itemBuilder: (context, index) {
      },
      return ListTile(
      );
      title: Text(contactProvider.contacts [index]['name'] ?? ''), subtitle: Text (contactProvider.contacts[index]['phone'] ?? ''),
      );
