import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaterialApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //membuat appbar dengan tittle MaterialAPP
      home: const MyHomePage(title: 'MaterialApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//Membuat map yang berisi data yang di gunakan di listView
Map<String, String> values = {
  "Leanne Graham": "1-770-736-8031 x56442",
  "Ervin Howell": "010-692-6593 x09125",
  "Clementine Bauch": "1-463-123-4447",
  "Patricia Lebsack": "493-170-9623 x156",
  "Chelsey Dietrich": "(254)954-1289)",
  "Mrs. Dennis Schulist": "1-477-935-8478 x6430",
  "Kurtis Weissnat": "210.067.6132",
};

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Membuat Drawer dengan listview dan list tile
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              // tittle untuk judul tombol di drawer
              title: const Text('Home'),
              //method onTap dengan pop agar saat dipipih drawer akan tertutup otomatis
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              // tittle untuk judul tombol di drawer
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      //Membuat listview builder supaya bisa menggunakan looping
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          //itemCount untuk melakukan perulangan sejumlah panjang map
          itemCount: values.length,
          itemBuilder: (BuildContext context, int index) {
            //class key untuk mengambil map
            String key = values.keys.elementAt(index);
            return ListTile(
                //leading untuk membuat avatar pada tiap tiap listtile
                leading: CircleAvatar(
                  //background color mengatur warna circle avatar
                  backgroundColor: Colors.green,
                  //text untuk membuat circle avatar dengan huruf pertama dari
                  //map
                  child: Text((key[0])),
                ),
                //Tittle untuk membuat nama kontak dipanggil dengan key nya
                title: Text("$key"),
                //subtittle untuk membuat nomor kontak dipanggil dari values nya
                subtitle: Text('${values[key]}'));
          }),
      //bottomNavigationBar untuk membuat bar navigasi bagian bawah body
      bottomNavigationBar: BottomNavigationBar(
        //navigation bar item untuk membuat item dalam bottom navbar
        items: const <BottomNavigationBarItem>[
          //Membuat icon untuk bottom navbar dan label untuk deskripsi icon tersebut
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
