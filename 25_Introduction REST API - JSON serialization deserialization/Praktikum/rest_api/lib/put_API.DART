import 'dart:convert';
import 'package:dio/dio.dart';

void main() async {
  try {
    Dio dio = new Dio();
    dio.options.headers['body'] = 'application/json';
    //membuat map yang akan di akan dimasukan ke api menggunakan put
    Map<String, dynamic> requestBody = {
      "id": 1,
      "title": "foo",
      "body": "bar",
      "userId": 1
    };
    //Membuat fungsi put
    Response response = await dio.put(
      'https://jsonplaceholder.typicode.com/posts/1',
      data: json.encode(requestBody),
    );
    
    print(response.data);
  } catch (e) {
    print(e.toString());
  }
}