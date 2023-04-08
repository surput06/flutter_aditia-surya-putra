import 'package:flutter/material.dart';

class CreateContact extends StatefulWidget {
  const CreateContact({Key? key}) : super(key: key);

  @override
  _CreateContactState createState() => _CreateContactState();
}

class _CreateContactState extends State<CreateContact> {
  @override
  Widget build(BuildContext context) {
    TextEditingController namaController = TextEditingController();
    TextEditingController noHpController = TextEditingController();
    TextEditingController namaControllerUpdate = TextEditingController();
    TextEditingController noHpControllerUpdate = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6750A4),
        title: Text("Create Contact"),
      ),
      body: SingleChildScrollView(
        child: Card(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 81),
                child: Icon(Icons.phone_android),
              ),
              Container(
                padding: EdgeInsets.only(top: 16),
                child: const Center(
                    child: Text(
                  "Create New Contact",
                  style: TextStyle(fontSize: 24),
                )),
              ),
              Container(
                padding: EdgeInsets.only(top: 16),
                width: 350,
                child: const Text(
                  "A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made. ",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              const Divider(
                color: Colors.black87,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 350,
                color: Colors.black12,
                child: TextField(
                  controller: namaController,
                  decoration: const InputDecoration(
                    hintText: ('Insert Your Name'),
                    labelText: ('Name'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 350,
                color: Colors.black12,
                child: TextField(
                  controller: noHpController,
                  decoration: const InputDecoration(
                    hintText: ('+62..'),
                    labelText: ('Nomor HP'),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
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
            ],
          ),
        ),
      ),
    );
  }
}
