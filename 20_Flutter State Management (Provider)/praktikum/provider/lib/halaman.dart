import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//Membuat class halaman dengan menggunakan parameter kirimGambar supaya dapat menerima data dari main
class Halaman extends StatelessWidget {
  //membuat Property kirimGambar
  final String kirimGambar;
  // Membuat parameter KirimGambar
  const Halaman({Key? key, required this.kirimGambar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //membuat widget scafold dengan appbar
    return Scaffold(
      appBar: AppBar(
        title: const Text('Karakter'),
      ),
      //menampilkan gambar menggunakan assetImage dengan data dari parameter yang dikirim dari  main,
      //sehingga gambar akan sesuai dengan yang dipilih di main
      body: Center(
          child: Card(
              elevation: 10,
              color: Colors.lightBlue.shade900,
              child: Image(image: AssetImage(kirimGambar)))),
    );
  }
}
