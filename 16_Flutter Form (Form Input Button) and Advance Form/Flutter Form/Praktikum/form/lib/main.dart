import 'package:flutter/material.dart';
import 'package:form/contact.dart';

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
  List<Contact> contacts = List.empty(growable: true);
  //membuat controll untuk form add dan update
  TextEditingController namaController = TextEditingController();
  TextEditingController noHpController = TextEditingController();
  TextEditingController namaControllerUpdate = TextEditingController();
  TextEditingController noHpControllerUpdate = TextEditingController();
  //membuat selected index
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6750A4),
        title: Text(widget.title),
        leading: Icon(Icons.smartphone),
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
                  padding: EdgeInsets.only(top: 81),
                  child: Icon(Icons.phone_android),
                ),
                //Container ini berisi Tittle
                Container(
                  //padding digunakan untuk membuat jarak kedalam dididal container
                  padding: EdgeInsets.only(top: 16),
                  // center digunakan untuk membuat isi menjadi di tengah tengah container
                  child: const Center(
                      //text digunakan untuk membuat sebuah text
                      child: Text(
                    "Create New Conctact",
                    //style textstyle berfungsi mengatur style dari text
                    style: TextStyle(fontSize: 24),
                  )),
                ),
                //container ini berisi deskripsi
                Container(
                  padding: EdgeInsets.only(top: 16),
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
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 350,
                  color: Colors.black12,
                  //Text Field Berfungsi sebagai form input nama
                  child: TextField(
                    //controler digunakan untuk mengatur data
                    controller: namaController,
                    decoration: const InputDecoration(
                      hintText: ('Insert Your Name'),
                      labelText: ('Name'),
                    ),
                  ),
                ),
                //Container ini berisi form no hp
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 350,
                  color: Colors.black12,
                  //Text Field Berfungsi sebagai form input no hp
                  child: TextField(
                    controller: noHpController,
                    decoration: const InputDecoration(
                      hintText: ('+62..'),
                      labelText: ('Nomor HP'),
                    ),
                  ),
                ),
                //Container ini berisi elevated button untuk submit
                Container(
                  padding: EdgeInsets.all(20),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                        //button style untuk mengatur style button
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Color(0xFF6750A4)),
                        ),
                        onPressed: () {
                          //Berfungsi untuk menyimpan nama ke dalam list
                          String nama = namaController.text.trim();
                          String noHp = noHpController.text.trim();
                          if (nama.isNotEmpty && noHp.isNotEmpty) {
                            setState(() {
                              namaController.text = '';
                              noHpController.text = '';
                              contacts.add(Contact(nama: nama, noHp: noHp));
                            });
                          }
                        },
                        child: const Text("Submit")),
                  ),
                ),
                //Container ini berisi list contact
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: const Text(
                    "List Contact",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                //kondisi jika list kosong maka akan tampil text dan jika isi akan return listview
                contacts.isEmpty
                    ? const Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: Text(
                          "Tidak Ada Contact Tersedia..",
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    : Expanded(
                        child: ListView.builder(
                          //neverscroll berfungsi agar listview tidak dapat discroll
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          //kondisi perulangan
                          itemCount: contacts.length,
                          //memanggil fungsilist
                          itemBuilder: (context, index) => fungsiList(index),
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
  Widget fungsiList(int index) {
    return Card(
      child: ListTile(
        //leading merupakan icon disebelah kiri tittle
        leading: CircleAvatar(
          backgroundColor: Color(0xFFEADDFF),
          child: Text(
            //membuat text dengan huruf pertama kontak di kapitalisasi
            contacts[index].nama[0].toUpperCase(),
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF21005D)),
          ),
        ),
        //judul listtile
        title: Text(
          contacts[index].nama,
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
        ),
        //subtittle digunakan untuk menampilkan no hp
        subtitle: Text("+62${contacts[index].noHp}"),
        trailing: Row(mainAxisSize: MainAxisSize.min, children: [
          IconButton(
            //button ini berisi pop up form untuk mengedit data
            icon: Icon(Icons.edit_outlined),
            onPressed: () {
              namaControllerUpdate.text = contacts[index].nama;
              noHpControllerUpdate.text = contacts[index].noHp;
              setState(() {
                selectedIndex = index;
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        scrollable: true,
                        title: Text('Update Data'),
                        content: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                TextFormField(
                                  controller: namaControllerUpdate,
                                  decoration: const InputDecoration(
                                    labelText: 'Name',
                                  ),
                                ),
                                TextFormField(
                                  controller: noHpControllerUpdate,
                                  decoration: const InputDecoration(
                                    labelText: 'No Hp',
                                  ),
                                ),
                                ElevatedButton(
                                    style: const ButtonStyle(
                                      backgroundColor:
                                          MaterialStatePropertyAll<Color>(
                                              Color(0xFF6750A4)),
                                    ),
                                    onPressed: () {
                                      String nama =
                                          namaControllerUpdate.text.trim();
                                      String noHp =
                                          noHpControllerUpdate.text.trim();
                                      if (nama.isNotEmpty && noHp.isNotEmpty) {
                                        setState(() {
                                          namaControllerUpdate.text = '';
                                          noHpControllerUpdate.text = '';
                                          contacts[selectedIndex].nama = nama;
                                          contacts[selectedIndex].noHp = noHp;

                                          selectedIndex = -1;
                                          Navigator.pop(context);
                                        });
                                      }
                                    },
                                    child: const Text("Update")),
                              ],
                            ),
                          ),
                        ),
                      );
                    });
              });
            },
          ),
          //button ini berisi fungsi hapus data
          IconButton(
            icon: Icon(Icons.delete_outline),
            onPressed: () {
              setState(() {
                contacts.removeAt(index);
              });
            },
          ),
        ]),
      ),
    );
  }
}
