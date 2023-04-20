import 'package:dio/dio.dart';

void main() async {
  Dio dio = Dio();

  try {
    // Mengirimkan data contact dengan POST request
    Response response = await dio.post(
      "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts",
      data: {
        "name": "Johan Doe",
        "phone": "555-1234",
        "email": "john.doe@example.com",
      },
    );

    // Menampilkan response dari server
    print(response.data);
  } catch (e) {
    print(e.toString());
  }
}
