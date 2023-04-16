import 'package:flutter/material.dart';

import 'list_product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Code Competence2 ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'OpenSans',
      ),
      home: const MyHomePage(title: ''),
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
    var keyAbout = GlobalKey();
    var keyProduct = GlobalKey();
    return Scaffold(
      appBar: AppBar(
        leading: (IconButton(onPressed: () {}, icon: const Icon(Icons.search))),
        backgroundColor: const Color(0xFFFF0063),
        iconTheme: const IconThemeData(color: Colors.white, size: 42),
        elevation: 0,
        title: Text(widget.title),
      ),
      // membuat drawer dengan 3 tombol yaitu about us, contact, login
      // Mengguanakan enddrawer supaya drawer ada di sebelah kanan
      endDrawer: Container(
        color: const Color(0xFFFF0070),
        width: MediaQuery.of(context).size.width * 0.75,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 5),
              child: ElevatedButton(
                onPressed: () {
                  Scrollable.ensureVisible(keyAbout.currentContext!, duration: const Duration(seconds: 1));
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0c4295),
                ),
                child: const Text(
                  "Contact",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
              child: ElevatedButton(
                onPressed: () {
                  Scrollable.ensureVisible(keyAbout.currentContext!, duration: const Duration(seconds: 1));
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0c4295),
                ),
                child: const Text(
                  "About us",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
              child: ElevatedButton(
                onPressed: () {
                  Scrollable.ensureVisible(keyAbout.currentContext!, duration: const Duration(seconds: 1));
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0c4295),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              //Header
              //membuat container dengan custom shape
              Container(
                decoration: const BoxDecoration(
                    //membuat warna container bergradien
                    gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
                      Color(0xFFFF0063),
                      Color(0Xffcc2182),
                    ]),
                    //membuat border radius pada sisi kanan bawah
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(57))),
                height: 300.0,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(30, 20, 0, 30),
                    //Deskripsi aplikasi
                    child: Text(
                      "Abah Genshin Store",
                      style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  ),
                  //membuat button scroll jika di tekan maka akan scroll ke bagian form
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 44, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 47,
                          width: 149,
                          child: ElevatedButton(
                            onPressed: () {
                              Scrollable.ensureVisible(keyProduct.currentContext!, duration: const Duration(seconds: 1));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF0c4295),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(36)),
                            ),
                            child: const Text(
                              "Product",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              //membuat about us
              Column(
                key: keyAbout,
                children: const [
                  Padding(padding: EdgeInsets.all(20)),
                  Text(style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700), "About Us"),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(textAlign: TextAlign.center, "Selamat datang di toko merchandise Genshin Impact kami! Kami adalah toko resmi yang menyediakan berbagai macam merchandise berkualitas tinggi untuk para penggemar Genshin Impact di seluruh dunia."),
                  ),
                ],
              ),

              // Membuat List view product
              const Text(style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700), "Our Product"),

              const Padding(padding: EdgeInsets.all(10)),
              Container(
                key: keyProduct,
                //memanggil widget product
                child: const ListProduct(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
