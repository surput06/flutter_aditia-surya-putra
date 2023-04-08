import 'package:flutter/material.dart';

class UpdateContact extends StatefulWidget {
  const UpdateContact({Key? key}) : super(key: key);

  @override
  _UpdateContactState createState() => _UpdateContactState();
}

class _UpdateContactState extends State<UpdateContact> {
  @override
  Widget build(BuildContext context) {
    // List<Contact> contacts = List.empty(growable: true);
    //membuat controll untuk form add dan update
    TextEditingController namaController = TextEditingController();
    TextEditingController noHpController = TextEditingController();
    TextEditingController namaControllerUpdate = TextEditingController();
    TextEditingController noHpControllerUpdate = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6750A4),
        title: Text("Update Contact"),
      ),
      body: SingleChildScrollView(
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
                  "Update Conctact",
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
                        backgroundColor: MaterialStatePropertyAll<Color>(Color(0xFF6750A4)),
                      ),
                      onPressed: () {
                        String nama = namaController.text.trim();
                        String noHp = noHpController.text.trim();
                        Navigator.pop(context);
                      },
                      child: const Text("Submit")),
                ),
              ),
              //Container ini berisi list contact
            ],
          ),
        ),
      ),
    );
  }
}
