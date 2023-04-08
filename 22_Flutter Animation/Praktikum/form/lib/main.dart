import 'package:flutter/material.dart';
import 'updateContact.dart';
import 'createContact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData.light(),
      home: const MyHomePage(title: 'Contacts'),
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
  //Membuat list kosong

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> contacts = [
      {'nama': 'aditia', 'noHp': '082124141'}
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6750A4),
        title: Text(widget.title),
        leading: const Icon(Icons.smartphone),
      ),
      //singglechildscroll view berfungsi agar halaman dapat di scroll
      body: SingleChildScrollView(
        //Sizedbox untuk membuat bungkus yang dapat diatur height nya
        child: SizedBox(
          height: 1200,
          //Card berfungsi membuat tampilan kotak seperti kartu
          child: Card(
            //column berfungsi sebagai wadah dari beberapa widget yang digunaka
            child: Column(
              children: [
                //Container ini berisi ikon
                Container(
                  padding: const EdgeInsets.only(top: 81),
                  child: const Icon(Icons.phone_android),
                ),
                //Container ini berisi Tittle
                Container(
                  //padding digunakan untuk membuat jarak kedalam dididal container
                  padding: const EdgeInsets.only(top: 16),
                  // center digunakan untuk membuat isi menjadi di tengah tengah container
                  child: const Center(
                      //text digunakan untuk membuat sebuah text
                      child: Text(
                    "List Contact",
                    //style textstyle berfungsi mengatur style dari text
                    style: TextStyle(fontSize: 24),
                  )),
                ),
                //container ini berisi deskripsi
                Container(
                  padding: const EdgeInsets.only(top: 16),
                  width: 350,
                  child: const Text(
                    "A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made. ",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                //divider digunakan untuk membuat sekat antara widget
                const Divider(
                  color: Colors.black87,
                ),
                //Container ini berisi form nama

                //Container ini berisi elevated button untuk submit
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                        //button style untuk mengatur style button
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(Color(0xFF6750A4)),
                        ),
                        onPressed: () {
                          //membuat navigator push
                          Navigator.of(context).push(
                            //membuat page route builder yang mengarah ke halaman create contact
                            PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) {
                              return CreateContact();
                              //lalu kita buat transision builder untuk menambah transisi saat perpindahan halaman
                            }, transitionsBuilder: (context, animation, secondaryAnimation, child) {
                              //tween untuk mengatur animasi dimulai dari mana dan berakhir dimana
                              final tween = Tween(begin: const Offset(1, 0), end: Offset.zero);
                              //slidetransition transisi yang berupa seperti slide
                              return SlideTransition(
                                position: animation.drive(tween),
                                child: child,
                              );
                            }),
                          );
                        },
                        child: const Text("Tambah Contact")),
                  ),
                ),

                contacts.isEmpty
                    ? const Padding(
                        padding: EdgeInsets.only(top: 80),
                        child: Text(
                          "Tidak Ada Contact Tersedia..",
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    : Expanded(
                        child: ListView.builder(
                          //neverscroll berfungsi agar listview tidak dapat discroll
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          //kondisi perulangan
                          itemCount: contacts.length,
                          //memanggil fungsilist
                          itemBuilder: (context, index) => ListTile(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 0.5, color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            leading: const CircleAvatar(
                              backgroundColor: Color(0xFFEADDFF),
                              child: Text(
                                "A",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF21005D),
                                ),
                              ),
                            ),
                            title: Text("${contacts[index]['nama']}"),
                            subtitle: Text("${contacts[index]['noHp']}"),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.edit_outlined),
                                  onPressed: () {
                                    //membuat navigator push
                                    Navigator.of(context).push(
                                      //membuat page route builder yang mengarah ke halaman update contact
                                      PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) {
                                        return UpdateContact();
                                      }, //lalu kita buat transision builder untuk menambah transisi saat perpindahan halaman
                                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                        //tween untuk mengatur animasi dimulai dari mana dan berakhir dimana
                                        final tween = Tween(begin: const Offset(1, 0), end: Offset.zero);
                                        //slidetransition transisi yang berupa seperti slide
                                        return SlideTransition(
                                          position: animation.drive(tween),
                                          child: child,
                                        );
                                      }),
                                    );
                                  },
                                ),
                                IconButton(
                                    //button ini berisi pop up form untuk mengedit data
                                    icon: Icon(Icons.delete_outline),
                                    onPressed: () {
                                      setState(() {
                                        contacts.removeAt(index);
                                      });
                                    })
                              ],
                            ),
                          ),
                        ),
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }

//Fungsi ini berisi list tile
}
