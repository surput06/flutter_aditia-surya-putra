<h1 align="center">Rest Api</h1>

REST API (Representational State Transfer Application Programming Interface) adalah salah satu cara untuk menghubungkan aplikasi mobile Flutter dengan server. Dengan menggunakan REST API, aplikasi dapat mengambil dan mengirim data dari atau ke server.
Dalam flutter cara menggunakan api ada dengan menggunakan dio atau http:
Ada beberapa metode umum dalam rest api yaitu get,put,post,delete.

## Cara Menggunakan Paket dio
- Pastikan paket dio sudah ditambahkan ke dependencies di file pubspec.yaml:
##
    dependencies:
      dio: ^4.0.0
- Import paket dio di file dart:
##
    import 'package:dio/dio.dart';
- Buat instance dari Dio() dan gunakan metode .get() atau .post() untuk melakukan request ke REST API. Contohnya:
 ##
   final dio = Dio();
    try {
     final response = await dio.get('https://jsonplaceholder.typicode.com/albums/1');
     print(response.data);
      } catch (e) {
        print(e);
      } 
 - Proses response dari REST API dengan mengakses properti statusCode untuk mengecek apakah request berhasil, dan data untuk mengambil data yang diberikan oleh REST API. Contohnya:
 ##
          final response = await dio.get('https://jsonplaceholder.typicode.com/albums/1');
      if (response.statusCode == 200) {
        // Request berhasil
        print(response.data);
      } else {
        // Request gagal
        throw Exception('Failed to load album');
      }
