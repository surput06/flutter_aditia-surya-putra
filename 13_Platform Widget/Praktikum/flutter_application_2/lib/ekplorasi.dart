import 'package:flutter/material.dart';
import 'package:flutter_application_2/list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter A',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      //membuat appbar dengan tittle MaterialAPP
      home: const MyHomePage(title: 'My Flutter App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//Membuat list yang berisi data yang di gunakan di listView
List<String> values = [
  "Learn Flutter",
  "Learn ReactJS",
  "Learn VueJS",
  "Learn Taildwind CSS",
  "Learn UI/UX",
  "Learn Figma",
  "Learn Digital Marketing",
];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6200EE),
        centerTitle: true,
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white70,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      //Membuat listview builder supaya bisa menggunakan looping
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          //itemCount untuk melakukan perulangan sejumlah panjang map
          itemCount: values.length,
          itemBuilder: (BuildContext context, int index) {
            //class key untuk mengambil map

            return Container(
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1, color: Colors.black12))),
              child: ListTile(

                  //Tittle untuk membuat nama kontak dipanggil dengan key nya
                  title: Text(
                "${values[index]}",
              )),
            );
          }),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff03DAC5),
        foregroundColor: Colors.black,
        child: const Icon(Icons.add),
      ),
      //bottomNavigationBar untuk membuat bar navigasi bagian bawah body
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white70,
        backgroundColor: Color(0xFF6200EE),
        //navigation bar item untuk membuat item dalam bottom navbar
        items: const <BottomNavigationBarItem>[
          //Membuat icon untuk bottom navbar dan label untuk deskripsi icon tersebut
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Information'),
        ],
      ),
    );
  }
}
