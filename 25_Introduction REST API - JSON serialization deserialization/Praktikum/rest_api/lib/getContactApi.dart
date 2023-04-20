import 'package:dio/dio.dart';

//Membuat class contact
class Contact {
  int? id;
  String? name;

  String? phone;

  Contact({this.id, this.name, this.phone});
//mengubah json ke bentuk map
  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      id: json['id'],
      name: json['name'],
      phone: json['phone'],
    );
  }
}

Dio dio = Dio();

/// Fungsi getContact untuk request data contact
Future<Contact> getContact() async {
  try {
    Response response = await dio.get('https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/2');
    return Contact.fromJson(response.data);
  } catch (e) {
    print(e);
    return Contact();
  }
}

//memanggil object di fungsi main
Future<void> main() async {
  Contact contact = await getContact();
  print("id   : ${contact.id}");
  print("name : ${contact.name}");
  print("phone: ${contact.phone}");
}
