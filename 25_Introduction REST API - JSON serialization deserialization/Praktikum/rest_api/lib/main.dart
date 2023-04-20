import 'package:flutter/material.dart';
// import http untuk ambil data dari api
import 'package:http/http.dart' as http;
//import flutter svg untuk menampilkan svg
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicebear',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Dicebear'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
// Url digunakan untuk menympan url yang di ambil dari dicebear
  String url = "";
  //membuat fungsi _ambilGambar untuk mengambil gambar dari api dan merubahnya menjadi svg

  void _ambilGambar() async {
    final response = await http.get(Uri.parse("https://api.dicebear.com/6.x/bottts/svg"));
    if (response.statusCode == 200) {
      setState(() {
        url = response.body;
      });
    } else {
      setState(() {
        url = "Data gambar tidak ada";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //memanggil svg
          children: <Widget>[
            if (url.isNotEmpty)
              SvgPicture.string(
                url,
                width: 200,
                height: 200,
              ),
          ],
        ),
      ),
      //pada floatingaction button jalankan fungsi ambilgambar
      floatingActionButton: FloatingActionButton(
        onPressed: _ambilGambar,
        tooltip: 'Fetch Api',
        child: const Icon(Icons.add),
      ),
    );
  }
}
