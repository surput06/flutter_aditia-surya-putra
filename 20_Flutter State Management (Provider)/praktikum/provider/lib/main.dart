import 'package:asset/imglist_provider.dart';
import 'package:flutter/material.dart';
import 'halaman.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [ChangeNotifierProvider(create: (context) => ImgListProvider())], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grid View',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Alkatra'),
      home: const MyHomePage(title: 'Grid View'),
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
  @override
  Widget build(BuildContext context) {
    ImgListProvider imgListProvider = Provider.of<ImgListProvider>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              //membuat gridview builder supaya grid view dapat di buat dengan list
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      //MaxCrossAxisExtens berfungsi mengatur luas grid
                      maxCrossAxisExtent: 200),
                  //item count berfungsi untuk mengatur jumlah gridview,
                  // disini menggunakan imglist.length supaya sesuai dengan jumlah data pada list
                  itemCount: imgListProvider.imglist.length,
                  // Mengatur padding grid
                  padding: const EdgeInsets.all(10),
                  itemBuilder: (context, index) {
                    //Saya bungkus inkwell dengan card agar lebih rapih
                    return Card(
                      //elevation berfungsi untuk menambah bayangan pada card
                      elevation: 10,

                      color: Colors.lightBlue.shade900,
                      //inkwell merupakan sebuah widget dengan yang mempunyai property ontap
                      //dan dapat menyimpan gambar
                      child: InkWell(
                          //ontap => melakukan aksi saat disentuh
                          onTap: () {
                            //Showmodal bottom sheet merupakan widget yang dapat muncul dari
                            //bagian bawah aplikasi
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return InkWell(
                                    onTap: () {
                                      // Navigator pop berfungsi untuk kembali ke context sebelum nya
                                      Navigator.pop(context);
                                      //show dialog => pemicu munculnya widget dialog
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            //simpe dialog => widget yang muncul secara pop up pada aplikasi
                                            return SimpleDialog(
                                              title: const Text("Anda yakin pilih character ini"),
                                              children: [
                                                // Image asset menggunakan list dipanggil dengan indexnya
                                                Image.asset(imgListProvider.imglist[index]),
                                                //saya membungkus button dengan row sehingga mudah diatur
                                                //tata letaknya
                                                Row(
                                                  //memberikan space diantara button
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    //button tidak ketika dipilih akan melakukan pop context / kembali
                                                    ElevatedButton(
                                                        onPressed: () {
                                                          Navigator.pop(context);
                                                        },
                                                        child: const Text("Tidak")),

                                                    ElevatedButton(
                                                        onPressed: () {
                                                          //button ya => ketika dipilih makan akan pindah ke halaman dengan mengirim data
                                                          Navigator.of(context).push(
                                                            //routing ke halaman.dart
                                                            //Menggunakan PageRouteBuilder untuk dapat menggunakan animasi
                                                            PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) {
                                                              return Halaman(
                                                                kirimGambar: imgListProvider.imglist[index],
                                                              );
                                                              //gunakan transisi builder
                                                            }, transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                                              //tween untuk mengatur darimana animasi dimulai dan diakhiri
                                                              final tween = Tween(begin: const Offset(1, 0), end: Offset.zero);
                                                              //slideTransition  untuk menerapkan slide transision
                                                              return SlideTransition(
                                                                position: animation.drive(tween),
                                                                child: child,
                                                              );
                                                            }),
                                                          );
                                                        },
                                                        child: const Text("Iya")),
                                                  ],
                                                )
                                              ],
                                            );
                                          });
                                    },
                                    //imageasset menampilkan gambar pada bottomsheet
                                    child: Image.asset(imgListProvider.imglist[index]),
                                  );
                                });
                          },
                          //splashcolor berfungsi memberi warna ketika inkwell dipilih
                          splashColor: Colors.white10,
                          //child dari ink well yang dapat diatur
                          child: Ink.image(
                            fit: BoxFit.cover,
                            width: 100,
                            height: 100,
                            image: AssetImage(imgListProvider.imglist[index]),
                          )),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
