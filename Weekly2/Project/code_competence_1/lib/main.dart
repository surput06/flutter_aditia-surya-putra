import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Code Competence',
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
    //controler yang digunakan di form
    TextEditingController namaControler = TextEditingController();
    TextEditingController emailControler = TextEditingController();
    TextEditingController pengalamanControler = TextEditingController();
    var key1 = GlobalKey();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF0063),
        iconTheme: const IconThemeData(color: Colors.white, size: 42),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
        elevation: 0,
        title: Text(widget.title),
      ),
      drawer: const ListTile(
        title: Text("Home"),
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
                height: 350.0,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  //menambakan gambar logo
                  const Image(
                      image: AssetImage(
                    'assets/logo.png',
                  )),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
                    //Deskripsi aplikasi
                    child: Text(
                      " Share your experience with \n another person. \n Scroll To fill the experience \n form .",
                      style: TextStyle(fontSize: 20, color: Colors.white),
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
                              Scrollable.ensureVisible(key1.currentContext!, duration: const Duration(seconds: 1));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF0c4295),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(36)),
                            ),
                            child: const Text(
                              "Form",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
              //membuat form
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 100, 20, 20),
                child: SizedBox(
                  height: 650,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          //membuat form dengan controller agar nanti dapat di digunakan pada soal c
                          TextField(
                            keyboardType: TextInputType.name,
                            controller: namaControler,
                            decoration: const InputDecoration(
                              label: Text("Username*"),
                            ),
                          ),
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            controller: emailControler,
                            decoration: const InputDecoration(
                              label: Text("Email*"),
                            ),
                          ),
                          const Text(""),
                          TextFormField(
                            controller: pengalamanControler,
                            minLines: 10,
                            maxLines: 15,
                            decoration: const InputDecoration(
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1.5, color: Colors.blue)),
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Colors.grey)),
                              label: Text("Tell Us your experience"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  key: key1,
                                  height: 47,
                                  width: 149,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      String nama = namaControler.text.trim();
                                      String email = emailControler.text.trim();
                                      String pengalaman = pengalamanControler.text.trim();
                                      if (nama.isNotEmpty && email.isNotEmpty && pengalaman.isNotEmpty) {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext) => AlertDialog(
                                                  title: const Text("data"),
                                                  content: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisSize: MainAxisSize.min,
                                                    children: [
                                                      const Text("Your Name :"),
                                                      Text(
                                                        nama,
                                                      ),
                                                      const Text("Your Email : "),
                                                      Text(
                                                        email,
                                                      ),
                                                      const Text("Your Experience :"),
                                                      Text(
                                                        pengalaman,
                                                      ),
                                                    ],
                                                  ),
                                                  actions: [
                                                    ElevatedButton(
                                                        onPressed: () {
                                                          Navigator.pop(context);
                                                        },
                                                        child: const Text("Close"))
                                                  ],
                                                ));
                                      } else {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext) => const AlertDialog(
                                                  content: Text("Isi dulu semua form yang tersedia"),
                                                ));
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFF0c4295),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(36)),
                                    ),
                                    child: const Text(
                                      "Submit",
                                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
